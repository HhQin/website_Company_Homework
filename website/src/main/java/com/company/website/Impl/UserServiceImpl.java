package com.company.website.Impl;

import com.company.website.entity.User;
import com.company.website.mapper.UserMapper;
import com.company.website.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service("userService")
public class UserServiceImpl implements UserService {

    @Resource
    private UserMapper userMapper;


    @Override
    public User findIdByName(String username){
        return userMapper.findUserByUsername(username);
    }

    @Override
    public int createNewUser(String name, Integer age){
        return userMapper.createNewUser(name,age);
    }

    @Override
    public int deleteUserById(Integer id){
        return userMapper.deleteUserById(id);
    }

    @Override
    public int updateUserByName(String name,Integer age){
        return userMapper.updateUserByName(name,age);
    }

}
