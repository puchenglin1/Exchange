package com.pucl.exchange.mapper;



import com.pucl.exchange.model.Role;
import com.pucl.exchange.util.MyMapper;

import java.util.List;

public interface RoleMapper extends MyMapper<Role> {
    public List<Role> queryRoleListWithSelected(Integer id);
}