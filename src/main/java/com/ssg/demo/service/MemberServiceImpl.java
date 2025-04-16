package com.ssg.demo.service;

import com.ssg.demo.domain.MemberDTO;
import com.ssg.demo.mappers.MemberMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class MemberServiceImpl implements MemberService {
  
  @Autowired
  private MemberMapper memberMapper;
  
  @Override
  public List<MemberDTO> getUnassignedWarehouseManagers() {
    return memberMapper.selectUnassignedWarehouseManagers();
  }
}
