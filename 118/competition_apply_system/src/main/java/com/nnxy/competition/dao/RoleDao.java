package com.nnxy.competition.dao;

import com.nnxy.competition.entity.Role;
import org.apache.ibatis.annotations.Mapper;

import java.util.Set;

/**
 * @author CZS
 * CreateTime 2022/12/13 11:20
 * Email
 */
@Mapper
public interface RoleDao {

    /**
     * 通过userId获取user的角色
     *
     * @param userId
     * @return
     */
    public Set<Role> getRoleByUserId(String userId);

}
