package com.okhospital.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.okhospital.dao.DataBankDAO;
import com.okhospital.dto.DataBankDTO;
@Service
public class DataBankServiceImpl implements DataBankService {
	@Inject
	DataBankDAO databankDao;
	
	@Override
	public List<DataBankDTO> dataList() throws Exception {
		return databankDao.dataList();
	}

	@Override
	public DataBankDTO dataRead(int datano) throws Exception {
		return databankDao.dataRead(datano);
	}

	@Override
	public void DataBankWrite(DataBankDTO ddto) throws Exception {
		databankDao.DataBankWrite(ddto);
	}

	@Override
	public void DataBankUpdate(DataBankDTO ddto) throws Exception {
		databankDao.DataBankUpdate(ddto);
	}

	@Override
	public void DataBankDelete(int datano) throws Exception {
		databankDao.DataBankDelete(datano);
	}
}
