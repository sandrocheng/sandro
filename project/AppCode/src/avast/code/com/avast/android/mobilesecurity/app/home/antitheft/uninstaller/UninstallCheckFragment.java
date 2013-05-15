package com.avast.android.mobilesecurity.app.home.antitheft.uninstaller;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.avast.android.generic.ui.CheckerFragment;
import com.avast.android.generic.util.z;
import com.avast.android.mobilesecurity.Application;

public class UninstallCheckFragment extends CheckerFragment
{
  public static void a(Context paramContext)
  {
    String str;
    if (!Application.l())
    {
      str = z.b(paramContext);
      if (str != null);
    }
    while (true)
    {
      return;
      Intent localIntent = new Intent();
      localIntent.setAction("android.intent.action.DELETE");
      localIntent.setComponent(new ComponentName("com.android.packageinstaller", "com.android.packageinstaller.UninstallerActivity"));
      localIntent.setData(Uri.parse(str));
      paramContext.startActivity(localIntent);
      continue;
      RootMethodActivity.call(paramContext);
    }
  }

  public void a()
  {
    String str;
    if (!Application.l())
    {
      com.avast.android.generic.util.a.a(this);
      str = z.b(getActivity());
      if (str != null);
    }
    while (true)
    {
      return;
      Intent localIntent = new Intent();
      localIntent.setAction("android.intent.action.DELETE");
      localIntent.setComponent(new ComponentName("com.android.packageinstaller", "com.android.packageinstaller.UninstallerActivity"));
      localIntent.setData(Uri.parse(str));
      startActivity(localIntent);
      continue;
      com.avast.android.generic.util.a.a(this);
      RootMethodActivity.call(getActivity());
    }
  }

  public com.avast.android.generic.ui.b.a b()
  {
    return new q(getActivity(), this);
  }

  public int c()
  {
    return 2131493327;
  }

  public int d()
  {
    return 2131493854;
  }

  public int e()
  {
    return 2131493856;
  }

  public String f()
  {
    return "/ms/uninstallIssues";
  }

  public String g()
  {
    return "ms-atUninstall";
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.home.antitheft.uninstaller.UninstallCheckFragment
 * JD-Core Version:    0.6.2
 */