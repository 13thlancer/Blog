package com.blog.mapper;

import com.blog.entity.RequireOrder;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface RequireOrderMapper {

    int deleteByPrimaryKey(String id);

    int insert(RequireOrder record);

    int insertSelective(RequireOrder record);

    List<RequireOrder> selectByUser(String userid);

    List<RequireOrder> selectByStatus(String username);

    List<RequireOrder> selectByType(String type);

    List<RequireOrder> selectBySearch(RequireOrder record);

    List<RequireOrder> selectAll();

    RequireOrder selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(RequireOrder record);

    int updateByPrimaryKey(RequireOrder record);

    int updateStatus(String id);

    int updateById(RequireOrder requireorder);
}