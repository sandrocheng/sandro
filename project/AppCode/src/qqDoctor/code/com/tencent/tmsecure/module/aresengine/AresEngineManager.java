package com.tencent.tmsecure.module.aresengine;

import QQPIM.RuleTypeID;
import QQPIM.SmsReport;
import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Binder;
import btw;
import bvg;
import bvi;
import bvj;
import com.tencent.tccdb.MMatchSysResult;
import com.tencent.tccdb.MRuleTypeID;
import com.tencent.tmsecure.common.BaseManager;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.common.TMSApplication;
import com.tencent.tmsecure.module.software.AppEntity;
import com.tencent.tmsecure.module.software.SoftwareManager;
import com.tencent.tmsecure.module.wupsession.WupSessionManager;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class AresEngineManager extends BaseManager
{
  private btw a;
  private Map<String, DataIntercepter<? extends TelephonyEntity>> b;
  private bvj c;

  public final void addIntercepter(DataIntercepterBuilder<? extends TelephonyEntity> paramDataIntercepterBuilder)
    throws RuntimeException
  {
    if (isExpired());
    while (true)
    {
      return;
      this.a.a(paramDataIntercepterBuilder);
    }
  }

  public final List<String> findAheadProcess()
  {
    Object localObject;
    if (isExpired())
    {
      localObject = null;
      return localObject;
    }
    btw localbtw = this.a;
    SoftwareManager localSoftwareManager = (SoftwareManager)ManagerCreator.getManager(SoftwareManager.class);
    ArrayList localArrayList = new ArrayList();
    int i = Binder.getCallingPid();
    HashMap localHashMap = new HashMap();
    Iterator localIterator1 = ((ActivityManager)localbtw.d.getSystemService("activity")).getRunningAppProcesses().iterator();
    label70: Iterator localIterator2;
    if (!localIterator1.hasNext())
      localIterator2 = localHashMap.values().iterator();
    while (true)
    {
      if (!localIterator2.hasNext())
      {
        localObject = localArrayList;
        break;
        ActivityManager.RunningAppProcessInfo localRunningAppProcessInfo1 = (ActivityManager.RunningAppProcessInfo)localIterator1.next();
        localHashMap.put(localRunningAppProcessInfo1.processName, localRunningAppProcessInfo1);
        break label70;
      }
      ActivityManager.RunningAppProcessInfo localRunningAppProcessInfo2 = (ActivityManager.RunningAppProcessInfo)localIterator2.next();
      AppEntity localAppEntity = localSoftwareManager.getAppInfo(localRunningAppProcessInfo2.processName, 34);
      if ((localAppEntity != null) && (localAppEntity.getPermissions() != null))
      {
        List localList = Arrays.asList(localAppEntity.getPermissions());
        if ((!localAppEntity.isSystemApp()) && (localRunningAppProcessInfo2.pid < i) && (localList.size() > 0) && ((localList.contains("android.permission.RECEIVE_SMS")) || (localList.contains("android.permission.RECEIVE_MMS")) || (localList.contains("android.permission.RECEIVE_WAP_PUSH"))))
          localArrayList.add(localAppEntity.getPackageName());
      }
    }
  }

  public final DataIntercepter<? extends TelephonyEntity> findIntercepter(String paramString)
  {
    int i = 0;
    String[] arrayOfString;
    if (isExpired())
      if (this.b == null)
      {
        this.b = new HashMap();
        arrayOfString = new String[] { "incoming_call", "incoming_sms", "outing_sms", "system_call" };
        int j = arrayOfString.length;
        if (i < j)
          break label79;
      }
    for (DataIntercepter localDataIntercepter = (DataIntercepter)this.b.get(paramString); ; localDataIntercepter = (DataIntercepter)this.a.a.get(paramString))
    {
      return localDataIntercepter;
      label79: String str = arrayOfString[i];
      this.b.put(str, new bvi(str));
      i++;
      break;
    }
  }

  public final AresEngineFactor getAresEngineFactor()
  {
    btw localbtw = this.a;
    if (localbtw.c == null)
      throw new NullPointerException("The AresEngineManager's Factor can not be null.");
    return localbtw.c;
  }

  public final IIntelligentSmsChecker getIntelligentSmsChecker()
  {
    if (isExpired())
      if (this.c == null)
        this.c = new bvj();
    for (Object localObject = this.c; ; localObject = this.a.b)
      return localObject;
  }

  public final IMmsTransactionHelper getMmsTransactionHelper()
  {
    btw localbtw = this.a;
    if (localbtw.e == null)
      localbtw.e = new bvg(localbtw.d);
    return localbtw.e;
  }

  public final List<DataIntercepter<? extends TelephonyEntity>> intercepters()
  {
    if (isExpired());
    for (ArrayList localArrayList = new ArrayList(); ; localArrayList = new ArrayList(this.a.a.values()))
      return localArrayList;
  }

  public final void onCreate(Context paramContext)
  {
    this.a = new btw();
    this.a.onCreate(paramContext);
    setImpl(this.a);
  }

  public final boolean reportSms(List<SmsEntity> paramList)
  {
    boolean bool;
    if (isExpired())
      bool = false;
    while (true)
    {
      return bool;
      btw localbtw = this.a;
      ArrayList localArrayList = new ArrayList();
      IIntelligentSmsChecker localIIntelligentSmsChecker = localbtw.b;
      Iterator localIterator = paramList.iterator();
      if (!localIterator.hasNext())
      {
        if (((WupSessionManager)ManagerCreator.getManager(WupSessionManager.class)).reportSms(localArrayList) == 0)
          bool = true;
      }
      else
      {
        SmsEntity localSmsEntity = (SmsEntity)localIterator.next();
        MMatchSysResult localMMatchSysResult = localIIntelligentSmsChecker.check(localSmsEntity).mInnterResult;
        SmsReport localSmsReport = new SmsReport();
        localSmsReport.setComment(null);
        localSmsReport.setMatchTime((int)(System.currentTimeMillis() / 1000L));
        localSmsReport.setSender(localSmsEntity.phonenum);
        localSmsReport.setSms(localSmsEntity.body);
        if ((localSmsEntity.protocolType < 0) || (localSmsEntity.protocolType > 2))
          localSmsEntity.protocolType = 0;
        localSmsReport.setSmsType(btw.b.a[localSmsEntity.protocolType][0]);
        localSmsReport.setUcAction(localMMatchSysResult.finalAction);
        localSmsReport.setUcActionReason(localMMatchSysResult.actionReason);
        localSmsReport.setUcMinusMark(localMMatchSysResult.minusMark);
        localSmsReport.setUcContentType(localMMatchSysResult.contentType);
        localSmsReport.vecHitRule = new ArrayList();
        MRuleTypeID[] arrayOfMRuleTypeID = localMMatchSysResult.ruleTypeID;
        int i = arrayOfMRuleTypeID.length;
        for (int j = 0; ; j++)
        {
          if (j >= i)
          {
            localArrayList.add(localSmsReport);
            break;
          }
          MRuleTypeID localMRuleTypeID = arrayOfMRuleTypeID[j];
          RuleTypeID localRuleTypeID = new RuleTypeID(localMRuleTypeID.ruleType, localMRuleTypeID.ruleID);
          localSmsReport.vecHitRule.add(localRuleTypeID);
        }
        bool = false;
      }
    }
  }

  public final void setAresEngineFactor(AresEngineFactor paramAresEngineFactor)
  {
    this.a.c = paramAresEngineFactor;
  }

  public final void setHoldoffMode(int paramInt)
  {
    if (isExpired());
    while (true)
    {
      return;
      if (paramInt != 0)
      {
        String str2 = Uri.encode("#");
        String str3 = "";
        switch (paramInt)
        {
        default:
        case 1:
        case 2:
        case 3:
        }
        while (true)
        {
          Intent localIntent2 = new Intent("android.intent.action.CALL", Uri.parse("tel:**67*" + str3 + str2));
          localIntent2.setFlags(268435456);
          TMSApplication.getApplicaionContext().startActivity(localIntent2);
          break;
          str3 = "00000000000";
          continue;
          str3 = "13632545744";
          continue;
          str3 = "13826512148";
        }
      }
      String str1 = Uri.encode("#");
      Intent localIntent1 = new Intent("android.intent.action.CALL", Uri.parse("tel:" + str1 + "67" + str1));
      localIntent1.setFlags(268435456);
      TMSApplication.getApplicaionContext().startActivity(localIntent1);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.aresengine.AresEngineManager
 * JD-Core Version:    0.6.2
 */