package com.nnxy.competition.dao;

import com.nnxy.competition.entity.University;
import org.apache.ibatis.annotations.Mapper;

/**
 * @author :CZS
 * @date :2022/12/20 14:05
 *
 */
@Mapper
public interface UniversityDao {
    /**
     * 根据用户的学院id查询学校
     *
     * @param collegeId
     * @return
     */
    University findUniversityByCollegeId(String collegeId);
}
