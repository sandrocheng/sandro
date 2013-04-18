package com.ijinshan.kinghelper.firewall;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.text.TextUtils;
import com.ijinshan.kpref.t;
import com.keniu.security.a;

public final class dc
{
  private static Context a;
  private static final String b = "ip_dial_no_use_number";

  private static int a(String paramString, int paramInt)
  {
    return t.b(a).getInt(paramString, paramInt);
  }

  private static String a(int paramInt, String paramString)
  {
    String str = a.getString(paramInt);
    return t.b(a).getString(str, paramString);
  }

  private static String a(String paramString1, String paramString2)
  {
    return t.b(a).getString(paramString1, paramString2);
  }

  public static void a()
  {
    a locala = a.a(a);
    SharedPreferences localSharedPreferences2;
    int j;
    label122: SharedPreferences localSharedPreferences1;
    int i;
    if (!locala.Y())
    {
      if (!k())
        b(2131427456, "不使用IP拨号");
      String str = a(2131427455, "不使用IP拨号");
      if (((TextUtils.isEmpty(str)) || ("不使用IP拨号".equals(str))) && (!k()))
        b(2131427456, "不使用IP拨号");
      if ("拨打所有电话时".equals(str))
      {
        localSharedPreferences2 = t.b(a);
        if ((!localSharedPreferences2.getBoolean("ip_zidong_dial_type", true)) || (!localSharedPreferences2.getBoolean("ip_zidong_dial_type", false)))
          break label180;
        j = 1;
        if (j == 0)
          break label186;
        b(2131427456, "拨打所有电话时");
      }
      if ("拨打长途时".equals(str))
      {
        localSharedPreferences1 = t.b(a);
        if ((!localSharedPreferences1.getBoolean("ip_zidong_dial_type", true)) || (!localSharedPreferences1.getBoolean("ip_zidong_dial_type", false)))
          break label219;
        i = 1;
        label164: if (i == 0)
          break label224;
        b(2131427456, "拨打长途时");
      }
    }
    while (true)
    {
      locala.Z();
      return;
      label180: j = 0;
      break;
      label186: if (localSharedPreferences2.getBoolean("ip_zidong_dial_type", true))
      {
        b(2131427456, "拨打所有电话时");
        break label122;
      }
      b(2131427456, "不使用IP拨号");
      break label122;
      label219: i = 0;
      break label164;
      label224: if (localSharedPreferences1.getBoolean("ip_zidong_dial_type", true))
        b(2131427456, "拨打长途时");
      else
        b(2131427456, "不使用IP拨号");
    }
  }

  public static void a(int paramInt)
  {
    a(2131427495, paramInt);
  }

  private static void a(int paramInt1, int paramInt2)
  {
    String str = a.getString(paramInt1);
    SharedPreferences.Editor localEditor = t.b(a).edit();
    localEditor.putInt(str, paramInt2);
    localEditor.commit();
  }

  public static void a(Context paramContext)
  {
    a = paramContext.getApplicationContext();
  }

  private static void a(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = t.b(a).edit();
    localEditor.putBoolean("ip_zidong_dial_type", paramBoolean);
    localEditor.commit();
  }

  public static boolean a(String paramString)
  {
    SharedPreferences.Editor localEditor = t.b(a).edit();
    localEditor.putString("ip_dial_no_use_number", paramString);
    localEditor.commit();
    return true;
  }

  public static String b(String paramString)
  {
    return a(2131427456, paramString);
  }

  public static void b(int paramInt)
  {
    a(2131427494, paramInt);
  }

  private static void b(int paramInt, String paramString)
  {
    String str = a.getString(paramInt);
    SharedPreferences.Editor localEditor = t.b(a).edit();
    localEditor.putString(str, paramString);
    localEditor.commit();
  }

  private static void b(String paramString, int paramInt)
  {
    SharedPreferences.Editor localEditor = t.b(a).edit();
    localEditor.putInt(paramString, paramInt);
    localEditor.commit();
  }

  private static void b(String paramString1, String paramString2)
  {
    SharedPreferences.Editor localEditor = t.b(a).edit();
    localEditor.putString(paramString1, paramString2);
    localEditor.commit();
  }

  public static boolean b()
  {
    a();
    if (!"不使用IP拨号".equals(a(2131427456, "不使用IP拨号")));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public static void c()
  {
    SharedPreferences localSharedPreferences = t.b(a);
    SharedPreferences.Editor localEditor = localSharedPreferences.edit();
    for (String str : new String[] { "ip_dial_type_value2", "ip_dial_no_use_number", "no_use_province_value", "ip_dial_header_value", "local_province_city_value" })
      if (localSharedPreferences.contains(str))
      {
        localEditor.remove(str);
        localEditor.commit();
      }
  }

  public static void c(int paramInt)
  {
    a(2131427497, paramInt);
  }

  public static void c(String paramString)
  {
    b(2131427456, paramString);
  }

  public static String d()
  {
    String str = t.b(a).getString("ip_dial_no_use_number", null);
    if (str == null)
      str = "";
    while (true)
    {
      return str;
      if (str.length() == 0)
        str = "";
    }
  }

  public static String d(String paramString)
  {
    return a(2131427492, paramString);
  }

  public static void d(int paramInt)
  {
    a(2131427499, paramInt);
  }

  private static int e(int paramInt)
  {
    String str = a.getString(paramInt);
    return t.b(a).getInt(str, 0);
  }

  public static void e(String paramString)
  {
    b(2131427492, paramString);
  }

  public static boolean e()
  {
    return t.b(a).getBoolean("ip_show_pop", true);
  }

  public static String f(String paramString)
  {
    return a(2131427496, paramString);
  }

  public static void f()
  {
    SharedPreferences.Editor localEditor = t.b(a).edit();
    localEditor.putBoolean("ip_show_pop", false);
    localEditor.commit();
  }

  public static int g()
  {
    return e(2131427495);
  }

  public static void g(String paramString)
  {
    b(2131427496, paramString);
  }

  public static int h()
  {
    return e(2131427494);
  }

  public static String h(String paramString)
  {
    return a(2131427498, paramString);
  }

  public static int i()
  {
    return e(2131427497);
  }

  public static void i(String paramString)
  {
    b(2131427498, paramString);
  }

  public static int j()
  {
    return e(2131427499);
  }

  public static void j(String paramString)
  {
    b(2131427462, paramString);
  }

  public static String k(String paramString)
  {
    return a(2131427462, paramString);
  }

  private static boolean k()
  {
    return t.b(a).getBoolean("ip_zidong_dial_type", false);
  }

  public static String l(String paramString)
  {
    return a(2131427465, paramString);
  }

  public static void m(String paramString)
  {
    b(2131427465, paramString);
  }

  private static String n(String paramString)
  {
    return a(2131427455, paramString);
  }

  private static void o(String paramString)
  {
    b(2131427455, paramString);
  }

  private static String p(String paramString)
  {
    return a(2131427493, paramString);
  }

  private static void q(String paramString)
  {
    b(2131427493, paramString);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.dc
 * JD-Core Version:    0.6.2
 */