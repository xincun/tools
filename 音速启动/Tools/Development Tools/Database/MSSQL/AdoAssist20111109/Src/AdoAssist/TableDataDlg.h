#pragma once
#include "afxcmn.h"
#include "EditList.h"
#include <vector>

#include "xMfcBtn.h"

using namespace std;



// CTableDataDlg 对话框


class CTableDataDlg : public CDialog
{
	DECLARE_DYNAMIC(CTableDataDlg)

public:
	CTableDataDlg(CWnd* pParent = NULL);   // 标准构造函数
	virtual ~CTableDataDlg();

// 对话框数据
	enum { IDD = IDD_TABLEDATA_DIALOG };

protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV 支持

	DECLARE_MESSAGE_MAP()

private:
	struct CVarTypeInfo
	{
		int			nEnumValue;
		CString		strEnumName;
		CString		strDataType;
		CString		strPrefix;
	};

	struct CFieldInfo
	{
		CString			strFieldName;
		DataTypeEnum	eFieldType;
	};

	static const CVarTypeInfo Info_VarType[];
	static const CString	 m_strTemplate;
	std::vector<CVarTypeInfo> m_vectVarType;

private:
	CString			m_strSql;

public:
	void InitTableData(_RecordsetPtr& pRs, LPCTSTR lpszSql);
	virtual BOOL OnInitDialog();
	UINT GetVarTypeIndex(int nEnumValue);
	UINT GetVarTypeIndex(LPCTSTR lpszEnumName);

public:
	//CListCtrl m_wndDataList;
	CEditList m_wndDataList;
	afx_msg void OnBnClickedWritecode();

private:
	CBrush				m_oDlgBrush;

	std::vector<CFieldInfo>	m_vectFieldInfo;
	_RecordsetPtr			m_pRecordset;
	CxMfcBtn				m_wndBtn[2];

	// AUTOINCREMENT
	CStringArray			m_arrAutoIncrement;

	void FillDataList();
	void GetFieldTypeIni();
	void GetFieldTypeIni(LPCTSTR lpszAppName);
public:
	afx_msg HBRUSH OnCtlColor(CDC* pDC, CWnd* pWnd, UINT nCtlColor);
	CString m_strCodeType;
	afx_msg void OnCbnSelchangeCodetype();
	afx_msg void OnClose();
	BOOL m_bCheckIndex;
	afx_msg void OnBnClickedNextrecordset();
};
