import QQPIM.STMatchRule;
import QQPIM.STQueryInfo;
import android.content.SharedPreferences.Editor;
import com.tencent.tccdb.MatchRule;
import com.tencent.tmsecure.module.network.TrafficCorrectionConfig;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class bws
{
  public btl a = new btl("operator_data_sync_setting");

  public final TrafficCorrectionConfig a()
  {
    return new TrafficCorrectionConfig(this.a.a("SIM_CARD_PROVINCE", ""), this.a.a("SIM_CARD_CITY", ""), this.a.a("SIM_CARD_CARRY", ""), this.a.a("SIM_CARD_BRAND", ""));
  }

  public final List<MatchRule> a(int paramInt)
  {
    ArrayList localArrayList = new ArrayList();
    String str = this.a.a("MATCH_RULE" + paramInt, "");
    String[] arrayOfString1;
    int i;
    if ((str != null) && (!"".equals(str)))
    {
      arrayOfString1 = str.split("#ITEM#");
      i = arrayOfString1.length;
    }
    for (int j = 0; ; j++)
    {
      if (j >= i)
        return localArrayList;
      String[] arrayOfString2 = arrayOfString1[j].split("#COLUMN#");
      if ((arrayOfString2 != null) && (arrayOfString2.length == 4))
        localArrayList.add(new MatchRule(Integer.valueOf(arrayOfString2[0]).intValue(), Integer.valueOf(arrayOfString2[1]).intValue(), arrayOfString2[2], arrayOfString2[3]));
    }
  }

  public final void a(List<STMatchRule> paramList)
  {
    HashMap localHashMap = new HashMap();
    Iterator localIterator1 = paramList.iterator();
    Iterator localIterator2;
    if (!localIterator1.hasNext())
      localIterator2 = localHashMap.entrySet().iterator();
    while (true)
    {
      if (!localIterator2.hasNext())
      {
        this.a.b.commit();
        return;
        STMatchRule localSTMatchRule = (STMatchRule)localIterator1.next();
        String str1 = (String)localHashMap.get("MATCH_RULE" + localSTMatchRule.type);
        if (str1 == null);
        for (String str2 = localSTMatchRule.unit + "#COLUMN#" + localSTMatchRule.type + "#COLUMN#" + localSTMatchRule.prefix + "#COLUMN#" + localSTMatchRule.postfix; ; str2 = str1 + "#ITEM#" + localSTMatchRule.unit + "#COLUMN#" + localSTMatchRule.type + "#COLUMN#" + localSTMatchRule.prefix + "#COLUMN#" + localSTMatchRule.postfix)
        {
          localHashMap.put("MATCH_RULE" + localSTMatchRule.type, str2);
          break;
        }
      }
      Map.Entry localEntry = (Map.Entry)localIterator2.next();
      this.a.a((String)localEntry.getKey(), (String)localEntry.getValue(), false);
    }
  }

  public final List<STQueryInfo> b(int paramInt)
  {
    ArrayList localArrayList = new ArrayList();
    String str = this.a.a("QUERY_INFO" + paramInt, "");
    String[] arrayOfString1;
    int i;
    if ((str != null) && (!"".equals(str)))
    {
      arrayOfString1 = str.split("#ITEM#");
      i = arrayOfString1.length;
    }
    for (int j = 0; ; j++)
    {
      if (j >= i)
        return localArrayList;
      String[] arrayOfString2 = arrayOfString1[j].split("#COLUMN#");
      if ((arrayOfString2 != null) && (arrayOfString2.length == 3))
        localArrayList.add(new STQueryInfo(Integer.valueOf(arrayOfString2[0]).intValue(), arrayOfString2[1], arrayOfString2[2]));
    }
  }

  public final void b(List<STQueryInfo> paramList)
  {
    HashMap localHashMap = new HashMap();
    Iterator localIterator1 = paramList.iterator();
    Iterator localIterator2;
    if (!localIterator1.hasNext())
      localIterator2 = localHashMap.entrySet().iterator();
    while (true)
    {
      if (!localIterator2.hasNext())
      {
        this.a.b.commit();
        return;
        STQueryInfo localSTQueryInfo = (STQueryInfo)localIterator1.next();
        String str1 = (String)localHashMap.get("QUERY_INFO" + localSTQueryInfo.getNQuerytype());
        if (str1 == null);
        for (String str2 = localSTQueryInfo.getNQuerytype() + "#COLUMN#" + localSTQueryInfo.getStrPort() + "#COLUMN#" + localSTQueryInfo.getStrCode(); ; str2 = str1 + "#ITEM#" + localSTQueryInfo.getNQuerytype() + "#COLUMN#" + localSTQueryInfo.getStrPort() + "#COLUMN#" + localSTQueryInfo.getStrCode())
        {
          localHashMap.put("QUERY_INFO" + localSTQueryInfo.getNQuerytype(), str2);
          break;
        }
      }
      Map.Entry localEntry = (Map.Entry)localIterator2.next();
      this.a.a((String)localEntry.getKey(), (String)localEntry.getValue(), false);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bws
 * JD-Core Version:    0.6.2
 */