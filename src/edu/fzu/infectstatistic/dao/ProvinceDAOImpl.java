package edu.fzu.infectstatistic.dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import edu.fzu.infectstatistic.pojo.Province;
import edu.fzu.infectstatistic.util.DBUtil;

public class ProvinceDAOImpl implements ProvinceDAO{

	@Override
	public Province getStatisticData(String name, Date date) {
		int ip,sp,cure,dead;
		ip = sp = cure = dead = 0;
		String sql = "select * from record where province=? && date<=?";
        try (Connection c = DBUtil.getConnection(); PreparedStatement ps = c.prepareStatement(sql)) {           
            ps.setString(1, name);
            ps.setDate(2, date);
        	ResultSet rs = ps.executeQuery(sql);            
            while (rs.next()) {
                ip += rs.getInt("ip");
                sp += rs.getInt("sp");
                cure += rs.getInt("cure");
                dead += rs.getInt("dead");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return new Province(name, ip, sp, cure, dead);
	}

	@Override
	public Province getChangedData(String name, Date date) {
		int ip,sp,cure,dead;
		ip = sp = cure = dead = 0;
		String sql = "select * from record where province=? && date=?";
        try (Connection c = DBUtil.getConnection(); PreparedStatement ps = c.prepareStatement(sql)) {           
            ps.setString(1, name);
            ps.setDate(2, date);
        	ResultSet rs = ps.executeQuery(sql);            
            while (rs.next()) {
                ip = rs.getInt("ip");
                sp = rs.getInt("sp");
                cure = rs.getInt("cure");
                dead = rs.getInt("dead");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return new Province(name, ip, sp, cure, dead);
	}

	@Override
	public Province getNationData() {
		// TODO Auto-generated method stub
		return null;
	}
	
}
