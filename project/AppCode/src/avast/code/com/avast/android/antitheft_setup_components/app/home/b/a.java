package com.avast.android.antitheft_setup_components.app.home.b;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.support.v4.app.Fragment;
import com.avast.android.antitheft_setup_components.g;
import com.avast.android.generic.ui.b.d;
import java.util.Iterator;
import java.util.List;

public class a extends d
{
  public a()
  {
    super(g.v, g.f);
  }

  public static boolean a(Context paramContext)
  {
    Iterator localIterator = paramContext.getPackageManager().getInstalledApplications(0).iterator();
    ApplicationInfo localApplicationInfo;
    boolean bool;
    while (true)
      if (localIterator.hasNext())
      {
        localApplicationInfo = (ApplicationInfo)localIterator.next();
        if (localApplicationInfo.packageName != null)
          if (localApplicationInfo.packageName.equals("com.avast.android.antitheft"))
            bool = true;
      }
    while (true)
    {
      return bool;
      if (!localApplicationInfo.packageName.equals("com.avast.android.at_play"))
        break;
      bool = true;
      continue;
      bool = false;
    }
  }

  public String a()
  {
    return "Anti Theft already existing";
  }

  public boolean a(Context paramContext, Fragment paramFragment)
  {
    return false;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.antitheft_setup_components.app.home.b.a
 * JD-Core Version:    0.6.2
 */