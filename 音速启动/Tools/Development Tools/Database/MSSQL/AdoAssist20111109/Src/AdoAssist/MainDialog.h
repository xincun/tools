#pragma once
#include "afxcmn.h"


// CMainDialog �Ի���

class CMainDialog : public CDialog
{
	DECLARE_DYNAMIC(CMainDialog)

public:
	CMainDialog(CWnd* pParent = NULL);   // ��׼���캯��
	virtual ~CMainDialog();

// �Ի�������
	enum { IDD = IDD_MAIN_DIALOG };

protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV ֧��

	DECLARE_MESSAGE_MAP()
public:
	virtual BOOL OnInitDialog();
	CListCtrl m_oDlgList;
	CImageList m_oImageList;
};
