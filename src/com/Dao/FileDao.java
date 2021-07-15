package com.Dao;

import java.util.List;

import com.Bean.RecycleFile;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface FileDao {
    //插入文件删除之前路径以及归属的用户名
    void insertFiles(@Param("filePath") String filePath, @Param("userName") String userName);
    void deleteFiles(@Param("userName") String userName);
    void deleteFile(@Param("fileId") int fileId, @Param("userName") String userName);
    List<RecycleFile> selectFiles(@Param("userName") String userName);
    RecycleFile selectFile(@Param("fileId") int fileId);

}
