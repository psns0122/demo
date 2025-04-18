package com.ssg.demo.domain;

public class WarehouseDTO {
  
  private String warehouseCode;     // 창고 코드 (warehouse_code)
  private String warehouseName;     // 창고 명 (warehouse_name)
  private String warehouseLocation; // 소재지 (location)
  private int capacityLimit;        // 수용 한도 (capacity_limit)
  private String memberCode;        // 담당자 코드 (member_code, 매퍼에서는 mamberCode로 매핑)
  private String name;              // 담당자 이름 (member name)
  private String email;             // 담당자 이메일
  
  // 기본 생성자
  public WarehouseDTO() {
  }
  
  // 전체 필드를 받는 생성자
  public WarehouseDTO(String warehouseCode, String warehouseName, String warehouseLocation, int capacityLimit,
                      String mamberCode, String name, String email) {
    this.warehouseCode = warehouseCode;
    this.warehouseName = warehouseName;
    this.warehouseLocation = warehouseLocation;
    this.capacityLimit = capacityLimit;
    this.memberCode = mamberCode;
    this.name = name;
    this.email = email;
  }
  
  // Getter, Setter 메서드
  
  public String getWarehouseCode() {
    return warehouseCode;
  }
  
  public void setWarehouseCode(String warehouseCode) {
    this.warehouseCode = warehouseCode;
  }
  
  public String getWarehouseName() {
    return warehouseName;
  }
  
  public void setWarehouseName(String warehouseName) {
    this.warehouseName = warehouseName;
  }
  
  public String getWarehouseLocation() {
    return warehouseLocation;
  }
  
  public void setWarehouseLocation(String warehouseLocation) {
    this.warehouseLocation = warehouseLocation;
  }
  
  public int getCapacityLimit() {
    return capacityLimit;
  }
  
  public void setCapacityLimit(int capacityLimit) {
    this.capacityLimit = capacityLimit;
  }
  
  public String getName() {
    return name;
  }
  
  public void setName(String name) {
    this.name = name;
  }
  
  public String getEmail() {
    return email;
  }
  
  public void setEmail(String email) {
    this.email = email;
  }
  
  public String getMemberCode() {
    return memberCode;
  }
  
  public void setMemberCode(String memberCode) {
    this.memberCode = (memberCode == null || memberCode.isBlank()) ? null : memberCode;
  }
}
