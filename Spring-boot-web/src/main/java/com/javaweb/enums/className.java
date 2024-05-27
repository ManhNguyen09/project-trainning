package com.javaweb.enums;


import java.util.*;

public enum className {
    CNTT ("Công nghệ thông tin"),
    DTVT ("Điện tử vễn thông"),
    DT ("Điện tử"),
    KT("Kế toán");

    private final String name;

    className(String name) {
        this.name = name;
    }

    public String getCode() {
        return name;
    }

    public static Map<String,String> getClassName(){
        Map<String,String> listType = new HashMap<>();
        for(className item : className.values()){
            listType.put(item.toString() , item.name);
        }
        return listType;
    }
}
