package com.Dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface OfficeDao {
    /**
     * 增加百度云解码Id
     * @param officeid	解码id
     * @param officeMd5	文件md5值
     */
    void addOffice(@Param("officeid") String officeid, @Param("officeMd5") String officeMd5);


    /**
     * 查找文件解析id
     * @param officeMd5	文件md5
     * @return String
     */
    String getOfficeId(String officeMd5);
}
