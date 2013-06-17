package com.avg.ui.license.qrreader.b;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import com.google.zxing.Result;
import com.google.zxing.client.result.ParsedResult;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.TimeZone;

public abstract class a
{
  private static final String a = a.class.getSimpleName();
  private static final DateFormat b = new SimpleDateFormat("yyyyMMdd", Locale.ENGLISH);
  private static final DateFormat c = new SimpleDateFormat("yyyyMMdd'T'HHmmss", Locale.ENGLISH);
  private static final String[] d = { "home", "work", "mobile" };
  private static final String[] e = { "home", "work", "mobile", "fax", "pager", "main" };
  private static final String[] f = { "home", "work" };
  private static final int[] g = { 1, 2, 4 };
  private static final int[] h = { 1, 3, 2, 4, 6, 12 };
  private static final int[] i = { 1, 2 };
  private final ParsedResult j;
  private final Activity k;
  private final Result l;
  private final String m;
  private final DialogInterface.OnClickListener n = new b(this);

  static
  {
    b.setTimeZone(TimeZone.getTimeZone("GMT"));
  }

  a(Activity paramActivity, ParsedResult paramParsedResult, Result paramResult)
  {
    this.j = paramParsedResult;
    this.k = paramActivity;
    this.l = paramResult;
    this.m = d();
  }

  private String d()
  {
    String str1 = PreferenceManager.getDefaultSharedPreferences(this.k).getString("preferences_custom_product_search", null);
    String str2;
    if (str1 != null)
    {
      int i1 = str1.trim().length();
      str2 = null;
      if (i1 != 0);
    }
    while (true)
    {
      return str2;
      str2 = str1;
    }
  }

  void a(Intent paramIntent)
  {
    if (paramIntent != null)
      paramIntent.addFlags(524288);
    try
    {
      this.k.startActivity(paramIntent);
      label19: return;
    }
    catch (ActivityNotFoundException localActivityNotFoundException)
    {
      break label19;
    }
  }

  public boolean a()
  {
    return false;
  }

  public CharSequence b()
  {
    return this.j.getDisplayResult().replace("\r", "");
  }

  public abstract int c();
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.ui.license.qrreader.b.a
 * JD-Core Version:    0.6.2
 */