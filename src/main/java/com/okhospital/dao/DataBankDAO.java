package com.okhospital.dao;

import java.util.List;

import com.okhospital.dto.DataBankDTO;

public interface DataBankDAO {
		//글 목록
		public List<DataBankDTO> dataList() throws Exception;
		
		//글 상세보기
		public DataBankDTO dataRead(int datano) throws Exception;
		
		//글 등록
		public void DataBankWrite(DataBankDTO ddto) throws Exception; 
		
		//글 수정
		public void DataBankUpdate(DataBankDTO ddto) throws Exception;
		
		//글 삭제
		public void DataBankDelete(int datano) throws Exception;
}
