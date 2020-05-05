// DataGridDlg.cpp : 实现文件
//

#include "stdafx.h"
#include "AdoAssist.h"
#include "DataGridDlg.h"
#include "Function.hpp"

// CDataGridDlg 对话框

const CString CDataGridDlg::m_strTemplate = _T("\
------------------------------------------------------------------------------------------------------------------\n\
Version:	AdoAssist 1.10\n\
Time:	[TIME]\n\
SQL:	[SQL]\n\
----------------------------------------------------------------------------------------------------------------\n");

IMPLEMENT_DYNAMIC(CDataGridDlg, CDialog)

CDataGridDlg::CDataGridDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CDataGridDlg::IDD, pParent)
	, m_nCodeType(0)
{
	//m_hIcon = AfxGetApp()->LoadIcon(IDR_MAINFRAME);
}

CDataGridDlg::~CDataGridDlg()
{
}

void CDataGridDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	DDX_Control(pDX, IDC_DATAGRID, m_oDataGrid);
	DDX_CBIndex(pDX, IDC_CODETYPE, m_nCodeType);
	DDX_Control(pDX, IDC_NEXTRECORDSET, m_wndBtn[0]);
	DDX_Control(pDX, IDC_WRITECODE, m_wndBtn[1]);
}


BEGIN_MESSAGE_MAP(CDataGridDlg, CDialog)
	ON_WM_SIZE()
	ON_WM_CLOSE()
	ON_BN_CLICKED(IDC_NEXTRECORDSET, &CDataGridDlg::OnBnClickedNextrecordset)
	ON_BN_CLICKED(IDC_WRITECODE, &CDataGridDlg::OnBnClickedWritecode)
	ON_WM_SIZING()
	ON_WM_CTLCOLOR()
END_MESSAGE_MAP()



BEGIN_EASYSIZE_MAP(CDataGridDlg)
	EASYSIZE(IDC_DATAGRID, ES_BORDER, ES_BORDER, ES_BORDER, ES_BORDER, 0)
	EASYSIZE(IDC_STATIC_G, ES_KEEPSIZE, ES_KEEPSIZE, ES_BORDER, ES_BORDER, 0)
	EASYSIZE(IDC_NEXTRECORDSET, IDC_STATIC_G, IDC_STATIC_G, IDC_STATIC_G, IDC_STATIC_G, 0)
	EASYSIZE(IDC_STATIC, IDC_STATIC_G, IDC_STATIC_G, IDC_STATIC_G, IDC_STATIC_G, 0)
	EASYSIZE(IDC_CODETYPE, IDC_STATIC_G, IDC_STATIC_G, IDC_STATIC_G, IDC_STATIC_G, 0)
	EASYSIZE(IDC_WRITECODE, IDC_STATIC_G, IDC_STATIC_G, IDC_STATIC_G, IDC_STATIC_G, 0)
END_EASYSIZE_MAP


// CDataGridDlg 消息处理程序

void CDataGridDlg::OnSize(UINT nType, int cx, int cy)
{
	CDialog::OnSize(nType, cx, cy);


	// TODO: 在此处添加消息处理程序代码

	UPDATE_EASYSIZE;
}


void CDataGridDlg::OnClose()
{
	// TODO: 在此添加消息处理程序代码和/或调用默认值
	//AfxGetMainWnd()->SendMessage(UM_CHILDWNDCLOSE);

	CDialog::OnClose();
}


void CDataGridDlg::RefreshDatagrid(_RecordsetPtr& rs, LPCTSTR lpszCaption)
{
	if (rs == NULL
		|| !IsWindow(GetSafeHwnd()))
	{
		return;
	}
	m_oDataGrid.putref_DataSource(rs.GetInterfacePtr());
	m_oDataGrid.put_Caption(lpszCaption);
	m_oDataGrid.Refresh();
	m_pRecordset = rs;
	m_strCaption = lpszCaption;
	GetDlgItem(IDC_NEXTRECORDSET)->EnableWindow(TRUE);
}
void CDataGridDlg::OnBnClickedNextrecordset()
{
	// TODO: 在此添加控件通知处理程序代码
	try
	{	
		if (m_pRecordset != NULL /*&& m_pRecordset->GetState() == adStateOpen*/)
		{
			m_pRecordset = m_pRecordset->NextRecordset(NULL);
			if (m_pRecordset != NULL)
			{
				RefreshDatagrid(m_pRecordset, m_strCaption);
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

BOOL CDataGridDlg::OnInitDialog()
{
	CDialog::OnInitDialog();

	// TODO:  在此添加额外的初始化
	GetDlgItem(IDC_NEXTRECORDSET)->EnableWindow(FALSE);
	m_oDlgBrush.CreateSolidBrush(BK_COLOR);

	// 	DDX_Control(pDX, IDC_NEXTRECORDSET, m_wndBtn[0]);
	// 	DDX_Control(pDX, IDC_WRITECODE, m_wndBtn[1]);
	m_wndBtn[0].SetTooltip(_T("获取下一个记录集"));
	m_wndBtn[1].SetTooltip(_T("把记录集生成SQL的INSERT语句代码"));

	INIT_EASYSIZE;
	return TRUE;  // return TRUE unless you set the focus to a control
	// 异常: OCX 属性页应返回 FALSE
}

inline bool CDataGridDlg::AdoConvert(CString& dstValue, const _variant_t& srcValue)
{
	dstValue.Empty();
	try
	{
		if (srcValue.vt == VT_NULL)
		{
			dstValue.Empty();
		}
		else
		{
			dstValue = (LPCTSTR)_bstr_t(srcValue);
		}		
		return true;
	}
	catch (const _com_error& e)
	{
		TRACE(_T("%s\n"), e.ErrorMessage());
	}
	return false;
}

void CDataGridDlg::OnBnClickedWritecode()
{
	// TODO: 在此添加控件通知处理程序代码
	if (m_pRecordset == NULL)
	{
		AfxMessageBox(_T("当前没有可用的记录"), MB_ICONINFORMATION);
		return;
	}
	CFileDialog fileDlg(FALSE, _T(".sql"), _T("DBCmdFile"),
		0, _T("SQL Command File(*.sql)|*.sql|All File(*.*)|*.*||"));
	if (IDOK != fileDlg.DoModal())
	{
		return ;
	}

	COleDateTime ot = COleDateTime::GetCurrentTime();
	CString strCode = m_strTemplate;
	strCode.Replace(_T("[TIME]"), ot.Format(_T("%Y-%m-%d %H:%M:%S")));
	strCode.Replace(_T("[SQL]"), m_strCaption);

	if (GetSqlCode(strCode, fileDlg.GetFileTitle()))
	{
		if (Save(fileDlg.GetPathName(), strCode))
		{
			AfxMessageBox(_T("生成代码成功"), MB_ICONINFORMATION);
		}
		else
		{
			AfxMessageBox(GetErrorText(), MB_ICONERROR);
		}
	}


}


bool CDataGridDlg::GetSqlCode(CString& strCode, LPCTSTR lpszTableName)
{
	UpdateData(TRUE);
	CString strLine;
	CString strFieldNames;
	CString strFieldValues;
	CString strValue;
	CStringArray arrFieldNames;
	int nPos = 0;
	bool bRet = false;
	// Insert into [TableName] ([FIELD]) values ([VALUE]);
	strCode.Empty();
	try
	{

		if (m_pRecordset->GetBOF())
		{
			AfxMessageBox(_T("记录为空！"), MB_ICONINFORMATION);
			return false;
		}

		m_pRecordset->MoveFirst();
		FieldsPtr pFieldsPtr = m_pRecordset->GetFields();
		FieldPtr  pFieldPtr;
		long nCount = pFieldsPtr->GetCount();

		for (long i=0; i<nCount; i++)
		{
			arrFieldNames.Add((LPCTSTR)pFieldsPtr->GetItem(i)->GetName());
		}

		while (!m_pRecordset->GetEndOfFile())
		{
			strFieldNames.Empty();
			strFieldValues.Empty();
			for (long i=0; i<nCount; i++)
			{
				pFieldPtr = pFieldsPtr->GetItem(i);
				if (pFieldPtr->GetAttributes() & adFldLong)
				{
					continue;
				}
				switch (pFieldPtr->GetType())
				{
				case adBinary:// = 128,
				case adVarBinary:// = 204,
				case adLongVarBinary:// = 205, 
					// 前面的判断不管用？！
					ASSERT(FALSE);
					continue;
				case adArray:// = 8192
					ASSERT(FALSE);
					continue;
				default:
					break;
				}

				if (GetVarAsString(strValue, pFieldPtr->Value))
				{
					strFieldNames.AppendFormat(_T("[%s],"), arrFieldNames[i]);
					strFieldValues.AppendFormat(_T("%s,"), strValue);
				}
			}
			strFieldNames = strFieldNames.TrimRight(',');
			strFieldValues = strFieldValues.TrimRight(',');
			strLine.Empty();
			if (!strFieldNames.IsEmpty())
			{
				strLine.Format(_T("INSERT INTO [%s] (%s) VALUES (%s);\n"),
					lpszTableName, strFieldNames, strFieldValues);
				strCode += strLine;
			}		
			m_pRecordset->MoveNext();
		}
		
		return true;
	}
	catch (const _com_error& e)
	{
		AfxMessageBox(ADO_FORMATMSG(e), MB_ICONERROR);
		return false;
	}
}

bool CDataGridDlg::GetVarAsString(CString& strValue, const _variant_t& var)
{
	strValue.Empty();
	CString strTmp;
	bool bRet = false;
	switch(var.vt)
	{
	case VT_EMPTY:// 0,
		return true;
	case VT_NULL:// 1,
		{
			switch (m_nCodeType)
			{
			case 0:
				strValue = _T("NULL");
				return true;
			case 1:
				return false;
			case 2:
				strValue = _T("DEFAULT");
				return true;
			default:
				ASSERT(FALSE);
				return false;
			}
		}
	case VT_I2:// 2,
	case VT_I4:// 3,
	case VT_R4:// 4,
	case VT_R8:// 5,
		VERIFY(AdoConvert(strValue, var));
		return true;
	case VT_CY:// 6,
	case VT_DATE:// 7,
		VERIFY(AdoConvert(strValue, var));
		strTmp.Format(_T("'%s'"), strValue);
		strValue = strTmp;
		return true;
	case VT_BSTR:// 8, SysAllocString，访问冲突
		VERIFY(AdoConvert(strValue, var));
		strTmp.Format(_T("'%s'"), strValue);
		strValue = strTmp;
		return true;
	case VT_DISPATCH:// 9, VariantChangeType，访问冲突
		bRet = AdoConvert(strValue, var);
		if (bRet)
		{
			strTmp.Format(_T("'%s'"), strValue);
			strValue = strTmp;
		}
		return bRet;
	case VT_ERROR:// 10,
		return false;
	case VT_BOOL:// 11,
		VERIFY(AdoConvert(strValue, var));
		return true;
	case VT_VARIANT:// 12,
		return false;
	case VT_UNKNOWN:// 13, ~_variant_t VariantClear，访问冲突
		bRet = AdoConvert(strValue, var);
		if (bRet)
		{
			strTmp.Format(_T("'%s'"), strValue);
			strValue = strTmp;
		}
		return bRet;
	case VT_DECIMAL:// 14,
	case VT_I1:// 16,
	case VT_UI1:// 17,
	case VT_UI2:// 18,
	case VT_UI4:// 19,
	case VT_I8:// 20,
	case VT_UI8:// 21,
	case VT_INT:// 22,
	case VT_UINT:// 23,
		VERIFY(AdoConvert(strValue, var));
		return true;
	case VT_VOID:// 24,
	case VT_HRESULT:// 25,
	case VT_PTR:// 26,
	case VT_SAFEARRAY:// 27,
	case VT_CARRAY:// 28,
	case VT_USERDEFINED:// 29,
	case VT_LPSTR:// 30,
	case VT_LPWSTR:// 31,
		return false;
	case VT_RECORD:// 36, ~_variant_t VariantClear，访问冲突
		bRet = AdoConvert(strValue, var);
		if (bRet)
		{
			strTmp.Format(_T("'%s'"), strValue);
			strValue = strTmp;
		}
		return bRet;
	case VT_INT_PTR:// 37,
	case VT_UINT_PTR:// 38,
	case VT_FILETIME:// 64,
	case VT_BLOB:// 65,
	case VT_STREAM:// 66,
	case VT_STORAGE:// 67,
	case VT_STREAMED_OBJECT:// 68,
	case VT_STORED_OBJECT:// 69,
	case VT_BLOB_OBJECT:// 70,
	case VT_CF:// 71,
		return false;
	case VT_CLSID:// 72, ~_variant_t VariantClear，访问冲突
		bRet = AdoConvert(strValue, var);
		if (bRet)
		{
			strTmp.Format(_T("'%s'"), strValue);
			strValue = strTmp;
		}
		return bRet;
	case VT_VERSIONED_STREAM:// 73,
	case VT_BSTR_BLOB:// 0xfff,
	case VT_VECTOR:// 0x1000,
	case VT_ARRAY:// 0x2000,
	case VT_BYREF:// 0x4000,
	case VT_RESERVED:// 0x8000,
	case VT_ILLEGAL:// 0xffff,
	//case VT_ILLEGALMASKED:// 0xfff,
	//case VT_TYPEMASK:// 0xfff
		return false;
	default:
		ASSERT(FALSE);
		return false;

	}
}
void CDataGridDlg::OnSizing(UINT fwSide, LPRECT pRect)
{
	CDialog::OnSizing(fwSide, pRect);

	// TODO: 在此处添加消息处理程序代码
	EASYSIZE_MINSIZE(428, 370, fwSide, pRect);
}

HBRUSH CDataGridDlg::OnCtlColor(CDC* pDC, CWnd* pWnd, UINT nCtlColor)
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
