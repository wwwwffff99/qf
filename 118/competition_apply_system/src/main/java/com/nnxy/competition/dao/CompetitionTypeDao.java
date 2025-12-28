package com.nnxy.competition.dao;

import com.nnxy.competition.entity.CompetitionType;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * @author :CZS
 * @date :2022/12/20 15:00
 *
 */

@Mapper
public interface CompetitionTypeDao {
    /**
     * 获取全部比赛类型
     *
     * @return
     */
    List<CompetitionType> findAllCompetitionType();
}
