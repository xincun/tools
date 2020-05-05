/*----------------------------------------------------------------------------------------------------------------
Version:	AdoAssist 1.10
   Time:	2011-11-09 13:49:25
    SQL:	SELECT * FROM tbl_Demo
----------------------------------------------------------------------------------------------------------------*/
#pragma once

class CDBDemo
{
public:
	long			m_lID;	//0	ID	adInteger
	CString			m_strGuid;	//1	Guid	adVarWChar
	CString			m_strName;	//2	Name	adVarWChar
	long			m_lAge;	//3	Age	adInteger

public:
	// Database Interface
	bool AdoRecord(const ADODB::CAdoRecordset& rs);
};

// Database Interface
inline bool CDBDemo::AdoRecord(const ADODB::CAdoRecordset& rs)
{
	if (ADO_ISGETCOLLECT(rs))
	{
		ADO_OPTCOLLECT(_T("ID"), m_lID);	//0
	}
	ADO_OPTCOLLECT(_T("Guid"), m_strGuid);	//1
	ADO_OPTCOLLECT(_T("Name"), m_strName);	//2
	ADO_OPTCOLLECT(_T("Age"), m_lAge);	//3

	return true;
}


