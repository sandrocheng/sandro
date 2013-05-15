package com.avast.android.mobilesecurity.app.locking;

import android.app.ActivityManager;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import android.os.Handler;
import com.avast.android.generic.ui.BaseActivity;
import com.avast.android.generic.util.m;
import com.avast.android.mobilesecurity.app.globalactivitylog.u;
import com.avast.android.mobilesecurity.app.globalactivitylog.y;
import com.avast.android.mobilesecurity.app.locking.core.App;
import com.avast.android.mobilesecurity.app.locking.core.b;
import com.avast.android.mobilesecurity.app.locking.core.h;

public abstract class BlockCommonActivity extends BaseActivity
{
  protected App a;
  protected Handler b = new Handler();
  protected b c;

  protected abstract void a();

  protected void c()
  {
    Intent localIntent = new Intent("android.intent.action.MAIN");
    localIntent.addCategory("android.intent.category.HOME");
    startActivity(localIntent);
  }

  protected void d()
  {
    h.b(this.a);
    if (this.a.l)
      this.c.a(this.a, this);
    PackageManager localPackageManager = getPackageManager();
    try
    {
      ApplicationInfo localApplicationInfo = localPackageManager.getApplicationInfo(this.a.e, 0);
      u.a(this).a(y.o, null, (String)localApplicationInfo.loadLabel(localPackageManager), this.a.e, null, null, null);
      finish();
      return;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      while (true)
        m.d("BlockCommonActivity", "Can't find app name.");
    }
  }

  public void onBackPressed()
  {
    c();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a(true);
    this.c = new b((ActivityManager)getSystemService("activity"), this.b);
    this.a = ((App)getIntent().getExtras().getParcelable("app"));
    a();
    if (this.a.l)
      this.c.a(this.a.e);
  }

  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    App localApp = (App)paramIntent.getExtras().getParcelable("app");
    if (!this.a.e.equals(localApp.e))
      this.a = localApp;
    if (this.a.l)
      this.c.a(this.a.e);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.locking.BlockCommonActivity
 * JD-Core Version:    0.6.2
 */