package com.antivirus;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.text.TextUtils;
import com.avg.toolkit.f.a;
import java.util.HashMap;
import java.util.Locale;

public class m
{
  private static String a = null;
  private static final HashMap b = new HashMap();
  private static final HashMap c;

  static
  {
    b.put("English", "en");
    b.put("Hebrew", "iw");
    b.put("Spanish", "es");
    b.put("Japanese", "ja");
    b.put("French", "fr");
    b.put("Dutch", "nl");
    b.put("German", "de");
    b.put("Chinese Simplified", "zh");
    b.put("Chinese Traditional", "zh_TW");
    b.put("Russian", "ru");
    b.put("Korean", "ko");
    b.put("Italian", "it");
    b.put("Polish", "pl");
    b.put("Portuguese", "pt");
    b.put("Arabic", "ar");
    b.put("Hindi", "hi");
    b.put("Czech", "cs");
    c = new HashMap();
    c.put("en", "English");
    c.put("he", "Hebrew");
    c.put("iw", "Hebrew");
    c.put("es", "Spanish");
    c.put("jp", "Japanese");
    c.put("ja", "Japanese");
    c.put("fr", "French");
    c.put("nl", "Dutch");
    c.put("de", "German");
    c.put("cn", "Chinese Simplified");
    c.put("zh", "Chinese Simplified");
    c.put("zh_TW", "Chinese Traditional");
    c.put("ru", "Russian");
    c.put("ko", "Korean");
    c.put("it", "Italian");
    c.put("pl", "Polish");
    c.put("pt", "Portuguese");
    c.put("ar", "Arabic");
    c.put("hi", "Hindi");
    c.put("cs", "Czech");
  }

  @Deprecated
  public static String a()
  {
    return a;
  }

  public static String a(Context paramContext, int paramInt)
  {
    return paramContext.getString(paramInt);
  }

  public static void a(Context paramContext)
  {
    SharedPreferences localSharedPreferences = paramContext.getSharedPreferences("locale", 0);
    if (!TextUtils.isEmpty(localSharedPreferences.getString("langsetting", "")))
      a(paramContext, localSharedPreferences.getString("langsetting", "English"), localSharedPreferences);
    while (true)
    {
      return;
      String str = Locale.getDefault().getLanguage();
      if ((str != null) && (c.get(str.toLowerCase()) != null))
        a(paramContext, (String)c.get(str.toLowerCase()), localSharedPreferences);
      else
        a(paramContext, "English", localSharedPreferences);
    }
  }

  public static void a(Context paramContext, String paramString)
  {
    if ((paramString == null) || (b.get(paramString) == null) || (paramString.equals(a)));
    while (true)
    {
      return;
      a(paramContext, paramString, null);
      b(paramContext);
    }
  }

  public static void a(Context paramContext, String paramString, SharedPreferences paramSharedPreferences)
  {
    if ((paramString == null) || (paramContext == null));
    while (true)
    {
      return;
      if (paramSharedPreferences == null)
        paramSharedPreferences = paramContext.getSharedPreferences("locale", 0);
      if (paramSharedPreferences != null)
      {
        a = paramString;
        paramSharedPreferences.edit().putString("langsetting", a).commit();
      }
    }
  }

  public static void b(Context paramContext)
  {
    if (a == null)
      a(paramContext);
    String str;
    if (a != null)
    {
      str = (String)b.get(a);
      if (str == null)
      {
        a.a("localeId is null, searched for " + a);
        str = "en";
      }
      if (!str.equals("zh_TW"))
        break label113;
    }
    label113: for (Locale localLocale = Locale.TRADITIONAL_CHINESE; ; localLocale = new Locale(str))
    {
      Locale.setDefault(localLocale);
      Configuration localConfiguration = new Configuration(paramContext.getResources().getConfiguration());
      localConfiguration.locale = localLocale;
      paramContext.getResources().updateConfiguration(localConfiguration, paramContext.getResources().getDisplayMetrics());
      return;
    }
  }

  public static String[] b(Context paramContext, int paramInt)
  {
    return paramContext.getResources().getStringArray(paramInt);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.m
 * JD-Core Version:    0.6.2
 */