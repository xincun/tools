// MainDialog.cpp : 实现文件
//

#include "stdafx.h"
#include "AdoAssist.h"
#include "MainDialog.h"


// CMainDialog 对话框

IMPLEMENT_DYNAMIC(CMainDialog, CDialog)

CMainDialog::CMainDialog(CWnd* pParent /*=NULL*/)
	: CDialog(CMainDialog::IDD, pParent)
{

}

CMainDialog::~CMainDialog()
{
}

void CMainDialog::DoDataExchange(CDataExchange* pDX)
{
	CDialog::DoDataExchange(pDX);
	DDX_Control(pDX, IDC_DLG_LIST, m_oDlgList);
}


BEGIN_MESSAGE_MAP(CMainDialog, CDialog)
END_MESSAGE_MAP()


BOOL CMainDialog::OnInitDialog()
{
	CDialog::OnInitDialog();

	// TODO:  在此添加额外的初始化
	m_oImageList.Create(32, 32, ILC_MASK, 5, 1);
	m_oImageList.SetBkColor(CLR_DEFAULT);
	m_oDlgList.SetImageList(&m_oImageList, LVSIL_NORMAL);

	m_oDlgList.InsertItem(0, _T("111"), 0);
	m_oDlgList.InsertItem(0, _T("111"), 1);
	m_oDlgList.InsertItem(0, _T("111"), 2);
	m_oDlgList.InsertItem(0, _T("111"), 3);
	m_oDlgList.InsertItem(0, _T("111"), 4);

	return TRUE;  // return TRUE unless you set the focus to a control
	// 异常: OCX 属性页应返回 FALSE
}
