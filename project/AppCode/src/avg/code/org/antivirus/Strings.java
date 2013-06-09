package org.antivirus;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Locale;
import org.antivirus.core.Logger;

public class Strings
{
  public static final String APPLICATION_DEFAULT_LANG = "English";
  public static final String ARABIC = "Arabic";
  public static final String CHINESE = "Chinese Simplified";
  public static final String CHINESE_TRADITIONAL = "Chinese Traditional";
  public static final String CZECH = "Czech";
  public static final String DUTCH = "Dutch";
  public static final String ENGLISH = "English";
  public static final String FRENCH = "French";
  public static final String GERMAN = "German";
  public static final String HEBREW = "Hebrew";
  public static final String ITALIAN = "Italian";
  public static final String JAPANESE = "Japanese";
  public static final String KOREAN = "Korean";
  public static final String LANGSETTING = "langsetting";
  public static final boolean OVERRIDE_DEFAULT_LANG = false;
  public static final String PLACEHOLDER_APPNAME = "[appname]";
  public static final String PLACEHOLDER_CATEGORY = "[category]";
  public static final String PLACEHOLDER_DATE1 = "[date1]";
  public static final String PLACEHOLDER_DATE2 = "[date2]";
  public static final String PLACEHOLDER_NUMBER = "[number]";
  public static final String PLACEHOLDER_PWD = "[password]";
  public static final String PLACEHOLDER_TOTAL = "[total]";
  public static final String PLACEHOLDER_URL = "[url]";
  public static final String PLACEHOLDER_USED = "[used]";
  public static final String POLISH = "Polish";
  public static final String PORTUGUESE = "Portuguese";
  public static final String RUSSIAN = "Russian";
  public static final String SPANISH = "Spanish";
  private static Context a = null;
  private static String b = null;
  private static final HashMap c;
  private static final HashMap d;

  static
  {
    HashMap localHashMap1 = new HashMap();
    c = localHashMap1;
    localHashMap1.put("English", "en");
    c.put("Hebrew", "iw");
    c.put("Spanish", "es");
    c.put("Japanese", "ja");
    c.put("French", "fr");
    c.put("Dutch", "nl");
    c.put("German", "de");
    c.put("Chinese Simplified", "zh");
    c.put("Chinese Traditional", "zh_TW");
    c.put("Russian", "ru");
    c.put("Korean", "ko");
    c.put("Italian", "it");
    c.put("Polish", "pl");
    c.put("Portuguese", "pt");
    c.put("Arabic", "ar");
    c.put("Czech", "cs");
    HashMap localHashMap2 = new HashMap();
    d = localHashMap2;
    localHashMap2.put("en", "English");
    d.put("he", "Hebrew");
    d.put("iw", "Hebrew");
    d.put("es", "Spanish");
    d.put("jp", "Japanese");
    d.put("ja", "Japanese");
    d.put("fr", "French");
    d.put("nl", "Dutch");
    d.put("de", "German");
    d.put("cn", "Chinese Simplified");
    d.put("zh", "Chinese Simplified");
    d.put("zh_TW", "Chinese Traditional");
    d.put("ru", "Russian");
    d.put("ko", "Korean");
    d.put("it", "Italian");
    d.put("pl", "Polish");
    d.put("pt", "Portuguese");
    d.put("ar", "Arabic");
    d.put("cs", "Czech");
  }

  private static void a(Context paramContext)
  {
    SharedPreferences localSharedPreferences = paramContext.getSharedPreferences("locale", 0);
    if (!TextUtils.isEmpty(localSharedPreferences.getString("langsetting", "")))
      setLanguage(paramContext, localSharedPreferences.getString("langsetting", "English"), localSharedPreferences);
    while (true)
    {
      return;
      String str = Locale.getDefault().getLanguage();
      if ((str != null) && (d.get(str.toLowerCase()) != null))
        setLanguage(paramContext, (String)d.get(str.toLowerCase()), localSharedPreferences);
      else
        setLanguage(paramContext, "English", localSharedPreferences);
    }
  }

  private static boolean a()
  {
    boolean bool = true;
    if (a != null);
    while (true)
    {
      return bool;
      try
      {
        a = AvApplication.getInstance();
        if (a != null)
          a(a);
        if (a != null)
          continue;
        bool = false;
      }
      catch (Exception localException)
      {
        while (true)
          Logger.log(localException);
      }
    }
  }

  private static boolean a(char paramChar)
  {
    if (((paramChar >= '0') && (paramChar <= '9')) || ('-' == paramChar) || (':' == paramChar));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public static String getLanguage()
  {
    return b;
  }

  public static String getLocale()
  {
    String str = (String)c.get(b);
    if (TextUtils.isEmpty(str))
      str = (String)c.get("English");
    return str;
  }

  // ERROR //
  public static String getString(int paramInt)
  {
    // Byte code:
    //   0: ldc 219
    //   2: astore_1
    //   3: invokestatic 221	org/antivirus/Strings:a	()Z
    //   6: ifeq +355 -> 361
    //   9: getstatic 97	org/antivirus/Strings:a	Landroid/content/Context;
    //   12: iload_0
    //   13: invokevirtual 223	android/content/Context:getString	(I)Ljava/lang/String;
    //   16: astore_3
    //   17: aload_3
    //   18: ifnull +338 -> 356
    //   21: aload_3
    //   22: invokevirtual 227	java/lang/String:length	()I
    //   25: ifle +331 -> 356
    //   28: aload_3
    //   29: iconst_0
    //   30: invokevirtual 231	java/lang/String:charAt	(I)C
    //   33: bipush 126
    //   35: if_icmpne +321 -> 356
    //   38: aload_3
    //   39: ldc 233
    //   41: ldc 235
    //   43: invokevirtual 238	java/lang/String:replaceFirst	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   46: astore 14
    //   48: aload 14
    //   50: astore_1
    //   51: getstatic 97	org/antivirus/Strings:a	Landroid/content/Context;
    //   54: invokevirtual 242	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   57: astore 4
    //   59: aload 4
    //   61: ifnonnull +11 -> 72
    //   64: ldc 244
    //   66: invokestatic 248	org/antivirus/core/Logger:error	(Ljava/lang/String;)V
    //   69: goto +292 -> 361
    //   72: aload 4
    //   74: invokevirtual 254	android/content/res/Resources:getConfiguration	()Landroid/content/res/Configuration;
    //   77: astore 5
    //   79: aload 5
    //   81: ifnonnull +20 -> 101
    //   84: ldc_w 256
    //   87: invokestatic 248	org/antivirus/core/Logger:error	(Ljava/lang/String;)V
    //   90: goto +271 -> 361
    //   93: astore_2
    //   94: aload_2
    //   95: invokestatic 214	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   98: goto +263 -> 361
    //   101: aload 5
    //   103: getfield 261	android/content/res/Configuration:locale	Ljava/util/Locale;
    //   106: astore 6
    //   108: aload 6
    //   110: ifnonnull +12 -> 122
    //   113: ldc_w 263
    //   116: invokestatic 248	org/antivirus/core/Logger:error	(Ljava/lang/String;)V
    //   119: goto +242 -> 361
    //   122: aload 6
    //   124: invokevirtual 188	java/util/Locale:getLanguage	()Ljava/lang/String;
    //   127: astore 7
    //   129: invokestatic 265	org/antivirus/Strings:getLocale	()Ljava/lang/String;
    //   132: astore 8
    //   134: aload 8
    //   136: ifnull +225 -> 361
    //   139: aload 7
    //   141: ifnull +220 -> 361
    //   144: getstatic 144	org/antivirus/Strings:d	Ljava/util/HashMap;
    //   147: aload 8
    //   149: invokevirtual 197	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   152: ifnull +209 -> 361
    //   155: getstatic 99	org/antivirus/Strings:b	Ljava/lang/String;
    //   158: getstatic 144	org/antivirus/Strings:d	Ljava/util/HashMap;
    //   161: aload 7
    //   163: invokevirtual 193	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   166: invokevirtual 197	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   169: invokevirtual 269	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   172: ifne +189 -> 361
    //   175: aload 8
    //   177: ldc 128
    //   179: invokevirtual 269	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   182: ifeq +18 -> 200
    //   185: aload 6
    //   187: getstatic 272	java/util/Locale:TRADITIONAL_CHINESE	Ljava/util/Locale;
    //   190: invokevirtual 273	java/util/Locale:equals	(Ljava/lang/Object;)Z
    //   193: istore 12
    //   195: iload 12
    //   197: ifne +164 -> 361
    //   200: new 258	android/content/res/Configuration
    //   203: dup
    //   204: getstatic 97	org/antivirus/Strings:a	Landroid/content/Context;
    //   207: invokevirtual 242	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   210: invokevirtual 254	android/content/res/Resources:getConfiguration	()Landroid/content/res/Configuration;
    //   213: invokespecial 276	android/content/res/Configuration:<init>	(Landroid/content/res/Configuration;)V
    //   216: astore 9
    //   218: aload 8
    //   220: ldc 128
    //   222: invokevirtual 269	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   225: ifeq +82 -> 307
    //   228: aload 9
    //   230: getstatic 272	java/util/Locale:TRADITIONAL_CHINESE	Ljava/util/Locale;
    //   233: putfield 261	android/content/res/Configuration:locale	Ljava/util/Locale;
    //   236: getstatic 272	java/util/Locale:TRADITIONAL_CHINESE	Ljava/util/Locale;
    //   239: invokestatic 280	java/util/Locale:setDefault	(Ljava/util/Locale;)V
    //   242: getstatic 97	org/antivirus/Strings:a	Landroid/content/Context;
    //   245: invokevirtual 242	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   248: astore 11
    //   250: aload 11
    //   252: ifnull +22 -> 274
    //   255: aload 11
    //   257: aload 9
    //   259: aload 11
    //   261: invokevirtual 284	android/content/res/Resources:getDisplayMetrics	()Landroid/util/DisplayMetrics;
    //   264: invokevirtual 288	android/content/res/Resources:updateConfiguration	(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
    //   267: aload 11
    //   269: iload_0
    //   270: invokevirtual 289	android/content/res/Resources:getString	(I)Ljava/lang/String;
    //   273: astore_1
    //   274: aload_1
    //   275: ifnull +86 -> 361
    //   278: aload_1
    //   279: invokevirtual 227	java/lang/String:length	()I
    //   282: ifle +79 -> 361
    //   285: aload_1
    //   286: iconst_0
    //   287: invokevirtual 231	java/lang/String:charAt	(I)C
    //   290: bipush 126
    //   292: if_icmpne +69 -> 361
    //   295: aload_1
    //   296: ldc 233
    //   298: ldc 235
    //   300: invokevirtual 238	java/lang/String:replaceFirst	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   303: astore_1
    //   304: goto +57 -> 361
    //   307: aload 9
    //   309: new 180	java/util/Locale
    //   312: dup
    //   313: aload 8
    //   315: invokespecial 291	java/util/Locale:<init>	(Ljava/lang/String;)V
    //   318: putfield 261	android/content/res/Configuration:locale	Ljava/util/Locale;
    //   321: new 180	java/util/Locale
    //   324: dup
    //   325: aload 8
    //   327: invokespecial 291	java/util/Locale:<init>	(Ljava/lang/String;)V
    //   330: invokestatic 280	java/util/Locale:setDefault	(Ljava/util/Locale;)V
    //   333: goto -91 -> 242
    //   336: astore 10
    //   338: aload 10
    //   340: invokestatic 214	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   343: goto +18 -> 361
    //   346: astore 13
    //   348: aload_3
    //   349: astore_1
    //   350: aload 13
    //   352: astore_2
    //   353: goto -259 -> 94
    //   356: aload_3
    //   357: astore_1
    //   358: goto -307 -> 51
    //   361: aload_1
    //   362: areturn
    //
    // Exception table:
    //   from	to	target	type
    //   3	17	93	java/lang/Exception
    //   51	90	93	java/lang/Exception
    //   101	195	93	java/lang/Exception
    //   338	343	93	java/lang/Exception
    //   200	333	336	java/lang/Exception
    //   21	48	346	java/lang/Exception
  }

  public static String[] getStringArray(int paramInt)
  {
    Object localObject = { "empty" };
    try
    {
      if (a())
      {
        Resources localResources = a.getResources();
        if (localResources != null)
        {
          String[] arrayOfString = localResources.getStringArray(paramInt);
          localObject = arrayOfString;
        }
      }
      return localObject;
    }
    catch (Exception localException)
    {
      while (true)
        Logger.log(localException);
    }
  }

  public static String reverseDigits(String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int i = 0;
    if (i < paramString.length())
    {
      char c1 = paramString.charAt(i);
      if (a(c1))
      {
        int j = localStringBuilder.length();
        int k = i;
        char c2 = c1;
        while ((k < paramString.length()) && (a(c2)))
        {
          localStringBuilder.insert(j, c2);
          k++;
          if (k < paramString.length())
            c2 = paramString.charAt(k);
        }
        i = k - 1;
      }
      while (true)
      {
        i++;
        break;
        localStringBuilder.append(c1);
      }
    }
    return localStringBuilder.toString();
  }

  public static void setLangLocale()
  {
    String str;
    if (a())
    {
      if (b == null)
        a(a);
      if (b != null)
      {
        str = (String)c.get(b);
        if (str == null)
        {
          Logger.error("localeId is null, searched for " + b);
          str = "en";
        }
        if (!str.equals("zh_TW"))
          break label125;
      }
    }
    label125: for (Locale localLocale = Locale.TRADITIONAL_CHINESE; ; localLocale = new Locale(str))
    {
      Locale.setDefault(localLocale);
      Configuration localConfiguration = new Configuration(a.getResources().getConfiguration());
      localConfiguration.locale = localLocale;
      a.getResources().updateConfiguration(localConfiguration, a.getResources().getDisplayMetrics());
      return;
    }
  }

  public static void setLanguage(Context paramContext, String paramString, SharedPreferences paramSharedPreferences)
  {
    if ((paramString == null) || (paramContext == null));
    while (true)
    {
      return;
      if (paramSharedPreferences == null)
        paramSharedPreferences = paramContext.getSharedPreferences("locale", 0);
      if (paramSharedPreferences != null)
      {
        b = paramString;
        paramSharedPreferences.edit().putString("langsetting", b).commit();
      }
    }
  }

  public static void updateTo2_9(String paramString)
  {
    if ((paramString == null) || (c.get(paramString) == null) || (paramString.equals(b)));
    while (true)
    {
      return;
      if (a())
        setLanguage(a, paramString, null);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.Strings
 * JD-Core Version:    0.6.2
 */