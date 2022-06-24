package com.okhospital.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.okhospital.dto.DataBankDTO;

@Repository
public class DataBankDAOImpl implements DataBankDAO {
	@Inject
	SqlSession sqlSession; 
	
	@Override
	public List<DataBankDTO> dataList() throws Exception {
		return sqlSession.selectList("databank.databankList");
	}

	@Override
	public DataBankDTO dataRead(int datano) throws Exception {
		return sqlSession.selectOne("databank.databankRead");
	}

	@Override
	public void DataBankWrite(DataBankDTO ddto) throws Exception {
		sqlSession.insert("databank.databankWrite",ddto);
	}

	@Override
	public void DataBankUpdate(DataBankDTO ddto) throws Exception {
		sqlSession.update("databank.databankUpdate", ddto);
	}

	@Override
	public void DataBankDelete(int datano) throws Exception {
		sqlSession.delete("databank.databankDelete",datano);
	}
}
