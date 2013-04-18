package com.keniu.security.protection;

import android.a.h;
import android.a.t;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build.VERSION;
import android.provider.CallLog.Calls;
import android.util.Log;
import com.ijinshan.kinghelper.firewall.core.w;
import com.keniu.security.monitor.b;
import com.keniu.security.protection.ui.ag;
import java.io.File;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class p
  implements b
{
  private static final String a = "PreventTheftCommandMonitor";
  private static final String b = "baojing";
  private static final String c = "dingwei";
  private static final String d = "xiaohui";
  private static final String e = "suoding";
  private static final String f = "chongzhimima";
  private static final String g = "jiesuo";
  private static final String h = "kaiqi";
  private static final String i = "(baojing|dingwei|xiaohui|suoding|kaiqi)#(.{6,}+)";
  private static final String j = "#(.{6,}+)";
  private static final int k = 0;
  private static final int l = 1;
  private static boolean m = false;
  private static p n;
  private Context o;

  private int a(w paramw)
  {
    this.o = paramw.a;
    String str1 = paramw.c;
    String str2 = paramw.d;
    if (paramw.e);
    for (int i1 = 0; ; i1 = a(str1, str2, -1))
    {
      return i1;
      if (str2 != null)
        str2 = str2.toLowerCase().replaceAll("＃", "#");
    }
  }

  private int a(com.jxphone.mosecurity.c.l paraml)
  {
    String str1 = paraml.b();
    String str2 = paraml.c();
    int i1 = paraml.i();
    if (str2 != null)
      str2 = str2.toLowerCase().replaceAll("＃", "#");
    return a(str1, str2, i1);
  }

  private int a(String paramString1, String paramString2, int paramInt)
  {
    Log.d("PreventTheftCommandMonitor", "dealCommand sysId=" + paramInt);
    Log.d("PreventTheftCommandMonitor", "analyzePwd=" + b(paramString2));
    Log.d("PreventTheftCommandMonitor", "isPreventTheftCommand=" + a(paramString2));
    String[] arrayOfString2;
    String str1;
    if (a(paramString2))
      if (paramString2.trim().equals("chongzhimima"))
      {
        arrayOfString2 = new String[2];
        arrayOfString2[0] = "chongzhimima";
        arrayOfString2[1] = "";
        if (arrayOfString2.length < 2)
          break label432;
        str1 = arrayOfString2[0].toLowerCase();
        String str2 = arrayOfString2[1];
        if ((!"chongzhimima".equals(str1)) && (!"jiesuo".equals(str1)) && (!e(str2)))
          break label432;
        if (!ag.g(this.o))
          break label317;
        a(this.o, str1, paramString1);
      }
    label432: for (int i1 = 1; ; i1 = 0)
      while (true)
      {
        if ((i1 == 1) && (paramInt >= 0));
        try
        {
          Log.d("PreventTheftCommandMonitor", "delbox SMS sysId=" + paramInt);
          ContentResolver localContentResolver = this.o.getContentResolver();
          Uri localUri = t.a;
          String[] arrayOfString1 = new String[1];
          arrayOfString1[0] = String.valueOf(paramInt);
          localContentResolver.delete(localUri, "_id=?", arrayOfString1);
          return i1;
          if (paramString2.trim().equals("jiesuo"))
          {
            arrayOfString2 = new String[] { "jiesuo", "" };
            break;
          }
          arrayOfString2 = paramString2.trim().split("#");
          break;
          label317: if ("kaiqi".equals(str1))
          {
            a(this.o, str1, paramString1);
            i1 = 1;
          }
          else
          {
            ag.a(this.o, 1, paramString1, this.o.getString(2131429210), false);
            while (true)
            {
              i1 = 1;
              break;
              if (!b(paramString2))
                break label432;
              ag.a(this.o, 1, paramString1, this.o.getString(2131429209), false);
            }
          }
        }
        catch (Exception localException)
        {
          while (true)
            Log.d("deleteSMS", "Exception:: " + localException);
        }
      }
  }

  public static void a()
  {
    try
    {
      boolean bool = m;
      if (bool);
      while (true)
      {
        return;
        m = true;
        if (n == null)
        {
          n = new p();
          com.keniu.security.monitor.a locala = com.keniu.security.monitor.a.a();
          locala.a(com.keniu.security.monitor.a.r, n, 0);
          locala.a(com.keniu.security.monitor.a.s, n, 0);
        }
      }
    }
    finally
    {
    }
  }

  private static void a(Context paramContext)
  {
    if (Integer.parseInt(Build.VERSION.SDK) >= 5)
      paramContext.getContentResolver().delete(Uri.parse("content://com.android.contacts/raw_contacts"), null, null);
    while (true)
    {
      return;
      paramContext.getContentResolver().delete(Uri.parse("content://contacts/people"), null, null);
    }
  }

  private static void a(Context paramContext, String paramString)
  {
    Log.d("PreventTheftCommandMonitor", "baojing");
    Intent localIntent = new Intent(paramContext, ScreenLockService.class);
    localIntent.putExtra("type", 2);
    localIntent.putExtra("preview", false);
    paramContext.startService(localIntent);
    ag.b(paramContext, true);
    if (ag.a(paramContext, paramString, paramContext.getString(2131429196)) == -1)
      ag.t(paramContext);
    com.jxphone.mosecurity.a.a.a(paramContext, "pto", "2", "");
  }

  private void a(Context paramContext, String paramString1, String paramString2)
  {
    Log.d("PreventTheftCommandMonitor", "executeCommand");
    if ((paramString1 == null) || (paramString1.equals("")));
    while (true)
    {
      return;
      if (paramString1.equals("baojing"))
      {
        Log.d("PreventTheftCommandMonitor", "baojing");
        Intent localIntent2 = new Intent(paramContext, ScreenLockService.class);
        localIntent2.putExtra("type", 2);
        localIntent2.putExtra("preview", false);
        paramContext.startService(localIntent2);
        ag.b(paramContext, true);
        if (ag.a(paramContext, paramString2, paramContext.getString(2131429196)) == -1)
          ag.t(paramContext);
        com.jxphone.mosecurity.a.a.a(paramContext, "pto", "2", "");
      }
      else if (paramString1.equals("dingwei"))
      {
        Log.d("PreventTheftCommandMonitor", "dingwei");
        new l(paramContext, paramString2).a();
        com.jxphone.mosecurity.a.a.a(paramContext, "pto", "3", "");
      }
      else if (paramString1.equals("xiaohui"))
      {
        Log.d("PreventTheftCommandMonitor", "xiaohui");
        if (d(paramString2))
        {
          if (Integer.parseInt(Build.VERSION.SDK) >= 5)
            paramContext.getContentResolver().delete(Uri.parse("content://com.android.contacts/raw_contacts"), null, null);
          try
          {
            paramContext.getContentResolver().delete(CallLog.Calls.CONTENT_URI, null, null);
          }
          catch (Exception localException2)
          {
            try
            {
              paramContext.getContentResolver().delete(t.a, null, null);
            }
            catch (Exception localException2)
            {
              try
              {
                while (true)
                {
                  paramContext.getContentResolver().delete(h.ay, null, null);
                  File localFile = new File("/sdcard");
                  if ((localFile.exists()) && (localFile.canRead()))
                    a(localFile);
                  new l(paramContext, paramString2, "xiaohui").a();
                  com.jxphone.mosecurity.a.a.a(paramContext, "pto", "4", "");
                  break;
                  paramContext.getContentResolver().delete(Uri.parse("content://contacts/people"), null, null);
                  continue;
                  localException1 = localException1;
                  localException1.printStackTrace();
                  continue;
                  localException2 = localException2;
                  localException2.printStackTrace();
                }
              }
              catch (Exception localException3)
              {
                while (true)
                  localException3.printStackTrace();
              }
            }
          }
        }
      }
      else if (paramString1.equals("suoding"))
      {
        Log.d("PreventTheftCommandMonitor", "suoding");
        Intent localIntent1 = new Intent(paramContext, ScreenLockService.class);
        localIntent1.putExtra("type", 1);
        localIntent1.putExtra("preview", false);
        paramContext.startService(localIntent1);
        ag.b(paramContext, true);
        new l(paramContext, paramString2, "suoding").a();
        com.jxphone.mosecurity.a.a.a(paramContext, "pto", "1", "");
      }
      else if (paramString1.equals("chongzhimima"))
      {
        Log.d("PreventTheftCommandMonitor", "reset");
        if (!d(paramString2))
        {
          String str1 = ag.a(paramContext);
          String str2 = paramContext.getString(2131429208);
          Object[] arrayOfObject = new Object[2];
          arrayOfObject[0] = str1.substring(0, 3);
          arrayOfObject[1] = str1.substring(7);
          ag.a(paramContext, 1, paramString2, String.format(str2, arrayOfObject), false);
        }
        else
        {
          ag.u(paramContext);
          com.jxphone.mosecurity.a.a.a(paramContext, "pto", "5", "");
        }
      }
      else if (paramString1.equals("jiesuo"))
      {
        Log.d("PreventTheftCommandMonitor", "jiesuo");
        if (d(paramString2))
        {
          ag.k(paramContext);
          ag.b(paramContext, false);
          com.jxphone.mosecurity.a.a.a(paramContext, "pto", "6", "");
        }
      }
      else if (paramString1.equals("kaiqi"))
      {
        Log.d("PreventTheftCommandMonitor", "kaiqi");
        ag.f(paramContext);
        ag.a(paramContext, 1, paramString2, paramContext.getString(2131429211), false);
        com.jxphone.mosecurity.a.a.a(paramContext, "pto", "14", "");
      }
    }
  }

  private void a(File paramFile)
  {
    File[] arrayOfFile = paramFile.listFiles();
    if (arrayOfFile != null)
    {
      int i1 = arrayOfFile.length;
      int i2 = 0;
      if (i2 < i1)
      {
        File localFile = arrayOfFile[i2];
        if (localFile.isDirectory())
          a(localFile);
        while (true)
        {
          try
          {
            localFile.delete();
            i2++;
          }
          catch (Exception localException2)
          {
            localException2.printStackTrace();
            continue;
          }
          try
          {
            localFile.delete();
          }
          catch (Exception localException1)
          {
            localException1.printStackTrace();
          }
        }
      }
    }
  }

  private static boolean a(String paramString)
  {
    boolean bool;
    if (paramString.equals("chongzhimima"))
      bool = true;
    while (true)
    {
      return bool;
      if (paramString.equals("jiesuo"))
        bool = true;
      else if (Pattern.compile("(baojing|dingwei|xiaohui|suoding|kaiqi)#(.{6,}+)").matcher(paramString.trim()).find())
        bool = true;
      else
        bool = false;
    }
  }

  private void b()
  {
    File localFile = new File("/sdcard");
    if ((localFile.exists()) && (localFile.canRead()))
      a(localFile);
  }

  private static void b(Context paramContext)
  {
    try
    {
      paramContext.getContentResolver().delete(CallLog.Calls.CONTENT_URI, null, null);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  private static void b(Context paramContext, String paramString)
  {
    Log.d("PreventTheftCommandMonitor", "suoding");
    Intent localIntent = new Intent(paramContext, ScreenLockService.class);
    localIntent.putExtra("type", 1);
    localIntent.putExtra("preview", false);
    paramContext.startService(localIntent);
    ag.b(paramContext, true);
    new l(paramContext, paramString, "suoding").a();
    com.jxphone.mosecurity.a.a.a(paramContext, "pto", "1", "");
  }

  private boolean b(String paramString)
  {
    Matcher localMatcher = Pattern.compile("#(.{6,}+)").matcher(paramString.trim());
    if (localMatcher.find());
    for (boolean bool = e(localMatcher.group().replaceAll("#", "")); ; bool = false)
      return bool;
  }

  private static void c(Context paramContext)
  {
    try
    {
      paramContext.getContentResolver().delete(t.a, null, null);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  private static void c(Context paramContext, String paramString)
  {
    Log.d("PreventTheftCommandMonitor", "dingwei");
    new l(paramContext, paramString).a();
    com.jxphone.mosecurity.a.a.a(paramContext, "pto", "3", "");
  }

  private static String[] c(String paramString)
  {
    String[] arrayOfString;
    if (paramString.trim().equals("chongzhimima"))
    {
      arrayOfString = new String[2];
      arrayOfString[0] = "chongzhimima";
      arrayOfString[1] = "";
    }
    while (true)
    {
      return arrayOfString;
      if (paramString.trim().equals("jiesuo"))
        arrayOfString = new String[] { "jiesuo", "" };
      else
        arrayOfString = paramString.trim().split("#");
    }
  }

  private static void d(Context paramContext)
  {
    try
    {
      paramContext.getContentResolver().delete(h.ay, null, null);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  private void d(Context paramContext, String paramString)
  {
    Log.d("PreventTheftCommandMonitor", "xiaohui");
    if (!d(paramString));
    while (true)
    {
      return;
      if (Integer.parseInt(Build.VERSION.SDK) >= 5)
        paramContext.getContentResolver().delete(Uri.parse("content://com.android.contacts/raw_contacts"), null, null);
      try
      {
        paramContext.getContentResolver().delete(CallLog.Calls.CONTENT_URI, null, null);
      }
      catch (Exception localException2)
      {
        try
        {
          paramContext.getContentResolver().delete(t.a, null, null);
        }
        catch (Exception localException2)
        {
          try
          {
            while (true)
            {
              paramContext.getContentResolver().delete(h.ay, null, null);
              File localFile = new File("/sdcard");
              if ((localFile.exists()) && (localFile.canRead()))
                a(localFile);
              new l(paramContext, paramString, "xiaohui").a();
              com.jxphone.mosecurity.a.a.a(paramContext, "pto", "4", "");
              break;
              paramContext.getContentResolver().delete(Uri.parse("content://contacts/people"), null, null);
              continue;
              localException1 = localException1;
              localException1.printStackTrace();
              continue;
              localException2 = localException2;
              localException2.printStackTrace();
            }
          }
          catch (Exception localException3)
          {
            while (true)
              localException3.printStackTrace();
          }
        }
      }
    }
  }

  private boolean d(String paramString)
  {
    String str = ag.a(this.o);
    if ((str == null) || (paramString == null));
    for (boolean bool = false; ; bool = paramString.contains(str))
      return bool;
  }

  private void e(Context paramContext, String paramString)
  {
    Log.d("PreventTheftCommandMonitor", "reset");
    if (!d(paramString))
    {
      String str1 = ag.a(paramContext);
      String str2 = paramContext.getString(2131429208);
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = str1.substring(0, 3);
      arrayOfObject[1] = str1.substring(7);
      ag.a(paramContext, 1, paramString, String.format(str2, arrayOfObject), false);
    }
    while (true)
    {
      return;
      ag.u(paramContext);
      com.jxphone.mosecurity.a.a.a(paramContext, "pto", "5", "");
    }
  }

  private boolean e(String paramString)
  {
    return ag.e(this.o, paramString);
  }

  private void f(Context paramContext, String paramString)
  {
    Log.d("PreventTheftCommandMonitor", "jiesuo");
    if (!d(paramString));
    while (true)
    {
      return;
      ag.k(paramContext);
      ag.b(paramContext, false);
      com.jxphone.mosecurity.a.a.a(paramContext, "pto", "6", "");
    }
  }

  private static void g(Context paramContext, String paramString)
  {
    Log.d("PreventTheftCommandMonitor", "kaiqi");
    ag.f(paramContext);
    ag.a(paramContext, 1, paramString, paramContext.getString(2131429211), false);
    com.jxphone.mosecurity.a.a.a(paramContext, "pto", "14", "");
  }

  public final int a(int paramInt, Object paramObject1, Object paramObject2)
  {
    Log.d("PreventTheftCommandMonitor", "monitorNotify");
    String str3;
    String str4;
    int i3;
    int i1;
    if (paramInt == com.keniu.security.monitor.a.r)
    {
      Log.d("PreventTheftCommandMonitor", "monitorNotify sms");
      w localw = (w)paramObject1;
      this.o = localw.a;
      str3 = localw.c;
      str4 = localw.d;
      if (localw.e)
      {
        i3 = 0;
        if (i3 != 1)
          break label118;
        localw.g.abortBroadcast();
        i1 = 2;
      }
    }
    while (true)
    {
      return i1;
      if (str4 != null)
        str4 = str4.toLowerCase().replaceAll("＃", "#");
      i3 = a(str3, str4, -1);
      break;
      label118: i1 = 0;
      continue;
      if (paramInt == com.keniu.security.monitor.a.s)
      {
        Log.d("PreventTheftCommandMonitor", "monitorNotify box");
        com.jxphone.mosecurity.c.l locall = (com.jxphone.mosecurity.c.l)paramObject1;
        this.o = ((Context)paramObject2).getApplicationContext();
        String str1 = locall.b();
        String str2 = locall.c();
        int i2 = locall.i();
        if (str2 != null)
          str2 = str2.toLowerCase().replaceAll("＃", "#");
        if (a(str1, str2, i2) == 1)
          i1 = 2;
        else
          i1 = 0;
      }
      else
      {
        i1 = 0;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.protection.p
 * JD-Core Version:    0.6.2
 */