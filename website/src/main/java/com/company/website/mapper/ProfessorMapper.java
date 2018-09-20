package com.company.website.mapper;

import com.company.website.entity.Professor;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface ProfessorMapper {

    @Select("Select * from t_professor")
    List<Professor> queryAllProfessor();

    @Insert("Insert into t_professor(professorName,professorIntroduce) values (#{professorName},#{professorIntroduce})")
    int createNewProfessor(@Param(value = "professorName")String professorName,@Param(value = "professorIntroduce")String professorIntroduce);
}
