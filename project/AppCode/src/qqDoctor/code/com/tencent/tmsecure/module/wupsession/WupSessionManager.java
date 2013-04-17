package com.tencent.tmsecure.module.wupsession;

import QQPIM.ADInfo;
import QQPIM.AnalyseInfo;
import QQPIM.BrowserClient;
import QQPIM.BrowserResult;
import QQPIM.BrowserUrl;
import QQPIM.Category;
import QQPIM.ChangeUrlReqInfo;
import QQPIM.ChangeUrlResInfo;
import QQPIM.ClientVersionInfo;
import QQPIM.CmdInfoRes;
import QQPIM.CommentInfo;
import QQPIM.ConfInfo;
import QQPIM.ConfSrc;
import QQPIM.DeviceInfo;
import QQPIM.DownInfo;
import QQPIM.FBIllegaSoft;
import QQPIM.FBMobile;
import QQPIM.FBSoftDesc;
import QQPIM.FBWBList;
import QQPIM.GUIDInfo;
import QQPIM.HotWordReqInfo;
import QQPIM.HotWordResInfo;
import QQPIM.LicenceCheckResult;
import QQPIM.LicenceInfo;
import QQPIM.MalSoftType;
import QQPIM.MySoftSimpleInfo;
import QQPIM.NotifyInfo;
import QQPIM.PKResultInfo;
import QQPIM.PKUserInfo;
import QQPIM.PhoneInfo;
import QQPIM.ResPKPosition;
import QQPIM.RespMark;
import QQPIM.RspTemplate;
import QQPIM.STCloudOrderReq;
import QQPIM.STOrderReAct;
import QQPIM.STQuery;
import QQPIM.STQueryResult;
import QQPIM.STReActBack;
import QQPIM.STReportBack;
import QQPIM.STRetInfo;
import QQPIM.STSmsInfo;
import QQPIM.STTrafficTemplate;
import QQPIM.STVecCloudBak;
import QQPIM.STVecCodeResult;
import QQPIM.STVecNetLocal;
import QQPIM.SUI;
import QQPIM.ServerCmdInfo;
import QQPIM.ServerInfo;
import QQPIM.SmsReport;
import QQPIM.SoftAction;
import QQPIM.SoftFeature;
import QQPIM.SoftKey;
import QQPIM.SoftServerInfo;
import QQPIM.SoftSimpleInfo;
import QQPIM.TelReport;
import QQPIM.TipInfo;
import QQPIM.UnknownSoftInfo;
import QQPIM.UrlCheckResponse;
import QQPIM.VECReportError;
import QQPIM.VirusClientInfo;
import QQPIM.VirusInfo;
import QQPIM.VirusServerInfo;
import QQPIM.stAntiTheftReport;
import QQPIM.stBindPhoneInfo;
import QQPIM.stUrgentInfo;
import android.content.Context;
import btl;
import bzf;
import com.tencent.tmsecure.common.BaseManager;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;

public final class WupSessionManager extends BaseManager
{
  private bzf a;

  public final int browerCheck(BrowserClient paramBrowserClient, BrowserUrl paramBrowserUrl, AtomicReference<BrowserResult> paramAtomicReference)
  {
    return this.a.a(paramBrowserClient, paramBrowserUrl, paramAtomicReference);
  }

  public final int checkLicence(LicenceInfo paramLicenceInfo, LicenceCheckResult paramLicenceCheckResult)
  {
    return this.a.a(paramLicenceInfo, paramLicenceCheckResult);
  }

  public final int checkUrl(String paramString, AtomicReference<UrlCheckResponse> paramAtomicReference)
  {
    return this.a.a(paramString, paramAtomicReference);
  }

  public final int checkUrlEx(List<String> paramList, AtomicReference<RspTemplate> paramAtomicReference)
  {
    return this.a.b(paramList, paramAtomicReference);
  }

  public final int getADs(ArrayList<ADInfo> paramArrayList)
  {
    return this.a.e(paramArrayList);
  }

  public final int getAnalyseInfo(List<SoftFeature> paramList, ArrayList<AnalyseInfo> paramArrayList)
  {
    return this.a.a(paramList, paramArrayList);
  }

  public final int getBindPhoneList(String paramString, ArrayList<stBindPhoneInfo> paramArrayList)
  {
    return this.a.a(paramString, paramArrayList);
  }

  public final int getCategoryList(String paramString, AtomicReference<SoftServerInfo> paramAtomicReference, ArrayList<Category> paramArrayList)
  {
    return this.a.a(paramString, paramAtomicReference, paramArrayList);
  }

  public final int getChangeUrl(ChangeUrlReqInfo paramChangeUrlReqInfo, AtomicReference<ChangeUrlResInfo> paramAtomicReference)
  {
    return this.a.a(paramChangeUrlReqInfo, paramAtomicReference);
  }

  public final int getConfigV3(ArrayList<ConfInfo> paramArrayList, ArrayList<ConfSrc> paramArrayList1, AtomicReference<TipInfo> paramAtomicReference)
  {
    return this.a.a(paramArrayList, paramArrayList1, paramAtomicReference);
  }

  public final int getConfigV3CPT(ArrayList<ConfInfo> paramArrayList, ArrayList<ConfSrc> paramArrayList1, AtomicReference<TipInfo> paramAtomicReference)
  {
    return this.a.b(paramArrayList, paramArrayList1, paramAtomicReference);
  }

  public final String getGuid()
  {
    return new btl("wup").a("guid", null);
  }

  public final int getGuidFromServer(DeviceInfo paramDeviceInfo, AtomicReference<GUIDInfo> paramAtomicReference)
  {
    return this.a.a(paramDeviceInfo, paramAtomicReference);
  }

  public final int getHotWord(HotWordReqInfo paramHotWordReqInfo, AtomicReference<HotWordResInfo> paramAtomicReference)
  {
    return this.a.a(paramHotWordReqInfo, paramAtomicReference);
  }

  public final int getMark(PhoneInfo paramPhoneInfo, AtomicReference<RespMark> paramAtomicReference)
  {
    return this.a.a(paramPhoneInfo, paramAtomicReference);
  }

  public final int getMySoftList(List<SoftKey> paramList, AtomicReference<SoftServerInfo> paramAtomicReference, ArrayList<MySoftSimpleInfo> paramArrayList)
  {
    return this.a.a(paramList, paramAtomicReference, paramArrayList);
  }

  public final int getOperatorDataSyncInfo(STQuery paramSTQuery, AtomicReference<STQueryResult> paramAtomicReference)
  {
    return this.a.a(paramSTQuery, paramAtomicReference);
  }

  public final int getOrderForReAct(STOrderReAct paramSTOrderReAct, AtomicReference<STReActBack> paramAtomicReference)
  {
    return this.a.a(paramSTOrderReAct, paramAtomicReference);
  }

  public final int getPKUserInfo(PhoneInfo paramPhoneInfo, AtomicReference<PKUserInfo> paramAtomicReference)
  {
    return this.a.c(paramPhoneInfo, paramAtomicReference);
  }

  public final int getQueryInfoMulti(STQuery paramSTQuery, AtomicReference<STVecCodeResult> paramAtomicReference)
  {
    return this.a.b(paramSTQuery, paramAtomicReference);
  }

  public final int getSoftList(String paramString, AtomicReference<SoftServerInfo> paramAtomicReference, ArrayList<SoftSimpleInfo> paramArrayList)
  {
    return this.a.b(paramString, paramAtomicReference, paramArrayList);
  }

  public final int getTime(AtomicReference<ServerInfo> paramAtomicReference)
  {
    return this.a.a(paramAtomicReference);
  }

  public final int getTrafficCmd(STCloudOrderReq paramSTCloudOrderReq, AtomicReference<STVecCloudBak> paramAtomicReference)
  {
    return this.a.a(paramSTCloudOrderReq, paramAtomicReference);
  }

  public final int getTrafficTemplate(STSmsInfo paramSTSmsInfo, AtomicReference<STTrafficTemplate> paramAtomicReference, AtomicReference<STRetInfo> paramAtomicReference1)
  {
    return this.a.a(paramSTSmsInfo, paramAtomicReference, paramAtomicReference1);
  }

  public final int getUpdatesV2(List<ClientVersionInfo> paramList, AtomicReference<ServerCmdInfo> paramAtomicReference)
  {
    return this.a.a(paramList, paramAtomicReference);
  }

  public final int getVirusInfos(VirusClientInfo paramVirusClientInfo, AtomicReference<VirusServerInfo> paramAtomicReference, ArrayList<VirusInfo> paramArrayList)
  {
    return this.a.a(paramVirusClientInfo, paramAtomicReference, paramArrayList);
  }

  public final void onCreate(Context paramContext)
  {
    this.a = new bzf();
    this.a.onCreate(paramContext);
    setImpl(this.a);
  }

  public final int reportAntiTheft(String paramString, stAntiTheftReport paramstAntiTheftReport, AtomicReference<Integer> paramAtomicReference)
  {
    return this.a.a(paramString, paramstAntiTheftReport, paramAtomicReference);
  }

  public final int reportChannelInfo()
  {
    return this.a.a();
  }

  public final int reportDownSoft(DownInfo paramDownInfo)
  {
    return this.a.a(paramDownInfo);
  }

  public final int reportFBIllegaReason(ArrayList<FBIllegaSoft> paramArrayList)
  {
    return this.a.c(paramArrayList);
  }

  public final int reportLocalNet(STVecNetLocal paramSTVecNetLocal)
  {
    return this.a.a(paramSTVecNetLocal);
  }

  public final int reportMobile(ArrayList<FBMobile> paramArrayList)
  {
    return this.a.f(paramArrayList);
  }

  public final int reportNotifyInfo(List<NotifyInfo> paramList)
  {
    return this.a.e(paramList);
  }

  public final int reportOperatorDataSyncErrorMsg(VECReportError paramVECReportError, AtomicReference<STReportBack> paramAtomicReference)
  {
    return this.a.a(paramVECReportError, paramAtomicReference);
  }

  public final int reportPKPosition(PhoneInfo paramPhoneInfo, AtomicReference<ResPKPosition> paramAtomicReference)
  {
    return this.a.b(paramPhoneInfo, paramAtomicReference);
  }

  public final int reportPKResult(PKResultInfo paramPKResultInfo, AtomicReference<RespMark> paramAtomicReference)
  {
    return this.a.a(paramPKResultInfo, paramAtomicReference);
  }

  public final int reportSms(List<SmsReport> paramList)
  {
    return this.a.a(paramList);
  }

  public final int reportSoftAction(List<SoftAction> paramList)
  {
    return this.a.d(paramList);
  }

  public final int reportSoftDesc(ArrayList<FBSoftDesc> paramArrayList)
  {
    return this.a.d(paramArrayList);
  }

  public final int reportSoftFeature(List<SoftFeature> paramList)
  {
    return this.a.c(paramList);
  }

  public final int reportSoftType(Map<SoftKey, MalSoftType> paramMap)
  {
    return this.a.a(paramMap);
  }

  public final int reportSoftUsageInfo(ArrayList<SUI> paramArrayList)
  {
    return this.a.h(paramArrayList);
  }

  public final int reportTel(List<TelReport> paramList)
  {
    return this.a.b(paramList);
  }

  public final int reportTipsRes(CmdInfoRes paramCmdInfoRes)
  {
    return this.a.a(paramCmdInfoRes);
  }

  public final int reportUnknowSoftInfo(ArrayList<UnknownSoftInfo> paramArrayList)
  {
    return this.a.b(paramArrayList);
  }

  public final int reportUserComment(ArrayList<CommentInfo> paramArrayList)
  {
    return this.a.a(paramArrayList);
  }

  public final int reportVirusLibUpdate()
  {
    return this.a.b();
  }

  public final int reportWBList(ArrayList<FBWBList> paramArrayList)
  {
    return this.a.g(paramArrayList);
  }

  public final int setUrgentInfo(String paramString, stUrgentInfo paramstUrgentInfo, AtomicReference<Integer> paramAtomicReference)
  {
    return this.a.a(paramString, paramstUrgentInfo, paramAtomicReference);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.wupsession.WupSessionManager
 * JD-Core Version:    0.6.2
 */