package com.ssg.demo.domain;

public class MemberDTO {
  private String memberCode;
  private String name;
  private String email;
  
  public MemberDTO() {}
  
  public MemberDTO(String memberCode, String name, String email) {
    this.memberCode = memberCode;
    this.name = name;
    this.email = email;
  }
  
  // Getter/Setter
  public String getMemberCode() {
    return memberCode;
  }
  
  public void setMemberCode(String memberCode) {
    this.memberCode = memberCode;
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
}
