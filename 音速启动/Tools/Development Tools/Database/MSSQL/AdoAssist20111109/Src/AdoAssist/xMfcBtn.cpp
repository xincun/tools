// xMfcBtn.cpp : 实现文件
//

#include "stdafx.h"
#include "xMfcBtn.h"


// CxMfcBtn

IMPLEMENT_DYNAMIC(CxMfcBtn, CMFCButton)

CxMfcBtn::CxMfcBtn()
{

}

CxMfcBtn::~CxMfcBtn()
{
}


BEGIN_MESSAGE_MAP(CxMfcBtn, CMFCButton)
END_MESSAGE_MAP()



// CxMfcBtn 消息处理程序


void CxMfcBtn::PreSubclassWindow()
{
	// TODO: 在此添加专用代码和/或调用基类
	SetTextColor(0xBB0000);
	SetTextHotColor(0xAAffBB);
	SetFaceColor(BK_COLOR + 0x11);
	CString strText;
	GetWindowText(strText);
	SetTooltip(strText);

	CMFCButton::PreSubclassWindow();
}
