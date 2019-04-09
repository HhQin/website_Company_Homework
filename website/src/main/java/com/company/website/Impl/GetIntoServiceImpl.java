package com.company.website.Impl;

import com.company.website.entity.GetInto;
import com.company.website.mapper.GetIntoMapper;
import com.company.website.service.GetIntoService;
import com.company.website.showClasses.showIndexGetInto;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("GetIntoService")
public class GetIntoServiceImpl implements GetIntoService {

    @Resource
    private GetIntoMapper getIntoMapper;

    @Override
    public List<GetInto> queryAllGetintos(){
        return getIntoMapper.queryAllGetintos();
    }

    @Override
    public Integer queryCustomerNumberByTime(Long BeginTime,Long EndTime){
        return getIntoMapper.queryCustomerNumberByTime(BeginTime,EndTime);
    }

    @Override
    public Boolean createNewGetinto(String VIPNumber,Long GetInTime, Integer LessonUse,String notes){
        return getIntoMapper.createNewGetinto(VIPNumber,GetInTime,LessonUse,notes);
    }

    @Override
    public List<showIndexGetInto> queryGetIntoNumberDesc(Long BeginTime,Long EndTime){
        return getIntoMapper.queryGetIntoNumberDesc(BeginTime, EndTime);
    }

    @Override
    public List<GetInto> queryGetintosByVIPNumber(String VIPNumber){
        return getIntoMapper.queryGetintosByVIPNumber(VIPNumber);
    }
}
