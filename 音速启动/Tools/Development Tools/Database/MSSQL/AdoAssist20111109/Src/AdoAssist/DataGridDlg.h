#pragma once
#include "datagrid.h"
#include "easysize.h"
#include "xMfcBtn.h"

// CDataGridDlg 对话框

class CDataGridDlg : public CDialog
{
	DECLARE_EASYSIZE;
	DECLARE_DYNAMIC(CDataGridDlg)

public:
	CDataGridDlg(CWnd* pParent = NULL);   // 标准构造函数
	virtual ~CDataGridDlg();

// 对话框数据
	enum { IDD = IDD_DATAGRID_DIALOG };

protected:
	virtual void DoDataExchange(CDataExchange* pDX);    // DDX/DDV 支持

	DECLARE_MESSAGE_MAP()
public:
	afx_msg void OnSize(UINT nType, int cx, int cy);
//	afx_msg void OnClose();

	CDatagrid	m_oDataGrid;
	CString		m_strCaption;
	_RecordsetPtr	m_pRecordset;
	afx_msg void OnClose();

private:
	CBrush				m_oDlgBrush;
	
	static const CString		m_strTemplate;

public:
	void RefreshDatagrid(_RecordsetPtr& rs, LPCTSTR lpszCaption);
	int m_nCodeType;
	afx_msg void OnBnClickedNextrecordset();
	virtual BOOL OnInitDialog();
	afx_msg void OnBnClickedWritecode();
private:
	bool GetSqlCode(CString& strCode, LPCTSTR lpszTableName);
	bool GetVarAsString(CString& strValue, const _variant_t& var);
	bool AdoConvert(CString& dstValue, const _variant_t& srcValue);
public:
	afx_msg void OnSizing(UINT fwSide, LPRECT pRect);
	afx_msg HBRUSH OnCtlColor(CDC* pDC, CWnd* pWnd, UINT nCtlColor);

private:
	CxMfcBtn		m_wndBtn[2];
};
