package com.javaweb.repository.custom.impl;

import com.javaweb.constant.SystemConstant;
import com.javaweb.entity.StudentEntity;
import com.javaweb.model.request.StudentSearchRequest;
import com.javaweb.repository.custom.StudentRepositoryCustom;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.lang.reflect.Field;
import java.util.List;

public class StudentRepositoryImpl implements StudentRepositoryCustom {
    @PersistenceContext
    private EntityManager entityManager;
    public void sqlJoin(StudentSearchRequest studentSearchRequest, StringBuilder sql){
        Long teacherId = studentSearchRequest.getTeacherId();
        if(teacherId != null){
            sql.append(" INNER JOIN assignmentstudent ON assignmentstudent.studentid = s.id ");
        }
    }

    public void sqlNomal(StudentSearchRequest studentSearchRequest, StringBuilder where){
        try {
            Field[] field = StudentSearchRequest.class.getDeclaredFields();
            for(Field item : field) {
                item.setAccessible(true);
                String fieldName = item.getName();
                if (!fieldName.equals("teacherId")) {
                    Object value = item.get(studentSearchRequest);
                    if(value != null && !value.equals("")) {
                        if (item.getType().getName().equals("java.lang.Long") || item.getType().getName().equals("java.lang.Integer")) {
                            where.append(" AND s." + fieldName.toLowerCase() + " = " + value);
                        }
                        else if(item.getType().getName().equals("java.lang.String")) {
                            where.append(" AND s." + fieldName.toLowerCase() + " LIKE '%" + value + "%'");
                        }
                    }
                }
            }
        }catch(Exception ex) {
            ex.printStackTrace();
        }
    }

    public void sqlSpecial(StudentSearchRequest studentSearchRequest, StringBuilder where){
        Long teacherId = studentSearchRequest.getId();
        if(teacherId != null){
            where.append(" AND assignmentstudent.studentid = " + teacherId + " ");
        }
        Double gpaFrom = studentSearchRequest.getGpaFrom();
        Double gpaTo = studentSearchRequest.getGpaTo();
        if(gpaFrom != null || gpaTo != null){
            if (gpaFrom != null) {
                where.append(" AND round(s.gpa,1) >= " + gpaFrom);
            }
            if (gpaTo != null) {
                where.append(" AND round(s.gpa,1) <= " + gpaTo);
            }
        }

    }
    @Override
    public List<StudentEntity> findAll(StudentSearchRequest studentSearchRequest) {
        StringBuilder sql = new StringBuilder("SELECT s.* FROM sinhvien s ");
        sqlJoin(studentSearchRequest,sql);
        StringBuilder Where = new StringBuilder(SystemConstant.ONE_EQUAL_ONE + " AND s.status=1 ");
        sqlNomal(studentSearchRequest,Where);
        sqlSpecial(studentSearchRequest,Where);
        sql.append(Where);
        sql.append(" GROUP BY s.id ");
        Query query = entityManager.createNativeQuery(sql.toString(),StudentEntity.class);
        return query.getResultList();
    }
}
