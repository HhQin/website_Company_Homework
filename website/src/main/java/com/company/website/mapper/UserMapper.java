package com.company.website.mapper;

import com.company.website.entity.User;
import org.apache.ibatis.annotations.*;

public interface UserMapper {

    @Select("select * from users where Name=#{username}")
        //@Result 修饰返回的结果集，关联实体类属性和数据库字段一一对应，如果实体类属性和数据库属性名保持一致，就不需要这个属性来修饰。
    User findUserByUsername(String username);

    @Insert("insert into users(NAME,age) values (#{name},#{age})")
    int createNewUser(@Param(value="name")String name,@Param(value="age")Integer age);

    @Delete("DELETE FROM users WHERE id=#{id}")
    int deleteUserById(@Param(value = "id")int id);

    @Update("UPDATE users SET NAME = #{name},age = #{age} WHERE NAME = #{name}")
    int updateUserByName(@Param(value = "name")String name,@Param(value = "age")Integer age);

}
