package com.nnxy.competition.service;

import com.nnxy.competition.entity.CompetitionType;

import java.util.List;

/**
 * @author :CZS
 * @date :2022/12/20 15:02
 *
 */
public interface CompetitionTypeService {
    /**
     * 获取全部比赛类型
     *
     * @return
     */
    List<CompetitionType> findAllCompetitionType();
}
