package com.Dao;

import com.Bean.Share;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ShareDao {
    List<Share> findShare(Share share);
    List<Share> findShareByName(@Param("username") String username, @Param("status") int status);
    void shareFile(Share share);
    void cancelShare(String shareurl, String filePath, int status);
}
