
// AdoAssistDlg.h : 头文件
//

#pragma once
#include "DataGridDlg.h"
#include "TableDataDlg.h"
#include "xMfcBtn.h"


// CAdoAssistDlg 对话框
class CAdoAssistDlg : public CDialog
{
// 构造
public:
	CAdoAssistDlg(CWnd* pParent = NULL);	// 标准构造函数

// 对话框数据
	enum { IDD = IDD_ADOASSIST_DIALOG };

	protected:
	virtual void DoDataExchange(CDataExchange* pDX);	// DDX/DDV 支持

private:

	struct CEnumInfo
	{
		int			nEnumValue;
		CString		strEnumName;
	};

	static const CEnumInfo Info_CursorType[];  
	static const CEnumInfo Info_LockType[];
	static const CEnumInfo Info_Options[];
	static const CEnumInfo Info_SchemaQueryType[];

private:
	_ConnectionPtr	m_pConnection;


private:
	CString UdlNew(HWND hWnd = NULL);
	CString UdlEdit(LPCTSTR lpstrConnectionString, HWND hWnd);

// 实现
protected:
	HICON m_hIcon;

	// 生成的消息映射函数
	afx_msg void OnSysCommand(UINT nID, LPARAM lParam);
	virtual BOOL OnInitDialog();
	afx_msg void OnPaint();
	afx_msg HCURSOR OnQueryDragIcon();
	DECLARE_MESSAGE_MAP()

public:
	afx_msg void OnBnClickedUdldlg();	
	afx_msg void OnBnClickedConnect();
	afx_msg void OnBnClickedRecordset();	
	afx_msg void OnBnClickedExcute();
	afx_msg HBRUSH OnCtlColor(CDC* pDC, CWnd* pWnd, UINT nCtlColor);
	afx_msg void OnDestroy();
	afx_msg void OnBnClickedOpenschema();

public:
	CString m_strCnnString;
	int m_nCursorType;
	int m_nLockType;
	int m_nOptionsRs;
	CString m_strUser;
	CString m_strPassword;
	CString m_strConnectPtr;
	CString m_strRecordsetSql;
	CString m_strRecordsetPtr;
	int m_nOptionsCmm;
	CString m_strExcuteSql;
	int m_nQueryType;
	BOOL m_bDataGridShow;

	CxMfcBtn			m_wndBtn[5];

private:
	CBrush				m_oDlgBrush;
	CDataGridDlg		m_dlgDataGrid;
	CTableDataDlg		m_dlgTableData;
public:
	int m_nShowType;
	afx_msg void OnCbnSelchangeComboShowtype();
	LRESULT OnUmBtnClicked(WPARAM wParam, LPARAM lParam);
	LRESULT OnUmCnnStrChanged(WPARAM wParam, LPARAM lParam);
	LRESULT OnKickIdle(WPARAM wParam, LPARAM lParam);
	void ExcuteSQLFile(void);
	static void SetWndVisible(CWnd* pWnd, bool bVisible);
	afx_msg void OnCbnSelchangeEditCnnstring();
};
