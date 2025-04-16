package com.ssg.demo.controller;

import com.ssg.demo.domain.WarehouseDTO;
import com.ssg.demo.domain.MemberDTO;
import com.ssg.demo.service.WarehouseService;
import com.ssg.demo.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;

@Controller
@RequestMapping("/warehouse")  // URL 공통 prefix
public class WarehouseController {
  
  @Autowired
  private WarehouseService warehouseService;
  
  // 담당자(매니저) 데이터를 출력하기 위한 서비스
  @Autowired
  private MemberService memberService;
  
  // 창고 목록을 보여주는 SSR 방식 엔드포인트
  @GetMapping()
  public String getWarehouseList(Model model) {
    List<WarehouseDTO> warehouseList = warehouseService.getAllWarehouses();
    model.addAttribute("warehouses", warehouseList);
    // 등록 폼에 필요하다면 미할당 담당자 목록도 전달 (예시)
    List<MemberDTO> managers = memberService.getUnassignedWarehouseManagers();
    model.addAttribute("managers", managers);
    return "qh/warehouse";
  }
  
  // 창고 등록 처리
  @PostMapping("/add")
  public String addWarehouse(WarehouseDTO warehouseDTO) {
    warehouseService.addWarehouse(warehouseDTO);
    return "redirect:/warehouse";
  }
  
  // 창고 수정 처리
  @PostMapping("/update")
  public String updateWarehouse(WarehouseDTO warehouseDTO) {
    warehouseService.updateWarehouse(warehouseDTO);
    return "redirect:/warehouse";
  }
}
