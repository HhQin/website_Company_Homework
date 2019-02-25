package com.company.website.Impl;

import com.company.website.entity.lessons;
import com.company.website.mapper.LessonsMapper;
import com.company.website.service.LessonsService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("LessonsService")
public class LessonsServiceImpl implements LessonsService {
    @Resource
    private LessonsMapper lessonsMapper;

    @Override
    public List<lessons> queryAllLessons(){
        return lessonsMapper.queryAllLessons();
    }
}
