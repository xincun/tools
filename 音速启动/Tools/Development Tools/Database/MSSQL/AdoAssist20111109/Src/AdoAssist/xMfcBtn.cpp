// xMfcBtn.cpp : ʵ���ļ�
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



// CxMfcBtn ��Ϣ�������


void CxMfcBtn::PreSubclassWindow()
{
	// TODO: �ڴ����ר�ô����/����û���
	SetTextColor(0xBB0000);
	SetTextHotColor(0xAAffBB);
	SetFaceColor(BK_COLOR + 0x11);
	CString strText;
	GetWindowText(strText);
	SetTooltip(strText);

	CMFCButton::PreSubclassWindow();
}
