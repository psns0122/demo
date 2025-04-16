package com.ssg.demo.service;

import com.ssg.demo.domain.WarehouseDTO;
import com.ssg.demo.mappers.WarehouseMapper;
import com.ssg.demo.service.WarehouseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class WarehouseServiceImpl implements WarehouseService {
  
  @Autowired
  private WarehouseMapper warehouseMapper;
  
  @Override
  public List<WarehouseDTO> getAllWarehouses() {
    return warehouseMapper.selectAllWarehouses();
  }
  
  @Override
  public void addWarehouse(WarehouseDTO warehouseDTO) {
    warehouseMapper.insertWarehouse(warehouseDTO);
  }
  
  @Override
  public void updateWarehouse(WarehouseDTO warehouseDTO) {
    warehouseMapper.updateWarehouse(warehouseDTO);
  }
}