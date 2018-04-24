package com.pucl.exchange.mapper;


import com.pucl.exchange.model.UserRole;
import com.pucl.exchange.util.MyMapper;

import java.util.List;

public interface UserRoleMapper extends MyMapper<UserRole> {
    public List<Integer> findUserIdByRoleId(Integer roleId);
}