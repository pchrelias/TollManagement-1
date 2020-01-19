
package com.atc.service;

import com.atc.dao.TerminalDao;
import com.atc.entity.Gate;
import com.atc.entity.Terminal;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class TerminalSerivceImpl implements TerminalService{
    
    @Autowired
    TerminalDao tdao;
    
    @Autowired
    RoleService roleService;

    @Autowired
    private BCryptPasswordEncoder passwordEncoder;

    @Override
    public void addOrUpdate(Terminal t) {
        t.setRole(roleService.findById("4"));
	t.setPassword(passwordEncoder.encode(t.getPassword()));
        tdao.addOrUpdate(t);
    }

    @Override
    public void delete(Terminal t) {
        tdao.delete(t);
    }

    @Override
    public Terminal findByGateId(Gate g) {
        return tdao.findByGateId(g);
    }
    
}
