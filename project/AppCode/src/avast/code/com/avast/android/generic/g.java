package com.avast.android.generic;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.view.Window;
import com.avast.android.generic.notification.j;
import com.avast.android.generic.util.m;
import java.util.Locale;

public class g
{
  private static String a = "";

  public static String a(Context paramContext)
  {
    String str = c(paramContext);
    if (!b(paramContext))
    {
      b(paramContext, str);
      j localj = (j)ad.a(paramContext, j.class);
      if (localj != null)
        localj.b();
    }
    return str;
  }

  public static void a(Context paramContext, String paramString)
  {
    String str = c(paramContext);
    if ((!str.equals(paramString)) && ((str.length() > 0) || (a.length() > 0)))
    {
      if ((paramContext instanceof Activity))
      {
        Activity localActivity = (Activity)paramContext;
        Intent localIntent = localActivity.getIntent();
        localIntent.addFlags(65536);
        localActivity.getWindow().setWindowAnimations(0);
        localActivity.finish();
        localActivity.startActivity(localIntent);
      }
    }
    else
      return;
    throw new IllegalArgumentException("Context must be an Activity!");
  }

  public static void b(Context paramContext, String paramString)
  {
    m.b("Switching language: " + paramString);
    if (("".equals(a)) && (paramString.length() > 0))
      a = Locale.getDefault().getLanguage();
    if (("".equals(a)) && ("".equals(paramString)));
    while (true)
    {
      return;
      if ((a.length() > 0) && ("".equals(paramString)))
      {
        paramString = a;
        a = "";
      }
      Locale localLocale = new Locale(paramString);
      if (paramString.contains("-"))
      {
        String[] arrayOfString = paramString.split("-");
        if (arrayOfString.length > 1)
        {
          if (arrayOfString[1].startsWith("r"))
            arrayOfString[1] = arrayOfString[1].replaceFirst("r", "");
          localLocale = new Locale(arrayOfString[0], arrayOfString[1]);
        }
      }
      Locale.setDefault(localLocale);
      Configuration localConfiguration = new Configuration();
      localConfiguration.locale = localLocale;
      paramContext.getResources().updateConfiguration(localConfiguration, null);
    }
  }

  private static boolean b(Context paramContext)
  {
    return c(paramContext).equals(Locale.getDefault().getLanguage());
  }

  private static String c(Context paramContext)
  {
    return ((ae)ad.a(paramContext, ae.class)).q();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.g
 * JD-Core Version:    0.6.2
 */