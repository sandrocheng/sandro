import QQPIM.RuleTypeID;
import QQPIM.SmsReport;
import QQPIM.UserActionTime;
import com.tencent.tccdb.MRuleTypeID;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class mm
{
  public int a;
  public String b;
  public String c;
  public int d;
  public int e;
  public int f;
  public ArrayList<MRuleTypeID> g = new ArrayList();
  public int h;
  public ArrayList<UserActionTime> i = new ArrayList();
  public String j = "";
  public long k = 0L;
  public long l = 0L;
  public int m;
  public int n = -1;

  public static SmsReport a(mm parammm)
  {
    SmsReport localSmsReport = new SmsReport();
    localSmsReport.comment = parammm.j;
    localSmsReport.matchTime = parammm.d;
    String str1 = parammm.b;
    if (str1 == null)
      str1 = "";
    localSmsReport.sender = str1;
    String str2 = parammm.c;
    if (str2 == null)
      str2 = "";
    localSmsReport.sms = str2;
    localSmsReport.smsType = parammm.n;
    localSmsReport.ucActionReason = parammm.m;
    localSmsReport.ucContentType = parammm.f;
    localSmsReport.ucAction = parammm.e;
    localSmsReport.ucMinusMark = parammm.h;
    localSmsReport.vecUserAction = parammm.i;
    localSmsReport.vecHitRule = new ArrayList();
    Iterator localIterator = parammm.g.iterator();
    while (localIterator.hasNext())
    {
      MRuleTypeID localMRuleTypeID = (MRuleTypeID)localIterator.next();
      RuleTypeID localRuleTypeID = new RuleTypeID(localMRuleTypeID.ruleType, localMRuleTypeID.ruleID);
      localSmsReport.vecHitRule.add(localRuleTypeID);
    }
    return localSmsReport;
  }

  public static String a(List<MRuleTypeID> paramList)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    if (paramList != null)
    {
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
      {
        MRuleTypeID localMRuleTypeID = (MRuleTypeID)localIterator.next();
        localStringBuffer.append(localMRuleTypeID.ruleType + "," + localMRuleTypeID.ruleID + ";");
      }
    }
    return localStringBuffer.toString();
  }

  public static ArrayList<MRuleTypeID> a(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    if ((paramString != null) && (!paramString.trim().equals("")))
    {
      String[] arrayOfString1 = paramString.split(";");
      for (int i1 = 0; (i1 < arrayOfString1.length) && (arrayOfString1[i1].length() > 0); i1++)
      {
        String[] arrayOfString2 = arrayOfString1[i1].split(",");
        localArrayList.add(new MRuleTypeID(Integer.parseInt(arrayOfString2[0]), Integer.parseInt(arrayOfString2[1])));
      }
    }
    return localArrayList;
  }

  public static String b(List<UserActionTime> paramList)
  {
    StringBuffer localStringBuffer = new StringBuffer();
    if (paramList != null)
    {
      int i1 = paramList.size();
      if (i1 > 5)
        paramList = paramList.subList(i1 - 5, i1 - 1);
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
      {
        UserActionTime localUserActionTime = (UserActionTime)localIterator.next();
        localStringBuffer.append(localUserActionTime.userAction + "," + localUserActionTime.time + ";");
      }
    }
    return localStringBuffer.toString();
  }

  public static ArrayList<UserActionTime> b(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    if ((paramString != null) && (!paramString.trim().equals("")))
    {
      String[] arrayOfString1 = paramString.split(";");
      for (int i1 = 0; (i1 < arrayOfString1.length) && (arrayOfString1[i1].length() > 0); i1++)
      {
        String[] arrayOfString2 = arrayOfString1[i1].split(",");
        localArrayList.add(new UserActionTime(Integer.parseInt(arrayOfString2[0]), Integer.parseInt(arrayOfString2[1])));
      }
    }
    return localArrayList;
  }

  public final boolean equals(Object paramObject)
  {
    if (((mm)paramObject).a != this.a);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String toString()
  {
    StringBuffer localStringBuffer = new StringBuffer();
    localStringBuffer.append("actionReason:" + this.m + "\n");
    localStringBuffer.append("matchFinalAction:" + this.e + "\n");
    localStringBuffer.append("matchTime:" + this.d + "\n");
    localStringBuffer.append("minusMark:" + this.h + "\n");
    localStringBuffer.append("sender:" + this.b + "\n");
    localStringBuffer.append("sms:" + this.c + "\n");
    localStringBuffer.append("smsContentType:" + this.f + "\n");
    localStringBuffer.append("smslog_date:" + this.k + "\n");
    localStringBuffer.append("syslog_date:" + this.l + "\n");
    localStringBuffer.append("vecUserAction:" + b(this.i) + "\n");
    localStringBuffer.append("vecHitRuels:" + a(this.g));
    return localStringBuffer.toString();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     mm
 * JD-Core Version:    0.6.2
 */