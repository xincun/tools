/*----------------------------------------------------------------------------------------------------------------
Version:	AdoAssist 1.10
   Time:	2011-03-30 18:32:12
    SQL:	tbl_infoprod
----------------------------------------------------------------------------------------------------------------*/
#pragma once

class CDBClassNamei
{
public:
	INT64			m_i64ID;	//0	ID	adBigInt
	CString			m_strProdGuid;	//1	ProdGuid	adVarWChar
	CString			m_strProdSerialize;	//2	ProdSerialize	adLongVarWChar
	CString			m_strProdTemplate;	//3	ProdTemplate	adLongVarWChar
	CAdoBinaryRes			m_brProdBinary;	//4	ProdBinary	adLongVarBinary
	long			m_lScaleValue;	//5	ScaleValue	adInteger
	long			m_lProdType;	//6	ProdType	adInteger
	CString			m_strProdCreateUserName;	//7	ProdCreateUserName	adVarWChar
	CString			m_strProdLastUserName;	//8	ProdLastUserName	adVarWChar
	COleDateTime			m_dtProdCreateTime;	//9	ProdCreateTime	adDBTimeStamp
	COleDateTime			m_dtProdLastModifyTime;	//10	ProdLastModifyTime	adDBTimeStamp

};


// Database Interface
/*
bool AdoRecord(const CAdoRecordset& rs, CDBClassNamei& rData) const
{
	if (ADO_ISGETCOLLECT(rs))
	{
		ADO_OPTCOLLECT(rs, rData, 0, m_i64ID);	//ID
	}
	ADO_OPTCOLLECT(rs, rData, 1, m_strProdGuid);	//ProdGuid
	ADO_OPTCOLLECT(rs, rData, 2, m_strProdSerialize);	//ProdSerialize
	ADO_OPTCOLLECT(rs, rData, 3, m_strProdTemplate);	//ProdTemplate
	ADO_OPTCOLLECT(rs, rData, 4, m_brProdBinary);	//ProdBinary
	ADO_OPTCOLLECT(rs, rData, 5, m_lScaleValue);	//ScaleValue
	ADO_OPTCOLLECT(rs, rData, 6, m_lProdType);	//ProdType
	ADO_OPTCOLLECT(rs, rData, 7, m_strProdCreateUserName);	//ProdCreateUserName
	ADO_OPTCOLLECT(rs, rData, 8, m_strProdLastUserName);	//ProdLastUserName
	ADO_OPTCOLLECT(rs, rData, 9, m_dtProdCreateTime);	//ProdCreateTime
	ADO_OPTCOLLECT(rs, rData, 10, m_dtProdLastModifyTime);	//ProdLastModifyTime

	return true;
}
*/
