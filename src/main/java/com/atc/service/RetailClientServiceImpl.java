package com.atc.service;

import com.atc.dao.RetailClientDao;
import com.atc.entity.RetailClient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class RetailClientServiceImpl implements RetailClientService {

  @Autowired
  RoleService roleService;

  @Autowired
  RetailClientDao dao;

  @Autowired
  private BCryptPasswordEncoder passwordEncoder;

  @Override
  public RetailClient create(RetailClient rc) {
	rc.setRole(roleService.findById("3"));
	rc.setPassword(passwordEncoder.encode(rc.getPassword()));
	return dao.create(rc);
  }

}
