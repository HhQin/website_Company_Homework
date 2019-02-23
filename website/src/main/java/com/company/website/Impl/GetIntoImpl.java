package com.company.website.Impl;

import com.company.website.entity.GetInto;
import com.company.website.mapper.GetIntoMapper;
import com.company.website.service.GetIntoService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("GetIntoService")
public class GetIntoImpl implements GetIntoService {

    @Resource
    private GetIntoMapper getIntoMapper;

    @Override
    public List<GetInto> queryAllGetintos(){
        return getIntoMapper.queryAllGetintos();
    }
}
