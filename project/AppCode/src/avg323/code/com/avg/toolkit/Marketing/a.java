package com.avg.toolkit.Marketing;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import android.text.TextUtils;
import com.avg.toolkit.a.b;
import com.avg.toolkit.e;
import com.avg.toolkit.f;
import com.avg.toolkit.i;
import java.util.List;

public class a
  implements e
{
  protected Context a;
  protected com.avg.toolkit.e.a b;

  public a(Context paramContext, com.avg.toolkit.e.a parama)
  {
    this.a = paramContext;
    this.b = parama;
  }

  public static void b(Context paramContext)
  {
    i.a(paramContext, 7000, 7004, null);
  }

  public void a(Bundle paramBundle)
  {
  }

  public void a(com.avg.toolkit.e.a parama)
  {
  }

  public void a(List paramList)
  {
  }

  public void a(boolean paramBoolean)
  {
    SharedPreferences localSharedPreferences = this.a.getApplicationContext().getSharedPreferences("av", 0);
    String str = localSharedPreferences.getString("install_ref", "");
    if (!str.equals(""))
    {
      Bundle localBundle = new Bundle();
      localBundle.putString("__SAD", str);
      f.a(this.a, 8000, b.b.a(), localBundle);
      com.avg.toolkit.c.a.b(this.a, str);
      localSharedPreferences.edit().putString("install_ref", "").commit();
    }
  }

  public int b()
  {
    return 7000;
  }

  public void b(Bundle paramBundle)
  {
    int i = -1;
    if (paramBundle != null);
    try
    {
      int j = paramBundle.getInt("__SAC2", -1);
      i = j;
      switch (i)
      {
      default:
        com.avg.toolkit.f.a.a();
        return;
      case 7001:
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        com.avg.toolkit.f.a.a(localException);
        continue;
        c(paramBundle);
      }
    }
  }

  public void b(com.avg.toolkit.e.a parama)
  {
  }

  protected void c(Bundle paramBundle)
  {
    String str = paramBundle.getString("__SAD");
    if (TextUtils.isEmpty(str));
    while (true)
    {
      return;
      SharedPreferences localSharedPreferences = this.a.getApplicationContext().getSharedPreferences("av", 0);
      if ((localSharedPreferences.getString("install_ref", "").equals("")) && (!localSharedPreferences.getBoolean("referrer_received", false)))
      {
        localSharedPreferences.edit().putString("install_ref", str).commit();
        localSharedPreferences.edit().putBoolean("referrer_received", true).commit();
      }
    }
  }

  public void onDestroy()
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.toolkit.Marketing.a
 * JD-Core Version:    0.6.2
 */