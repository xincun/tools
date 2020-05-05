#pragma once

//#define NS_FUN_S	namespace Fun {
#define NS_FUN_E	};

#define DECNS(ns)	 namespace ns{

//NS_FUN_S
DECNS(Fun)

bool inline Save( LPCTSTR lpszFile, LPCTSTR lpszValue)
{
	CStdioFile file;
	if (file.Open(lpszFile,
		CFile::modeCreate | CFile::modeWrite | CFile::typeText))
	{
		file.WriteString(lpszValue);
		file.Flush();
		file.Close();
		return true;
	}
	ASSERT(FALSE);
	return false;
}

CString inline GetErrorText(DWORD dwError = GetLastError())
{
	//DWORD dwError = GetDlgItemInt(hwnd, IDC_ERRORCODE, NULL, FALSE);

	HLOCAL hlocal = NULL;   // Buffer that gets the error message string

	// Use the default system locale since we look for Windows messages.
	// Note: this MAKELANGID combination has 0 as value
	DWORD systemLocale = MAKELANGID(LANG_NEUTRAL, SUBLANG_NEUTRAL);

	// Get the error code's textual description
	BOOL fOk = FormatMessage(
		FORMAT_MESSAGE_FROM_SYSTEM | FORMAT_MESSAGE_IGNORE_INSERTS |
		FORMAT_MESSAGE_ALLOCATE_BUFFER, 
		NULL, dwError, systemLocale, 
		(PTSTR) &hlocal, 0, NULL);

	if (!fOk) {
		// Is it a network-related error?
		HMODULE hDll = LoadLibraryEx(TEXT("netmsg.dll"), NULL, 
			DONT_RESOLVE_DLL_REFERENCES);

		if (hDll != NULL) {
			fOk = FormatMessage(
				FORMAT_MESSAGE_FROM_HMODULE | FORMAT_MESSAGE_IGNORE_INSERTS |
				FORMAT_MESSAGE_ALLOCATE_BUFFER,
				hDll, dwError, systemLocale,
				(PTSTR) &hlocal, 0, NULL);
			FreeLibrary(hDll);
		}
	}

	CString strValue;
	if (fOk && (hlocal != NULL)) {
		//SetDlgItemText(hwnd, IDC_ERRORTEXT, (PCTSTR) LocalLock(hlocal));
		strValue = (PCTSTR) LocalLock(hlocal);
		LocalFree(hlocal);
	} else {
		// 		SetDlgItemText(hwnd, IDC_ERRORTEXT, 
		// 			TEXT("No text found for this error number."));
		strValue = _T("No text found for this error number.");
	}
	return strValue;
}


CString inline GetExePath()
{
	CString strPath;
	GetModuleFileName(NULL, strPath.GetBuffer(MAX_PATH), MAX_PATH);
	strPath.ReleaseBuffer();
	return strPath.Left(strPath.ReverseFind('\\') + 1);;
}


#ifndef ADO_FORMATMSG
#define ADO_FORMATMSG(e)		AdoFormatMsg(e, __FILE__, __FUNCTION__, __LINE__)
#endif // ADO_FORMATMSG

inline CString AdoFormatMsg(const _com_error& e,
							LPCSTR lpszFile, 
							LPCSTR lpszFunction,
							int nLine)
{
	_bstr_t strFile(lpszFile);
	_bstr_t strFunction(lpszFunction);

	SYSTEMTIME st;
	GetLocalTime(&st);

	CString strMsg;

	CString strTime;
	strTime.Format(_T("%04d-%02d-%02d %02d:%02d:%02d.%03d"),
		st.wYear, st.wMonth, st.wDay, st.wHour, st.wMinute, st.wSecond, st.wMilliseconds);

	CString strModule;
	GetModuleFileName(NULL, strModule.GetBuffer(MAX_PATH), MAX_PATH);
	strModule.ReleaseBuffer();

	strMsg.Format(_T("错误代码:%08lX\n错误描述:%s\n错误消息:%s\n错误源:%s\n文件:%s\n行数:%-6d\n函数:%s\n时间:%s\n进程号:%-6d\n线程号:%-6d\n可执行文件:%s\n"),
		e.Error(), (LPCTSTR)e.Description(), (LPCTSTR)e.ErrorMessage(), (LPCTSTR)e.Source(),
		(LPCTSTR)strFile, nLine, (LPCTSTR)strFunction, strTime, GetCurrentProcessId(), GetCurrentThreadId(), strModule);


	return strMsg;

}


NS_FUN_E

using namespace Fun;