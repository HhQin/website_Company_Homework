package com.company.website.service;

import com.company.website.entity.User;

public interface UserService {

    User findIdByName(String username);

    int createNewUser( String name, Integer age);

    int deleteUserById(Integer id);

    int updateUserByName(String name,Integer age);
}
