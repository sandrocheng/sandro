import QQPIM.ETrafficTemplateType;
import QQPIM.STMatchRule;
import QQPIM.STQueryInfo;
import QQPIM.STReportError;
import android.content.ContentValues;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.database.Cursor;
import android.text.format.DateUtils;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.tccdb.MatchRule;
import com.tencent.tccdb.SmsInfo;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class jd
{
  private static jd a;
  private Context b = null;
  private hs c;
  private SharedPreferences d;
  private SharedPreferences.Editor e;

  private jd(Context paramContext)
  {
    this.b = paramContext;
    this.c = hs.a();
    this.d = this.b.getSharedPreferences("operator_data_sync", 0);
    this.e = this.d.edit();
  }

  private List<Long> F()
  {
    ArrayList localArrayList = new ArrayList();
    try
    {
      String str1 = this.d.getString("SYNC_CONFIG_UPDATE_TIMES", null);
      if ((str1 != null) && (!"".equals(str1)))
      {
        String[] arrayOfString = str1.split("#ITEM#");
        if (arrayOfString != null)
        {
          ff.a("kfc", "update times: " + Arrays.toString(arrayOfString));
          int i = arrayOfString.length;
          for (int j = 0; j < i; j++)
          {
            String str2 = arrayOfString[j];
            if ((str2 != null) && (!"".equals(str2)))
              localArrayList.add(Long.valueOf(Long.parseLong(str2)));
          }
        }
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return localArrayList;
  }

  public static jd a()
  {
    if (a == null);
    try
    {
      if (a == null)
        a = new jd(QQPimApplication.a());
      return a;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final int A()
  {
    return this.d.getInt("MONITOR_TIMEOUT_IN_MINUTES", 5);
  }

  public final ArrayList<Integer> B()
  {
    ArrayList localArrayList = new ArrayList();
    String str = this.d.getString("SMS_SECONDS_RECORD", null);
    if ((str != null) && (!"".equals(str)))
    {
      String[] arrayOfString = str.split("\\|");
      int i = arrayOfString.length;
      for (int j = 0; j < i; j++)
        localArrayList.add(Integer.valueOf(arrayOfString[j]));
    }
    return localArrayList;
  }

  public final ArrayList<String> C()
  {
    ArrayList localArrayList = new ArrayList();
    String str = this.d.getString("SMS_BLOCK_PORTS_EXTRA", null);
    if ((str != null) && (!"".equals(str)))
    {
      String[] arrayOfString = str.split("\\|");
      int i = arrayOfString.length;
      for (int j = 0; j < i; j++)
        localArrayList.add(arrayOfString[j]);
    }
    return localArrayList;
  }

  public final List<SmsInfo> D()
  {
    ArrayList localArrayList = new ArrayList();
    String str = this.d.getString("SMS_FOR_MATHCH_RULES", null);
    if ((str == null) || ("".equals(str)));
    while (true)
    {
      return localArrayList;
      String[] arrayOfString1 = str.split("#ITEM#");
      int i = arrayOfString1.length;
      for (int j = 0; j < i; j++)
      {
        String[] arrayOfString2 = arrayOfString1[j].split("#COLUMN#");
        if (arrayOfString2.length == 2)
          localArrayList.add(new SmsInfo(arrayOfString2[0], arrayOfString2[1]));
      }
    }
  }

  public final void E()
  {
    this.e.putString("SMS_FOR_MATHCH_RULES", "").commit();
  }

  public final long a(STReportError paramSTReportError)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("type", Integer.valueOf(0));
    localContentValues.put("error_code", Integer.valueOf(paramSTReportError.nerrorcode));
    localContentValues.put("timestamp", Integer.valueOf(paramSTReportError.ntime));
    localContentValues.put("area_code", paramSTReportError.strarea);
    localContentValues.put("sim_type", paramSTReportError.strsimtype);
    localContentValues.put("query_code", paramSTReportError.strqueryorder);
    localContentValues.put("sms", paramSTReportError.sms);
    localContentValues.put("trigger_type", Integer.valueOf(paramSTReportError.noptype));
    localContentValues.put("total_setting", Integer.valueOf(paramSTReportError.nCollocateNum));
    localContentValues.put("used_setting", Integer.valueOf(paramSTReportError.nUsedNum));
    localContentValues.put("software_version", paramSTReportError.strversion);
    return this.c.a("operator_data_sync_result", "id", localContentValues);
  }

  public final ArrayList<STQueryInfo> a(int paramInt, String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    if ((paramString == null) || ("".equals(paramString)));
    while (true)
    {
      return localArrayList;
      String str = this.d.getString("QUERY_INFO_WITH_SIM" + paramInt, "");
      if ((str != null) && (!"".equals(str)))
      {
        String[] arrayOfString1 = str.split("#ITEM#");
        int i = arrayOfString1.length;
        for (int j = 0; j < i; j++)
        {
          String[] arrayOfString2 = arrayOfString1[j].split("#COLUMN#");
          if ((arrayOfString2 != null) && (arrayOfString2.length == 4) && ((paramString.equals(arrayOfString2[3])) || (paramString.equals("00000"))))
            localArrayList.add(new STQueryInfo(Integer.valueOf(arrayOfString2[0]).intValue(), arrayOfString2[1], arrayOfString2[2]));
        }
      }
    }
  }

  public final List<MatchRule> a(int paramInt)
  {
    ArrayList localArrayList = new ArrayList();
    String str = this.d.getString("MATCH_RULE" + paramInt, "");
    if ((str != null) && (!"".equals(str)))
    {
      String[] arrayOfString1 = str.split("#ITEM#");
      int i = arrayOfString1.length;
      for (int j = 0; j < i; j++)
      {
        String[] arrayOfString2 = arrayOfString1[j].split("#COLUMN#");
        if ((arrayOfString2 != null) && (arrayOfString2.length == 4))
          localArrayList.add(new MatchRule(Integer.valueOf(arrayOfString2[0]).intValue(), Integer.valueOf(arrayOfString2[1]).intValue(), arrayOfString2[2], arrayOfString2[3]));
      }
    }
    return localArrayList;
  }

  public final void a(long paramLong)
  {
    this.e.putLong("LAST_OPERATOR_DATA_SYNC_TIME", paramLong).commit();
  }

  public final void a(STQueryInfo paramSTQueryInfo)
  {
    if (paramSTQueryInfo != null)
    {
      String str = paramSTQueryInfo.getNQuerytype() + "#COLUMN#" + paramSTQueryInfo.getStrPort() + "#COLUMN#" + paramSTQueryInfo.getStrCode();
      this.e.putString("LAST_QUERY_INFO" + paramSTQueryInfo.getNQuerytype(), str);
      this.e.commit();
    }
  }

  public final void a(SmsInfo paramSmsInfo)
  {
    if (paramSmsInfo == null);
    String str1;
    String str2;
    do
    {
      return;
      str1 = paramSmsInfo.sender;
      str2 = paramSmsInfo.sms;
    }
    while ((str1 == null) || ("".equals(str1)) || (str2 == null) || ("".equals(str2)));
    ff.a("kfc", "insertSmsForMathchRule: " + str1 + " " + str2);
    String str3 = str1 + "#COLUMN#" + str2;
    String str4 = this.d.getString("SMS_FOR_MATHCH_RULES", null);
    if ((str4 == null) || ("".equals(str4)));
    while (true)
    {
      this.e.putString("SMS_FOR_MATHCH_RULES", str3).commit();
      break;
      String[] arrayOfString = str4.split("#ITEM#");
      if (arrayOfString.length < 5)
      {
        str3 = str3 + "#ITEM#" + str4;
      }
      else
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append(str3);
        for (int i = 0; i < 4; i++)
        {
          localStringBuilder.append("#ITEM#");
          localStringBuilder.append(arrayOfString[i]);
        }
        str3 = localStringBuilder.toString();
      }
    }
  }

  public final void a(String paramString)
  {
    this.e.putString("CURRENT_IMSI", paramString).commit();
  }

  public final void a(String paramString, List<STQueryInfo> paramList)
  {
    ff.a("kfc", "insertQueryInfoV2, brandCode = " + paramString);
    if ((paramString == null) || ("".equals(paramString)) || (paramList == null) || (paramList.size() == 0))
      ff.a("kfc", "insertQueryInfoV2, null parameter xxxxxxx");
    while (true)
    {
      return;
      ff.a("kfc", "queryCode: ");
      HashMap localHashMap = new HashMap();
      Iterator localIterator1 = paramList.iterator();
      if (localIterator1.hasNext())
      {
        STQueryInfo localSTQueryInfo = (STQueryInfo)localIterator1.next();
        ff.a("kfc", localSTQueryInfo.getStrPort() + " " + localSTQueryInfo.getStrCode());
        String str3 = localSTQueryInfo.getNQuerytype() + "#COLUMN#" + localSTQueryInfo.getStrPort() + "#COLUMN#" + localSTQueryInfo.getStrCode() + "#COLUMN#" + paramString;
        String str4 = (String)localHashMap.get("QUERY_INFO_WITH_SIM" + localSTQueryInfo.getNQuerytype());
        if (str4 == null);
        for (String str5 = str3; ; str5 = str4 + "#ITEM#" + str3)
        {
          localHashMap.put("QUERY_INFO_WITH_SIM" + localSTQueryInfo.getNQuerytype(), str5);
          break;
        }
      }
      Iterator localIterator2 = localHashMap.entrySet().iterator();
      if (localIterator2.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator2.next();
        String str1 = this.d.getString((String)localEntry.getKey(), "");
        if ((str1 == null) || ("".equals(str1)));
        for (String str2 = (String)localEntry.getValue(); ; str2 = str1 + "#ITEM#" + (String)localEntry.getValue())
        {
          this.e.putString((String)localEntry.getKey(), str2);
          break;
        }
      }
      this.e.commit();
    }
  }

  public final void a(List<STMatchRule> paramList)
  {
    HashMap localHashMap = new HashMap();
    Iterator localIterator1 = paramList.iterator();
    if (localIterator1.hasNext())
    {
      STMatchRule localSTMatchRule = (STMatchRule)localIterator1.next();
      String str1 = (String)localHashMap.get("MATCH_RULE" + localSTMatchRule.type);
      if (str1 == null);
      for (String str2 = localSTMatchRule.unit + "#COLUMN#" + localSTMatchRule.type + "#COLUMN#" + localSTMatchRule.prefix + "#COLUMN#" + localSTMatchRule.postfix; ; str2 = str1 + "#ITEM#" + localSTMatchRule.unit + "#COLUMN#" + localSTMatchRule.type + "#COLUMN#" + localSTMatchRule.prefix + "#COLUMN#" + localSTMatchRule.postfix)
      {
        localHashMap.put("MATCH_RULE" + localSTMatchRule.type, str2);
        break;
      }
    }
    Iterator localIterator2 = localHashMap.entrySet().iterator();
    while (localIterator2.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator2.next();
      this.e.putString((String)localEntry.getKey(), (String)localEntry.getValue());
    }
    this.e.commit();
  }

  public final void a(boolean paramBoolean)
  {
    this.e.putBoolean("LAST_SYNC_TASK_EXECUTE_RESULT", paramBoolean).commit();
  }

  public final STQueryInfo b(int paramInt)
  {
    String str = this.d.getString("LAST_QUERY_INFO" + paramInt, "");
    String[] arrayOfString;
    if ((str != null) && (!"".equals(str)))
    {
      arrayOfString = str.split("#COLUMN#");
      if ((arrayOfString == null) || (arrayOfString.length != 3));
    }
    for (STQueryInfo localSTQueryInfo = new STQueryInfo(Integer.valueOf(arrayOfString[0]).intValue(), arrayOfString[1], arrayOfString[2]); ; localSTQueryInfo = null)
      return localSTQueryInfo;
  }

  public final void b()
  {
    this.e.putString("MATCH_RULE" + ETrafficTemplateType.E_TRAFFIC_TEMPLATE_TYPE_LEFT.value(), "");
    this.e.putString("MATCH_RULE" + ETrafficTemplateType.E_TRAFFIC_TEMPLATE_TYPE_USE.value(), "");
    this.e.commit();
  }

  public final void b(int paramInt, String paramString)
  {
    if (paramString != null)
      this.e.putString("CM_STOP_TIPS_PREFIX" + paramInt, paramString).commit();
  }

  public final void b(long paramLong)
  {
    List localList = F();
    if (localList.size() > 0)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(String.valueOf(paramLong));
      for (int i = 0; (i < localList.size()) && (i < 2); i++)
      {
        localStringBuilder.append("#ITEM#");
        localStringBuilder.append(String.valueOf(localList.get(i)));
      }
      this.e.putString("SYNC_CONFIG_UPDATE_TIMES", localStringBuilder.toString()).commit();
    }
    while (true)
    {
      return;
      this.e.putString("SYNC_CONFIG_UPDATE_TIMES", String.valueOf(paramLong)).commit();
    }
  }

  public final void b(String paramString)
  {
    this.e.putString("FAILD_RECORD", paramString).commit();
  }

  public final void b(List<String> paramList)
  {
    if ((paramList == null) || (paramList.size() == 0));
    while (true)
    {
      return;
      ArrayList localArrayList = new ArrayList();
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        if ((str != null) && (!"".equals(str)))
          localArrayList.add(str);
      }
      if (localArrayList.size() != 0)
      {
        StringBuilder localStringBuilder = new StringBuilder();
        localStringBuilder.append((String)localArrayList.get(0));
        for (int i = 1; i < localArrayList.size(); i++)
        {
          localStringBuilder.append("|");
          localStringBuilder.append((String)localArrayList.get(i));
        }
        this.e.putString("SMS_BLOCK_PORTS_EXTRA", localStringBuilder.toString()).commit();
      }
    }
  }

  public final void b(boolean paramBoolean)
  {
    this.e.putBoolean("OPERATOR_CONFIG_UPDATE_NEEDV2", paramBoolean).commit();
  }

  public final ArrayList<STReportError> c()
  {
    Cursor localCursor = this.c.a("SELECT * FROM operator_data_sync_result");
    localCursor.moveToFirst();
    int i = localCursor.getColumnIndexOrThrow("error_code");
    int j = localCursor.getColumnIndexOrThrow("timestamp");
    int k = localCursor.getColumnIndexOrThrow("area_code");
    int m = localCursor.getColumnIndexOrThrow("sim_type");
    int n = localCursor.getColumnIndexOrThrow("query_code");
    int i1 = localCursor.getColumnIndexOrThrow("sms");
    int i2 = localCursor.getColumnIndexOrThrow("trigger_type");
    int i3 = localCursor.getColumnIndexOrThrow("total_setting");
    int i4 = localCursor.getColumnIndexOrThrow("used_setting");
    int i5 = localCursor.getColumnIndexOrThrow("software_version");
    ArrayList localArrayList = new ArrayList();
    localCursor.moveToFirst();
    while (!localCursor.isAfterLast())
    {
      STReportError localSTReportError = new STReportError();
      localSTReportError.nerrorcode = localCursor.getInt(i);
      localSTReportError.ntime = localCursor.getInt(j);
      localSTReportError.strarea = localCursor.getString(k);
      localSTReportError.strsimtype = localCursor.getString(m);
      localSTReportError.strqueryorder = localCursor.getString(n);
      localSTReportError.sms = localCursor.getString(i1);
      localSTReportError.noptype = localCursor.getInt(i2);
      localSTReportError.nCollocateNum = localCursor.getInt(i3);
      localSTReportError.nUsedNum = localCursor.getInt(i4);
      localSTReportError.strversion = localCursor.getString(i5);
      localArrayList.add(localSTReportError);
      localCursor.moveToNext();
    }
    localCursor.close();
    return localArrayList;
  }

  public final void c(int paramInt)
  {
    this.e.putString("LAST_QUERY_INFO" + paramInt, "");
    this.e.commit();
  }

  public final void c(long paramLong)
  {
    this.e.putLong("LAST_MATCH_RULE_UPDATE_TIME", paramLong).commit();
  }

  public final void c(String paramString)
  {
    this.e.putString("BLOCK_RECORD", paramString).commit();
  }

  public final void c(boolean paramBoolean)
  {
    this.e.putBoolean("SELECT_QUERY_INFO", paramBoolean).commit();
  }

  public final void d()
  {
    this.c.c("operator_data_sync_result");
    this.c.b();
  }

  public final void d(int paramInt)
  {
    this.e.putString("QUERY_INFO_WITH_SIM" + paramInt, "");
    this.e.commit();
  }

  public final void d(long paramLong)
  {
    this.e.putLong("CMD_TIME", paramLong).commit();
  }

  public final void d(String paramString)
  {
    this.e.putString("SCHEDULE_TIMING", paramString).commit();
  }

  public final void d(boolean paramBoolean)
  {
    this.e.putBoolean("FUNCTION_PAUSE", paramBoolean).commit();
  }

  public final void e(int paramInt)
  {
    this.e.putInt("LAST_GET_QUERY_INFO_RESULT", paramInt).commit();
  }

  public final void e(long paramLong)
  {
    this.e.putLong("CM_STOP_TIME", paramLong).commit();
  }

  public final boolean e()
  {
    return this.d.getBoolean("LAST_SYNC_TASK_EXECUTE_RESULT", false);
  }

  public final long f()
  {
    return this.d.getLong("LAST_OPERATOR_DATA_SYNC_TIME", 0L);
  }

  public final void f(int paramInt)
  {
    this.e.putInt("FAILD_COUNTER", paramInt).commit();
  }

  public final void g(int paramInt)
  {
    this.e.putInt("SCHEDULE_FREQUENCY_1", paramInt).commit();
  }

  public final boolean g()
  {
    return this.d.getBoolean("OPERATOR_CONFIG_UPDATE_NEEDV2", true);
  }

  public final int h()
  {
    Iterator localIterator = F().iterator();
    int i = 0;
    if (localIterator.hasNext())
      if (!DateUtils.isToday(((Long)localIterator.next()).longValue()))
        break label50;
    label50: for (int j = i + 1; ; j = i)
    {
      i = j;
      break;
      return i;
    }
  }

  public final void h(int paramInt)
  {
    this.e.putInt("SCHEDULE_MIN_FREQUENCY_1", paramInt).commit();
  }

  public final void i()
  {
    this.e.putString("SYNC_CONFIG_UPDATE_TIMES", "").commit();
  }

  public final void i(int paramInt)
  {
    this.e.putInt("CM_STOP_TYPE", paramInt).commit();
  }

  public final long j()
  {
    return this.d.getLong("LAST_MATCH_RULE_UPDATE_TIME", 0L);
  }

  public final String j(int paramInt)
  {
    return this.d.getString("CM_STOP_TIPS_PREFIX" + paramInt, null);
  }

  public final String k()
  {
    return this.d.getString("CURRENT_IMSI", null);
  }

  public final void k(int paramInt)
  {
    this.e.putInt("MONITOR_TIMEOUT_IN_MINUTES", paramInt).commit();
  }

  public final String l()
  {
    return this.d.getString("FAILD_RECORD", "");
  }

  public final void l(int paramInt)
  {
    ArrayList localArrayList = B();
    if (localArrayList.size() > 0)
    {
      String str1 = String.valueOf(paramInt);
      for (int i = 0; (i < 4) && (i < localArrayList.size()); i++)
      {
        String str2 = str1 + "|";
        str1 = str2 + String.valueOf(localArrayList.get(i));
      }
      this.e.putString("SMS_SECONDS_RECORD", str1).commit();
    }
    while (true)
    {
      return;
      this.e.putString("SMS_SECONDS_RECORD", String.valueOf(paramInt)).commit();
    }
  }

  public final int m()
  {
    return this.d.getInt("FAILD_COUNTER", 0);
  }

  public final int n()
  {
    return this.d.getInt("FAILD_LIMIT", 10);
  }

  public final String o()
  {
    return this.d.getString("BLOCK_RECORD", "");
  }

  public final String p()
  {
    return this.d.getString("PACKAGE_TYPE", "");
  }

  public final int q()
  {
    return this.d.getInt("SCHEDULE_FREQUENCY_1", 1);
  }

  public final long r()
  {
    return 1000L * (60L * (60L * (24L * this.d.getInt("SCHEDULE_FREQUENCY_1", 1))));
  }

  public final int s()
  {
    return this.d.getInt("SCHEDULE_MAX_FREQUENCY_1", 1);
  }

  public final int t()
  {
    return this.d.getInt("SCHEDULE_MIN_FREQUENCY_1", 4);
  }

  public final String u()
  {
    String str = this.d.getString("SCHEDULE_TIMING", "");
    if ("".equals(str))
    {
      int i = 9 + (int)(3.0D * Math.random());
      int j = (int)(60.0D * Math.random());
      int k = (int)(60.0D * Math.random());
      str = i + "|" + j + "|" + k;
      this.e.putString("SCHEDULE_TIMING", str).commit();
    }
    return str;
  }

  public final boolean v()
  {
    return this.d.getBoolean("SELECT_QUERY_INFO", true);
  }

  public final long w()
  {
    return this.d.getLong("CMD_TIME", 0L);
  }

  public final boolean x()
  {
    return this.d.getBoolean("FUNCTION_PAUSE", false);
  }

  public final int y()
  {
    return this.d.getInt("CM_STOP_TYPE", 0);
  }

  public final long z()
  {
    return this.d.getLong("CM_STOP_TIME", 0L);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     jd
 * JD-Core Version:    0.6.2
 */