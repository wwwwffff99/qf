package com.nnxy.competition.service;

import com.nnxy.competition.entity.University;

/**
 * @author :CZS
 * @date :2022/12/20 14:08
 *
 */
public interface UniversityService {
    /**
     * 根据用户的学院id查询学校
     *
     * @param collegeId
     * @return
     */
    University findUniversityByCollegeId(String collegeId);
}
