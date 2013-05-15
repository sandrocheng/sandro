package com.avast.android.antitheft_setup_components.a;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build.VERSION;
import com.avast.android.generic.internet.b.c;
import com.avast.android.generic.util.af;
import com.avast.android.generic.util.p;
import com.avast.android.generic.util.t;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Locale;

public class a
{
  private static String a(Context paramContext, String paramString1, String paramString2)
  {
    int i = com.avast.android.generic.f.b.a.d(paramContext);
    String str1 = paramString2 + "/";
    String str2 = str1 + paramString1 + "?" + "os=android&f=1&avast=1&product=ta&mode=mobile";
    if (i > 0)
      str2 = str2 + "&cc=" + String.valueOf(i);
    Locale localLocale = Locale.getDefault();
    String str3 = str2 + "&l=" + localLocale.getLanguage();
    String str4 = com.avast.android.generic.f.b.a.f(paramContext);
    Object localObject = str3 + "&i=" + str4;
    String str5 = com.avast.android.generic.f.b.a.a(paramContext);
    if ((str5 != null) && (!str5.equals("")));
    try
    {
      String str6 = p.a(str5, true, true);
      String str7 = (String)localObject + "&ok=" + str6;
      localObject = str7;
      return (String)localObject + "&ab=" + String.valueOf(Build.VERSION.SDK_INT);
    }
    catch (Exception localException)
    {
      while (true)
        t.a("AvastAntiTheft", "Can not encode operator key", localException);
    }
  }

  public static String a(Context paramContext, String paramString, boolean paramBoolean)
  {
    String str1 = a(b(paramContext, "provide.php"), "t", p.a(paramString, true, true));
    if (paramBoolean);
    for (String str2 = "1"; ; str2 = "0")
      return a(str1, "btn", str2);
  }

  private static String a(String paramString1, String paramString2, String paramString3)
  {
    return paramString1 + "&" + paramString2 + "=" + paramString3;
  }

  public static HttpURLConnection a(Context paramContext, String paramString)
  {
    HttpURLConnection localHttpURLConnection = com.avast.android.generic.internet.b.a(new URL(paramString));
    int i;
    try
    {
      localHttpURLConnection.setAllowUserInteraction(false);
      localHttpURLConnection.setInstanceFollowRedirects(true);
      localHttpURLConnection.setRequestMethod("GET");
      localHttpURLConnection.setConnectTimeout(50000);
      localHttpURLConnection.setReadTimeout(150000);
      try
      {
        localHttpURLConnection.connect();
        i = localHttpURLConnection.getResponseCode();
        if (i == 200)
          return localHttpURLConnection;
      }
      catch (Exception localException2)
      {
        throw new com.avast.android.generic.internet.b.b(localException2.getMessage());
      }
    }
    catch (Exception localException1)
    {
      af.a(new HttpURLConnection[] { localHttpURLConnection });
      throw localException1;
    }
    String str = localHttpURLConnection.getResponseMessage();
    if (str == null)
      throw new c(i);
    throw new com.avast.android.generic.internet.b.b(str);
  }

  public static boolean a(Context paramContext)
  {
    NetworkInfo localNetworkInfo = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
    if ((localNetworkInfo == null) || (!localNetworkInfo.isConnected()));
    for (boolean bool = false; ; bool = true)
      return bool;
  }

  private static String b(Context paramContext, String paramString)
  {
    return a(paramContext, paramString, "https://ta-cdn.avast.com");
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.antitheft_setup_components.a.a
 * JD-Core Version:    0.6.2
 */