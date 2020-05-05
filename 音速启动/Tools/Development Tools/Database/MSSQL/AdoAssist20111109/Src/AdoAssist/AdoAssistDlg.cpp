
// AdoAssistDlg.cpp : 实现文件
//

#include "stdafx.h"
#include "AdoAssist.h"
#include "AdoAssistDlg.h"
#include "Ini.h"
#include "Function.hpp"


#ifdef _DEBUG
#define new DEBUG_NEW
#endif

#define UM_BTNCLICKED WM_USER+2
#define UM_CNNSTRCHANGED WM_USER+3

const CAdoAssistDlg::CEnumInfo CAdoAssistDlg::Info_CursorType[]=
{
	{adOpenUnspecified ,	_T("adOpenUnspecified")},
	{adOpenKeyset  ,		_T("adOpenKeyset")},
	{adOpenDynamic   ,		_T("adOpenDynamic ")},
	{adOpenStatic  ,		_T("adOpenStatic")}
};

const CAdoAssistDlg::CEnumInfo CAdoAssistDlg::Info_LockType[]=
{
	{adLockReadOnly  ,				_T("adLockReadOnly")},
	{adLockPessimistic  ,			_T("adLockPessimistic")},
	{adLockOptimistic  ,			_T("adLockOptimistic")},
	{adLockBatchOptimistic   ,		_T("adLockBatchOptimistic")}
};

const CAdoAssistDlg::CEnumInfo CAdoAssistDlg::Info_Options[]=
{
	{adCmdText  ,				_T("adCmdText")},
	{adCmdTable  ,				_T("adCmdTable")},
	{adCmdTableDirect  ,		_T("adCmdTableDirect")},
	{adCmdStoredProc   ,		_T("adCmdStoredProc")},
	{adCmdUnknown  ,			_T("adCmdUnknown")},	
	{adCmdFile  ,				_T("adCmdFile")},
	{adAsyncExecute  ,			_T("adAsyncExecute")},
	{adAsyncFetch   ,			_T("adAsyncFetch")},	
	{adAsyncFetchNonBlocking  ,	_T("adAsyncFetchNonBlocking")}	

};

const CAdoAssistDlg::CEnumInfo CAdoAssistDlg::Info_SchemaQueryType[]=
{
//	{adSchemaProviderSpecific ,			_T("adSchemaProviderSpecific")},
	{adSchemaTables ,					_T("adSchemaTables")},
	{adSchemaColumns ,					_T("adSchemaColumns")},
	{adSchemaProviderTypes ,			_T("adSchemaProviderTypes")},
	{adSchemaAsserts ,					_T("adSchemaAsserts")},
	{adSchemaCatalogs ,					_T("adSchemaCatalogs")},
	{adSchemaCharacterSets ,			_T("adSchemaCharacterSets")},
	{adSchemaCollations ,				_T("adSchemaCollations")},
	//{adSchemaColumns ,					_T("adSchemaColumns")},
	{adSchemaCheckConstraints ,			_T("adSchemaCheckConstraints")},
	{adSchemaConstraintColumnUsage ,	_T("adSchemaConstraintColumnUsage")},
	{adSchemaConstraintTableUsage ,		_T("adSchemaConstraintTableUsage")},
	{adSchemaKeyColumnUsage ,			_T("adSchemaKeyColumnUsage")},
	{adSchemaReferentialContraints ,	_T("adSchemaReferentialContraints")},
	{adSchemaReferentialConstraints ,	_T("adSchemaReferentialConstraints")},
	{adSchemaTableConstraints ,			_T("adSchemaTableConstraints")},
	{adSchemaColumnsDomainUsage ,		_T("adSchemaColumnsDomainUsage")},
	{adSchemaIndexes ,					_T("adSchemaIndexes")},
	{adSchemaColumnPrivileges ,			_T("adSchemaColumnPrivileges")},
	{adSchemaTablePrivileges ,			_T("adSchemaTablePrivileges")},
	{adSchemaUsagePrivileges ,			_T("adSchemaUsagePrivileges")},
	{adSchemaProcedures ,				_T("adSchemaProcedures")},
	{adSchemaSchemata ,					_T("adSchemaSchemata")},
	{adSchemaSQLLanguages ,				_T("adSchemaSQLLanguages")},
	{adSchemaStatistics ,				_T("adSchemaStatistics")},
	//{adSchemaTables ,					_T("adSchemaTables")},
	{adSchemaTranslations ,				_T("adSchemaTranslations")},
	//{adSchemaProviderTypes ,			_T("adSchemaProviderTypes")},
	{adSchemaViews ,					_T("adSchemaViews")},
	{adSchemaViewColumnUsage ,			_T("adSchemaViewColumnUsage")},
	{adSchemaViewTableUsage ,			_T("adSchemaViewTableUsage")},
	{adSchemaProcedureParameters ,		_T("adSchemaProcedureParameters")},
	{adSchemaForeignKeys ,				_T("adSchemaForeignKeys")},
	{adSchemaPrimaryKeys ,				_T("adSchemaPrimaryKeys")},
	{adSchemaProcedureColumns ,			_T("adSchemaProcedureColumns")},
	{adSchemaDBInfoKeywords ,			_T("adSchemaDBInfoKeywords")},
	{adSchemaDBInfoLiterals ,			_T("adSchemaDBInfoLiterals")},
	{adSchemaCubes ,					_T("adSchemaCubes")},
	{adSchemaDimensions ,				_T("adSchemaDimensions")},
	{adSchemaHierarchies ,				_T("adSchemaHierarchies")},
	{adSchemaLevels ,					_T("adSchemaLevels")},
	{adSchemaMeasures ,					_T("adSchemaMeasures")},
	{adSchemaProperties ,				_T("adSchemaProperties")},
	{adSchemaMembers ,					_T("adSchemaMembers")},
	{adSchemaTrustees ,					_T("adSchemaTrustees")},
	{adSchemaFunctions ,				_T("adSchemaFunctions")},
	{adSchemaActions ,					_T("adSchemaActions")},
	{adSchemaCommands ,					_T("adSchemaCommands")},
	{adSchemaSets ,						_T("adSchemaSets")}
};




// 用于应用程序“关于”菜单项的 CAboutDlg 对话框

class CAboutDlg : public CDialog
{
public:
	CAboutDlg();

	// 对话框数据
	enum { IDD = IDD_ABOUTBOX };

protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV 支持

private:
	CBrush		m_oDlgBrush;
	CxMfcBtn	m_wndBtn;
	// 实现
protected:
	DECLARE_MESSAGE_MAP()
public:
	afx_msg HBRUSH OnCtlColor(CDC* pDC, CWnd* pWnd, UINT nCtlColor);
	virtual BOOL OnInitDialog();
};

CAboutDlg::CAboutDlg() : CDialog(CAboutDlg::IDD)
{
}

void CAboutDlg::DoDataExchange(CDataExchange* pDX)
{
	DDX_Control(pDX, IDOK, m_wndBtn);
	CDialog::DoDataExchange(pDX);
}

BEGIN_MESSAGE_MAP(CAboutDlg, CDialog)
	ON_WM_CTLCOLOR()
END_MESSAGE_MAP()

BOOL CAboutDlg::OnInitDialog()
{
	CDialog::OnInitDialog();

	// TODO:  在此添加额外的初始化
	m_oDlgBrush.CreateSolidBrush(BK_COLOR);
	return TRUE;  // return TRUE unless you set the focus to a control
	// 异常: OCX 属性页应返回 FALSE
}

HBRUSH CAboutDlg::OnCtlColor(CDC* pDC, CWnd* pWnd, UINT nCtlColor)
{
	HBRUSH hbr = CDialog::OnCtlColor(pDC, pWnd, nCtlColor);

	// TODO:  在此更改 DC 的任何属性
	if (nCtlColor == CTLCOLOR_STATIC)
	{
		pDC->SetBkColor(BK_COLOR);
		pDC->SetDCBrushColor(BK_COLOR );
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



// CtestDialogDlg 对话框



CAdoAssistDlg::CAdoAssistDlg(CWnd* pParent /*=NULL*/)
	: CDialog(CAdoAssistDlg::IDD, pParent)
	, m_strCnnString(_T(""))
	, m_nCursorType(2)
	, m_nLockType(2)
	, m_nOptionsRs(0)
	, m_strUser(_T(""))
	, m_strPassword(_T(""))
	, m_strConnectPtr(_T(""))
	, m_strRecordsetSql(_T(""))
	, m_strRecordsetPtr(_T(""))
	, m_nOptionsCmm(0)
	, m_strExcuteSql(_T(""))
	, m_nQueryType(0)
	, m_bDataGridShow(FALSE)
	, m_nShowType(0)
{
	m_hIcon = AfxGetApp()->LoadIcon(IDR_MAINFRAME);

	m_pConnection.CreateInstance(__uuidof(Connection));
}

void CAdoAssistDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	DDX_Text(pDX, IDC_COMBO_CNNSTRING, m_strCnnString);
	DDX_CBIndex(pDX, IDC_CURSORTYPE, m_nCursorType);
	DDX_CBIndex(pDX, IDC_LOCKTYPE, m_nLockType);
	DDX_CBIndex(pDX, IDC_OPTIONS_RS, m_nOptionsRs);
	DDX_Text(pDX, IDC_EDIT_USER, m_strUser);
	DDX_Text(pDX, IDC_EDIT_PASSWORD, m_strPassword);
	DDX_Text(pDX, IDC_EDIT_CONNECTPTR, m_strConnectPtr);
	DDX_Text(pDX, IDC_EDIT_RECORDSETSQL, m_strRecordsetSql);
	DDX_Text(pDX, IDC_EDIT_RECORDSETPTR, m_strRecordsetPtr);
	DDX_CBIndex(pDX, IDC_OPTIONS_CMM, m_nOptionsCmm);
	DDX_Text(pDX, IDC_EDIT_EXCUTESQL, m_strExcuteSql);
	DDX_CBIndex(pDX, IDC_QUERYTYPE, m_nQueryType);
	DDX_CBIndex(pDX, IDC_COMBO_SHOWTYPE, m_nShowType);
	DDX_Control(pDX, IDC_UDLDLG, m_wndBtn[0]);
	DDX_Control(pDX, IDC_CONNECT, m_wndBtn[1]);
	DDX_Control(pDX, IDC_RECORDSET, m_wndBtn[2]);
	DDX_Control(pDX, IDC_EXCUTE, m_wndBtn[3]);
	DDX_Control(pDX, IDC_OPENSCHEMA, m_wndBtn[4]);
}

BEGIN_MESSAGE_MAP(CAdoAssistDlg, CDialog)
	ON_WM_SYSCOMMAND()
	ON_WM_PAINT()
	ON_WM_QUERYDRAGICON()
	//}}AFX_MSG_MAP
	ON_BN_CLICKED(IDC_UDLDLG, &CAdoAssistDlg::OnBnClickedUdldlg)
	ON_BN_CLICKED(IDC_CONNECT, &CAdoAssistDlg::OnBnClickedConnect)
	ON_BN_CLICKED(IDC_RECORDSET, &CAdoAssistDlg::OnBnClickedRecordset)
	ON_BN_CLICKED(IDC_EXCUTE, &CAdoAssistDlg::OnBnClickedExcute)
	ON_WM_CTLCOLOR()
	ON_WM_DESTROY()
	ON_BN_CLICKED(IDC_OPENSCHEMA, &CAdoAssistDlg::OnBnClickedOpenschema)
	ON_CBN_SELCHANGE(IDC_COMBO_SHOWTYPE, &CAdoAssistDlg::OnCbnSelchangeComboShowtype)
	ON_MESSAGE(UM_BTNCLICKED, &CAdoAssistDlg::OnUmBtnClicked)
	ON_MESSAGE(UM_CNNSTRCHANGED, &CAdoAssistDlg::OnUmCnnStrChanged)
	ON_MESSAGE(WM_KICKIDLE, &CAdoAssistDlg::OnKickIdle)
	ON_CBN_SELCHANGE(IDC_COMBO_CNNSTRING, &CAdoAssistDlg::OnCbnSelchangeEditCnnstring)
END_MESSAGE_MAP()


// CAdoAssistDlg 消息处理程序

BOOL CAdoAssistDlg::OnInitDialog()
{
	CDialog::OnInitDialog();
	// 将“关于...”菜单项添加到系统菜单中。

	// IDM_ABOUTBOX 必须在系统命令范围内。
	ASSERT((IDM_ABOUTBOX & 0xFFF0) == IDM_ABOUTBOX);
	ASSERT(IDM_ABOUTBOX < 0xF000);

	CMenu* pSysMenu = GetSystemMenu(FALSE);
	if (pSysMenu != NULL)
	{
		BOOL bNameValid;
		CString strAboutMenu;
		bNameValid = strAboutMenu.LoadString(IDS_ABOUTBOX);
		ASSERT(bNameValid);
		if (!strAboutMenu.IsEmpty())
		{
			pSysMenu->InsertMenu(SC_CLOSE, MF_BYCOMMAND, IDM_ABOUTBOX, strAboutMenu);
			pSysMenu->InsertMenu(SC_CLOSE, MF_BYCOMMAND, MF_SEPARATOR);
		}
	}

	// 设置此对话框的图标。当应用程序主窗口不是对话框时，框架将自动
	//  执行此操作
	SetIcon(m_hIcon, TRUE);			// 设置大图标
	SetIcon(m_hIcon, FALSE);		// 设置小图标

	// TODO: 在此添加额外的初始化代码
	CComboBox* pComboBox = NULL;

	pComboBox = (CComboBox*)GetDlgItem(IDC_CURSORTYPE);
	int nCount = _countof(Info_CursorType);
	for (int i=0; i<nCount; i++)
	{
		pComboBox->AddString(Info_CursorType[i].strEnumName);
	}
	pComboBox = (CComboBox*)GetDlgItem(IDC_LOCKTYPE);
	nCount = _countof(Info_LockType);
	for (int i=0; i<nCount; i++)
	{
		pComboBox->AddString(Info_LockType[i].strEnumName);
	}
	pComboBox = (CComboBox*)GetDlgItem(IDC_OPTIONS_RS);
	nCount = _countof(Info_Options);
	for (int i=0; i<nCount; i++)
	{
		pComboBox->AddString(Info_Options[i].strEnumName);
	}

	pComboBox = (CComboBox*)GetDlgItem(IDC_OPTIONS_CMM);
	nCount = _countof(Info_Options)-1;
	for (int i=0; i<nCount; i++)
	{
		pComboBox->AddString(Info_Options[i].strEnumName);
	}
	
	pComboBox->AddString(_T("SQL Command File"));

	pComboBox = (CComboBox*)GetDlgItem(IDC_QUERYTYPE);
	nCount = _countof(Info_SchemaQueryType);
	for (int i=0; i<nCount; i++)
	{
		pComboBox->AddString(Info_SchemaQueryType[i].strEnumName);
	}

	CIni ini;
	CStringArray strArr;
	ini.SetPathName(GetExePath()+ _T("AdoDBString.ini"));
	ini.GetKeyLines(_T("Key"), &strArr);

	nCount = strArr.GetCount();
	pComboBox = (CComboBox*)GetDlgItem(IDC_COMBO_CNNSTRING);
	ASSERT(pComboBox != NULL);
	for (int i=0; i<nCount; i++)
	{
		pComboBox->AddString(strArr[i].Right(strArr[i].GetLength() - strArr[i].Find('=') -1));
	}

	UpdateData(FALSE);

	m_oDlgBrush.CreateSolidBrush(BK_COLOR);
	m_dlgDataGrid.Create(IDD_DATAGRID_DIALOG, this);
	m_dlgTableData.Create(IDD_TABLEDATA_DIALOG, this);

	LONG lIcon = GetClassLong(GetSafeHwnd(), GCL_HICON);
	m_dlgDataGrid.PostMessage(WM_SETICON, ICON_SMALL, lIcon);
	m_dlgTableData.PostMessage(WM_SETICON, ICON_SMALL, lIcon);
	m_dlgDataGrid.PostMessage(WM_SETICON, ICON_BIG, lIcon);
	m_dlgTableData.PostMessage(WM_SETICON, ICON_BIG, lIcon);
	
	
	
	

// 	DDX_Control(pDX, IDC_UDLDLG, m_wndBtn[0]);
// 	DDX_Control(pDX, IDC_CONNECT, m_wndBtn[1]);
// 	DDX_Control(pDX, IDC_RECORDSET, m_wndBtn[2]);
// 	DDX_Control(pDX, IDC_EXCUTE, m_wndBtn[3]);
// 	DDX_Control(pDX, IDC_OPENSCHEMA, m_wndBtn[4]);
	m_wndBtn[0].SetTooltip(_T("验证或获取ADO数据库连接字符串"));
	m_wndBtn[1].SetTooltip(_T("建立ADO数据库连接"));
	m_wndBtn[2].SetTooltip(_T("打开ADO数据库记录集"));
	m_wndBtn[3].SetTooltip(_T("执行SQL命令		SQL Command File为自定义参数，导入记录集对话框中导出的文件"));
	m_wndBtn[4].SetTooltip(_T("打开ADO数据库模式信息		\
							  adSchemaTables 表信息		\
							  adSchemaColumns 字段信息		\
							  adSchemaProviderTypes 字段变量类型信息"));

	return TRUE;  // 除非将焦点设置到控件，否则返回 TRUE
}


void CAdoAssistDlg::OnSysCommand(UINT nID, LPARAM lParam)
{
	if ((nID & 0xFFF0) == IDM_ABOUTBOX)
	{
		CAboutDlg dlgAbout;
		dlgAbout.DoModal();
	}
	else
	{
		CDialog::OnSysCommand(nID, lParam);
	}
}

// 如果向对话框添加最小化按钮，则需要下面的代码
//  来绘制该图标。对于使用文档/视图模型的 MFC 应用程序，
//  这将由框架自动完成。

void CAdoAssistDlg::OnPaint()
{
	if (IsIconic())
	{
		CPaintDC dc(this); // 用于绘制的设备上下文

		SendMessage(WM_ICONERASEBKGND, reinterpret_cast<WPARAM>(dc.GetSafeHdc()), 0);

		// 使图标在工作区矩形中居中
		int cxIcon = GetSystemMetrics(SM_CXICON);
		int cyIcon = GetSystemMetrics(SM_CYICON);
		CRect rect;
		GetClientRect(&rect);
		int x = (rect.Width() - cxIcon + 1) / 2;
		int y = (rect.Height() - cyIcon + 1) / 2;

		// 绘制图标
		dc.DrawIcon(x, y, m_hIcon);
	}
	else
	{
		CDialog::OnPaint();
	}
}

//当用户拖动最小化窗口时系统调用此函数取得光标
//显示。
HCURSOR CAdoAssistDlg::OnQueryDragIcon()
{
	return static_cast<HCURSOR>(m_hIcon);
}

void CAdoAssistDlg::OnBnClickedUdldlg()
{
	// TODO: 在此添加控件通知处理程序代码
	//using namespace MSDASC;
	UpdateData(TRUE);
	CString strCnnString;
	if (m_strCnnString.IsEmpty())
	{
		strCnnString = UdlNew(GetSafeHwnd());
	}
	else
	{
		strCnnString = UdlEdit(m_strCnnString, GetSafeHwnd());
	}

	if (!strCnnString.IsEmpty())
	{
		m_strCnnString = strCnnString;
		UpdateData(FALSE);
	}
	
}


CString CAdoAssistDlg::UdlNew(HWND hWnd /*= NULL*/)
{
	using namespace MSDASC;
	IDataSourceLocatorPtr pDataLink;
	pDataLink = NULL;
	pDataLink.CreateInstance(__uuidof(DataLinks));
	ASSERT(pDataLink != NULL); // AfxOleInit();
	try
	{
		if(hWnd = NULL) pDataLink->PuthWnd(reinterpret_cast<long>(hWnd));
		IDispatchPtr pDisp = pDataLink->PromptNew();

		/*ADODB::*/_ConnectionPtr conn = pDisp;

		CString strReturn = conn->GetConnectionString();

		pDataLink.Release();
		pDataLink = NULL;
		return strReturn;
	}
	catch(_com_error &e)
	{
		CString strDescription((LPCTSTR)e.Description());
		if (!strDescription.IsEmpty())
		{
			CString strText(_T("ADO发生错误:\n"));
			strText += ADO_FORMATMSG(e);
			AfxMessageBox(strText, MB_ICONERROR);
		}	
	}
	return CString();
	//adOpenForwardOnly
}

CString CAdoAssistDlg::UdlEdit(LPCTSTR lpstrConnectionString, HWND hWnd)
{
	using namespace MSDASC;
	BOOL bRet;
	IDataSourceLocatorPtr pDataLink;
	pDataLink = NULL;
	IDispatch* pDispatch = NULL;
	/*ADODB::*/_ConnectionPtr pAdoConnection;

	pDataLink.CreateInstance(__uuidof(DataLinks));
	pAdoConnection.CreateInstance(__uuidof(/*ADODB::*/Connection));
	ASSERT(pDataLink != NULL);	// AfxOleInit();
	ASSERT(pAdoConnection != NULL); // AfxOleInit();
	try
	{
		pDataLink->PuthWnd(reinterpret_cast<long>(hWnd));
		pAdoConnection->PutConnectionString(_bstr_t(lpstrConnectionString));
		pAdoConnection.QueryInterface(IID_IDispatch, (LPVOID*)&pDispatch);

		bRet = pDataLink->PromptEdit(&pDispatch) == VARIANT_TRUE;

		CString strReturn = pAdoConnection->GetConnectionString();

		pDataLink.Release();
		pAdoConnection.Release();
		return strReturn;
	}
	catch(_com_error &e)
	{
		CString strDescription((LPCTSTR)e.Description());
		if (!strDescription.IsEmpty())
		{
			CString strText(_T("ADO发生错误:\n"));
			strText += ADO_FORMATMSG(e);
			AfxMessageBox(strText, MB_ICONERROR);
		}		
	}
	return CString();
}


void CAdoAssistDlg::OnBnClickedConnect()
{
	// TODO: 在此添加控件通知处理程序代码
	if (m_pConnection == NULL)
	{
		HRESULT hr = m_pConnection.CreateInstance(__uuidof(Connection));
		if (FAILED(hr))
		{
			_com_error e(hr);
			AfxMessageBox(ADO_FORMATMSG(e), MB_ICONERROR);
			return ;
		}
	}

	UpdateData(TRUE);
	if (m_strCnnString.IsEmpty())
	{
		AfxMessageBox(_T("连接字符串不能为空"));
		return;
	}

	m_strConnectPtr.Empty();
	try
	{
		if (m_pConnection->GetState() == adStateOpen)
		{
			m_pConnection->Close();
		}
		if (m_nShowType == 1)
		{
			// 为了在DataGrid中显示
			m_pConnection->PutCursorLocation(adUseClient);
		}
		else
		{
			// 默认值
			m_pConnection->PutCursorLocation(adUseServer);
		}
		m_pConnection->Open(_bstr_t(m_strCnnString), _bstr_t(m_strUser), _bstr_t(m_strPassword), adOpenUnspecified);
		m_strConnectPtr.Format(_T("Open(_bstr_t(_T(\"%s\")), _bstr_t(_T(\"%s\")), _bstr_t(_T(\"%s\")), adOpenUnspecified)"),
			m_strCnnString, m_strUser, m_strPassword);
		MessageBox(_T("成功建立数据库连接"), _T("ADO助手提示"), MB_ICONINFORMATION);
	}
	catch (_com_error& e)
	{
		AfxMessageBox(ADO_FORMATMSG(e), MB_ICONERROR);
	}
	UpdateData(FALSE);
}


void CAdoAssistDlg::OnBnClickedRecordset()
{
	// TODO: 在此添加控件通知处理程序代码
	UpdateData(TRUE);

	CursorTypeEnum	eCurCursorType	= (CursorTypeEnum)Info_CursorType[m_nCursorType].nEnumValue;
	LockTypeEnum	eCurLockType	= (LockTypeEnum)Info_LockType[m_nLockType].nEnumValue;
	long			lCurOptionsRs	= Info_Options[m_nOptionsRs].nEnumValue;
	
	_RecordsetPtr pRs;

	HRESULT hr = pRs.CreateInstance(__uuidof(Recordset));
	if (FAILED(hr))
	{
		_com_error e(hr);
		AfxMessageBox(ADO_FORMATMSG(e), MB_ICONERROR);
		return ;
	}


	m_strRecordsetPtr.Empty();
	try
	{		
		if (m_pConnection->GetState() != adStateOpen)
		{
			AfxMessageBox(_T("请先点击连接按钮建立数据库连接"));
			return ;
		}

		if (pRs->GetState() == adStateOpen)
		{
			pRs->Close();
		}

		pRs->Open(_bstr_t(m_strRecordsetSql),				// 查询DemoTable表中所有字段
			m_pConnection.GetInterfacePtr(),						// 获取库接库的IDispatch指针
			eCurCursorType,
			eCurLockType,
			lCurOptionsRs);	
	
		CursorTypeEnum	eCursorType	= pRs->GetCursorType();
		LockTypeEnum	eLockType	= pRs->GetLockType();

		int iCursorType = -1;
		int iLockType	= -1;
		int nCount = _countof(Info_CursorType);
		for (int i=0; i<nCount; i++)
		{
			if ((CursorTypeEnum)Info_CursorType[i].nEnumValue == eCurCursorType)
			{
				iCursorType = i;
				break;
			}
		}

		nCount = _countof(Info_LockType);
		for (int i=0; i<nCount; i++)
		{
			if ((CursorTypeEnum)Info_LockType[i].nEnumValue == eCurLockType)
			{
				iLockType = i;
				break;
			}
		}
		m_strRecordsetPtr.Format(_T("Open(_bstr_t(_T(\"%s\")), m_pConnection.GetInterfacePtr(), %s, %s, %s)"),
			m_strRecordsetSql, 
			Info_CursorType[iCursorType].strEnumName,
			Info_LockType[iLockType].strEnumName,
			Info_Options[m_nOptionsRs].strEnumName);



		if (m_nShowType == 1)
		{		
			m_dlgDataGrid.RefreshDatagrid(pRs, m_strRecordsetSql);
		}
		else if (m_nShowType == 2)
		{
			m_dlgTableData.InitTableData(pRs, m_strRecordsetSql);
			m_dlgTableData.ShowWindow(SW_SHOW);
		}
		else
		{
			MessageBox(_T("成功打开记录集"), _T("ADO助手提示"), MB_ICONINFORMATION);
		}
			
		SendMessage(UM_BTNCLICKED, m_nShowType, 0);
	}
	catch (_com_error& e)
	{
		AfxMessageBox(ADO_FORMATMSG(e), MB_ICONERROR);
	}

	UpdateData(FALSE);

}

void CAdoAssistDlg::OnBnClickedExcute()
{
	// TODO: 在此添加控件通知处理程序代码
	UpdateData(TRUE);

	// 执行导出的SQL文件
	if (m_nOptionsCmm == _countof(Info_Options)-1) 
	{
		ExcuteSQLFile();
		return ;
	}

	long			lCurOptionsCmm	= Info_Options[m_nOptionsCmm].nEnumValue;

	_CommandPtr pCmd;
	HRESULT hr = pCmd.CreateInstance(__uuidof(Command));
	if (FAILED(hr))
	{
		_com_error e(hr);
		AfxMessageBox(ADO_FORMATMSG(e), MB_ICONERROR);
		return ;
	}

	try
	{		
		if (m_pConnection->GetState() != adStateOpen)
		{
			AfxMessageBox(_T("请先点击连接按钮建立数据库连接"));
			return ;
		}

		pCmd->PutActiveConnection(m_pConnection.GetInterfacePtr());
		pCmd->PutCommandText(_bstr_t(m_strExcuteSql));
		_variant_t varRecordsAffected;

		if ( m_nShowType == 1)
		{			
			_RecordsetPtr rs = pCmd->Execute(&varRecordsAffected, NULL, lCurOptionsCmm);
			m_dlgDataGrid.RefreshDatagrid(rs, m_strExcuteSql);
		}
		else if (m_nShowType == 2)
		{
			_RecordsetPtr rs = pCmd->Execute(&varRecordsAffected, NULL, lCurOptionsCmm);
			m_dlgTableData.InitTableData(rs, m_strExcuteSql);
		}
		else
		{
			pCmd->Execute(&varRecordsAffected, NULL, lCurOptionsCmm);
			CString strMsg;
			if (varRecordsAffected.vt != VT_NULL)
			{
				strMsg.Format(_T("命令成功执行,影响:%s行"),
					(LPCTSTR)_bstr_t(varRecordsAffected));
				MessageBox(strMsg, _T("ADO助手提示"), MB_ICONINFORMATION);
			}
		}

		SendMessage(UM_BTNCLICKED, m_nShowType, 0);

	}
	catch (_com_error& e)
	{
		AfxMessageBox(ADO_FORMATMSG(e), MB_ICONERROR);
	}

}


HBRUSH CAdoAssistDlg::OnCtlColor(CDC* pDC, CWnd* pWnd, UINT nCtlColor)
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

void CAdoAssistDlg::OnDestroy()
{
	CDialog::OnDestroy();

	// TODO: 在此处添加消息处理程序代码
	if (m_oDlgBrush.m_hObject != NULL)
	{
		m_oDlgBrush.DeleteObject();
	}
}


void CAdoAssistDlg::OnBnClickedOpenschema()
{
	// TODO: 在此添加控件通知处理程序代码
	UpdateData(TRUE);

	SchemaEnum	eCurShema	= (SchemaEnum)Info_SchemaQueryType[m_nQueryType].nEnumValue;
	try
	{		
		if (m_pConnection->GetState() != adStateOpen)
		{
			AfxMessageBox(_T("请先点击连接按钮建立数据库连接"));
			return ;
		}

 		_variant_t varRecordsAffected;
		_RecordsetPtr rs =m_pConnection->OpenSchema(eCurShema);
		if (rs != NULL)
		{
			if (m_nShowType == 1)
			{			
				m_dlgDataGrid.RefreshDatagrid(rs, Info_SchemaQueryType[m_nQueryType].strEnumName);
			}
			else if (m_nShowType == 2)
			{
				m_dlgTableData.InitTableData(rs, Info_SchemaQueryType[m_nQueryType].strEnumName);
			}
			else
			{
				MessageBox(_T("成功数据库模式信息"), _T("ADO助手提示"), MB_ICONINFORMATION);
			}

			SendMessage(UM_BTNCLICKED, m_nShowType, 0);
		}
		else
		{
			AfxMessageBox(_T("记录为空,可能数据库驱动程序不支持该查询"));
		}

	}
	catch (_com_error& e)
	{
		AfxMessageBox(ADO_FORMATMSG(e), MB_ICONERROR);
	}
}

void CAdoAssistDlg::OnCbnSelchangeComboShowtype()
{
	// TODO: 在此添加控件通知处理程序代码
	UpdateData(TRUE);
	
	SetWndVisible(&m_dlgDataGrid, false);
	SetWndVisible(&m_dlgTableData, false);
	if (m_pConnection != NULL)
	{
		m_pConnection.Release();
	}
}


LRESULT CAdoAssistDlg::OnUmBtnClicked(WPARAM wParam, LPARAM lParam)
{

	switch (wParam)
	{
	case 0:
		SetWndVisible(&m_dlgDataGrid, false);
		SetWndVisible(&m_dlgTableData, false);
		break;

	case 1:
		SetWndVisible(&m_dlgDataGrid, true);
		SetWndVisible(&m_dlgTableData, false);
		break;

	case 2:
		SetWndVisible(&m_dlgDataGrid, false);
		SetWndVisible(&m_dlgTableData, true);
		break;

	default:
		ASSERT(FALSE);
		break;
	}

	return 1;
}


LRESULT CAdoAssistDlg::OnKickIdle(WPARAM wParam, LPARAM lParam)
{
	UpdateData(TRUE);

	GetDlgItem(IDC_CONNECT)->EnableWindow(!m_strCnnString.IsEmpty());
	BOOL bEnable = TRUE;
	try
	{	
		bEnable = m_pConnection == NULL 
			|| m_pConnection->GetState() != adStateOpen;

	}
	catch (_com_error& e)
	{
		e;
	}	
	GetDlgItem(IDC_RECORDSET)->EnableWindow(!bEnable);
	GetDlgItem(IDC_EXCUTE)->EnableWindow(!bEnable);
	GetDlgItem(IDC_OPENSCHEMA)->EnableWindow(!bEnable);

	if (bEnable)
	{
		GetDlgItem(IDC_EDIT_CONNECTPTR)->SetWindowText(_T(" 请先建立数据库连接！！！"));
	}
	
	return 0;
}

void CAdoAssistDlg::ExcuteSQLFile(void)
{
	CFileFind oFileFind;
	if (!oFileFind.FindFile(m_strExcuteSql))
	{
		CString strMsg;
		strMsg.Format(_T("%s\nSQL文件不存在！"), m_strExcuteSql);
		AfxMessageBox(strMsg);
		return ;
	}

	CStdioFile file;
	CFileException ex;
	if (!file.Open(m_strExcuteSql,
		CFile::modeRead | CFile::typeText | CFile::shareDenyWrite, 
		&ex))
	{
		ex.ReportError(MB_ICONERROR);
		return ;
	}

	_CommandPtr cmd;
	HRESULT hr = cmd.CreateInstance(__uuidof(Command));
	if (FAILED(hr))
	{
		_com_error e(hr);
		AfxMessageBox(ADO_FORMATMSG(e), MB_ICONERROR);
		return ;
	}

	CString strSql;
	try
	{		
		if (m_pConnection->GetState() != adStateOpen)
		{
			AfxMessageBox(_T("请先点击连接按钮建立数据库连接"));
			return ;
		}

		cmd->PutActiveConnection(m_pConnection.GetInterfacePtr());
	
		while (file.ReadString(strSql))
		{
			strSql.TrimRight(_T(" ;"));
			if (strSql[0]=='-' || strSql.IsEmpty())
			{
				continue;
			}
			cmd->PutCommandText(_bstr_t(strSql));
			cmd->Execute(NULL, NULL, adCmdText);
		}
	
		MessageBox(_T("成功执行SQL文件"), _T("ADO助手提示"), MB_ICONINFORMATION);
	}
	catch (_com_error& e)
	{
		CString strMsg;
		strMsg.Format(_T("SQL:%s\n %s"), strSql, (LPCTSTR)ADO_FORMATMSG(e));
		AfxMessageBox(strMsg, MB_ICONERROR);
	}

}

void CAdoAssistDlg::SetWndVisible(CWnd* pWnd, bool bVisible)
{
	ASSERT(pWnd != NULL
		&& ::IsWindow(pWnd->GetSafeHwnd()));

	if (pWnd != NULL
		&& ::IsWindow(pWnd->GetSafeHwnd()))
	{

		if (bVisible)
		{
			pWnd->ShowWindow(SW_SHOW);
		}
		else
		{
			pWnd->ShowWindow(SW_HIDE);
		}

	}
}

void CAdoAssistDlg::OnCbnSelchangeEditCnnstring()
{
	// TODO: 在此添加控件通知处理程序代码
	PostMessage(UM_CNNSTRCHANGED, 0, 0);
}


LRESULT CAdoAssistDlg::OnUmCnnStrChanged(WPARAM wParam, LPARAM lParam)
{
	CComboBox* pComboBox = (CComboBox*)GetDlgItem(IDC_COMBO_CNNSTRING);
	CString strText;
	pComboBox->GetWindowText(strText);

	int nIndex = pComboBox->FindString(0, strText);
	CIni ini ;
	ini.SetPathName(GetExePath()+ _T("AdoDBString.ini"));
	CString strKey;
	strKey.Format(_T("%d"), nIndex);

	CString strValue = ini.GetString(_T("Value"), strKey, _T(""));
	pComboBox->SetWindowText(strValue);

	return 1;
}