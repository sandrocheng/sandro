package com.avast.android.antitheft_setup_components.app.home;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.support.v4.app.FragmentActivity;
import com.avast.android.antitheft_setup_components.g;
import com.avast.android.generic.Application;
import com.avast.android.generic.ui.CheckerFragment;

public class SetupCheckFragment extends CheckerFragment
{
  public static void a(Context paramContext)
  {
    if (Application.h())
    {
      ComponentName localComponentName = new ComponentName(paramContext.getPackageName(), paramContext.getPackageName() + ".app.home.EulaWizardActivity");
      Intent localIntent = new Intent();
      localIntent.setComponent(localComponentName);
      paramContext.startActivity(localIntent);
    }
    while (true)
    {
      return;
      if (Application.d())
        paramContext.startActivity(new Intent(paramContext, DownloadWizardActivity.class));
      else
        paramContext.startActivity(new Intent(paramContext, RootWizardActivity.class));
    }
  }

  public void a()
  {
    a("root method, update-zip, success", "finished", 0);
    if (Application.h())
    {
      ComponentName localComponentName = new ComponentName(getActivity().getPackageName(), getActivity().getPackageName() + ".app.home.EulaWizardActivity");
      Intent localIntent = new Intent();
      localIntent.setComponent(localComponentName);
      getActivity().startActivityForResult(localIntent, 2);
      return;
    }
    if (Application.d())
      getActivity().startActivity(new Intent(getActivity(), DownloadWizardActivity.class));
    while (true)
    {
      com.avast.android.generic.util.a.a(this);
      break;
      getActivity().startActivity(new Intent(getActivity(), RootWizardActivity.class));
    }
  }

  public com.avast.android.generic.ui.b.a b()
  {
    return new ai(getActivity(), this);
  }

  public int c()
  {
    if (!Application.h());
    for (int i = g.m; ; i = g.b)
      return i;
  }

  public int d()
  {
    return g.D;
  }

  public int e()
  {
    return g.d;
  }

  public String f()
  {
    return "/ms/antiTheftSetup/problems";
  }

  public String g()
  {
    return "ms-atSetup";
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.antitheft_setup_components.app.home.SetupCheckFragment
 * JD-Core Version:    0.6.2
 */