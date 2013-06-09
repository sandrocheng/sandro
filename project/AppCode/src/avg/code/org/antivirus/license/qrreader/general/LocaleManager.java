package org.antivirus.license.qrreader.general;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

public final class LocaleManager
{
  private static final String COUNTRY;
  private static final String DEFAULT_COUNTRY = "US";
  private static final String DEFAULT_LANGUAGE = "en";
  private static final String DEFAULT_TLD = "com";
  private static final Map GOOGLE_BOOK_SEARCH_COUNTRY_TLD;
  private static final Map GOOGLE_COUNTRY_TLD;
  private static final Map GOOGLE_PRODUCT_SEARCH_COUNTRY_TLD;
  private static final String LANGUAGE;
  private static final Collection TRANSLATED_HELP_ASSET_LANGUAGES;

  static
  {
    Locale localLocale = Locale.getDefault();
    String str1;
    if (localLocale == null)
    {
      str1 = "US";
      COUNTRY = str1;
      if (localLocale != null)
        break label706;
    }
    label706: for (String str2 = "en"; ; str2 = localLocale.getLanguage())
    {
      if (Locale.SIMPLIFIED_CHINESE.getLanguage().equals(str2))
        str2 = str2 + "-r" + COUNTRY;
      LANGUAGE = str2;
      HashMap localHashMap1 = new HashMap();
      GOOGLE_COUNTRY_TLD = localHashMap1;
      localHashMap1.put("AR", "com.ar");
      GOOGLE_COUNTRY_TLD.put("AU", "com.au");
      GOOGLE_COUNTRY_TLD.put("BR", "com.br");
      GOOGLE_COUNTRY_TLD.put("BG", "bg");
      GOOGLE_COUNTRY_TLD.put(Locale.CANADA.getCountry(), "ca");
      GOOGLE_COUNTRY_TLD.put(Locale.CHINA.getCountry(), "cn");
      GOOGLE_COUNTRY_TLD.put("CZ", "cz");
      GOOGLE_COUNTRY_TLD.put("DK", "dk");
      GOOGLE_COUNTRY_TLD.put("FI", "fi");
      GOOGLE_COUNTRY_TLD.put(Locale.FRANCE.getCountry(), "fr");
      GOOGLE_COUNTRY_TLD.put(Locale.GERMANY.getCountry(), "de");
      GOOGLE_COUNTRY_TLD.put("GR", "gr");
      GOOGLE_COUNTRY_TLD.put("HU", "hu");
      GOOGLE_COUNTRY_TLD.put("ID", "co.id");
      GOOGLE_COUNTRY_TLD.put("IL", "co.il");
      GOOGLE_COUNTRY_TLD.put(Locale.ITALY.getCountry(), "it");
      GOOGLE_COUNTRY_TLD.put(Locale.JAPAN.getCountry(), "co.jp");
      GOOGLE_COUNTRY_TLD.put(Locale.KOREA.getCountry(), "co.kr");
      GOOGLE_COUNTRY_TLD.put("NL", "nl");
      GOOGLE_COUNTRY_TLD.put("PL", "pl");
      GOOGLE_COUNTRY_TLD.put("PT", "pt");
      GOOGLE_COUNTRY_TLD.put("RU", "ru");
      GOOGLE_COUNTRY_TLD.put("SK", "sk");
      GOOGLE_COUNTRY_TLD.put("SI", "si");
      GOOGLE_COUNTRY_TLD.put("ES", "es");
      GOOGLE_COUNTRY_TLD.put("SE", "se");
      GOOGLE_COUNTRY_TLD.put(Locale.TAIWAN.getCountry(), "tw");
      GOOGLE_COUNTRY_TLD.put("TR", "com.tr");
      GOOGLE_COUNTRY_TLD.put(Locale.UK.getCountry(), "co.uk");
      GOOGLE_COUNTRY_TLD.put(Locale.US.getCountry(), "com");
      HashMap localHashMap2 = new HashMap();
      GOOGLE_PRODUCT_SEARCH_COUNTRY_TLD = localHashMap2;
      localHashMap2.put("AU", "com.au");
      GOOGLE_PRODUCT_SEARCH_COUNTRY_TLD.put(Locale.CHINA.getCountry(), "cn");
      GOOGLE_PRODUCT_SEARCH_COUNTRY_TLD.put(Locale.FRANCE.getCountry(), "fr");
      GOOGLE_PRODUCT_SEARCH_COUNTRY_TLD.put(Locale.GERMANY.getCountry(), "de");
      GOOGLE_PRODUCT_SEARCH_COUNTRY_TLD.put(Locale.ITALY.getCountry(), "it");
      GOOGLE_PRODUCT_SEARCH_COUNTRY_TLD.put(Locale.JAPAN.getCountry(), "co.jp");
      GOOGLE_PRODUCT_SEARCH_COUNTRY_TLD.put("NL", "nl");
      GOOGLE_PRODUCT_SEARCH_COUNTRY_TLD.put("ES", "es");
      GOOGLE_PRODUCT_SEARCH_COUNTRY_TLD.put(Locale.UK.getCountry(), "co.uk");
      GOOGLE_PRODUCT_SEARCH_COUNTRY_TLD.put(Locale.US.getCountry(), "com");
      GOOGLE_BOOK_SEARCH_COUNTRY_TLD = GOOGLE_COUNTRY_TLD;
      TRANSLATED_HELP_ASSET_LANGUAGES = Arrays.asList(new String[] { "en" });
      return;
      str1 = localLocale.getCountry();
      break;
    }
  }

  private static String doGetTLD(Map paramMap)
  {
    String str = (String)paramMap.get(COUNTRY);
    if (str == null)
      str = "com";
    return str;
  }

  private static String doGetTLD(Map paramMap, Context paramContext)
  {
    String str1 = PreferenceManager.getDefaultSharedPreferences(paramContext).getString("preferences_search_country", null);
    String str2;
    if ((str1 != null) && (str1.length() > 0) && (!"-".equals(str1)))
    {
      str2 = (String)paramMap.get(str1);
      if (str2 == null);
    }
    while (true)
    {
      return str2;
      str2 = (String)paramMap.get(COUNTRY);
      if (str2 == null)
        str2 = "com";
    }
  }

  public static String getBookSearchCountryTLD(Context paramContext)
  {
    return doGetTLD(GOOGLE_BOOK_SEARCH_COUNTRY_TLD, paramContext);
  }

  public static String getCountryTLD(Context paramContext)
  {
    return doGetTLD(GOOGLE_COUNTRY_TLD, paramContext);
  }

  public static String getProductSearchCountryTLD(Context paramContext)
  {
    return doGetTLD(GOOGLE_PRODUCT_SEARCH_COUNTRY_TLD, paramContext);
  }

  public static String getTranslatedAssetLanguage()
  {
    if (TRANSLATED_HELP_ASSET_LANGUAGES.contains(LANGUAGE));
    for (String str = LANGUAGE; ; str = "en")
      return str;
  }

  public static boolean isBookSearchUrl(String paramString)
  {
    if ((paramString.startsWith("http://google.com/books")) || (paramString.startsWith("http://books.google.")));
    for (boolean bool = true; ; bool = false)
      return bool;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.license.qrreader.general.LocaleManager
 * JD-Core Version:    0.6.2
 */