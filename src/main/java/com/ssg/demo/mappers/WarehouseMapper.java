package com.ssg.demo.mappers;

import com.ssg.demo.domain.WarehouseDTO;
import java.util.List;

public interface WarehouseMapper {
  List<WarehouseDTO> selectAllWarehouses();
  void insertWarehouse(WarehouseDTO warehouseDTO);
  void updateWarehouse(WarehouseDTO warehouseDTO);
}