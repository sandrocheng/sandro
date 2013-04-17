package com.tencent.tmsecure.module.network;

import QQPIM.EQueryType;
import QQPIM.ETrafficTemplateType;
import QQPIM.STQuery;
import QQPIM.STQueryInfo;
import QQPIM.STQueryResult;
import android.content.Context;
import android.content.SharedPreferences.Editor;
import btl;
import bwj;
import bwr;
import bws;
import com.tencent.tccdb.SmsInfo;
import com.tencent.tccdb.SmsParser;
import com.tencent.tmsecure.common.BaseManager;
import com.tencent.tmsecure.module.aresengine.SmsEntity;
import com.tencent.tmsecure.module.wupsession.WupSessionManager;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

public final class TrafficCorrectionManager extends BaseManager
{
  private bwr a;
  private ArrayList<CodeName> b = new ArrayList();

  public final ArrayList<CodeName> getAllProvinces()
  {
    if (isExpired());
    for (ArrayList localArrayList = this.b; ; localArrayList = bwj.b())
      return localArrayList;
  }

  public final ArrayList<CodeName> getBrands(String paramString)
  {
    if (isExpired());
    for (ArrayList localArrayList = this.b; ; localArrayList = bwj.a(paramString))
      return localArrayList;
  }

  public final ArrayList<CodeName> getCarries()
  {
    if (isExpired());
    for (ArrayList localArrayList = this.b; ; localArrayList = bwj.a())
      return localArrayList;
  }

  public final ArrayList<CodeName> getCities(String paramString)
  {
    if (isExpired());
    for (ArrayList localArrayList = this.b; ; localArrayList = bwj.b(paramString))
      return localArrayList;
  }

  public final TrafficCorrectionConfig getConfig()
  {
    if (isExpired());
    for (TrafficCorrectionConfig localTrafficCorrectionConfig = new TrafficCorrectionConfig(); ; localTrafficCorrectionConfig = this.a.a.a())
      return localTrafficCorrectionConfig;
  }

  public final int getCorrectionResult(TrafficCorrectionResult paramTrafficCorrectionResult, String paramString1, String paramString2)
  {
    int i;
    if (isExpired())
      i = -99999;
    bwr localbwr;
    SmsEntity localSmsEntity;
    while (true)
    {
      return i;
      localbwr = this.a;
      if ((paramTrafficCorrectionResult == null) || (paramString1 == null) || (paramString2 == null))
      {
        i = -6;
      }
      else
      {
        localSmsEntity = new SmsEntity();
        localSmsEntity.phonenum = paramString1;
        localSmsEntity.body = paramString2;
        SmsInfo localSmsInfo = new SmsInfo(localSmsEntity.phonenum, localSmsEntity.getBody());
        AtomicReference localAtomicReference = new AtomicReference();
        if (SmsParser.getWrongSmsType(localbwr.b, localSmsInfo, localAtomicReference) == 0)
          break;
        i = -103;
      }
    }
    int j;
    if (System.currentTimeMillis() - localbwr.a.a.b("MATCH_RULE_UPDATE_TIME", 0L) > 604800000L)
    {
      int i1 = localbwr.a(localSmsEntity);
      new StringBuilder("updateMatchRule 1 result = ").append(i1).toString();
      j = 1;
    }
    while (true)
    {
      List localList1 = localbwr.a.a(ETrafficTemplateType.E_TRAFFIC_TEMPLATE_TYPE_USE.value());
      boolean bool;
      label220: int n;
      label314: int k;
      if ((localList1 != null) && (localList1.size() > 0))
      {
        bool = localbwr.a(paramTrafficCorrectionResult, localList1, localSmsEntity, true);
        if (!bool)
        {
          List localList2 = localbwr.a.a(ETrafficTemplateType.E_TRAFFIC_TEMPLATE_TYPE_LEFT.value());
          if ((localList2 != null) && (localList2.size() > 0))
            bool = localbwr.a(paramTrafficCorrectionResult, localList2, localSmsEntity, false);
        }
        if ((bool) || (j != 0))
          break label344;
        int m = localbwr.a(localSmsEntity);
        new StringBuilder("updateMatchRule 2 result = ").append(m).toString();
        if (m != 0)
          break label338;
        n = 1;
        k = n;
        j = 1;
      }
      while (true)
      {
        if (k != 0)
          break label348;
        i = 0;
        break;
        bool = false;
        break label220;
        label338: n = 0;
        break label314;
        label344: k = 0;
      }
      label348: continue;
      j = 0;
    }
  }

  public final void onCreate(Context paramContext)
  {
    this.a = new bwr();
    this.a.onCreate(paramContext);
    setImpl(this.a);
  }

  public final int setConfig(TrafficCorrectionConfig paramTrafficCorrectionConfig)
  {
    int i;
    if (isExpired())
      i = -99999;
    while (true)
    {
      return i;
      bwr localbwr = this.a;
      if (paramTrafficCorrectionConfig != null)
      {
        String str1 = paramTrafficCorrectionConfig.mProvinceId;
        String str2 = paramTrafficCorrectionConfig.mCityId;
        String str3 = paramTrafficCorrectionConfig.mCarryId;
        String str4 = paramTrafficCorrectionConfig.mBrandId;
        bws localbws1 = localbwr.a;
        TrafficCorrectionConfig localTrafficCorrectionConfig1 = new TrafficCorrectionConfig(str1, str2, str3, str4);
        btl localbtl1 = localbws1.a;
        String str5;
        label89: String str6;
        label121: String str7;
        label153: btl localbtl4;
        if (localTrafficCorrectionConfig1.mProvinceId != null)
        {
          str5 = localTrafficCorrectionConfig1.mProvinceId;
          localbtl1.a("SIM_CARD_PROVINCE", str5, false);
          btl localbtl2 = localbws1.a;
          if (localTrafficCorrectionConfig1.mCityId == null)
            break label280;
          str6 = localTrafficCorrectionConfig1.mCityId;
          localbtl2.a("SIM_CARD_CITY", str6, false);
          btl localbtl3 = localbws1.a;
          if (localTrafficCorrectionConfig1.mCarryId == null)
            break label287;
          str7 = localTrafficCorrectionConfig1.mCarryId;
          localbtl3.a("SIM_CARD_CARRY", str7, false);
          localbtl4 = localbws1.a;
          if (localTrafficCorrectionConfig1.mBrandId == null)
            break label294;
        }
        String str9;
        String str10;
        String str11;
        label280: label287: label294: for (String str8 = localTrafficCorrectionConfig1.mBrandId; ; str8 = "")
        {
          localbtl4.a("SIM_CARD_BRAND", str8, false);
          localbws1.a.b.commit();
          localbwr.a.a.a("MATCH_RULE_UPDATE_TIME", 0L);
          TrafficCorrectionConfig localTrafficCorrectionConfig2 = localbwr.a.a();
          str9 = localTrafficCorrectionConfig2.mProvinceId;
          str10 = localTrafficCorrectionConfig2.mCarryId;
          str11 = localTrafficCorrectionConfig2.mBrandId;
          if ((str9 != null) && (str10 != null) && (str11 != null))
            break label301;
          i = -57;
          break;
          str5 = "";
          break label89;
          str6 = "";
          break label121;
          str7 = "";
          break label153;
        }
        label301: STQuery localSTQuery = new STQuery(str9, str10, str11, 2);
        AtomicReference localAtomicReference = new AtomicReference();
        i = localbwr.c.getOperatorDataSyncInfo(localSTQuery, localAtomicReference);
        if ((i == 2) || (i == 1) || (i == 0))
        {
          ArrayList localArrayList = ((STQueryResult)localAtomicReference.get()).getQueryinfo();
          if ((localArrayList != null) && (localArrayList.size() > 0))
          {
            bws localbws3 = localbwr.a;
            localbws3.a.a("QUERY_INFO" + EQueryType.E_QUERY_TRAFFIC.value(), "", false);
            localbws3.a.a("QUERY_INFO" + EQueryType.E_QUERY_MONEY.value(), "", false);
            localbws3.a.b.commit();
            localbwr.a.b(localArrayList);
          }
          bws localbws2 = localbwr.a;
          long l = System.currentTimeMillis();
          localbws2.a.a("OPERATOR_CONFIG_UPDATE_TIME", l);
          i = 0;
        }
      }
      else
      {
        i = -6;
      }
    }
  }

  public final int startCorrection(ArrayList<CorrectionDataInfo> paramArrayList)
  {
    int i;
    if (isExpired())
      i = -99999;
    List localList;
    while (true)
    {
      return i;
      bwr localbwr = this.a;
      if (paramArrayList == null)
      {
        i = -6;
      }
      else
      {
        localList = localbwr.a.b(EQueryType.E_QUERY_TRAFFIC.value());
        if ((localList != null) && (localList.size() != 0))
          break;
        i = -104;
      }
    }
    SimpleDateFormat localSimpleDateFormat1 = new SimpleDateFormat("yyyy");
    SimpleDateFormat localSimpleDateFormat2 = new SimpleDateFormat("MM");
    Iterator localIterator = localList.iterator();
    while (true)
    {
      if (!localIterator.hasNext())
      {
        i = 0;
        break;
      }
      STQueryInfo localSTQueryInfo = (STQueryInfo)localIterator.next();
      String str1 = localSTQueryInfo.getStrPort();
      String str2 = localSTQueryInfo.getStrCode();
      if ((str2 != null) && (!"".equals(str2)) && (str1 != null) && (!"".equals(str1)))
      {
        if ((str2.contains("[MONTH]")) || (str2.contains("[YEAR]")))
        {
          Date localDate = new Date();
          str2 = str2.replace("[MONTH]", localSimpleDateFormat2.format(localDate)).replace("[YEAR]", localSimpleDateFormat1.format(localDate));
        }
        paramArrayList.add(new CorrectionDataInfo(str1, str2));
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.network.TrafficCorrectionManager
 * JD-Core Version:    0.6.2
 */