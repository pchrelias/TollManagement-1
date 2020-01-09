package com.atc.service;

import com.atc.dao.GateDao;
import com.atc.entity.Employee;
import com.atc.entity.Gate;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class GateServiceImpl implements GateService {

  @Autowired
  GateDao dao;
  
  @Override
  public List<Gate> findAll() {
	return dao.findAll();
  }

  @Override
  public Gate findById(String id) {
	return dao.findById(Integer.parseInt(id));
  }

  @Override
  public List<Gate> findEntryGatesByStationId(String index) {
	Integer id;
	try {
	  id = Integer.parseInt(index);
	} catch (NumberFormatException e) {
	  return new ArrayList<>();
	}
	return dao.findEntryGatesByStationId(id);
  }

  @Override
  public boolean addEmployee(String gateIndex, Employee employee) {
	Gate gate = findById(gateIndex);
	if(gate == null) return false;
	gate.setEmployee(employee);
	return true;
  }

}