package com.keniu.security.traffic;

import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.widget.Toast;
import com.keniu.security.malware.bz;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.StringTokenizer;

public final class e
{
  public static final int a = -10;
  public static final int b = -11;
  public static final double c = 1048576.0D;
  public static final String d = "DroidWallPrefs";
  public static final String e = "AllowedUids3G";
  public static final String f = "AllowedUidsWifi";
  public static final String g = "blacklist";
  public static final String h = "BlockMode";
  public static f[] i = null;
  public static bz j;
  public static boolean k = false;
  public static boolean l = false;
  private static final String m = "droidwall.sh";
  private static boolean n = false;

  private static int a(Context paramContext, String paramString, StringBuilder paramStringBuilder)
  {
    return a(paramContext, paramString, paramStringBuilder, true);
  }

  private static int a(Context paramContext, String paramString, StringBuilder paramStringBuilder, boolean paramBoolean)
  {
    h localh = new h(new File(paramContext.getDir("bin", 0), "droidwall.sh"), paramString, paramStringBuilder, paramBoolean);
    localh.start();
    if (40000L > 0L);
    try
    {
      localh.join(40000L);
      while (true)
      {
        if (localh.isAlive())
        {
          localh.interrupt();
          localh.join(150L);
          localh.join(50L);
        }
        label78: return localh.a;
        localh.join();
      }
    }
    catch (InterruptedException localInterruptedException)
    {
      break label78;
    }
  }

  public static void a(Context paramContext)
  {
    f[] arrayOff = c(paramContext, false);
    int i1 = 0;
    if (i1 < arrayOff.length)
    {
      arrayOff[i1].h.setCallback(null);
      if (arrayOff[i1].k)
        q.c(arrayOff[i1].a, false);
      while (true)
      {
        i1++;
        break;
        q.c(arrayOff[i1].a, true);
      }
    }
  }

  private static void a(Context paramContext, int paramInt)
  {
    String str1 = q.d();
    String str2 = q.e();
    String str3 = paramInt + "";
    int i1;
    if (str1.length() > 0)
    {
      StringBuilder localStringBuilder1 = new StringBuilder();
      StringTokenizer localStringTokenizer1 = new StringTokenizer(str1, "|");
      i1 = 0;
      while (localStringTokenizer1.hasMoreTokens())
      {
        String str5 = localStringTokenizer1.nextToken();
        if (str3.equals(str5))
        {
          Log.d("DroidWall", "Removing UID " + str5 + " from the wi-fi list (package removed)!");
          i1 = 1;
        }
        else
        {
          if (localStringBuilder1.length() > 0)
            localStringBuilder1.append('|');
          localStringBuilder1.append(str5);
        }
      }
      if (i1 != 0)
        q.a(localStringBuilder1.toString());
    }
    while (true)
    {
      if (str2.length() > 0)
      {
        StringBuilder localStringBuilder2 = new StringBuilder();
        StringTokenizer localStringTokenizer2 = new StringTokenizer(str2, "|");
        while (localStringTokenizer2.hasMoreTokens())
        {
          String str4 = localStringTokenizer2.nextToken();
          if (str3.equals(str4))
          {
            Log.d("DroidWall", "Removing UID " + str4 + " from the 3G list (package removed)!");
            i1 = 1;
          }
          else
          {
            if (localStringBuilder2.length() > 0)
              localStringBuilder2.append('|');
            localStringBuilder2.append(str4);
          }
        }
        if (i1 != 0)
          q.b(localStringBuilder2.toString());
      }
      if (i1 != 0)
        a(paramContext, false);
      return;
      i1 = 0;
    }
  }

  private static void a(Context paramContext, File paramFile, String paramString)
  {
    String str = paramFile.getAbsolutePath();
    FileOutputStream localFileOutputStream = new FileOutputStream(paramFile);
    InputStream localInputStream = paramContext.getResources().openRawResource(2131099650);
    byte[] arrayOfByte = new byte[1024];
    while (true)
    {
      int i1 = localInputStream.read(arrayOfByte);
      if (i1 <= 0)
        break;
      localFileOutputStream.write(arrayOfByte, 0, i1);
    }
    localFileOutputStream.close();
    localInputStream.close();
    Runtime.getRuntime().exec("chmod " + paramString + " " + str).waitFor();
  }

  private static void a(Context paramContext, CharSequence paramCharSequence)
  {
    if (paramContext != null)
      new AlertDialog.Builder(paramContext).setNeutralButton(17039370, null).setMessage(paramCharSequence).show();
  }

  private static boolean a(Context paramContext, List paramList1, List paramList2, boolean paramBoolean)
  {
    boolean bool;
    if (paramContext == null)
      bool = false;
    while (true)
    {
      return bool;
      e(paramContext, paramBoolean);
      String[] arrayOfString1 = { "tiwlan+", "wlan+", "eth+", "ra+", "mlan+" };
      String[] arrayOfString2 = { "rmnet+", "pdp+", "ppp+", "uwbr+", "wimax+", "vsnet+", "ccmni+", "usb+", "qmi+", "ccinet+" };
      StringBuilder localStringBuilder1 = new StringBuilder();
      try
      {
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = System.getenv("LD_LIBRARY_PATH");
        localStringBuilder1.append(String.format("export LD_LIBRARY_PATH=%s\n", arrayOfObject));
        localStringBuilder1.append(c(paramContext));
        localStringBuilder1.append("$IPTABLES --version\n# Create the DROIDWALL chains if necessary\n$IPTABLES --new DROIDWALL\n$IPTABLES --new DROIDWALL_MOBILE\n$IPTABLES --new DROIDWALL_WIFI\n$IPTABLES --new DROIDWALL_REJECT\n# Add DROIDWALL chain to OUTPUT chain if necessary\n$IPTABLES -D OUTPUT -j DROIDWALL\n$IPTABLES -I OUTPUT -j DROIDWALL\n$IPTABLES -F DROIDWALL || exit 7\n$IPTABLES -F DROIDWALL_MOBILE || exit 8\n$IPTABLES -F DROIDWALL_WIFI || exit 9\n$IPTABLES -F DROIDWALL_REJECT || exit 10\n");
        localStringBuilder1.append("# Create the reject rule (log disabled)\n$IPTABLES -A DROIDWALL_REJECT -j REJECT || exit 11\n");
        localStringBuilder1.append("# Main rules (per interface)\n");
        int i1 = arrayOfString2.length;
        for (int i2 = 0; i2 < i1; i2++)
        {
          String str2 = arrayOfString2[i2];
          localStringBuilder1.append("$IPTABLES -A DROIDWALL -o ").append(str2).append(" -j DROIDWALL_MOBILE || exit\n");
        }
        int i3 = arrayOfString1.length;
        for (int i4 = 0; i4 < i3; i4++)
        {
          String str1 = arrayOfString1[i4];
          localStringBuilder1.append("$IPTABLES -A DROIDWALL -o ").append(str1).append(" -j DROIDWALL_WIFI || exit\n");
        }
        localStringBuilder1.append("# Filtering rules\n");
        if (k)
          localStringBuilder1.append("$IPTABLES -A DROIDWALL_MOBILE -j ").append("DROIDWALL_REJECT").append(" || exit\n");
        while (l)
        {
          localStringBuilder1.append("$IPTABLES -A DROIDWALL_WIFI -j ").append("DROIDWALL_REJECT").append(" || exit\n");
          if (paramList2.indexOf(Integer.valueOf(-11)) >= 0)
          {
            localStringBuilder1.append("# hack to BLOCK kernel packets on black-list\n");
            localStringBuilder1.append("$IPTABLES -A DROIDWALL_MOBILE -m owner --uid-owner 0:999999999 -j RETURN || exit\n");
            localStringBuilder1.append("$IPTABLES -A DROIDWALL_MOBILE -j DROIDWALL_REJECT || exit\n");
          }
          if (paramList1.indexOf(Integer.valueOf(-11)) >= 0)
          {
            localStringBuilder1.append("# hack to BLOCK kernel packets on black-list\n");
            localStringBuilder1.append("$IPTABLES -A DROIDWALL_WIFI -m owner --uid-owner 0:999999999 -j RETURN || exit\n");
            localStringBuilder1.append("$IPTABLES -A DROIDWALL_WIFI -j DROIDWALL_REJECT || exit\n");
          }
          StringBuilder localStringBuilder2 = new StringBuilder();
          int i5 = a(paramContext, localStringBuilder1.toString(), localStringBuilder2, true);
          if ((!paramBoolean) || (i5 == 0))
            break label682;
          Toast.makeText(paramContext, paramContext.getString(2131428221), 300).show();
          System.out.println("applyIptablesRulesImpl");
          break label688;
          Iterator localIterator1 = paramList2.iterator();
          while (localIterator1.hasNext())
          {
            Integer localInteger1 = (Integer)localIterator1.next();
            if (localInteger1.intValue() >= 0)
              localStringBuilder1.append("$IPTABLES -A DROIDWALL_MOBILE -m owner --uid-owner ").append(localInteger1).append(" -j ").append("DROIDWALL_REJECT").append(" || exit\n");
          }
        }
      }
      catch (Exception localException)
      {
        if (paramBoolean)
          Toast.makeText(paramContext, paramContext.getString(2131428221), 300).show();
        System.out.println("applyIptablesRulesImpl");
        break label688;
        Iterator localIterator2 = paramList1.iterator();
        while (localIterator2.hasNext())
        {
          Integer localInteger2 = (Integer)localIterator2.next();
          if (localInteger2.intValue() >= 0)
            localStringBuilder1.append("$IPTABLES -A DROIDWALL_WIFI -m owner --uid-owner ").append(localInteger2).append(" -j ").append("DROIDWALL_REJECT").append(" || exit\n");
        }
        label682: bool = true;
        continue;
        label688: bool = false;
      }
    }
  }

  public static boolean a(Context paramContext, boolean paramBoolean)
  {
    if (paramContext == null);
    LinkedList localLinkedList1;
    LinkedList localLinkedList2;
    for (boolean bool = false; ; bool = a(paramContext, localLinkedList1, localLinkedList2, paramBoolean))
    {
      return bool;
      q.a(paramContext);
      String str1 = q.e();
      String str2 = q.d();
      localLinkedList1 = new LinkedList();
      if (str2.length() > 0)
      {
        StringTokenizer localStringTokenizer1 = new StringTokenizer(str2, "|");
        while (localStringTokenizer1.hasMoreTokens())
        {
          String str4 = localStringTokenizer1.nextToken();
          if (!str4.equals(""))
            try
            {
              localLinkedList1.add(Integer.valueOf(Integer.parseInt(str4)));
            }
            catch (Exception localException2)
            {
            }
        }
      }
      localLinkedList2 = new LinkedList();
      if (str1.length() > 0)
      {
        StringTokenizer localStringTokenizer2 = new StringTokenizer(str1, "|");
        while (localStringTokenizer2.hasMoreTokens())
        {
          String str3 = localStringTokenizer2.nextToken();
          if (!str3.equals(""))
            try
            {
              localLinkedList2.add(Integer.valueOf(Integer.parseInt(str3)));
            }
            catch (Exception localException1)
            {
            }
        }
      }
    }
  }

  private static int b(Context paramContext, String paramString, StringBuilder paramStringBuilder)
  {
    return a(paramContext, paramString, paramStringBuilder, true);
  }

  public static void b(Context paramContext)
  {
    int i1 = 0;
    f[] arrayOff = c(paramContext, false);
    StringBuilder localStringBuilder1 = new StringBuilder();
    StringBuilder localStringBuilder2 = new StringBuilder();
    while (i1 < arrayOff.length)
    {
      arrayOff[i1].h.setCallback(null);
      if (arrayOff[i1].c)
      {
        if (localStringBuilder1.length() != 0)
          localStringBuilder1.append('|');
        localStringBuilder1.append(arrayOff[i1].a);
      }
      if (arrayOff[i1].d)
      {
        if (localStringBuilder2.length() != 0)
          localStringBuilder2.append('|');
        localStringBuilder2.append(arrayOff[i1].a);
      }
      i1++;
    }
    q.a(localStringBuilder1.toString());
    q.b(localStringBuilder2.toString());
  }

  public static boolean b(Context paramContext, boolean paramBoolean)
  {
    if (paramContext == null);
    for (boolean bool = false; ; bool = a(paramContext, paramBoolean))
    {
      return bool;
      b(paramContext);
    }
  }

  private static int c(Context paramContext, String paramString, StringBuilder paramStringBuilder)
  {
    return a(paramContext, paramString, paramStringBuilder, false);
  }

  private static String c(Context paramContext)
  {
    String str1 = paramContext.getDir("bin", 0).getAbsolutePath();
    String str2 = str1 + "/iptables_armv5";
    return "IPTABLES=iptables\nECHO=echo\n# Try to find iptables\nif " + str2 + " --version >/dev/null 2>/dev/null ; then\n" + "\tIPTABLES=" + str2 + "\n" + "fi\n" + "";
  }

  public static f[] c(Context paramContext, boolean paramBoolean)
  {
    z localz;
    f[] arrayOff;
    String str2;
    Object localObject2;
    int[] arrayOfInt1;
    try
    {
      localz = z.a(paramContext);
      if ((i != null) && (!paramBoolean))
      {
        arrayOff = i;
        break label1090;
      }
      i = null;
      q.a(paramContext);
      String str1 = q.d();
      str2 = q.e();
      localObject1 = new int[0];
      localObject2 = new int[0];
      if (str1.length() <= 0)
        break label167;
      StringTokenizer localStringTokenizer1 = new StringTokenizer(str1, "|");
      arrayOfInt1 = new int[localStringTokenizer1.countTokens()];
      int i1 = 0;
      while (true)
        if (i1 < arrayOfInt1.length)
        {
          String str8 = localStringTokenizer1.nextToken();
          boolean bool3 = str8.equals("");
          if (!bool3);
          try
          {
            q.a(Integer.parseInt(str8), false);
            arrayOfInt1[i1] = Integer.parseInt(str8);
            i1++;
          }
          catch (Exception localException3)
          {
            while (true)
              arrayOfInt1[i1] = -1;
          }
        }
    }
    catch (Exception localException1)
    {
      arrayOff = new f[0];
    }
    Arrays.sort(arrayOfInt1);
    Object localObject1 = arrayOfInt1;
    label167: if (str2.length() > 0)
    {
      StringTokenizer localStringTokenizer2 = new StringTokenizer(str2, "|");
      int[] arrayOfInt2 = new int[localStringTokenizer2.countTokens()];
      int i2 = 0;
      while (true)
        if (i2 < arrayOfInt2.length)
        {
          String str7 = localStringTokenizer2.nextToken();
          boolean bool2 = str7.equals("");
          if (!bool2);
          try
          {
            arrayOfInt2[i2] = Integer.parseInt(str7);
            i2++;
          }
          catch (Exception localException2)
          {
            while (true)
              arrayOfInt2[i2] = -1;
          }
        }
      Arrays.sort(arrayOfInt2);
      localObject2 = arrayOfInt2;
    }
    ArrayList localArrayList = new ArrayList();
    Intent localIntent = new Intent("android.intent.action.MAIN", null);
    localIntent.addCategory("android.intent.category.LAUNCHER");
    PackageManager localPackageManager1 = paramContext.getPackageManager();
    List localList = localPackageManager1.getInstalledApplications(0);
    Iterator localIterator1 = localPackageManager1.queryIntentActivities(localIntent, 0).iterator();
    while (true)
    {
      ResolveInfo localResolveInfo;
      if (localIterator1.hasNext())
        localResolveInfo = (ResolveInfo)localIterator1.next();
      for (int i3 = 0; i3 < localList.size(); i3++)
      {
        ApplicationInfo localApplicationInfo2 = (ApplicationInfo)localList.get(i3);
        if (localApplicationInfo2.packageName.equals(localResolveInfo.activityInfo.applicationInfo.packageName))
        {
          localArrayList.add(localApplicationInfo2);
          continue;
          if (!localz.b(true))
          {
            arrayOff = new f[0];
          }
          else
          {
            PackageManager localPackageManager2 = paramContext.getPackageManager();
            HashMap localHashMap = new HashMap();
            Iterator localIterator2 = localArrayList.iterator();
            ApplicationInfo localApplicationInfo1;
            f localf1;
            String str4;
            String str5;
            while (localIterator2.hasNext())
            {
              localApplicationInfo1 = (ApplicationInfo)localIterator2.next();
              localf1 = (f)localHashMap.get(localApplicationInfo1.packageName);
              if ((localf1 != null) || (localPackageManager2.checkPermission("android.permission.INTERNET", localApplicationInfo1.packageName) == 0))
              {
                String str3 = "cache.label." + localApplicationInfo1.packageName;
                str4 = q.c(str3);
                if (str4.length() != 0)
                  break label1080;
                String str6 = localPackageManager2.getApplicationLabel(localApplicationInfo1).toString();
                q.a(str3, str6);
                str5 = str6;
              }
            }
            for (boolean bool1 = true; ; bool1 = false)
            {
              f localf2;
              if (localf1 == null)
              {
                localf2 = new f();
                localf2.a = localApplicationInfo1.uid;
                localf2.b = new String[] { str5 };
                localf2.g = localApplicationInfo1;
                localf2.h = localPackageManager2.getApplicationIcon(localApplicationInfo1);
                localf2.h.setCallback(null);
                u localu = localz.a(System.currentTimeMillis(), localf2.g.uid, localf2.g.packageName);
                if (localu != null)
                {
                  localf2.m = (localu.a / 1048576.0D);
                  label689: localHashMap.put(Integer.valueOf(localApplicationInfo1.uid), localf2);
                }
              }
              for (f localf3 = localf2; ; localf3 = localf1)
              {
                localf3.j = bool1;
                if ((!localf3.c) && (Arrays.binarySearch((int[])localObject1, localf3.a) >= 0))
                  localf3.c = true;
                if ((!localf3.d) && (Arrays.binarySearch((int[])localObject2, localf3.a) >= 0))
                  localf3.d = true;
                if (q.a().contains(String.valueOf(localf3.a)))
                  localf3.k = true;
                if ((localf3.g.packageName.compareToIgnoreCase("com.ijinshan.mguard") != 0) && (localf3.g.packageName.compareToIgnoreCase("com.tencent.mm") != 0) && (localf3.g.packageName.compareToIgnoreCase("com.tencent.mobileqq") != 0) && (localf3.g.packageName.compareToIgnoreCase("com.UCMobile") != 0) && (localf3.g.packageName.compareToIgnoreCase("com.google.android.gm") != 0) && (localf3.g.packageName.compareToIgnoreCase("com.ijinshan.kbatterydoctor") != 0) && (localf3.g.packageName.compareToIgnoreCase("com.ijinshan.duba") != 0) && (localf3.g.packageName.compareToIgnoreCase("com.ijinshan.mPrivacy") != 0) && (localf3.g.packageName.compareToIgnoreCase("com.android.mms") != 0) && (localf3.g.packageName.compareToIgnoreCase("com.sina.weibo") != 0))
                  break;
                localf3.k = true;
                q.c(localf3.a, false);
                break;
                localf2.m = 0.0D;
                break label689;
                String[] arrayOfString = new String[1 + localf1.b.length];
                System.arraycopy(localf1.b, 0, arrayOfString, 0, localf1.b.length);
                arrayOfString[localf1.b.length] = str5;
                localf1.b = arrayOfString;
              }
              localz.a();
              arrayOff = (f[])localHashMap.values().toArray(new f[localHashMap.size()]);
              i = arrayOff;
              break label1090;
              label1080: str5 = str4;
            }
          }
          label1090: return arrayOff;
        }
      }
    }
  }

  private static void d(Context paramContext)
  {
    try
    {
      StringBuilder localStringBuilder = new StringBuilder();
      a(paramContext, c(paramContext) + "$ECHO $IPTABLES\n" + "$IPTABLES -L -v -n\n", localStringBuilder, true);
      a(paramContext, localStringBuilder);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        a(paramContext, "error: " + localException);
    }
  }

  private static boolean d(Context paramContext, boolean paramBoolean)
  {
    StringBuilder localStringBuilder1 = new StringBuilder();
    try
    {
      e(paramContext, paramBoolean);
      StringBuilder localStringBuilder2 = new StringBuilder();
      localStringBuilder2.append(c(paramContext));
      localStringBuilder2.append("$IPTABLES -F DROIDWALL\n$IPTABLES -F DROIDWALL_REJECT\n$IPTABLES -F DROIDWALL_MOBILE\n$IPTABLES -F DROIDWALL_WIFI\n");
      int i1 = a(paramContext, localStringBuilder2.toString(), localStringBuilder1, true);
      if (i1 == -1)
        if (paramBoolean)
          a(paramContext, "Error purging iptables. exit code: " + i1 + "\n" + localStringBuilder1);
      for (bool = false; ; bool = true)
        return bool;
    }
    catch (Exception localException)
    {
      while (true)
      {
        if (paramBoolean)
          a(paramContext, "Error purging iptables: " + localException);
        boolean bool = false;
      }
    }
  }

  private static boolean e(Context paramContext)
  {
    boolean bool;
    if (n)
      bool = true;
    while (true)
    {
      return bool;
      StringBuilder localStringBuilder = new StringBuilder();
      try
      {
        if (a(paramContext, "exit 0", localStringBuilder, true) == 0)
        {
          n = true;
          bool = true;
        }
      }
      catch (Exception localException)
      {
        bool = false;
      }
    }
  }

  private static boolean e(Context paramContext, boolean paramBoolean)
  {
    try
    {
      File localFile = new File(paramContext.getDir("bin", 0), "iptables_armv5");
      if ((!localFile.exists()) || (localFile.length() != 198652L))
        a(paramContext, localFile, "755");
      bool = true;
      return bool;
    }
    catch (Exception localException)
    {
      while (true)
      {
        if (paramBoolean)
          Toast.makeText(paramContext, paramContext.getString(2131428221), 300).show();
        System.out.println("assertBinaries");
        boolean bool = false;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.e
 * JD-Core Version:    0.6.2
 */