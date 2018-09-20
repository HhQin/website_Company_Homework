package com.company.website.service;

import com.company.website.entity.Professor;

import java.util.List;

public interface ProfessorService {

    List<Professor> queryAllProfessor();

    int createNewProfessor(String professorName,String professorIntroduce);
}
