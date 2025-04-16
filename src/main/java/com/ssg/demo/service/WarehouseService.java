package com.ssg.demo.service;

import com.ssg.demo.domain.WarehouseDTO;
import java.util.List;

public interface WarehouseService {
  List<WarehouseDTO> getAllWarehouses();
  void addWarehouse(WarehouseDTO warehouseDTO);
  void updateWarehouse(WarehouseDTO warehouseDTO);
}