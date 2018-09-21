package com.company.website.Impl;

import com.company.website.entity.Professor;
import com.company.website.mapper.ProfessorMapper;
import com.company.website.service.ProfessorService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("professorService")
public class ProfessorServiceImpl implements ProfessorService {

    @Resource
    private ProfessorMapper professorMapper;

    @Override
    public List<Professor> queryAllProfessor(){
        return professorMapper.queryAllProfessor();
    }

    @Override
    public int createNewProfessor(String professorName,String professorIntroduce){
        return professorMapper.createNewProfessor(professorName,professorIntroduce);
    }
}
