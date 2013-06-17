package com.antivirus.ui.antitheft;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.ComponentName;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.IBinder;
import android.support.v4.app.o;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import com.antivirus.m;
import com.avg.toolkit.ads.WebViewAdsManager;
import com.avg.ui.general.b.e;
import com.avg.ui.general.c.f;

public class AntiTheftActivity extends com.antivirus.ui.a
  implements com.avg.ui.general.c.a
{
  private WebViewAdsManager n;

  protected void a(ComponentName paramComponentName, IBinder paramIBinder)
  {
    a(this.n, "antitheft");
  }

  protected void a(View paramView)
  {
    b localb = (b)f().a(2131230929);
    f localf = new f(this, paramView);
    localb.a(localf);
    localf.a();
  }

  public boolean a(MenuItem paramMenuItem)
  {
    return ((b)f().a(2131230929)).e(paramMenuItem);
  }

  protected void b(int paramInt)
  {
    super.b(paramInt);
    b localb = (b)f().a(2131230929);
    if (localb != null)
      localb.b(paramInt);
  }

  public void h()
  {
    String[] arrayOfString = new String[1];
    arrayOfString[0] = getString(2131296728);
    int[] arrayOfInt = { 17 };
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
    localBuilder.setSingleChoiceItems(new e(this, 0, false, arrayOfString, false), 0, new a(this, arrayOfInt));
    AlertDialog localAlertDialog = localBuilder.create();
    localAlertDialog.setCanceledOnTouchOutside(false);
    localAlertDialog.show();
  }

  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    this.n.a(this, paramConfiguration);
    super.onConfigurationChanged(paramConfiguration);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903080);
    a(true, 2130837522, 2130837525, m.a(this, 2131296489), true);
    if (paramBundle == null)
      a(new b(), 2131230929, "AntiTheftFragment");
    this.n = ((WebViewAdsManager)findViewById(2131230911));
    p();
  }

  public void onDestroy()
  {
    if (this.n != null)
      this.n.a();
    q();
    super.onDestroy();
  }

  public boolean onMenuItemSelected(int paramInt, MenuItem paramMenuItem)
  {
    b localb = (b)f().a(2131230929);
    if (localb != null);
    for (boolean bool = localb.e(paramMenuItem); ; bool = false)
      return bool;
  }

  public boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    paramMenu.clear();
    b localb = (b)f().a(2131230929);
    if (localb != null)
      localb.a(paramMenu);
    return super.onCreateOptionsMenu(paramMenu);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.antitheft.AntiTheftActivity
 * JD-Core Version:    0.6.2
 */