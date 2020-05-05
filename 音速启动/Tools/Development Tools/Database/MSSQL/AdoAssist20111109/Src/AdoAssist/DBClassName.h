/*----------------------------------------------------------------------------------------------------------------
Version:	AdoAssist 1.10
   Time:	2011-11-09 12:28:16
    SQL:	SELECT * FROM tbl_task ts INNER JOIN tbl_task_result tr  ON ts.TaskGuid = tr.TaskGuid
----------------------------------------------------------------------------------------------------------------*/
#pragma once

class CDBClassName
{
public:
	INT64			m_i64ID;	//0	ID	adBigInt
	CString			m_strTaskGuid;	//1	TaskGuid	adVarWChar
	CString			m_strTaskID;	//2	TaskID	adVarWChar
	CString			m_strImageID;	//3	ImageID	adVarWChar
	CString			m_strMsgXmlName;	//4	MsgXmlName	adVarWChar
	CString			m_strMsgGuid;	//5	MsgGuid	adVarWChar
	CString			m_strSender;	//6	Sender	adVarWChar
	CString			m_strReceiver;	//7	Receiver	adVarWChar
	COleDateTime			m_dtMsgDate;	//8	MsgDate	adDBTimeStamp
	CString			m_strSrcXmlName;	//9	SrcXmlName	adVarWChar
	CString			m_strSrcProdDoc;	//10	SrcProdDoc	adVarWChar
	CString			m_strSrcProdXmlName;	//11	SrcProdXmlName	adVarWChar
	CString			m_strSrcImgDoc;	//12	SrcImgDoc	adVarWChar
	CString			m_strSrcImgName;	//13	SrcImgName	adVarWChar
	CString			m_strSrcImgXmlName;	//14	SrcImgXmlName	adVarWChar
	CString			m_strSatellite;	//15	Satellite	adVarWChar
	CString			m_strSensor;	//16	Sensor	adVarWChar
	CString			m_strEarthEllipsoid;	//17	EarthEllipsoid	adVarWChar
	double			m_dblSrcImgCenterPointLon;	//18	SrcImgCenterPointLon	adNumeric
	double			m_dblSrcImgCenterPointLat;	//19	SrcImgCenterPointLat	adNumeric
	double			m_dblSrcImgLTPointLon;	//20	SrcImgLTPointLon	adNumeric
	double			m_dblSrcImgLTPointLat;	//21	SrcImgLTPointLat	adNumeric
	double			m_dblSrcImgLBPointLon;	//22	SrcImgLBPointLon	adNumeric
	double			m_dblSrcImgLBPointLat;	//23	SrcImgLBPointLat	adNumeric
	double			m_dblSrcImgRTPointLon;	//24	SrcImgRTPointLon	adNumeric
	double			m_dblSrcImgRTPointLat;	//25	SrcImgRTPointLat	adNumeric
	double			m_dblSrcImgRBPointLon;	//26	SrcImgRBPointLon	adNumeric
	double			m_dblSrcImgRBPointLat;	//27	SrcImgRBPointLat	adNumeric
	double			m_dblImgLTPointLon;	//28	ImgLTPointLon	adNumeric
	double			m_dblImgLTPointLat;	//29	ImgLTPointLat	adNumeric
	double			m_dblImgRBPointLon;	//30	ImgRBPointLon	adNumeric
	double			m_dblImgRBPointLat;	//31	ImgRBPointLat	adNumeric
	CString			m_strIntIndex;	//32	IntIndex	adVarWChar
	CString			m_strExtIndex;	//33	ExtIndex	adVarWChar
	CString			m_strDatasetID;	//34	DatasetID	adVarWChar
	CString			m_strTargetFilterType;	//35	TargetFilterType	adVarWChar
	COleDateTime			m_dtTargetFilterTime;	//36	TargetFilterTime	adDBTimeStamp
	double			m_dblSrcTargetCenterPointLon;	//37	SrcTargetCenterPointLon	adNumeric
	double			m_dblSrcTargetCenterPointLat;	//38	SrcTargetCenterPointLat	adNumeric
	double			m_dblSrcTargetLTPointLon;	//39	SrcTargetLTPointLon	adNumeric
	double			m_dblSrcTargetLTPointLat;	//40	SrcTargetLTPointLat	adNumeric
	double			m_dblSrcTargetRBPointLon;	//41	SrcTargetRBPointLon	adNumeric
	double			m_dblSrcTargetRBPointLat;	//42	SrcTargetRBPointLat	adNumeric
	CString			m_strTargetStructGuid;	//43	TargetStructGuid	adVarChar
	CString			m_strTargetName;	//44	TargetName	adVarWChar
	double			m_dblTargetPointLon;	//45	TargetPointLon	adNumeric
	double			m_dblTargetPointLat;	//46	TargetPointLat	adNumeric
	CString			m_strTargetDescribe;	//47	TargetDescribe	adLongVarWChar
	CString			m_strTargetIndex;	//48	TargetIndex	adVarWChar
	CString			m_strTargetType;	//49	TargetType	adVarWChar
	CString			m_strTaskResultGuid;	//50	TaskResultGuid	adVarChar
	long			m_lTaskResultStatus;	//51	TaskResultStatus	adInteger
	CAdoBinaryRes			m_brTaskImg;	//52	TaskImg	adLongVarBinary
	INT64			m_i64TaskImgSize;	//53	TaskImgSize	adBigInt
	CString			m_strUserName;	//54	UserName	adVarWChar
	INT64			m_i64ID;	//55	ID	adBigInt
	CString			m_strTaskResultGuid;	//56	TaskResultGuid	adVarWChar
	CString			m_strTaskGuid;	//57	TaskGuid	adVarWChar
	CString			m_strTargetStructGuid;	//58	TargetStructGuid	adVarWChar
	long			m_lElemStructNum;	//59	ElemStructNum	adInteger
	CString			m_strElemDataGuids;	//60	ElemDataGuids	adLongVarWChar
	long			m_lElemDataNum;	//61	ElemDataNum	adInteger
	CString			m_strPosProdGuid;	//62	PosProdGuid	adVarWChar
	CString			m_strImgProdGuid;	//63	ImgProdGuid	adVarWChar
	CString			m_strWordProdGuid;	//64	WordProdGuid	adVarWChar
	CString			m_strVectorProdGuid;	//65	VectorProdGuid	adVarWChar

public:
	// Database Interface
	bool AdoRecord(const ADODB::CAdoRecordset& rs);
};

// Database Interface
inline bool CDBClassName::AdoRecord(const ADODB::CAdoRecordset& rs)
{
	if (ADO_ISGETCOLLECT(rs))
	{
		ADO_OPTCOLLECT(_T("ID"), m_i64ID);	//0
	}
	ADO_OPTCOLLECT(_T("TaskGuid"), m_strTaskGuid);	//1
	ADO_OPTCOLLECT(_T("TaskID"), m_strTaskID);	//2
	ADO_OPTCOLLECT(_T("ImageID"), m_strImageID);	//3
	ADO_OPTCOLLECT(_T("MsgXmlName"), m_strMsgXmlName);	//4
	ADO_OPTCOLLECT(_T("MsgGuid"), m_strMsgGuid);	//5
	ADO_OPTCOLLECT(_T("Sender"), m_strSender);	//6
	ADO_OPTCOLLECT(_T("Receiver"), m_strReceiver);	//7
	ADO_OPTCOLLECT(_T("MsgDate"), m_dtMsgDate);	//8
	ADO_OPTCOLLECT(_T("SrcXmlName"), m_strSrcXmlName);	//9
	ADO_OPTCOLLECT(_T("SrcProdDoc"), m_strSrcProdDoc);	//10
	ADO_OPTCOLLECT(_T("SrcProdXmlName"), m_strSrcProdXmlName);	//11
	ADO_OPTCOLLECT(_T("SrcImgDoc"), m_strSrcImgDoc);	//12
	ADO_OPTCOLLECT(_T("SrcImgName"), m_strSrcImgName);	//13
	ADO_OPTCOLLECT(_T("SrcImgXmlName"), m_strSrcImgXmlName);	//14
	ADO_OPTCOLLECT(_T("Satellite"), m_strSatellite);	//15
	ADO_OPTCOLLECT(_T("Sensor"), m_strSensor);	//16
	ADO_OPTCOLLECT(_T("EarthEllipsoid"), m_strEarthEllipsoid);	//17
	ADO_OPTCOLLECT(_T("SrcImgCenterPointLon"), m_dblSrcImgCenterPointLon);	//18
	ADO_OPTCOLLECT(_T("SrcImgCenterPointLat"), m_dblSrcImgCenterPointLat);	//19
	ADO_OPTCOLLECT(_T("SrcImgLTPointLon"), m_dblSrcImgLTPointLon);	//20
	ADO_OPTCOLLECT(_T("SrcImgLTPointLat"), m_dblSrcImgLTPointLat);	//21
	ADO_OPTCOLLECT(_T("SrcImgLBPointLon"), m_dblSrcImgLBPointLon);	//22
	ADO_OPTCOLLECT(_T("SrcImgLBPointLat"), m_dblSrcImgLBPointLat);	//23
	ADO_OPTCOLLECT(_T("SrcImgRTPointLon"), m_dblSrcImgRTPointLon);	//24
	ADO_OPTCOLLECT(_T("SrcImgRTPointLat"), m_dblSrcImgRTPointLat);	//25
	ADO_OPTCOLLECT(_T("SrcImgRBPointLon"), m_dblSrcImgRBPointLon);	//26
	ADO_OPTCOLLECT(_T("SrcImgRBPointLat"), m_dblSrcImgRBPointLat);	//27
	ADO_OPTCOLLECT(_T("ImgLTPointLon"), m_dblImgLTPointLon);	//28
	ADO_OPTCOLLECT(_T("ImgLTPointLat"), m_dblImgLTPointLat);	//29
	ADO_OPTCOLLECT(_T("ImgRBPointLon"), m_dblImgRBPointLon);	//30
	ADO_OPTCOLLECT(_T("ImgRBPointLat"), m_dblImgRBPointLat);	//31
	ADO_OPTCOLLECT(_T("IntIndex"), m_strIntIndex);	//32
	ADO_OPTCOLLECT(_T("ExtIndex"), m_strExtIndex);	//33
	ADO_OPTCOLLECT(_T("DatasetID"), m_strDatasetID);	//34
	ADO_OPTCOLLECT(_T("TargetFilterType"), m_strTargetFilterType);	//35
	ADO_OPTCOLLECT(_T("TargetFilterTime"), m_dtTargetFilterTime);	//36
	ADO_OPTCOLLECT(_T("SrcTargetCenterPointLon"), m_dblSrcTargetCenterPointLon);	//37
	ADO_OPTCOLLECT(_T("SrcTargetCenterPointLat"), m_dblSrcTargetCenterPointLat);	//38
	ADO_OPTCOLLECT(_T("SrcTargetLTPointLon"), m_dblSrcTargetLTPointLon);	//39
	ADO_OPTCOLLECT(_T("SrcTargetLTPointLat"), m_dblSrcTargetLTPointLat);	//40
	ADO_OPTCOLLECT(_T("SrcTargetRBPointLon"), m_dblSrcTargetRBPointLon);	//41
	ADO_OPTCOLLECT(_T("SrcTargetRBPointLat"), m_dblSrcTargetRBPointLat);	//42
	ADO_OPTCOLLECT(_T("TargetStructGuid"), m_strTargetStructGuid);	//43
	ADO_OPTCOLLECT(_T("TargetName"), m_strTargetName);	//44
	ADO_OPTCOLLECT(_T("TargetPointLon"), m_dblTargetPointLon);	//45
	ADO_OPTCOLLECT(_T("TargetPointLat"), m_dblTargetPointLat);	//46
	ADO_OPTCOLLECT(_T("TargetDescribe"), m_strTargetDescribe);	//47
	ADO_OPTCOLLECT(_T("TargetIndex"), m_strTargetIndex);	//48
	ADO_OPTCOLLECT(_T("TargetType"), m_strTargetType);	//49
	ADO_OPTCOLLECT(_T("TaskResultGuid"), m_strTaskResultGuid);	//50
	ADO_OPTCOLLECT(_T("TaskResultStatus"), m_lTaskResultStatus);	//51
	ADO_OPTCOLLECT(_T("TaskImg"), m_brTaskImg);	//52
	ADO_OPTCOLLECT(_T("TaskImgSize"), m_i64TaskImgSize);	//53
	ADO_OPTCOLLECT(_T("UserName"), m_strUserName);	//54
	if (ADO_ISGETCOLLECT(rs))
	{
		ADO_OPTCOLLECT(_T("ID"), m_i64ID);	//55
	}
	ADO_OPTCOLLECT(_T("TaskResultGuid"), m_strTaskResultGuid);	//56
	ADO_OPTCOLLECT(_T("TaskGuid"), m_strTaskGuid);	//57
	ADO_OPTCOLLECT(_T("TargetStructGuid"), m_strTargetStructGuid);	//58
	ADO_OPTCOLLECT(_T("ElemStructNum"), m_lElemStructNum);	//59
	ADO_OPTCOLLECT(_T("ElemDataGuids"), m_strElemDataGuids);	//60
	ADO_OPTCOLLECT(_T("ElemDataNum"), m_lElemDataNum);	//61
	ADO_OPTCOLLECT(_T("PosProdGuid"), m_strPosProdGuid);	//62
	ADO_OPTCOLLECT(_T("ImgProdGuid"), m_strImgProdGuid);	//63
	ADO_OPTCOLLECT(_T("WordProdGuid"), m_strWordProdGuid);	//64
	ADO_OPTCOLLECT(_T("VectorProdGuid"), m_strVectorProdGuid);	//65

	return true;
}


