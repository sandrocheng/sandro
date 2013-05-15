package com.avast.android.mobilesecurity.app.home.antitheft.uninstaller;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.actionbarsherlock.view.MenuItem;
import com.avast.android.generic.ui.BaseSinglePaneActivity;
import com.avast.android.generic.util.a;
import com.avast.android.mobilesecurity.Application;
import java.util.Iterator;
import java.util.List;

public class UninstallCheckActivity extends BaseSinglePaneActivity
{
  private UninstallCheckFragment a;

  public static void call(Context paramContext)
  {
    Iterator localIterator = paramContext.getPackageManager().getInstalledApplications(0).iterator();
    label120: label125: 
    while (true)
    {
      ApplicationInfo localApplicationInfo;
      if (localIterator.hasNext())
      {
        localApplicationInfo = (ApplicationInfo)localIterator.next();
        if (localApplicationInfo.packageName.equals("com.avast.android.antitheft"))
        {
          String str = localApplicationInfo.sourceDir;
          Application.b(str);
          Application.d(str.startsWith("/system/app"));
        }
      }
      else
      {
        if (!new q(paramContext, null).a(paramContext))
          break label120;
        paramContext.startActivity(new Intent(paramContext, UninstallCheckActivity.class));
      }
      while (true)
      {
        return;
        if (!localApplicationInfo.packageName.equals("com.avast.android.at_play"))
          break label125;
        Application.b(localApplicationInfo.sourceDir);
        Application.d(false);
        break;
        UninstallCheckFragment.a(paramContext);
      }
    }
  }

  protected Fragment d()
  {
    this.a = new UninstallCheckFragment();
    return this.a;
  }

  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default:
    case 16908332:
    }
    for (boolean bool = super.onOptionsItemSelected(paramMenuItem); ; bool = true)
      return bool;
  }

  protected void onPostCreate(Bundle paramBundle)
  {
    super.onPostCreate(paramBundle);
    e().a();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.home.antitheft.uninstaller.UninstallCheckActivity
 * JD-Core Version:    0.6.2
 */