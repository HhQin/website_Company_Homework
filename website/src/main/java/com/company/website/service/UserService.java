package com.company.website.service;

import com.company.website.entity.User;

public interface UserService {

    User findIdByName(String username);
}
