package com.avast.android.antitheft_setup_components.app.home.b;

import android.content.Context;
import android.content.Intent;
import android.support.v4.app.Fragment;
import com.avast.android.antitheft_setup_components.g;
import com.avast.android.generic.ui.b.d;
import com.avast.android.generic.util.q;

public class b extends d
{
  public b()
  {
    super(g.S, g.Z);
  }

  public static boolean a(Context paramContext)
  {
    if (!com.avast.android.antitheft_setup_components.a.a.a(paramContext));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public String a()
  {
    return "No internet available";
  }

  public boolean a(Context paramContext, Fragment paramFragment)
  {
    try
    {
      paramFragment.startActivityForResult(new Intent("android.settings.WIRELESS_SETTINGS"), 100);
      return false;
    }
    catch (Exception localException1)
    {
      while (true)
        try
        {
          paramFragment.startActivityForResult(new Intent("android.settings.WIFI_SETTINGS"), 100);
        }
        catch (Exception localException2)
        {
          try
          {
            paramFragment.startActivityForResult(new Intent("android.settings.SETTINGS"), 100);
          }
          catch (Exception localException3)
          {
            int i = g.K;
            Object[] arrayOfObject = new Object[1];
            arrayOfObject[0] = q.a(paramContext, localException3);
            com.avast.android.generic.a.a(paramContext, paramContext.getString(i, arrayOfObject));
          }
        }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.antitheft_setup_components.app.home.b.b
 * JD-Core Version:    0.6.2
 */