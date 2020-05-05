/*----------------------------------------------------------------------------------------------------------------
Version:	AdoAssist 1.10
   Time:	2011-03-28 14:55:58
    SQL:	tbl_infoprod
----------------------------------------------------------------------------------------------------------------*/
#pragma once

class CDBClassName1
{
public:
	INT64			m_i64ID;	//0	ID
	CString			m_strProdGuid;	//1	ProdGuid
	CString			m_strProdSerialize;	//2	ProdSerialize
	CString			m_strProdTemplate;	//3	ProdTemplate
	CAdoBinaryRes			m_brProdBinary;	//4	ProdBinary
	long			m_lScaleValue;	//5	ScaleValue
	long			m_lProdType;	//6	ProdType
	CString			m_strProdCreateUserName;	//7	ProdCreateUserName
	CString			m_strProdLastUserName;	//8	ProdLastUserName
	COleDateTime			m_dtProdCreateTime;	//9	ProdCreateTime
	COleDateTime			m_dtProdLastModifyTime;	//10	ProdLastModifyTime

};


// Database Interface
/*----------------------------------------------------------------------------------------------------------------
bool AdoRecord(CAdoRecordset& rs, CDBClassName1& rData)
{
	ADO_OPTCOLLECT(rs, rData, _T("ID"), m_i64ID));	//0
	ADO_OPTCOLLECT(rs, rData, _T("ProdGuid"), m_strProdGuid));	//1
	ADO_OPTCOLLECT(rs, rData, _T("ProdSerialize"), m_strProdSerialize));	//2
	ADO_OPTCOLLECT(rs, rData, _T("ProdTemplate"), m_strProdTemplate));	//3
	ADO_OPTCOLLECT(rs, rData, _T("ProdBinary"), m_brProdBinary));	//4
	ADO_OPTCOLLECT(rs, rData, _T("ScaleValue"), m_lScaleValue));	//5
	ADO_OPTCOLLECT(rs, rData, _T("ProdType"), m_lProdType));	//6
	ADO_OPTCOLLECT(rs, rData, _T("ProdCreateUserName"), m_strProdCreateUserName));	//7
	ADO_OPTCOLLECT(rs, rData, _T("ProdLastUserName"), m_strProdLastUserName));	//8
	ADO_OPTCOLLECT(rs, rData, _T("ProdCreateTime"), m_dtProdCreateTime));	//9
	ADO_OPTCOLLECT(rs, rData, _T("ProdLastModifyTime"), m_dtProdLastModifyTime));	//10

	return true;
}
----------------------------------------------------------------------------------------------------------------*/
