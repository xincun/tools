// TableDataDlg.cpp : 实现文件
//

#include "stdafx.h"
#include "AdoAssist.h"
#include "TableDataDlg.h"

#include "Function.hpp"

const CTableDataDlg::CVarTypeInfo CTableDataDlg::Info_VarType[] =
{
	{adEmpty, 				_T("adEmpty"), 				_T("_variant_t"), 			_T("m_var")}, // 0
	{adTinyInt, 			_T("adTinyInt"), 			_T("signed char"), 			_T("m_c")}, // 16
	{adSmallInt, 			_T("adSmallInt"), 			_T("short"), 				_T("m_s")}, // 2
	{adInteger, 			_T("adInteger"), 			_T("long"), 				_T("m_l")}, // 3
	{adBigInt, 				_T("adBigInt"), 			_T("long long"), 			_T("m_ll")}, // 20
	{adUnsignedTinyInt,		_T("adUnsignedTinyInt"), 	_T("unsigned char"), 		_T("m_uc")}, // 17
	{adUnsignedSmallInt, 	_T("adUnsignedSmallInt"), 	_T("unsigned short"), 		_T("m_us")}, // 18
	{adUnsignedInt, 		_T("adUnsignedInt"), 		_T("unsigned long"), 		_T("m_ul")}, // 19
	{adUnsignedBigInt, 		_T("adUnsignedBigInt"), 	_T("unsigned long long"), 	_T("m_ull")}, // 21
	{adSingle, 				_T("adSingle"), 			_T("float"), 				_T("m_flt")}, // 4
	{adDouble, 				_T("adDouble"), 			_T("double"), 				_T("m_dbl")}, // 5
	{adCurrency, 			_T("adCurrency"), 			_T("COleCurrency"), 		_T("m_cy")}, // 6
	{adDecimal, 			_T("adDecimal"), 			_T("double"), 				_T("m_dbl")}, // 14
	{adNumeric, 			_T("adNumeric"), 			_T("double"), 				_T("m_dbl")}, // 131
	{adBoolean, 			_T("adBoolean"), 			_T("bool"), 				_T("m_b")}, // 11
	{adError, 				_T("adError"), 				_T("_variant_t"), 			_T("m_var")}, // 10
	{adUserDefined, 		_T("adUserDefined"), 		_T("_variant_t"), 			_T("m_var")}, // 132
	{adVariant, 			_T("adVariant"), 			_T("_variant_t"), 			_T("m_var")}, // 12
	{adIDispatch, 			_T("adIDispatch"), 			_T("_variant_t"), 			_T("m_var")}, // 9
	{adIUnknown, 			_T("adIUnknown"), 			_T("_variant_t"), 			_T("m_var")}, // 13
	{adGUID, 				_T("adGUID"), 				_T("_variant_t"), 			_T("m_var")}, // 72
	{adDate, 				_T("adDate"), 				_T("COleDateTime"), 		_T("m_dt")}, // 7
	{adDBDate, 				_T("adDBDate"), 			_T("COleDateTime"), 		_T("m_dt")}, // 133
	{adDBTime, 				_T("adDBTime"), 			_T("COleDateTime"), 		_T("m_dt")}, // 134
	{adDBTimeStamp, 		_T("adDBTimeStamp"), 		_T("COleDateTime"), 		_T("m_dt")}, // 135
	{adBSTR, 				_T("adBSTR"), 				_T("CString"), 				_T("m_str")}, // 8
	{adChar, 				_T("adChar"), 				_T("CString"), 				_T("m_str")}, // 129
	{adVarChar, 			_T("adVarChar"), 			_T("CString"), 				_T("m_str")}, // 200
	{adLongVarChar, 		_T("adLongVarChar"), 		_T("CString"), 				_T("m_str")}, // 201
	{adWChar, 				_T("adWChar"), 				_T("CString"), 				_T("m_str")}, // 130
	{adVarWChar, 			_T("adVarWChar"), 			_T("CString"), 				_T("m_str")}, // 202
	{adLongVarWChar, 		_T("adLongVarWChar"), 		_T("CString"), 				_T("m_str")}, // 203
	{adBinary, 				_T("adBinary"), 			_T("CAdoBinaryRes"), 		_T("m_br")}, // 128
	{adVarBinary, 			_T("adVarBinary"), 			_T("CAdoBinaryRes"), 		_T("m_br")}, // 204
	{adLongVarBinary, 		_T("adLongVarBinary"), 		_T("CAdoBinaryRes"), 		_T("m_br")}, // 205
	{adChapter, 			_T("adChapter"), 			_T("_variant_t"), 			_T("m_var")}, // 136
	{adFileTime, 			_T("adFileTime"), 			_T("FILETIME"), 			_T("m_ft")}, // 64
	{adPropVariant, 		_T("adPropVariant"), 		_T("_variant_t"), 			_T("m_var")}, // 138
	{adVarNumeric, 			_T("adVarNumeric"), 		_T("double"), 				_T("m_dbl")}, // 139
	{adArray, 				_T("adArray"), 				_T("_variant_t"), 			_T("m_var")}
};

const CString CTableDataDlg::m_strTemplate = _T("\
/*----------------------------------------------------------------------------------------------------------------\n\
Version:	AdoAssist 1.10\n\
   Time:	[TIME]\n\
    SQL:	[SQL]\n\
----------------------------------------------------------------------------------------------------------------*/\n\
#pragma once\n\
\n\
class C[CLASSNAME]\n\
{\n\
public:\n\
[MEMBERVARIABLES]\n\
public:\n\
	// Database Interface\n\
	bool AdoRecord(const ADODB::CAdoRecordset& rs);\n\
};\n\
\n\
// Database Interface\n\
inline bool C[CLASSNAME]::AdoRecord(const ADODB::CAdoRecordset& rs)\n\
{\n\
[DBINTERFACE]\n\
	return true;\n\
}\n\
\n\
\n\
");

// CTableDataDlg 对话框

IMPLEMENT_DYNAMIC(CTableDataDlg, CDialog)

CTableDataDlg::CTableDataDlg(CWnd* pParent /*=NULL*/)
: CDialog(CTableDataDlg::IDD, pParent)
, m_strCodeType(_T(""))
, m_bCheckIndex(FALSE)
{

}

CTableDataDlg::~CTableDataDlg()
{
}

void CTableDataDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	DDX_Control(pDX, IDC_TABLEDATA_LIST, m_wndDataList);
	DDX_CBString(pDX, IDC_CODETYPE, m_strCodeType);
	DDX_Check(pDX, IDC_CHECK_INDEX, m_bCheckIndex);
	DDX_Control(pDX, IDC_NEXTRECORDSET, m_wndBtn[0]);
	DDX_Control(pDX, IDC_WRITECODE, m_wndBtn[1]);
}


BEGIN_MESSAGE_MAP(CTableDataDlg, CDialog)
	ON_BN_CLICKED(IDC_WRITECODE, &CTableDataDlg::OnBnClickedWritecode)
	ON_WM_CTLCOLOR()
	ON_CBN_SELCHANGE(IDC_CODETYPE, &CTableDataDlg::OnCbnSelchangeCodetype)
	ON_WM_CLOSE()
	ON_BN_CLICKED(IDC_NEXTRECORDSET, &CTableDataDlg::OnBnClickedNextrecordset)
END_MESSAGE_MAP()


// CTableDataDlg 消息处理程序
void CTableDataDlg::InitTableData(_RecordsetPtr& pRs, LPCTSTR lpszSql)
{	
	if (pRs == NULL
		|| !IsWindow(GetSafeHwnd()))
	{
		return ;
	}
	m_strSql = lpszSql;
	CString strText, strName, strIndex;
	FieldPtr pFidld;
	CFieldInfo oFieldInfo;

	m_vectFieldInfo.clear();
	m_arrAutoIncrement.RemoveAll();
	try
	{
		long lCount = pRs->GetFields()->GetCount();
		m_vectFieldInfo.reserve(lCount);
		for (long i=0; i<lCount; i++)
		{
			pFidld = pRs->GetFields()->GetItem(i);
			oFieldInfo.strFieldName		= (LPCTSTR)pFidld->GetName();
			oFieldInfo.eFieldType		= pFidld->GetType();
			m_vectFieldInfo.push_back(oFieldInfo);
			try
			{
				_variant_t var		= pFidld->Properties->Item[_T("ISAUTOINCREMENT")]->GetValue();
				if (var.vt == VT_BOOL 
					&& var.boolVal != VARIANT_FALSE)
				{
					m_arrAutoIncrement.Add(oFieldInfo.strFieldName);
				}
				
			}
			catch (...)
			{
				
			}
		}

		FillDataList();
		m_pRecordset = pRs;
		GetDlgItem(IDC_NEXTRECORDSET)->EnableWindow(TRUE);
	}
	catch (_com_error& e)
	{
		AfxMessageBox(ADO_FORMATMSG(e), MB_ICONERROR);
	}
}

BOOL CTableDataDlg::OnInitDialog()
{
	CDialog::OnInitDialog();

	// TODO:  在此添加额外的初始化 

	m_wndDataList.SetExtendedStyle( 
		m_wndDataList.GetExtendedStyle() 
		| LVS_EX_GRIDLINES | LVS_EX_FULLROWSELECT );
	m_wndDataList.SetBkColor(BK_COLOR - 0xff);
	m_wndDataList.SetTextBkColor(BK_COLOR -0xff);
	m_wndDataList.InsertColumn(0, _T("索引"), LVCFMT_CENTER, 42);
	m_wndDataList.InsertColumn(1, _T("字段名"), LVCFMT_LEFT, 145);
	m_wndDataList.InsertColumn(2, _T("变量名称"), LVCFMT_LEFT, 160);
	m_wndDataList.InsertColumn(3, _T("变体类型"), LVCFMT_LEFT, 110);
	m_wndDataList.InsertColumn(4, _T("数据类型"), LVCFMT_LEFT, 110);
	
	CString strIniFile;
	CString strSectionNames;
	CString strSectionName;
	CWnd* pWnd = GetDlgItem(IDC_CODETYPE);
	CComboBox* pComboBox = static_cast<CComboBox*>(pWnd);
	ASSERT(pComboBox != NULL);
	strIniFile = GetExePath();
	strIniFile += _T("AdoAssist.ini");
	TCHAR cSectionNames[2048];
	RtlZeroMemory(cSectionNames,sizeof(cSectionNames));
	DWORD nRet = GetPrivateProfileSectionNames(cSectionNames, _countof(cSectionNames), strIniFile);
	UINT nOldPos = -1;
	UINT nCount = _countof(cSectionNames);
	for (UINT i=0, nPos=0; i+1<nCount && i<nRet 
		&& !(cSectionNames[i]=='\0'&&cSectionNames[i+1]=='\0'); i++)
	{
		if (nPos != nOldPos )
		{		
			strSectionName = (LPCTSTR)&cSectionNames[nPos];
			if (!strSectionName.IsEmpty() 
				&& strSectionName.CompareNoCase(_T("Default")))
			{
				pComboBox->AddString(strSectionName);
			}
			nOldPos = nPos;
		}
		if (cSectionNames[i]=='\0')
		{
			nPos = i+1;
		}
	}
	pComboBox->SelectString(0, _T("Default"));

	m_oDlgBrush.CreateSolidBrush(BK_COLOR);
	HICON hIcon = AfxGetApp()->LoadIcon(IDR_MAINFRAME);
	SetClassLong(GetSafeHwnd(), GCL_HICON, (LONG)hIcon);
	GetDlgItem(IDC_NEXTRECORDSET)->EnableWindow(FALSE);

// 	DDX_Control(pDX, IDC_NEXTRECORDSET, m_wndBtn[0]);
// 	DDX_Control(pDX, IDC_WRITECODE, m_wndBtn[1]);
	m_wndBtn[0].SetTooltip(_T("获取下一个记录集"));
	m_wndBtn[1].SetTooltip(_T("生成编程的数据库类和数据库接口代码"));

	return TRUE;  // return TRUE unless you set the focus to a control
	// 异常: OCX 属性页应返回 FALSE
}

UINT CTableDataDlg::GetVarTypeIndex(int nEnumValue)
{
	UINT nCount = m_vectVarType.size();
	for (UINT i=0; i<nCount; i++)
	{
		if (m_vectVarType[i].nEnumValue == nEnumValue)
		{
			return i;
		}
	}
	ASSERT(FALSE);
	return -1;
}

UINT CTableDataDlg::GetVarTypeIndex(LPCTSTR lpszEnumName)
{
	UINT nCount = m_vectVarType.size();
	for (UINT i=0; i<nCount; i++)
	{
		if (!m_vectVarType[i].strEnumName.CompareNoCase(lpszEnumName))
		{
			return i;
		}
	}
	ASSERT(FALSE);
	return -1;
}

void CTableDataDlg::OnBnClickedWritecode()
{
	// TODO: 在此添加控件通知处理程序代码
	CFileDialog fileDlg(FALSE, _T(".h"), _T("DBClassName"),
		0, _T("C++ Head File(*.h)|*.h|All File(*.*)|*.*||"));
	if (IDOK != fileDlg.DoModal())
	{
		return ;
	}

	UpdateData(TRUE);
	CString			strIndex;
	CString			strFieldName;
	CString			strVariableName;
	CString			strVariantType;
	CString			strDataType;

	CString strClass, strAdo;
	CString strOptCode;

	int nCount = m_wndDataList.GetItemCount();
	int nArrayCount = m_arrAutoIncrement.GetCount();
	bool bAutoIncrement = false;

	for (int i=0; i<nCount; i++)
	{
		strIndex			= m_wndDataList.GetItemText(i, 0);
		strFieldName		= m_wndDataList.GetItemText(i, 1);
		strVariableName		= m_wndDataList.GetItemText(i, 2);
		strVariantType		= m_wndDataList.GetItemText(i, 3);
		strDataType			= m_wndDataList.GetItemText(i, 4);

		strClass.AppendFormat(_T("\t%s\t\t\t%s;\t//%s\t%s\t%s\n"), 
			strDataType, strVariableName, 
			strIndex, strFieldName, strVariantType);

		if (!m_bCheckIndex)
		{
			strOptCode.Format(_T("\tADO_OPTCOLLECT(_T(\"%s\"), %s);\t//%s\n"), 
				strFieldName, strVariableName, strIndex);
		}
		else
		{
			strOptCode.Format(_T("\tADO_OPTCOLLECT(%s, %s);\t//%s\n"), 
				strIndex, strVariableName, strFieldName);
		}

		bAutoIncrement = false;
		for (int j=0; j<nArrayCount; j++)
		{
			if (strFieldName.CompareNoCase(m_arrAutoIncrement[j]) == 0)
			{
				bAutoIncrement = true;
				break;
			}
		}
		if (bAutoIncrement)
		{
			strAdo.AppendFormat(_T("\tif (ADO_ISGETCOLLECT(rs))\n\t{\n\t%s\t}\n"),
				strOptCode);
		}
		else
		{
			strAdo += strOptCode;
		}

	}


	COleDateTime ot = COleDateTime::GetCurrentTime();
	CString strCode = m_strTemplate;
	strCode.Replace(_T("[TIME]"), ot.Format(_T("%Y-%m-%d %H:%M:%S")));
	strCode.Replace(_T("[SQL]"), m_strSql);
	strCode.Replace(_T("[MEMBERVARIABLES]"), strClass);
	strCode.Replace(_T("[DBINTERFACE]"), strAdo);
	strCode.Replace(_T("[CLASSNAME]"), fileDlg.GetFileTitle());

	if (Save(fileDlg.GetPathName(), strCode))
	{
		AfxMessageBox(_T("生成代码成功"), MB_ICONINFORMATION);
	}
	else
	{
		AfxMessageBox(GetErrorText(), MB_ICONERROR);
	}

}

HBRUSH CTableDataDlg::OnCtlColor(CDC* pDC, CWnd* pWnd, UINT nCtlColor)
{
	HBRUSH hbr = CDialog::OnCtlColor(pDC, pWnd, nCtlColor);

	// TODO:  在此更改 DC 的任何属性
	if (nCtlColor == CTLCOLOR_STATIC)
	{
		pDC->SetBkMode(TRANSPARENT);
		return m_oDlgBrush;
	}

	// TODO:  如果默认的不是所需画笔，则返回另一个画笔
	if (nCtlColor == CTLCOLOR_DLG
		&& m_oDlgBrush.m_hObject != NULL)
	{
		return m_oDlgBrush;
	}
	return hbr;
}


void CTableDataDlg::FillDataList()
{
	CString strText, strName, strIndex;

	GetFieldTypeIni();
	
	//CComboBox *pComboBox = (CComboBox *)GetDlgItem(IDC_CODETYPE);
	//UINT nIndex = pComboBox->GetCurSel();
	UINT nIndex = 0;
	m_wndDataList.DeleteAllItems();
	UINT nCount = m_vectFieldInfo.size();
	for (UINT i=0; i<nCount; i++)
	{
		strName = m_vectFieldInfo[i].strFieldName;			
		nIndex = GetVarTypeIndex(m_vectFieldInfo[i].eFieldType);
		strText.Format(_T("%s%s"), 
			m_vectVarType[nIndex].strPrefix, strName);
		strIndex.Format(_T("%d"), i);
		m_wndDataList.InsertItem(i, strIndex);
		m_wndDataList.SetItemText(i, 1, strName);
		m_wndDataList.SetItemText(i, 2, strText);
		m_wndDataList.SetItemText(i, 3, m_vectVarType[nIndex].strEnumName);
		m_wndDataList.SetItemText(i, 4, m_vectVarType[nIndex].strDataType);
	}
}


void CTableDataDlg::GetFieldTypeIni()
{
	m_vectVarType.clear();
	m_vectVarType.assign(&Info_VarType[0], &Info_VarType[_countof(Info_VarType)]);
	GetFieldTypeIni(_T("Default"));
	UpdateData(TRUE);
	if ( m_strCodeType.CompareNoCase(_T("Default")) 
		|| m_strCodeType.IsEmpty())
	{
		GetFieldTypeIni(m_strCodeType);
	}
}


void CTableDataDlg::GetFieldTypeIni(LPCTSTR lpszAppName)
{
	CString strIniFile;

	strIniFile = GetExePath();
	strIniFile += _T("AdoAssist.ini");
	CFileFind oFileFind;
	if (!oFileFind.FindFile(strIniFile))
	{
		return ;
	}

	CString		strValue;
	CString		strDataType;
	CString		strPrefix;
	UINT nIndex = 0;

	UINT nCount = _countof(Info_VarType);
	for (UINT i=0; i<nCount; i++)
	{
		GetPrivateProfileString(lpszAppName, Info_VarType[i].strEnumName, 
			_T(""), strValue.GetBuffer(MAX_PATH), MAX_PATH, strIniFile);
		strValue.ReleaseBuffer();
		if (!strValue.IsEmpty())
		{
			int nPos = 0;
			strDataType = strValue.Tokenize(_T("|;/\\"), nPos);
			strPrefix	= strValue.Tokenize(_T("|;/\\"), nPos);
			nIndex = GetVarTypeIndex(Info_VarType[i].strEnumName);
			m_vectVarType[nIndex].strDataType	= strDataType;
			m_vectVarType[nIndex].strPrefix		= strPrefix;
		}
	}
}

void CTableDataDlg::OnCbnSelchangeCodetype()
{
	// TODO: 在此添加控件通知处理程序代码
	FillDataList();
	TRACE(_T("OnCbnSelchangeCodetype\n"));
}

void CTableDataDlg::OnClose()
{
	// TODO: 在此添加消息处理程序代码和/或调用默认值
	//AfxGetMainWnd()->SendMessage(UM_CHILDWNDCLOSE);

	CDialog::OnClose();
}

void CTableDataDlg::OnBnClickedNextrecordset()
{
	// TODO: 在此添加控件通知处理程序代码
	try
	{	
		if (m_pRecordset != NULL /*&& m_pRecordset->GetState() == adStateOpen*/)
		{
			m_pRecordset = m_pRecordset->NextRecordset(NULL);
			if (m_pRecordset != NULL)
			{
				InitTableData(m_pRecordset, m_strSql);
			}
			else
			{
				GetDlgItem(IDC_NEXTRECORDSET)->EnableWindow(FALSE);
				AfxMessageBox(_T("记录为空"), MB_ICONERROR);				
			}			
		}
		else
		{
			GetDlgItem(IDC_NEXTRECORDSET)->EnableWindow(FALSE);
			AfxMessageBox(_T("已经没有可执行的SQL命令"), MB_ICONERROR);
		}
	}
	catch (_com_error& e)
	{
		GetDlgItem(IDC_NEXTRECORDSET)->EnableWindow(FALSE);
		AfxMessageBox(ADO_FORMATMSG(e), MB_ICONERROR);
		
	}

}
