package edu.fzu.infectstatistic.dao;

import java.sql.Date;

import edu.fzu.infectstatistic.pojo.Province;

public interface ProvinceDAO {
	Province getStatisticData(String name, Date date);
	Province getChangedData(String name, Date date);
}
