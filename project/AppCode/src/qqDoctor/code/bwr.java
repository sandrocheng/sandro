import QQPIM.EQueryType;
import QQPIM.ETrafficTemplateType;
import QQPIM.STQueryInfo;
import QQPIM.STRetInfo;
import QQPIM.STSmsInfo;
import QQPIM.STTrafficTemplate;
import android.content.Context;
import android.content.SharedPreferences.Editor;
import com.tencent.tccdb.MatchRule;
import com.tencent.tccdb.Ret;
import com.tencent.tccdb.SmsInfo;
import com.tencent.tccdb.SmsParser;
import com.tencent.tmsecure.common.BaseManager;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.aresengine.SmsEntity;
import com.tencent.tmsecure.module.network.TrafficCorrectionConfig;
import com.tencent.tmsecure.module.network.TrafficCorrectionResult;
import com.tencent.tmsecure.module.wupsession.WupSessionManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

public final class bwr extends BaseManager
{
  public bws a;
  public Context b;
  public WupSessionManager c;

  private static String a(String paramString, boolean paramBoolean)
  {
    if (paramBoolean)
      switch (Integer.valueOf(paramString).intValue())
      {
      default:
      case 10:
      case 20:
      case 21:
      case 22:
      case 23:
      case 24:
      case 25:
      case 27:
      case 28:
      case 29:
      case 311:
      case 351:
      case 371:
      case 431:
      case 451:
      case 471:
      case 531:
      case 551:
      case 571:
      case 591:
      case 731:
      case 771:
      case 791:
      case 851:
      case 871:
      case 891:
      case 898:
      case 931:
      case 951:
      case 971:
      case 991:
      }
    while (true)
    {
      return paramString;
      paramString = "北京";
      continue;
      paramString = "广东";
      continue;
      paramString = "上海";
      continue;
      paramString = "天津";
      continue;
      paramString = "重庆";
      continue;
      paramString = "辽宁";
      continue;
      paramString = "江苏";
      continue;
      paramString = "湖北";
      continue;
      paramString = "四川";
      continue;
      paramString = "陕西";
      continue;
      paramString = "河北";
      continue;
      paramString = "山西";
      continue;
      paramString = "河南";
      continue;
      paramString = "吉林";
      continue;
      paramString = "黑龙江";
      continue;
      paramString = "内蒙古";
      continue;
      paramString = "山东";
      continue;
      paramString = "安徽";
      continue;
      paramString = "浙江";
      continue;
      paramString = "福建";
      continue;
      paramString = "湖南";
      continue;
      paramString = "广西";
      continue;
      paramString = "江西";
      continue;
      paramString = "贵州";
      continue;
      paramString = "云南";
      continue;
      paramString = "西藏";
      continue;
      paramString = "海南";
      continue;
      paramString = "甘肃";
      continue;
      paramString = "宁夏";
      continue;
      paramString = "青海";
      continue;
      paramString = "新疆";
      continue;
      switch (Integer.valueOf(paramString).intValue())
      {
      default:
        break;
      case 10000:
        paramString = "QUAN_QIU_TONG";
        break;
      case 30000:
        paramString = "SHEN_ZHOU_XING";
        break;
      case 20000:
        paramString = "DONG_GAN";
        break;
      case 50000:
        paramString = "UNICOM_2G";
        break;
      case 70000:
        paramString = "UNICOM_3G";
        break;
      case 60000:
        paramString = "CHINA_TELECOM";
      }
    }
  }

  public final int a(SmsEntity paramSmsEntity)
  {
    int i = 0;
    List localList = this.a.b(EQueryType.E_QUERY_TRAFFIC.value());
    StringBuffer localStringBuffer = new StringBuffer();
    Iterator localIterator = localList.iterator();
    if (!localIterator.hasNext())
    {
      TrafficCorrectionConfig localTrafficCorrectionConfig = this.a.a();
      STSmsInfo localSTSmsInfo = new STSmsInfo((int)(System.currentTimeMillis() / 1000L), paramSmsEntity.phonenum, paramSmsEntity.getBody(), a(localTrafficCorrectionConfig.mProvinceId, true), a(localTrafficCorrectionConfig.mBrandId, false), localStringBuffer.toString(), 10000, 0, "", 0, false);
      AtomicReference localAtomicReference1 = new AtomicReference();
      AtomicReference localAtomicReference2 = new AtomicReference();
      int j = this.c.getTrafficTemplate(localSTSmsInfo, localAtomicReference1, localAtomicReference2);
      if ((j != 2) && (j != 1) && (j != 0))
        break label387;
      if ((STRetInfo)localAtomicReference2.get() != null)
      {
        STTrafficTemplate localSTTrafficTemplate = (STTrafficTemplate)localAtomicReference1.get();
        if ((localSTTrafficTemplate != null) && (localSTTrafficTemplate.getMatchRules() != null))
        {
          ArrayList localArrayList = localSTTrafficTemplate.getMatchRules();
          if (localArrayList.size() <= 0)
            break label381;
          bws localbws2 = this.a;
          localbws2.a.a("MATCH_RULE" + ETrafficTemplateType.E_TRAFFIC_TEMPLATE_TYPE_LEFT.value(), "", false);
          localbws2.a.a("MATCH_RULE" + ETrafficTemplateType.E_TRAFFIC_TEMPLATE_TYPE_USE.value(), "", false);
          localbws2.a.b.commit();
          this.a.a(localArrayList);
        }
      }
      bws localbws1 = this.a;
      long l = System.currentTimeMillis();
      localbws1.a.a("MATCH_RULE_UPDATE_TIME", l);
    }
    while (true)
    {
      return i;
      STQueryInfo localSTQueryInfo = (STQueryInfo)localIterator.next();
      if (localStringBuffer.length() == 0)
      {
        localStringBuffer.append(localSTQueryInfo.strCode);
        break;
      }
      localStringBuffer.append("|").append(localSTQueryInfo.strCode);
      break;
      label381: i = -101;
      continue;
      label387: i = -102;
    }
  }

  public final boolean a(TrafficCorrectionResult paramTrafficCorrectionResult, List<MatchRule> paramList, SmsEntity paramSmsEntity, boolean paramBoolean)
  {
    boolean bool1 = false;
    SmsInfo localSmsInfo;
    AtomicReference localAtomicReference;
    Iterator localIterator2;
    boolean bool3;
    int m;
    if (paramList != null)
    {
      int i = paramList.size();
      bool1 = false;
      if (i > 0)
      {
        localSmsInfo = new SmsInfo(paramSmsEntity.phonenum, paramSmsEntity.getBody());
        localAtomicReference = new AtomicReference();
        if (!paramBoolean)
          break label187;
        localIterator2 = paramList.iterator();
        bool3 = false;
        m = 0;
      }
    }
    while (true)
    {
      if (!localIterator2.hasNext())
        bool1 = bool3;
      int n;
      do
      {
        new StringBuilder("Used ").append(m).append(" kb").toString();
        if ((bool1) && (paramTrafficCorrectionResult != null))
        {
          paramTrafficCorrectionResult.mUsedTrafficInKb = m;
          paramTrafficCorrectionResult.mLeftTrafficInKb = -1;
        }
        return bool1;
        MatchRule localMatchRule2 = (MatchRule)localIterator2.next();
        n = SmsParser.getNumberEntrance(this.b, localSmsInfo, localMatchRule2, localAtomicReference);
        bool1 = false;
      }
      while (n != 0);
      m += ((Ret)localAtomicReference.get()).number;
      bool3 = true;
    }
    label187: Iterator localIterator1 = paramList.iterator();
    boolean bool2 = false;
    int j = 0;
    while (true)
    {
      if (!localIterator1.hasNext())
        bool1 = bool2;
      int k;
      do
      {
        new StringBuilder("Left ").append(j).append(" kb").toString();
        if (paramTrafficCorrectionResult == null)
          break;
        paramTrafficCorrectionResult.mUsedTrafficInKb = -1;
        paramTrafficCorrectionResult.mLeftTrafficInKb = j;
        break;
        MatchRule localMatchRule1 = (MatchRule)localIterator1.next();
        k = SmsParser.getNumberEntrance(this.b, localSmsInfo, localMatchRule1, localAtomicReference);
        bool1 = false;
      }
      while (k != 0);
      j += ((Ret)localAtomicReference.get()).number;
      bool2 = true;
    }
  }

  public final int getSingletonType()
  {
    return 2;
  }

  public final void onCreate(Context paramContext)
  {
    this.b = paramContext;
    this.a = new bws();
    this.c = ((WupSessionManager)ManagerCreator.getManager(WupSessionManager.class));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bwr
 * JD-Core Version:    0.6.2
 */