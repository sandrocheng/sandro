package com.avast.android.mobilesecurity.app.home;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.avast.android.generic.ad;
import com.avast.android.generic.service.AvastService;
import com.avast.android.generic.util.al;
import com.avast.android.generic.util.m;
import com.avast.android.mobilesecurity.app.wizard.EulaWizardActivity;
import com.avast.android.mobilesecurity.app.wizard.ScanWizardActivity;
import com.avast.android.mobilesecurity.t;

public class StartActivity extends Activity
{
  private void a()
  {
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    getWindowManager().getDefaultDisplay().getMetrics(localDisplayMetrics);
    m.c("Desnsity: " + localDisplayMetrics.densityDpi);
    Configuration localConfiguration = getResources().getConfiguration();
    if ((0xF & localConfiguration.screenLayout) == 1)
      m.c("ScreenSize: SMALL");
    if ((0xF & localConfiguration.screenLayout) == 2)
      m.c("ScreenSize: NORMAL");
    if ((0xF & localConfiguration.screenLayout) == 3)
      m.c("ScreenSize: LARGE");
    if ((0xF & localConfiguration.screenLayout) == 4)
      m.c("ScreenSize: XLARGE");
  }

  public static void a(Context paramContext, Intent paramIntent)
  {
    if (!((t)ad.a(paramContext, t.class)).b("eulaDone", false))
      call(paramContext);
    while (true)
    {
      return;
      if (al.b(paramContext))
      {
        HomeActivity.call(paramContext, paramIntent);
      }
      else
      {
        if (!(paramContext instanceof Activity))
          paramIntent.setFlags(268435456);
        paramContext.startActivity(paramIntent);
      }
    }
  }

  public static void call(Context paramContext)
  {
    Intent localIntent = new Intent(paramContext, StartActivity.class);
    if (!(paramContext instanceof Activity))
      localIntent.setFlags(268435456);
    paramContext.startActivity(localIntent);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a();
    t localt = (t)ad.a(this, t.class);
    if (!AvastService.c(this))
    {
      AlertDialog.Builder localBuilder = new AlertDialog.Builder(al.d(this));
      localBuilder.setMessage(getString(2131492955));
      localBuilder.setPositiveButton(getString(2131492965), new o(this));
      localBuilder.show();
      localBuilder.setCancelable(false);
    }
    while (true)
    {
      return;
      if (paramBundle == null)
      {
        if (!localt.b("eulaDone", false))
        {
          Intent localIntent2 = new Intent(this, EulaWizardActivity.class);
          localIntent2.setFlags(67108864);
          startActivityForResult(localIntent2, 1);
          finish();
        }
        else if (!localt.b("scanDone", false))
        {
          ScanWizardActivity.call(this);
          finish();
        }
      }
      else
      {
        Intent localIntent1 = new Intent(this, HomeActivity.class);
        localIntent1.addFlags(67108864);
        startActivity(localIntent1);
        finish();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.home.StartActivity
 * JD-Core Version:    0.6.2
 */