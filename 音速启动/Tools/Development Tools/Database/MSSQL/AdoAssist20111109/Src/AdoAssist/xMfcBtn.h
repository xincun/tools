#pragma once


// CxMfcBtn

class CxMfcBtn : public CMFCButton
{
	DECLARE_DYNAMIC(CxMfcBtn)

public:
	CxMfcBtn();
	virtual ~CxMfcBtn();

protected:
	DECLARE_MESSAGE_MAP()

protected:
	virtual void PreSubclassWindow();
};


