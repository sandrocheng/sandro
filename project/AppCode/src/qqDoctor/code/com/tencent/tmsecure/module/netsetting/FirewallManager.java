package com.tencent.tmsecure.module.netsetting;

import a;
import android.content.Context;
import bwf;
import com.tencent.tmsecure.common.BaseManager;
import com.tencent.tmsecure.utils.ScriptHelper;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class FirewallManager extends BaseManager
{
  public static final int FEATURE_CAN_NOT_USE = 0;
  public static final int FEATURE_CAN_USE = 1;
  public static final int FEATURE_CAN_VIP = 2;
  private bwf a;

  public boolean getEnable()
  {
    boolean bool1 = isExpired();
    boolean bool2 = false;
    if (bool1);
    while (true)
    {
      return bool2;
      String str1 = this.a.b;
      String[] arrayOfString = new String[1];
      arrayOfString[0] = (str1 + " get-enable");
      String str2 = ScriptHelper.runScript(arrayOfString);
      bool2 = false;
      if (str2 != null)
        bool2 = str2.contains("true");
    }
  }

  public int getFeature()
  {
    bwf localbwf = this.a;
    String str1;
    String str2;
    String str3;
    if (localbwf.a == -1)
    {
      str1 = ScriptHelper.runScript(new String[] { "cat /proc/net/ip_tables_names" });
      str2 = ScriptHelper.runScript(new String[] { "cat /proc/net/ip_tables_matches" });
      str3 = ScriptHelper.runScript(new String[] { "cat /proc/net/ip_tables_targets" });
      if ((str1 != null) && (str2 != null) && (str3 != null))
        break label76;
      localbwf.a = 0;
    }
    while (true)
    {
      return localbwf.a;
      label76: if ((!str1.contains("filter")) || (!str2.contains("owner")))
        localbwf.a = 0;
      else if ((str3.contains("MARK")) && (new File("/proc/net/netfilter/nfnetlink_queue").exists()))
        localbwf.a = 2;
      else
        localbwf.a = 1;
    }
  }

  public ArrayList<Rule> getRules(int paramInt)
  {
    if (isExpired());
    for (ArrayList localArrayList = new ArrayList(); ; localArrayList = a.a(this.a.b, paramInt))
      return localArrayList;
  }

  public boolean init(List<Rule> paramList)
  {
    boolean bool1 = true;
    boolean bool2 = isExpired();
    boolean bool3 = false;
    if (bool2)
      return bool3;
    bwf localbwf = this.a;
    String str = localbwf.b;
    if (!a.m(str))
    {
      String[] arrayOfString = new String[bool1];
      arrayOfString[0] = (str + " init-chain");
      if (ScriptHelper.runScript(arrayOfString) == null)
        bool1 = false;
    }
    ArrayList localArrayList;
    Iterator localIterator;
    if (bool1)
    {
      localArrayList = new ArrayList();
      localIterator = paramList.iterator();
    }
    while (true)
    {
      if (!localIterator.hasNext())
      {
        localbwf.a(localArrayList);
        bool3 = bool1;
        break;
      }
      Rule localRule = (Rule)localIterator.next();
      switch (localRule.type)
      {
      default:
        break;
      case 1:
        if (((localRule.uidMobileVerdict != null) && (!localRule.uidMobileVerdict.equals("ACCEPT"))) || ((localRule.uidWifiVerdict != null) && (!localRule.uidWifiVerdict.equals("ACCEPT"))))
          localArrayList.add(localRule);
        break;
      case 2:
        if ((localRule.hostVerdict != null) && (!localRule.hostVerdict.equals("ACCEPT")))
          localArrayList.add(localRule);
        break;
      }
    }
  }

  public boolean isInited()
  {
    if (isExpired());
    for (boolean bool = false; ; bool = a.m(this.a.b))
      return bool;
  }

  public void onCreate(Context paramContext)
  {
    this.a = new bwf();
    this.a.onCreate(paramContext);
    setImpl(this.a);
  }

  public void setEnable(boolean paramBoolean)
  {
    if (isExpired());
    while (true)
    {
      return;
      String str = this.a.b;
      String[] arrayOfString = new String[1];
      arrayOfString[0] = (str + " set-enable " + paramBoolean);
      ScriptHelper.runScript(arrayOfString);
    }
  }

  public void setRule(Rule paramRule)
  {
    if (isExpired());
    while (true)
    {
      return;
      bwf localbwf = this.a;
      ArrayList localArrayList = new ArrayList();
      localArrayList.add(paramRule);
      localbwf.a(localArrayList);
    }
  }

  public void setRules(List<Rule> paramList)
  {
    if (isExpired());
    while (true)
    {
      return;
      this.a.a(paramList);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.netsetting.FirewallManager
 * JD-Core Version:    0.6.2
 */