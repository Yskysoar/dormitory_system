package com.yskysoar.service;

import com.yskysoar.entity.Building;
import com.yskysoar.entity.Dormitory;

import java.util.List;

/**
 * @author Yskysoar
 * @createTime 2023-06-22 22:51
 * @description 寝室楼相关功能
 */

public interface BuildingService {
    public List<Building> list();

    public List<Building> search(String key, String value);

    public void save(Building building);

    public void update(Building building);

    public void delete(Integer id);

    public List<Dormitory> dormitoryListByGender(String gender);
}
