package com.ssg.demo.mappers;

import com.ssg.demo.domain.MemberDTO;
import java.util.List;

public interface MemberMapper {
  /**
   * 창고에 할당되지 않은 담당자(멤버)를 조회합니다.
   * 예: tbl_member 테이블에서, 해당 멤버가 tbl_warehouse의 manager_code에 없는 경우
   */
  List<MemberDTO> selectUnassignedWarehouseManagers();
}
