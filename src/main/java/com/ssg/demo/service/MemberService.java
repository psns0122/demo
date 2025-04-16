package com.ssg.demo.service;

import com.ssg.demo.domain.MemberDTO;
import java.util.List;

public interface MemberService {
  List<MemberDTO> getUnassignedWarehouseManagers();
}
