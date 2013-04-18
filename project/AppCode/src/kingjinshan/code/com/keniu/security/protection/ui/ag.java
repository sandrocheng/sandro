package com.keniu.security.protection.ui;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.net.ConnectivityManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.provider.Settings.System;
import android.telephony.SmsManager;
import android.telephony.TelephonyManager;
import android.widget.Toast;
import com.ijinshan.kpref.t;
import com.jxphone.mosecurity.d.l;
import com.keniu.security.protection.e;
import com.keniu.security.util.ap;
import com.keniu.security.util.aq;
import java.io.PrintStream;
import java.lang.reflect.Method;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Random;

public final class ag
{
  public static final String a = "[A-Za-z0-9]{6,12}";
  public static final String b = "1[0-9]{10}";
  public static final String c = "########";
  public static final String d = "com.keniu.security.protection.SmsSentBroadcastReceiver";
  public static final String e = "com.keniu.security.protection.SmsSentBroadcastReceiver.result";

  public static int a(Context paramContext, int paramInt, String paramString1, String paramString2, boolean paramBoolean)
  {
    while (true)
    {
      try
      {
        System.out.println("sendSMS: cnt=" + paramInt + ",body=" + paramString2 + ",address=" + paramString1 + ",tip=" + paramBoolean);
        if (paramString1 != null)
        {
          boolean bool = paramString1.equals("");
          if (!bool);
        }
        else
        {
          i = 0;
          return i;
        }
        if ((paramString2 != null) && (!paramString2.equals("")))
        {
          SmsManager localSmsManager = SmsManager.getDefault();
          Intent localIntent = new Intent("com.keniu.security.protection.SmsSentBroadcastReceiver");
          localIntent.putExtra("cnt", paramInt);
          localIntent.putExtra("address", paramString1);
          localIntent.putExtra("body", paramString2);
          localIntent.putExtra("tip", paramBoolean);
          try
          {
            PendingIntent localPendingIntent = PendingIntent.getBroadcast(paramContext, 0, localIntent, 268435456);
            ArrayList localArrayList1 = localSmsManager.divideMessage(paramString2);
            ArrayList localArrayList2 = new ArrayList();
            localArrayList2.add(localPendingIntent);
            localSmsManager.sendMultipartTextMessage(paramString1, null, localArrayList1, localArrayList2, null);
            i = 1;
          }
          catch (Exception localException)
          {
            localException.printStackTrace();
            int j = localException.toString().indexOf("not have android.permission.SEND_SMS");
            System.out.println("i=" + j);
            if (j != -1)
            {
              i = -1;
              continue;
            }
            i = 0;
          }
          continue;
        }
      }
      finally
      {
      }
      int i = 0;
    }
  }

  public static int a(Context paramContext, String paramString1, String paramString2)
  {
    return a(paramContext, 1, paramString1, paramString2, false);
  }

  public static Object a(Context paramContext, String paramString, boolean paramBoolean)
  {
    ConnectivityManager localConnectivityManager = (ConnectivityManager)paramContext.getSystemService("connectivity");
    Class localClass = localConnectivityManager.getClass();
    Class[] arrayOfClass = new Class[1];
    arrayOfClass[0] = Boolean.TYPE;
    Method localMethod = localClass.getMethod(paramString, arrayOfClass);
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Boolean.valueOf(paramBoolean);
    return localMethod.invoke(localConnectivityManager, arrayOfObject);
  }

  public static String a(Context paramContext)
  {
    return t.b(paramContext).getString(paramContext.getString(2131429244), null);
  }

  public static String a(String paramString)
  {
    while (true)
    {
      int i;
      try
      {
        byte[] arrayOfByte = MessageDigest.getInstance("md5").digest(paramString.getBytes());
        String str1 = "";
        i = 0;
        if (i < arrayOfByte.length)
        {
          String str3 = Integer.toHexString(0xFF & arrayOfByte[i]);
          if (str3.length() == 1)
            str1 = str1 + "0" + str3;
          else
            str1 = str1 + str3;
        }
        else
        {
          String str2 = str1.toUpperCase();
          return str2;
        }
      }
      catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
      {
        throw new RuntimeException(localNoSuchAlgorithmException);
      }
      i++;
    }
  }

  public static void a(Context paramContext, int paramInt)
  {
    String str1 = a(paramContext);
    String str2 = ((TelephonyManager)paramContext.getSystemService("phone")).getSubscriberId();
    aq localaq = new aq(paramContext, (byte)0);
    if (!i(paramContext))
    {
      localaq.a(2131428590);
      localaq.b(2131429362);
      localaq.b(2131427866, null);
      localaq.a(2131427864, new ah(paramContext));
    }
    while (true)
    {
      localaq.c().show();
      return;
      if ((str2 == null) || (str2.equals("")))
      {
        localaq.a(2131428590);
        localaq.b(2131429329);
        localaq.a(2131428298, null);
      }
      else
      {
        localaq.a(paramInt);
        localaq.b(2131429360);
        localaq.b(2131427866, null);
        localaq.a(2131427867, new ai(paramContext, str1));
      }
    }
  }

  public static void a(Context paramContext, String paramString)
  {
    SharedPreferences.Editor localEditor = t.b(paramContext).edit();
    localEditor.putString(paramContext.getString(2131429244), paramString);
    localEditor.commit();
  }

  public static void a(Context paramContext, boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = t.b(paramContext).edit();
    localEditor.putBoolean(paramContext.getString(2131429250), paramBoolean);
    localEditor.commit();
  }

  public static boolean a()
  {
    String str = Build.MODEL;
    if ((str != null) && (str.equalsIgnoreCase("HTC A9188")));
    for (int i = 1; i != 0; i = 0)
    {
      bool = false;
      return bool;
    }
    e.b();
    if (e.d() >= 2);
    for (boolean bool = true; ; bool = false)
    {
      e.c();
      break;
    }
  }

  public static String b(Context paramContext)
  {
    return t.b(paramContext).getString(paramContext.getString(2131429245), null);
  }

  public static void b(Context paramContext, boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = t.b(paramContext).edit();
    localEditor.putBoolean(paramContext.getString(2131429251), paramBoolean);
    localEditor.commit();
  }

  public static boolean b()
  {
    boolean bool;
    if ((Build.VERSION.SDK_INT >= 14) || (Build.VERSION.SDK_INT <= 8))
      bool = false;
    while (true)
    {
      return bool;
      if ((Build.DISPLAY != null) && (l.a()))
      {
        bool = false;
      }
      else
      {
        String str1 = Build.MODEL;
        int i;
        label87: int j;
        label112: int k;
        label141: int m;
        label170: int n;
        label199: int i1;
        label228: int i2;
        if ((str1 != null) && ((str1.equalsIgnoreCase("huawei-u8500")) || (str1.equalsIgnoreCase("u8500")) || (str1.equalsIgnoreCase("huawei ideos")) || (str1.equalsIgnoreCase("huawei_ideos_u8500"))))
        {
          i = 1;
          if (i == 0)
          {
            String str2 = Build.MODEL;
            if ((str2 == null) || (!str2.equalsIgnoreCase("ZTE-T U880")))
              break label301;
            j = 1;
            if (j == 0)
            {
              String str3 = Build.MODEL;
              if ((str3 == null) || (!str3.equalsIgnoreCase("lenovo p70")))
                break label307;
              k = 1;
              if (k == 0)
              {
                String str4 = Build.MODEL;
                if ((str4 == null) || (!str4.equalsIgnoreCase("coolpad 5899")))
                  break label313;
                m = 1;
                if (m == 0)
                {
                  String str5 = Build.MODEL;
                  if ((str5 == null) || (!str5.equalsIgnoreCase("mi-one plus")))
                    break label319;
                  n = 1;
                  if (n == 0)
                  {
                    String str6 = Build.MODEL;
                    if ((str6 == null) || (!str6.equalsIgnoreCase("MB860")))
                      break label325;
                    i1 = 1;
                    if (i1 == 0)
                    {
                      String str7 = Build.MODEL;
                      if ((str7 == null) || (!str7.equalsIgnoreCase("HUAWEI T8300")))
                        break label331;
                      i2 = 1;
                      label257: if (i2 == 0)
                      {
                        String str8 = Build.MODEL;
                        if ((str8 == null) || (!str8.equalsIgnoreCase("U8860")))
                          break label337;
                      }
                    }
                  }
                }
              }
            }
          }
        }
        label301: label307: label313: label319: label325: label331: label337: for (int i3 = 1; ; i3 = 0)
        {
          if (i3 == 0)
            break label343;
          bool = false;
          break;
          i = 0;
          break label87;
          j = 0;
          break label112;
          k = 0;
          break label141;
          m = 0;
          break label170;
          n = 0;
          break label199;
          i1 = 0;
          break label228;
          i2 = 0;
          break label257;
        }
        label343: bool = true;
      }
    }
  }

  public static boolean b(Context paramContext, String paramString)
  {
    String str = a(paramContext);
    if ((str == null) || (paramString == null));
    for (boolean bool = false; ; bool = paramString.contains(str))
      return bool;
  }

  private static String c()
  {
    Random localRandom = new Random();
    String str1 = "";
    do
    {
      String str2 = Character.toString((char)(48 + Math.abs(localRandom.nextInt()) % 10));
      str1 = str1 + str2;
    }
    while (str1.length() < 8);
    return str1;
  }

  public static String c(Context paramContext)
  {
    return t.b(paramContext).getString(paramContext.getString(2131429246), null);
  }

  public static void c(Context paramContext, String paramString)
  {
    SharedPreferences.Editor localEditor = t.b(paramContext).edit();
    localEditor.putString(paramContext.getString(2131429245), paramString);
    localEditor.commit();
  }

  private static void c(Context paramContext, boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = t.b(paramContext).edit();
    localEditor.putBoolean(paramContext.getString(2131429241), paramBoolean);
    localEditor.commit();
  }

  public static void d(Context paramContext)
  {
    SharedPreferences.Editor localEditor = t.b(paramContext).edit();
    localEditor.putBoolean(paramContext.getString(2131429233), false);
    localEditor.commit();
  }

  public static void d(Context paramContext, String paramString)
  {
    SharedPreferences.Editor localEditor = t.b(paramContext).edit();
    localEditor.putString(paramContext.getString(2131429246), a(paramString));
    localEditor.commit();
  }

  public static boolean e(Context paramContext)
  {
    return t.b(paramContext).getBoolean(paramContext.getString(2131429233), true);
  }

  public static boolean e(Context paramContext, String paramString)
  {
    String str = c(paramContext);
    if ((str == null) || (paramString == null));
    for (boolean bool = false; ; bool = a(paramString).equals(str))
      return bool;
  }

  public static void f(Context paramContext)
  {
    SharedPreferences.Editor localEditor = t.b(paramContext).edit();
    localEditor.putBoolean(paramContext.getString(2131429234), true);
    localEditor.commit();
  }

  public static void f(Context paramContext, String paramString)
  {
    SharedPreferences.Editor localEditor = t.b(paramContext).edit();
    localEditor.putString(paramContext.getString(2131429247), paramString);
    localEditor.commit();
  }

  public static void g(Context paramContext, String paramString)
  {
    SharedPreferences.Editor localEditor = t.b(paramContext).edit();
    localEditor.putString(paramContext.getString(2131429248), paramString);
    localEditor.commit();
  }

  public static boolean g(Context paramContext)
  {
    return t.b(paramContext).getBoolean(paramContext.getString(2131429234), false);
  }

  public static void h(Context paramContext)
  {
    SharedPreferences.Editor localEditor = t.b(paramContext).edit();
    localEditor.putBoolean(paramContext.getString(2131429236), true);
    localEditor.commit();
  }

  public static void h(Context paramContext, String paramString)
  {
    SharedPreferences.Editor localEditor = t.b(paramContext).edit();
    localEditor.putString(paramContext.getString(2131429249), paramString);
    localEditor.commit();
  }

  public static boolean i(Context paramContext)
  {
    return t.b(paramContext).getBoolean(paramContext.getString(2131429236), false);
  }

  public static boolean i(Context paramContext, String paramString)
  {
    ConnectivityManager localConnectivityManager = (ConnectivityManager)paramContext.getSystemService("connectivity");
    return ((Boolean)localConnectivityManager.getClass().getMethod(paramString, null).invoke(localConnectivityManager, null)).booleanValue();
  }

  public static boolean j(Context paramContext)
  {
    return t.b(paramContext).getBoolean(paramContext.getString(2131429239), false);
  }

  public static void k(Context paramContext)
  {
    SharedPreferences.Editor localEditor = t.b(paramContext).edit();
    localEditor.putBoolean(paramContext.getString(2131429239), false);
    localEditor.commit();
  }

  public static boolean l(Context paramContext)
  {
    return t.b(paramContext).getBoolean(paramContext.getString(2131429242), false);
  }

  public static void m(Context paramContext)
  {
    SharedPreferences.Editor localEditor = t.b(paramContext).edit();
    localEditor.putBoolean(paramContext.getString(2131429242), true);
    localEditor.commit();
  }

  public static String n(Context paramContext)
  {
    return t.b(paramContext).getString(paramContext.getString(2131429247), null);
  }

  public static String o(Context paramContext)
  {
    return t.b(paramContext).getString(paramContext.getString(2131429248), null);
  }

  public static String p(Context paramContext)
  {
    return t.b(paramContext).getString(paramContext.getString(2131429249), null);
  }

  public static boolean q(Context paramContext)
  {
    return t.b(paramContext).getBoolean(paramContext.getString(2131429250), false);
  }

  public static void r(Context paramContext)
  {
    SharedPreferences.Editor localEditor = t.b(paramContext).edit();
    localEditor.putBoolean(paramContext.getString(2131429240), true);
    localEditor.commit();
  }

  public static boolean s(Context paramContext)
  {
    return t.b(paramContext).getBoolean(paramContext.getString(2131429251), false);
  }

  public static void t(Context paramContext)
  {
    Toast.makeText(paramContext, 2131429325, 1).show();
  }

  public static void u(Context paramContext)
  {
    String str1 = a(paramContext);
    Random localRandom = new Random();
    String str2 = "";
    do
    {
      String str3 = Character.toString((char)(48 + Math.abs(localRandom.nextInt()) % 10));
      str2 = str2 + str3;
    }
    while (str2.length() < 8);
    a(paramContext, 1, str1, String.format(paramContext.getString(2131429206), new Object[] { str2 }), false);
    d(paramContext, str2);
  }

  public static boolean v(Context paramContext)
  {
    if (Settings.System.getInt(paramContext.getContentResolver(), "airplane_mode_on", 0) != 0);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  private static boolean w(Context paramContext)
  {
    return t.b(paramContext).getBoolean(paramContext.getString(2131429241), false);
  }

  private static boolean x(Context paramContext)
  {
    return t.b(paramContext).getBoolean(paramContext.getString(2131429240), false);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.protection.ui.ag
 * JD-Core Version:    0.6.2
 */