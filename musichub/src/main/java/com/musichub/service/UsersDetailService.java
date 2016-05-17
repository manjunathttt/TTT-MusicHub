package com.musichub.service;

import java.util.List;

import com.musichub.model.UsersDetail;

public interface UsersDetailService {
	void addUser (UsersDetail usersDetail);

    UsersDetail getUserById (int userId);

    List<UsersDetail> getAllUsers();

    UsersDetail getUserByUsername (String username);
}
