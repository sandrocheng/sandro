package com.avast.android.generic.util;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.text.TextUtils;
import com.avast.android.generic.j;
import java.io.File;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class z
{
  private static final String[] a = { "com.p1.chompsms", "com.texty.sms", "com.facebook.orca", "com.Aetherpal.Device", "com.locationlabs.v3client", "com.sp.protector.free", "com.netqin.ps", "com.myboyfriendisageek.gotya", "com.antivirus", "com.lsdroid.cerberus", "org.antivirus", "cn.menue.callblocker", "com.koushikdutta.desktopsms", "com.iobit.mobilecare", "CN.MyPrivateMessages", "com.Cluster.cluBalancePro", "com.motricity.verizon.ssodownloadable", "name.pilgr.android.pibalance", "com.skt.skaf.OA00199800", "tw.nicky.HDCallerID", "com.Cluster.cluBalance" };
  private static String b = null;

  public static String a(Context paramContext, Intent paramIntent)
  {
    String str = paramIntent.getDataString();
    if (str == null)
      str = null;
    while (true)
    {
      return str;
      if (str.startsWith("package:"))
        str = str.substring("package:".length());
      if (str.equals(paramContext.getPackageName()))
        str = null;
      else if ((!str.startsWith("com.avast.android")) || (str.equals("com.avast.android.vps")))
        str = null;
    }
  }

  public static String a(Context paramContext, String paramString1, String paramString2)
  {
    int i = 0;
    PackageManager localPackageManager = paramContext.getPackageManager();
    Intent localIntent = new Intent();
    Object localObject1;
    int j;
    label50: ResolveInfo localResolveInfo;
    String str;
    if (paramString2 == null)
    {
      localIntent.setAction("android.provider.Telephony.SMS_RECEIVED");
      Iterator localIterator = localPackageManager.queryBroadcastReceivers(localIntent, 0).iterator();
      localObject1 = null;
      j = 0;
      if (!localIterator.hasNext())
        break label217;
      localResolveInfo = (ResolveInfo)localIterator.next();
      if (localResolveInfo.activityInfo == null)
        break label146;
      str = localResolveInfo.activityInfo.packageName;
    }
    while (true)
    {
      label90: int k;
      Object localObject2;
      int m;
      if (str != null)
        if (str.equals(paramContext.getPackageName()))
        {
          k = localResolveInfo.priority;
          localObject2 = localObject1;
          m = j;
        }
      while (true)
      {
        j = m;
        localObject1 = localObject2;
        i = k;
        break label50;
        localIntent.setAction(paramString2);
        break;
        label146: if (localResolveInfo.serviceInfo == null)
          break label246;
        str = localResolveInfo.serviceInfo.packageName;
        break label90;
        if ((!str.equals(paramString1)) && (localPackageManager.checkSignatures(str, paramContext.getPackageName()) == 0) && (localResolveInfo.priority >= j))
        {
          m = localResolveInfo.priority;
          k = i;
          localObject2 = str;
          continue;
          label217: if (j > i);
          while (true)
          {
            return localObject1;
            localObject1 = null;
          }
        }
        else
        {
          k = i;
          localObject2 = localObject1;
          m = j;
        }
      }
      label246: str = null;
    }
  }

  public static void a()
  {
    try
    {
      b = null;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static void a(Context paramContext, String paramString, Intent paramIntent)
  {
    ae.a(paramContext, paramIntent, paramString);
  }

  public static void a(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    if (paramString3 == null);
    while (true)
    {
      return;
      t.a(paramContext, "ALL", "Message " + paramString3);
      Intent localIntent = new Intent();
      localIntent.setAction("com.avast.android.generic.action.MESSAGE_TO_SUITE");
      if (paramString1 != null)
        localIntent.putExtra("number", paramString1);
      localIntent.putExtra("text", paramString3);
      if (paramString2 != null)
        localIntent.putExtra("uid", paramString2);
      localIntent.putExtra("sourcePackage", paramContext.getPackageName());
      ae.a(localIntent);
      paramContext.sendOrderedBroadcast(localIntent, "com.avast.android.generic.COMM_PERMISSION");
    }
  }

  public static boolean a(Context paramContext)
  {
    return a(paramContext, "com.avast.android.mobilesecurity");
  }

  public static boolean a(Context paramContext, int paramInt)
  {
    try
    {
      PackageInfo localPackageInfo = paramContext.getPackageManager().getPackageInfo("com.avast.android.mobilesecurity", 0);
      String str = localPackageInfo.versionName;
      bool = false;
      if (str != null)
      {
        int i = localPackageInfo.versionCode;
        bool = false;
        if (i >= paramInt)
          bool = true;
      }
      return bool;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      while (true)
        boolean bool = false;
    }
  }

  public static boolean a(Context paramContext, String paramString)
  {
    boolean bool1 = TextUtils.isEmpty(paramString);
    boolean bool2 = false;
    if (bool1);
    while (true)
    {
      return bool2;
      try
      {
        paramContext.getPackageManager().getPackageInfo(paramString, 0);
        bool2 = true;
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
        bool2 = false;
      }
    }
  }

  public static String b(Context paramContext)
  {
    String str;
    if (a(paramContext, "com.avast.android.antitheft"))
      str = "com.avast.android.antitheft";
    while (true)
    {
      return str;
      if (a(paramContext, "com.avast.android.at_play"))
        str = "com.avast.android.at_play";
      else
        str = null;
    }
  }

  public static String b(Context paramContext, int paramInt)
  {
    String str1 = null;
    try
    {
      PackageInfo localPackageInfo2 = paramContext.getPackageManager().getPackageInfo("com.avast.android.antitheft", 0);
      String str2 = localPackageInfo2.versionName;
      str1 = null;
      if (str2 != null)
      {
        int i = localPackageInfo2.versionCode;
        str1 = null;
        if (i >= paramInt)
          str1 = localPackageInfo2.packageName;
        return str1;
      }
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException1)
    {
      while (true)
        try
        {
          PackageInfo localPackageInfo1 = paramContext.getPackageManager().getPackageInfo("com.avast.android.at_play", 0);
          if ((localPackageInfo1.versionName != null) && (localPackageInfo1.versionCode >= paramInt))
            str1 = localPackageInfo1.packageName;
        }
        catch (PackageManager.NameNotFoundException localNameNotFoundException2)
        {
        }
    }
  }

  public static boolean b(Context paramContext, String paramString)
  {
    boolean bool = false;
    PackageManager localPackageManager = paramContext.getPackageManager();
    try
    {
      if (localPackageManager.getPackageInfo(paramString, 0) == null)
      {
        bool = false;
      }
      else
      {
        int i = localPackageManager.checkSignatures(paramString, paramContext.getPackageName());
        bool = false;
        if (i == 0)
          bool = true;
      }
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
    }
    return bool;
  }

  public static boolean c(Context paramContext)
  {
    return a(paramContext, "com.avast.android.backup");
  }

  public static boolean c(Context paramContext, int paramInt)
  {
    try
    {
      PackageInfo localPackageInfo = paramContext.getPackageManager().getPackageInfo("com.avast.android.backup", 0);
      String str = localPackageInfo.versionName;
      bool = false;
      if (str != null)
      {
        int i = localPackageInfo.versionCode;
        bool = false;
        if (i >= paramInt)
          bool = true;
      }
      return bool;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      while (true)
        boolean bool = false;
    }
  }

  public static boolean d(Context paramContext)
  {
    PackageManager localPackageManager = paramContext.getPackageManager();
    Iterator localIterator = localPackageManager.getInstalledApplications(0).iterator();
    int i;
    label47: boolean bool;
    while (true)
      if (localIterator.hasNext())
      {
        String str = ((ApplicationInfo)localIterator.next()).packageName;
        if (str != null)
        {
          i = 0;
          if (i < j.a.size())
            if (str.equals(j.a.get(i)))
            {
              int j = localPackageManager.checkSignatures(str, paramContext.getPackageName());
              bool = false;
              if (j == 0)
                break;
            }
        }
      }
    while (true)
    {
      return bool;
      i++;
      break label47;
      break;
      bool = true;
    }
  }

  public static List e(Context paramContext)
  {
    PackageManager localPackageManager = paramContext.getPackageManager();
    LinkedList localLinkedList = new LinkedList();
    Intent localIntent = new Intent();
    localIntent.setAction("android.provider.Telephony.SMS_RECEIVED");
    Iterator localIterator = localPackageManager.queryBroadcastReceivers(localIntent, 0).iterator();
    label81: label218: label222: label226: 
    while (true)
    {
      ResolveInfo localResolveInfo;
      String str1;
      if (localIterator.hasNext())
      {
        localResolveInfo = (ResolveInfo)localIterator.next();
        if (localResolveInfo.activityInfo != null)
          str1 = localResolveInfo.activityInfo.packageName;
      }
      while (true)
      {
        if ((str1 == null) || (!str1.startsWith("com.avast.android")) || (localPackageManager.checkSignatures(str1, paramContext.getPackageName()) != 0))
          break label226;
        String str2;
        if (str1.equals("com.avast.android.antitheft"))
          str2 = "AT";
        while (true)
        {
          if (localLinkedList.contains(str2))
            break label218;
          localLinkedList.add(str2);
          break;
          if (localResolveInfo.serviceInfo == null)
            break label222;
          str1 = localResolveInfo.serviceInfo.packageName;
          break label81;
          if (str1.equals("com.avast.android.at_play"))
            str2 = "AT";
          else if (str1.equals("com.avast.android.mobilesecurity"))
            str2 = "MS";
          else
            str2 = str1.substring(1 + str1.lastIndexOf("."));
        }
        break;
        return localLinkedList;
        str1 = null;
      }
    }
  }

  public static boolean f(Context paramContext)
  {
    return a(paramContext, "com.koushikdutta.rommanager");
  }

  public static void g(Context paramContext)
  {
    Intent localIntent = new Intent();
    localIntent.setAction("android.intent.action.MAIN");
    localIntent.addCategory("android.intent.category.LAUNCHER");
    localIntent.setComponent(new ComponentName("com.koushikdutta.rommanager", "com.koushikdutta.rommanager.RomManager"));
    paramContext.startActivity(localIntent);
  }

  public static void h(Context paramContext)
  {
    try
    {
      Iterator localIterator = e(paramContext).iterator();
      String str2;
      for (String str1 = ""; localIterator.hasNext(); str1 = str1 + str2 + ",")
        str2 = (String)localIterator.next();
      b = str1;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static String i(Context paramContext)
  {
    try
    {
      if (b == null)
        h(paramContext);
      String str = b;
      return str;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static boolean j(Context paramContext)
  {
    if (((a(paramContext, "com.avast.android.antitheft")) || (new File("/system/app/com.avast.android.antitheft.apk").exists())) && (a(paramContext, "com.avast.android.at_play")));
    for (boolean bool = true; ; bool = false)
      return bool;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.util.z
 * JD-Core Version:    0.6.2
 */