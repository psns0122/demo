<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en" xmlns:c="http://java.sun.com/jsp/jstl/core">
<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="shortcut icon" href="<c:url value='/resources/images/logo/favicon_logo.png'/>" type="image/png" />
    <title>Prokin Donuts</title>

    <!-- ========== All CSS files linkup ========= -->
    <link rel="stylesheet" href="<c:url value='/resources/css/bootstrap.min.css'/>" />
    <link rel="stylesheet" href="<c:url value='/resources/css/lineicons.css'/>" type="text/css" />
    <link rel="stylesheet" href="<c:url value='/resources/css/materialdesignicons.min.css'/>" type="text/css" />
    <link rel="stylesheet" href="<c:url value='/resources/css/fullcalendar.css'/>" />
    <link rel="stylesheet" href="<c:url value='/resources/css/main.css'/>" />
    <!-- datatable을 위해 필요함 -->
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.6/css/dataTables.bootstrap5.min.css">
</head>

<body>
<!-- ======== Preloader =========== -->
<div id="preloader">
    <div class="spinner"></div>
</div>
<!-- ======== Preloader =========== -->

<!-- ======== sidebar-nav start =========== -->
<aside class="sidebar-nav-wrapper">
    <div class="navbar-logo">
        <a href="qh-dashboard.html">
            <img src="<c:url value='/resources/images/logo/menu_logo.png'/>" alt="logo" />
        </a>
    </div>
    <nav class="sidebar-nav">
        <ul>
            <li class="nav-item">
            </li>
            <li class="nav-item nav-item-has-children">
                <a href="#0" class="collapsed" data-bs-toggle="collapse" data-bs-target="#ddmenu_2" aria-controls="ddmenu_2" aria-expanded="false" aria-label="Toggle navigation">
              <span class="icon">
                <i width="20" height="20" viewBox="0 0 20 20" fill="none" class="lni lni-users"></i>
              </span>
                    <span class="text">회원관리</span>
                </a>
                <ul id="ddmenu_2" class="collapse dropdown-nav">
                    <li>
                        <a href="qh-member-list.html" class="hover-text-grow"> 회원목록 </a>
                    </li>
                    <li>
                        <a href="qh-member-request.html" class="hover-text-grow"> 회원 가입 요청 목록 </a>
                    </li>
                </ul>
            </li>
            <li class="nav-item">
                <a href="qh-warehouse.html">
              <span style="color:  #FF9D32; margin-right: 13px;">
                <i width="20" height="20" viewBox="0 0 20 20" fill="none" class="lni lni-home"></i>
              </span>
                    <span style="color:  #1c1c1c;">창고관리</span>
                </a>
            </li>
            <li class="nav-item">
                <a href="qh-franchise.html">
              <span class="icon">
                <i width="20" height="20" viewBox="0 0 20 20" fill="none" class="lni lni-apartment"></i>
              </span>
                    <span class="text">가맹점관리</span>
                </a>
            </li>
            <li class="nav-item">
                <a href="qh-inventory.html">
              <span class="icon">
                <i width="20" height="20" viewBox="0 0 20 20" fill="none" class="lni lni-package"></i>
              </span>
                    <span class="text">재고관리</span>
                </a>
            </li>
            <li class="nav-item">
                <a href="qh-product.html">
              <span class="icon">
                <i width="20" height="20" viewBox="0 0 20 20" fill="none" class="lni lni-chef-hat"></i>
              </span>
                    <span class="text">제품관리</span>
                </a>
            </li>
            <li class="nav-item nav-item-has-children">
                <a href="#0" class="collapsed" data-bs-toggle="collapse" data-bs-target="#ddmenu_55" aria-controls="ddmenu_55" aria-expanded="false" aria-label="Toggle navigation">
              <span class="icon">
                <i width="20" height="20" viewBox="0 0 20 20" fill="none" class="lni lni-cart"></i>
              </span>
                    <span class="text">입고관리</span>
                </a>
                <ul id="ddmenu_55" class="collapse dropdown-nav">
                    <li>
                        <a href="qh-inbound_request.html" class="hover-text-grow"> 입고 요청 목록 </a>
                    </li>
                    <li>
                        <a href="qh-inbound_status.html" class="hover-text-grow"> 입고현황 </a>
                    </li>
                </ul>
            </li>
            <li class="nav-item">
                <a href="qh-outbound.html">
              <span class="icon">
                <i width="20" height="20" viewBox="0 0 20 20" fill="none" class="lni lni-delivery"></i>
              </span>
                    <span class="text">출고관리</span>
                </a>
            </li>
        </ul>
    </nav>
</aside>
<div class="overlay"></div>
<!-- ======== sidebar-nav end =========== -->

<!-- ======== main-wrapper start =========== -->
<main class="main-wrapper">
    <!-- ========== header start ========== -->
    <header class="header">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-5 col-md-5 col-6">
                    <div class="header-left d-flex align-items-center">
                        <div class="menu-toggle-btn mr-15">
                            <button id="menu-toggle" class="main-btn primary-btn btn-hover">
                                <i class="lni lni-chevron-left me-2"></i> Menu
                            </button>
                        </div>
                    </div>
                </div>
                <div class="col-lg-7 col-md-7 col-6">
                    <div class="header-right">
                        <!-- profile start -->
                        <div class="profile-box ml-15">
                            <button class="dropdown-toggle bg-transparent border-0" type="button" id="profile" data-bs-toggle="dropdown" aria-expanded="false">
                                <div class="profile-info">
                                    <div class="info">
                                        <div class="image">
                                            <img src="<c:url value='/resources/images/profile/user_profile.png'/>" alt="" />
                                        </div>
                                        <div>
                                            <h6 class="fw-500">김관리자</h6>
                                            <p>QH Admin</p>
                                        </div>
                                    </div>
                                </div>
                            </button>
                            <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="profile">
                                <li>
                                    <div class="flex items-center !p-1">
                                        <div class="content-a">
                                            <h6>김관리자</h6>
                                            <p>Email@gmail.com</p>
                                        </div>
                                    </div>
                                </li>
                                <li class="divider"></li>
                                <li>
                                    <a  href="#mypageModal" data-bs-toggle="modal" id="btnmypageMenu">
                                        <i class="lni lni-user"></i> my page
                                    </a>
                                </li>
                                <li>
                                    <a href="index.html"> <i class="lni lni-exit"></i> Sign Out </a>
                                </li>
                            </ul>
                        </div>
                        <!-- profile end -->
                    </div>
                </div>
            </div>
        </div>
    </header>

    <!-- ========== header end ========== -->
    <!-- Modal HTML Start -->
    <!-- 마이페이지 모달 -->
    <div class="modal fade" id="mypageModal" tabindex="-1" aria-labelledby="mypageModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h3 class="modal-title" id="mypageModalLabel">내 회원 정보</h3>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form id="modifyForm">
                        <input type="hidden" id="mypageId">

                        <div class="mb-3">
                            <label class="form-label">아이디</label>
                            <input type="text" class="form-control" id="id">
                        </div>
                        <div class="mb-3">
                            <label class="form-label">비밀번호</label>
                            <input type="text" class="form-control" id="password">
                        </div>

                        <div class="mb-3">
                            <label class="form-label">이름</label>
                            <input type="text" class="form-control" id="name">
                        </div>

                        <div class="mb-3">
                            <label class="form-label">이메일</label>
                            <input type="email" class="form-control" id="email">
                        </div>

                        <div class="mb-3">
                            <label class="form-label">전화번호</label>
                            <input type="text" class="form-control" id="PhoneNumber">
                        </div>

                        <div class="mb-3">
                            <label class="form-label">주소</label>
                            <input type="text" class="form-control" id="address">
                        </div>
                    </form>
                    <div class="text-center w-100 mt-1 mb-3">
                        <button type="submit"class="main-btn primary-btn btn-hover text-center" >수정</button>
                    </div>
                    <div class="text-center mb-3">
                        <a href=#0 id = "bntMypageSecession">탈퇴</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Modal HTML End -->

    <!-- ========== section start ========== -->
    <section class="section">
        <div class="container-fluid">
            <!-- ========== title-wrapper start ========== -->
            <div class="title-wrapper pt-30">
                <div class="row align-items-center">
                    <div class="col-md-6">
                        <div class="title">
                            <h2>창고관리</h2>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ========== title-wrapper end ========== -->

            <div class="row">

                <!-- Start col (지도 영역) -->
                <div class="col-lg-4">
                    <!-- Start card -->
                    <!-- 지도 API 띄울 공간 -->
                    <div class="card-style mb-30">
                        <h6 class="mb-10">창고 위치</h6>
                        <p class="text-sm mb-20">지도 배치 예정</p>
                        <p class="text-sm mb-20">지도 배치 예정</p>
                        <p class="text-sm mb-20">지도 배치 예정</p>
                        <p class="text-sm mb-20">지도 배치 예정</p>
                        <p class="text-sm mb-20">지도 배치 예정</p>
                        <p class="text-sm mb-20">지도 배치 예정</p>
                        <p class="text-sm mb-20">지도 배치 예정</p>
                        <p class="text-sm mb-20">지도 배치 예정</p>
                        <p class="text-sm mb-20">지도 배치 예정</p>
                        <p class="text-sm mb-20">지도 배치 예정</p>
                        <p class="text-sm mb-20">지도 배치 예정</p>
                    </div>
                </div>

                <!-- Start col (창고 목록 영역) -->
                <div class="col-lg-8">
                    <!-- Start card -->
                    <div class="card-style mb-30">
                        <h6 class="mb-10">창고 목록</h6>
                        <p class="text-sm mb-20">
                            <!-- 원하는 필터(중분류, 소분류) 설정 -->
                        <div id="myCustomFilters" style="display: none;">

                            <div class="d-flex flex-wrap gap-2">
                                <!-- 중분류 -->
                                <div>
                                    <div class="select-style-1">
                                        <div class="select-position">
                                            <select id="LocationCategories">
                                                <option value="">소재지</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>

                                <!-- 필터 초기화 -->
                                <div class="mb-20">
                                    <button class="main-btn warning-btn-outline btn-hover btn-sm btn-xs" id="resetFilterBtn" style="height:auto; min-height:auto;">
                                        필터 초기화
                                    </button>
                                </div>

                                <!-- 오른쪽: 등록/수정/삭제 -->
                                <div class="btu-group-1 ms-auto gap-2 mb-20">
                                    <button class="main-btn warning-btn-outline btn-hover btn-sm btn-xs" id="btnWarehouseAdd">등록</button>
                                </div>
                            </div>

                        </div>
                        </p>
                        <div class="table-wrapper table-responsive p-0">

                            <!-- Start table -->
                            <table id="datatable" class="table striped-table w-100" style="width:100%">
                                <!-- colgroup를 통해 열 폭을 강제 지정 -->
                                <colgroup>
                                    <col style="width: 10%;" />
                                    <col style="width: 18%;" />
                                    <col style="width: 14%;" />
                                    <col style="width: 13%;" />
                                    <col style="width: 10%;" />
                                    <col style="width: 20%;" />
                                    <col style="width: 10%;" />
                                </colgroup>

                                <thead>
                                <tr>
                                    <th>창고코드</th>
                                    <th>창고명</th>
                                    <th>소재지</th>
                                    <th>수용한도</th>
                                    <th>담당자</th>
                                    <th>담당자 이메일</th>
                                    <th>설정</th> <!-- 수정/삭제 열 -->
                                </tr>
                                </thead>

                                <tbody>
                                <!-- SSR 부분: 서버에서 넘겨받은 warehouses 리스트를 출력 -->
                                <c:forEach var="w" items="${warehouses}">
                                    <tr data-warehouse-code="${w.warehouseCode}"
                                        data-warehouse-name="${w.warehouseName}"
                                        data-member-code="${w.memberCode}">
                                        <td>${w.warehouseCode}</td>
                                        <td>${w.warehouseName}</td>
                                        <td>${w.warehouseLocation}</td>
                                        <td>${w.capacityLimit}</td>
                                        <td>
                                            <c:choose>
                                                <c:when test="${not empty w.name}">
                                                    ${w.name}
                                                </c:when>
                                                <c:otherwise>
                                                    -
                                                </c:otherwise>
                                            </c:choose>
                                        </td>
                                        <td>
                                            <c:choose>
                                                <c:when test="${not empty w.email}">
                                                    ${w.email}
                                                </c:when>
                                                <c:otherwise>
                                                    -
                                                </c:otherwise>
                                            </c:choose>
                                        </td>
                                        <td>
                                            <div class="btu-group-2">
                                                <button class="btn btn-edit text-primary-2">
                                                    <i class="lni lni-pencil"></i>
                                                </button>
                                                <button class="btn btn-delete text-danger">
                                                    <i class="lni lni-trash-can"></i>
                                                </button>
                                            </div>
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>

                            </table>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Modal HTML Start -->
            <!-- 창고 등록 모달 -->
            <div class="modal fade" id="warehouseAddModal" tabindex="-1" aria-labelledby="warehouseAddModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content">

                        <!-- 모달 헤더 -->
                        <div class="modal-header">
                            <h3 class="modal-title" id="warehouseAddModalLabel">창고 등록</h3>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">
                            </button>
                        </div>

                        <!-- 모달 바디 -->
                        <div class="modal-body">

                            <!-- 필수 입력 항목 안내 -->
                            <p class="text-danger fw-normal mb-3">(*)는 필수 입력 항목입니다.</p>

                            <!-- 등록 폼 -->
                            <form id="warehouseRegisterForm" action="<c:url value='/warehouse/add'/>" method="post">

                                <!-- 창고명 (중복확인 버튼 포함) -->
                                <div class="mb-3">
                                    <label for="warehouseName" class="form-label">창고명 (*)</label>
                                    <div class="d-flex gap-2">
                                        <input type="text" placeholder="창고명을 입력하세요" class="form-control" id="warehouseName" name="warehouseName" />
                                        <button type="button" class="main-btn primary-btn btn-hover btn-smaller" id="checkDuplicate">
                                            중복 확인
                                        </button>
                                    </div>
                                </div>

                                <!-- 소재지 (다음 우편번호 API 적용) -->
                                <div class="mb-3">
                                    <label class="form-label">소재지 (*)</label>
                                    <div class="d-flex gap-2">
                                        <input type="text" class="form-control" id="zonecode_disp" placeholder="우편번호" disabled />
                                        <button type="button" class="main-btn primary-btn btn-hover btn-smaller" id="search-btn">
                                            우편번호
                                        </button>
                                    </div>
                                    <input type="text" class="form-control mt-1" id="roadAddress_disp" placeholder="도로명 주소" disabled />
                                    <input type="text" class="form-control mt-1" id="detailAddress_disp" placeholder="상세주소를 입력해주세요." />

                                    <!-- ---------------------- -->
                                    <!-- 숨긴 필드: 서버 전송용 -->
                                    <input type="hidden" name="zonecode" id="zonecode_hidden" />
                                    <input type="hidden" name="roadAddress" id="roadAddress_hidden" />
                                    <input type="hidden" name="detailAddress" id="detailAddress_hidden" />

                                </div>

                                <!-- 수용한도 (레이블 제거, 인풋 그룹 안에 표시) -->
                                <div class="mb-3">
                                    <label class="form-label" for="capacity">수용한도 (*)</label>
                                    <div class="input-group">
                                        <input type="text" class="form-control" id="capacity" name="capacity" placeholder="한도를 입력하세요" />
                                        <span class="input-group-text">m제곱</span>
                                    </div>
                                </div>

                                <!-- 담당자 (드롭다운) -->
                                <div class="mb-3">
                                    <label for="manager" class="form-label">담당자</label>
                                    <select class="form-select" id="manager" name="manager">
                                        <option value="">담당자 선택</option>
                                        <c:forEach var="manager" items="${managers}">
                                            <option value="${manager.memberCode}">
                                                ${manager.memberCode} | ${manager.name}
                                            </option>
                                        </c:forEach>
                                    </select>
                                </div>

                                <!-- 등록 버튼 -->
                                <div class="text-center w-100 mt-1 mb-3">
                                    <button type="submit" class="main-btn primary-btn btn-hover text-center" id="warehouseRegisterBtn">
                                        등록
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <!-- 수정 모달 -->
            <div class="modal fade" id="warehouseEditModal" tabindex="-1" role="dialog" aria-labelledby="warehouseEditModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content">

                        <!-- 모달 헤더 -->
                        <div class="modal-header">
                            <h3 class="modal-title" id="warehouseEditModalLabel">창고 수정</h3>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>

                        <!-- 모달 바디 -->
                        <div class="modal-body">
                            <!-- 필수 입력 항목 안내 -->
                            <p class="text-danger fw-normal mb-3">(*)는 필수 입력 항목입니다.</p>

                            <!-- 창고명 (중복확인 버튼 포함) -->
                            <form id="modifyWarehouseForm" action="<c:url value='/warehouse/update'/>" method="post">

                                <input type="hidden" name="warehouseCode" id="modifyWarehouseCode" />

                                <!-- 창고명 입력 & 중복확인 -->
                                <div class="mb-3">
                                    <label for="modifyWarehouseName" class="form-label">창고명 (*)</label>
                                    <div class="d-flex gap-2">
                                        <input name="warehouseName" type="text" class="form-control" id="modifyWarehouseName" placeholder="창고명을 입력하세요">
                                        <button type="submit" name="action" value="checkDuplicate" class="main-btn primary-btn btn-hover btn-smaller" id="modifyCheckDuplicateWarehouse">중복 확인</button>
                                    </div>
                                </div>

                                <!-- 담당자 드롭박스 -->
                                <div class="mb-3">
                                    <label for="modifyWarehouseManager" class="form-label">담당자</label>
                                    <select name="memberCode" class="form-select" id="modifyWarehouseManager">
                                        <option value="">담당자 삭제</option>
                                        <c:forEach var="manager" items="${managers}">
                                            <option value="${manager.memberCode}">
                                                ${manager.memberCode} | ${manager.name}
                                            </option>
                                        </c:forEach>
                                    </select>
                                </div>

                                <!-- 모달 푸터: 제출 및 취소 버튼 -->
                                <div class="text-end">
                                    <button type="submit" name="action" value="submitUpdate" class="main-btn primary-btn btn-hover text-center" id="warehouseModifyBtn">수정</button>
                                </div>

                            </form>
                        </div>
                    </div>
                </div>
            </div>

            <!-- 삭제 모달 -->
            <div class="modal fade" id="warehouseDeleteModal" tabindex="-1" aria-labelledby="warehouseDeleteModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered">
                    <div class="modal-content">

                        <!-- 모달 헤더 -->
                        <div class="modal-header">
                            <h3 class="modal-title" id="warehouseDeleteModalLabel">창고 삭제</h3>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>

                        <!-- 모달 바디 -->
                        <div class="modal-body">

                            <!-- (1) 삭제 가능 시 보여줄 영역 -->
                            <div id="deleteContentOk" style="display: none;">
                                <h5>선택한 창고를 정말 삭제하시겠습니까?</h5><br>
                                <!-- 창고명(담당자ID|담당자명) 표시 -->
                                <div id="deleteWarehouseNameOk" class="list-group mb-3"></div>
                            </div>

                            <!-- (2) 삭제 불가능 시 보여줄 영역 -->
                            <div id="deleteContentNo" style="display: none;">
                                <h5>선택한 창고는 진행 중인 업무로 인해 삭제할 수 없습니다.</h5><br>
                                <!-- 창고명(담당자ID|담당자명) 표시 -->
                                <div name="warehouseName" id="deleteWarehouseNameNo" class="list-group mb-3"></div>
                            </div>

                            <!-- 모달 푸터 -->
                            <div class="d-flex justify-content-end gap-2">
                                <button type="button" class="main-btn primary-btn btn-hover text-center" id="confirmDeleteWarehouse">삭제</button>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

            <!-- Modal HTML End -->

        </div>
    </section>
    <!-- ========== section end ========== -->

    <!-- ========== footer start ========== -->
    <footer class="footer">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="terms d-flex justify-content-center justify-content-md-end">
                        <a href="https://small-ragdoll-a57.notion.site/Prokin-Donuts-1b83a719d3508047953eeda89caeec14" class="text-sm">Brand Story</a>
                        <a href="https://github.com/Prokin-Donuts/Prokin-Donuts" class="text-sm ml-15">Dev Hub</a>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- ========== footer end ========== -->
</main>
<!-- ======== main-wrapper end ========== -->

<!-- ========= All Javascript files linkup ======== -->
<script src="<c:url value='/resources/js/Chart.min.js'/>"></script>
<script src="<c:url value='/resources/js/dynamic-pie-chart.js'/>"></script>
<script src="<c:url value='/resources/js/moment.min.js'/>"></script>
<script src="<c:url value='/resources/js/fullcalendar.js'/>"></script>
<script src="<c:url value='/resources/js/jvectormap.min.js'/>"></script>
<script src="<c:url value='/resources/js/world-merc.js'/>"></script>
<script src="<c:url value='/resources/js/polyfill.js'/>"></script>
<script src="<c:url value='/resources/js/main.js'/>"></script>
<!-- datatable을 위해 필요함 -->
<script src="https://code.jquery.com/jquery-3.7.0.min.js"></script>
<script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
<script src="<c:url value='/resources/js/bootstrap.bundle.min.js'/>"></script>
<!-- 다음 우편번호 API -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

<script>
    $(document).ready(function() {
        // 1. 더미 데이터 정의 (소재지)
        const dummyLocationCategories = [
            { "id": "SL", "name": "서울특별시" },
            { "id": "GG", "name": "경기도" },
            { "id": "IC", "name": "인천광역시" },
            { "id": "GW", "name": "강원특별자치도" },
            { "id": "CB", "name": "충청북도" },
            { "id": "CN", "name": "충청남도" },
            { "id": "JB", "name": "전라북도" },
            { "id": "JN", "name": "전라남도" },
            { "id": "GB", "name": "경상북도" },
            { "id": "GN", "name": "경상남도" },
            { "id": "JJ", "name": "제주특별자치도" },
            { "id": "DJ", "name": "대전광역시" },
            { "id": "DG", "name": "대구광역시" },
            { "id": "GJ", "name": "광주광역시" },
            { "id": "BS", "name": "부산광역시" },
            { "id": "US", "name": "울산광역시" },
        ];

        // 2. 원본 필터 영역에 소재지 옵션 채우기
        var $midSelect = $('#myCustomFilters #LocationCategories');
        $.each(dummyLocationCategories, function(index, item) {
            $midSelect.append($('<option>', {
                value: item.id,
                text: item.name
            }));
        });

        // 5. DataTable 초기화 (dom 옵션에 사용자 정의 영역 포함)
        var table = $('#datatable').DataTable({
            autoWidth: false,
            columnDefs: [
                { width: '95px', targets: -1 },  // Actions 열 너비
                { targets: [0, 1, 2, 3, 4, 5, 6], className: 'text-center' } // JS 속성으로 가운데 정렬
            ],
            order: [[0, 'asc']],
            paging: true,
            pageLength: 10,
            lengthMenu: [[5, 10, 20, -1], ['5개', '10개', '20개', '전체']],
            searching: true,
            ordering: true,
            info: true,
            lengthChange: true,
            dom: '<"top"l<"myFilterArea">fr>t<"bottom"ip>',
            language: {
                lengthMenu: '_MENU_',
                search: "검색 ",
                info: "Showing _START_ to _END_ of _TOTAL_ entries",
                infoEmpty: "no data",
                emptyTable: "empty table",
                paginate: {
                    previous: "< prev",
                    next: "next >"
                }
            },
            initComplete: function(settings, json) {
                fixLengthDropdownStyle();
            },
            drawCallback: function(settings) {
            }
        });

        function fixLengthDropdownStyle() {
            const $length = $('.dataTables_length');
            const $select = $length.find('select');
            const selectedValue = $select.val();

            const $filter = $('#datatable_filter')
            const $input = $filter.find('input');

            // 기존 label 텍스트 제거 (ex. "표시 개수")
            $length.find('label').contents().filter(function () {
                return this.nodeType === 3; // 텍스트 노드
            }).remove();

            // 새 구조로 재조립
            const $newWrapper = $(`
            <div class="select-style-1">
              <div class="select-position"></div>
            </div>
          `);

            const $newInput = $(`
            <div class="input-style-1">
            </div>
          `);

            $select.detach();
            $newWrapper.find('.select-position').append($select);
            $length.empty().append($newWrapper);

            $input.detach();
            $input.attr('placeholder', 'Search...');
            $newInput.append($input);
            $filter.empty().append($newInput);

            $select.val(selectedValue);
        }

        table.on('draw', function () {
            $('.dataTables_paginate .paginate_button').removeClass().addClass('main-btn deactive-btn-outline square-btn btn-hover mt-1 pt-2 pb-2 pl-15 pr-15');
        });

        // 6. 사용자 정의 필터 영역에 원본 필터를 복제하여 주입
        var $clone = $('#myCustomFilters').clone(true);
        // 복제 후 삽입 시, ID 제거 필수!
        $clone.find('#LocationCategories').attr('id', 'LocationCategories_clone');

        $clone.find('#btnWarehouseAdd').attr('id', 'btnWarehouseAdd_clone');
        $clone.find('#btnWarehouseEdit').attr('id', 'btnWarehouseEdit_clone');
        $clone.find('#btnWarehouseDelete').attr('id', 'btnWarehouseDelete_clone');
        $clone.find('#btnWarehouseAdd, #btnWarehouseEdit, #btnWarehouseDelete').remove();
        $('div.myFilterArea').html($clone.html());

        // select 태그 감싸는 구조 적용
        $('.dataTables_length select').each(function() {
            const $select = $(this);
            if (!$select.parent().hasClass('select-position')) {
                $select.wrap('<div class="col-lg-2"><div class="select-style-1"><div class="select-position"></div></div></div>');
            }
        });

        // 6-1. 이벤트 위임 방식으로 변경된 ID에 새롭게 바인딩 (body를 통해 실제 필터에 작동하게!)
        $('body').on('change', '#LocationCategories_clone', function() {
            $('#LocationSubCategories_clone').val('');
            table.draw();
        });

        $('body').on('click', '#resetFilterBtn', function () {
            const table = $('#datatable').DataTable();

            table.search('').columns().search('');

            $('#LocationCategories_clone, #warehouseNameInput_clone').val('');

            table.order([[0, 'asc']]);
            table.draw();
        });

        // 7. 필터 이벤트: 드롭다운 변경 시 테이블 필터링
        $('#LocationCategories, #warehouseNameInput').on('change keyup', function() {
            table.draw();
        });

        // 7-1. (7번 함수에서 각각이 변경될 때마다) 필터링 함수도 변경된 ID값을 기준으로 수정
        $.fn.dataTable.ext.search.push(function(settings, data, dataIndex) {
            const selectedLocation = $('#LocationCategories_clone').val();
            const categoryLocation = data[0]; // 창고코드를 기준으로

            // 일부 포함에도 검색
            if (selectedLocation && !categoryLocation.includes(selectedLocation)) {
                return false;
            }

            return true;
        });

        // 9. Edit/Delete 버튼 이벤트
        // 등록 버튼 클릭 시
        // 전역 변수: 창고명 중복 체크 상태 (초기값 false)
        var isWarehouseNameChecked = false;

        // 모달 열기 버튼 (등록 버튼) 이벤트: ID 일치 확인
        $("#btnWarehouseAdd_clone").on("click", function () {
            $("#warehouseAddModal").modal("show");
        });

        // 창고명 필드 변경 시 중복 체크 상태 초기화 (재검증 필요)
        $("#warehouseName").on("input", function () {
            isWarehouseNameChecked = false;
        });

        // 창고명 중복 확인 버튼 이벤트 (더미 AJAX 처리)
        $("#checkDuplicate").on("click", function () {
            var warehouseName = $("#warehouseName").val().trim();
            // 창고명 필수 검증
            if (!warehouseName) {
                alert("창고명을 입력하세요.");
                return;
            }
            // 창고명 정규식: 한글, 영어, 숫자만 허용, 1~10글자
            var regWarehouseName = /^[A-Za-z0-9가-힣]{1,10}$/;
            if (!regWarehouseName.test(warehouseName)) {
                alert("창고명은 한글, 영어, 숫자만 가능하며 최대 10글자까지 입력할 수 있습니다.");
                return;
            }
            // 중복확인 로직 (여기서는 항상 중복 없음으로 가정)
            alert("사용 가능한 창고명입니다.");
            isWarehouseNameChecked = true;
        });

        // Daum 우편번호 찾기 버튼 이벤트
        $("#search-btn").on("click", function () {
            new daum.Postcode({
                oncomplete: function (data) {
                    $("#zonecode_disp").val(data.zonecode);
                    $("#roadAddress_disp").val(data.roadAddress);
                    $("#zonecode_hidden").val(data.zonecode);
                    $("#roadAddress_hidden").val(data.roadAddress);
                },
            }).open();
        });

        // 상세 주소 변경 시 hidden 필드 업데이트
        $("#detailAddress_disp").on("change", function () {
            $("#detailAddress_hidden").val($(this).val());
        });

        // 폼 제출 시 유효성 검사
        $("#warehouseRegisterForm").on("submit", function (e) {
            e.preventDefault();

            // 필수 항목 검사
            var warehouseName = $("#warehouseName").val().trim();
            var zonecode = $("#zonecode_disp").val().trim();
            var roadAddress = $("#roadAddress_disp").val().trim();
            var detailAddress = $("#detailAddress_disp").val().trim();
            var capacity = $("#capacity").val().trim();

            if (!warehouseName || !zonecode || !roadAddress || !detailAddress || !capacity) {
                alert("필수 입력 항목이 비어있습니다. 모두 입력해주세요.");
                return;
            }

            // 창고명: 한글, 영어, 숫자만 허용, 최대 10글자
            var regWarehouseName = /^[A-Za-z0-9가-힣]{1,10}$/;
            if (!regWarehouseName.test(warehouseName)) {
                alert("창고명은 한글, 영어, 숫자만 가능하며 최대 10글자까지 입력할 수 있습니다.");
                return;
            }

            // 중복 확인 여부 검사
            if (!isWarehouseNameChecked) {
                alert("창고명 중복확인을 해주세요.");
                return;
            }

            // 수용한도: 숫자만 있는지 검사 (정규식 사용)
            var regCapacity = /^[0-9]+$/;
            if (!regCapacity.test(capacity)) {
                alert("수용한도는 숫자만 입력할 수 있습니다.");
                return;
            }

            // 모든 검증 통과 시 등록 성공 처리 (추가 서버 전송 로직 가능)
            alert("창고가 성공적으로 등록되었습니다.");
            $("#warehouseAddModal").modal("hide");
            // 폼 초기화 및 중복확인 상태 초기화
            $(this)[0].reset();
            isWarehouseNameChecked = false;
        });

        /////////////////////////////////////////////////////////////////////////
        /////////////////////////////////////////////////////////////////////////
        /////////////////////////////////////////////////////////////////////////
        /////////////////////////////////////////////////////////////////////////
        // 수정 버튼 클릭 시
        // 창고 수정 모달 열기 이벤트 (DataTable 내 동적 생성 행의 수정 버튼 클릭 시)
        // 전역으로 초기 상태 관리
        $(function() {
            $('#datatable tbody').on('click', '.btn-edit', function(e) {
                e.preventDefault();
                const $tr = $(this).closest('tr');

                // 1) data-* 에서 값 꺼내기
                const code = $tr.data('warehouse-code');
                const name = $tr.data('warehouse-name');
                const mgr  = $tr.data('member-code') || '';

                // 2) 폼에 세팅
                $('#modifyWarehouseCode').val(code);
                $('#modifyWarehouseName').val(name);
                $('#modifyWarehouseManager').val(mgr);

                // 3) 모달 띄우기
                $('#warehouseEditModal').modal('show');
            });

            // 제출 전 정규검사만
            $('#modifyWarehouseForm').on('submit', function(e) {
                const w = $('#modifyWarehouseName').val().trim();
                if (!/^[A-Za-z0-9가-힣]{1,10}$/.test(w)) {
                    alert('창고명은 한글·영어·숫자 1~10자만 가능합니다.');
                    e.preventDefault();
                }
            });
        });

        /////////////////////////////////////////////////////////////////////////
        /////////////////////////////////////////////////////////////////////////
        /////////////////////////////////////////////////////////////////////////
        /////////////////////////////////////////////////////////////////////////
        // 삭제 버튼 클릭 시
        // 삭제 모달: 행의 "삭제" 버튼 클릭 시 처리
        $('#datatable tbody').on('click', '.btn-delete', function(e) {
            e.preventDefault();
            var $row = $(this).closest('tr');
            var rowData = table.row($row).data();

            // 더미 응답: warehouseCode에 따라 삭제 가능 여부와 상태 결정
            var dummyResponse;
            switch (rowData.warehouseCode) {
                case "DJ1":
                    // DJ1은 입고 진행 중 → 삭제 불가
                    dummyResponse = { canDelete: false, reason: "입고가 진행중입니다.", status: "입고진행" };
                    break;
                case "GG1":
                    // GG1은 재고 있음 → 삭제 불가
                    dummyResponse = { canDelete: false, reason: "재고가 존재합니다.", status: "재고있음" };
                    break;
                case "BS1":
                    // BS1은 출고 진행 중 → 삭제 불가
                    dummyResponse = { canDelete: false, reason: "출고가 진행중입니다.", status: "출고진행" };
                    break;
                default:
                    dummyResponse = { canDelete: true, status: "삭제가능" };
            }

            // 상태를 배지(badge) 형식으로 생성 (원하는 색상과 텍스트로 조정 가능)
            var statusBadge = `<span class="badge bg-secondary">${dummyResponse.status}</span>`;

            // 업데이트 전에 이전 내용 삭제 (옵션)
            $('#deleteWarehouseNameOk').empty();
            $('#deleteWarehouseNameNo').empty();

            if (dummyResponse.canDelete) {
                // 삭제 가능한 경우: "삭제 가능" 영역 보이기
                $('#deleteContentOk').show();
                $('#deleteContentNo').hide();

                // 담당자 정보: 만약 rowData.memberCode가 있다면 "담당자코드 | 담당자명"을, 없으면 "담당자없음"으로 표시
                var 담당자정보 = rowData.memberCode ? (rowData.memberCode + " | " + rowData.name) : "담당자없음";

                $('#deleteWarehouseNameOk').html(
                    `<li class="list-group-item d-flex justify-content-between align-items-center">
                ${rowData.warehouseName} (${담당자정보})
                ${statusBadge}
              </li>`
                );
                // 삭제 버튼 보이기
                $('#confirmDeleteWarehouse').show();
            } else {
                // 삭제 불가능한 경우: "삭제 불가능" 영역 보이기
                $('#deleteContentOk').hide();
                $('#deleteContentNo').show();

                var 담당자정보 = rowData.memberCode ? (rowData.memberCode + " | " + rowData.name) : "담당자없음";

                $('#deleteWarehouseNameNo').html(
                    `<li class="list-group-item d-flex justify-content-between align-items-center">
                ${rowData.warehouseName} (${담당자정보})
                ${statusBadge}
              </li>`
                );
                $('#confirmDeleteWarehouse').hide();
            }

            // 모달 열기
            $('#warehouseDeleteModal').modal('show');
        });

        // 삭제 모달의 실제 '삭제' 버튼 클릭 이벤트
        $('#confirmDeleteWarehouse').on('click', function() {
            if ($(this).is(':hidden')) {
                alert("삭제할 수 없는 창고입니다.");
                return;
            }
            alert("창고가 성공적으로 삭제되었습니다.");
            $('#warehouseDeleteModal').modal('hide');
            // 필요 시: DataTable 업데이트 코드 추가(예: table.row($row).remove().draw();)
        });

    });

    // mypage 버튼 클릭 시
    $('#btnmypageEmail, #btnmypageMenu').on('click', function () {
        const userInfo = {
            id: 'kim_admin',
            password: 'dummyPassword',
            name: '김관리자',
            email: 'email@example.com',
            phone: '010-1234-5678',
            address: '서울시 강남구'
        };

        $('#id').val(userInfo.id);
        $('#password').val(userInfo.password);
        $('#name').val(userInfo.name);
        $('#email').val(userInfo.email);
        $('#PhoneNumber').val(userInfo.phone);
        $('#address').val(userInfo.address);

        $('#mypageModal').modal('show');
    });

    //mypage 탈퇴
    $('#bntMypageSecession').on('click', function (e) {

        const result = confirm('⚠️ 계정을 삭제하시겠습니까?\n삭제된 계정은 복구되지 않습니다.');

        if (result) {
            // 확인 눌렀을 때 실행
            console.log('삭제 진행!');
        } else {
            // 취소 눌렀을 때 실행
            console.log('삭제 취소됨!');
        }

        $('#mypageModal').modal('show');
    });
</script>
</body>
</html>
