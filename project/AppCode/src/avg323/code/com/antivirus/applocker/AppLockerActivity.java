package com.antivirus.applocker;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import com.antivirus.c;
import com.antivirus.m;
import com.antivirus.ui.privacy.PrivacyActivity;
import com.avg.ui.general.b.e;
import com.avg.ui.general.c.f;

public class AppLockerActivity extends com.antivirus.ui.a
  implements com.avg.ui.general.c.a
{
  private Fragment n = null;

  protected void a(View paramView)
  {
    if ((this.n instanceof g))
    {
      f localf = new f(this, paramView);
      ((g)this.n).a(localf);
      localf.a();
    }
  }

  public boolean a(MenuItem paramMenuItem)
  {
    closeOptionsMenu();
    if ((this.n instanceof g));
    for (boolean bool = ((g)this.n).a(paramMenuItem); ; bool = false)
      return bool;
  }

  protected void g()
  {
    if ((this.n instanceof g))
      ((g)this.n).a(true);
    finish();
  }

  public void h()
  {
    this.s = new String[2];
    this.s[0] = m.a(this, 2131296539);
    if (!c.q())
      this.s[1] = m.a(this, 2131296540);
    while (true)
    {
      int[] arrayOfInt = { 13, 14 };
      AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
      localBuilder.setSingleChoiceItems(new e(this, 0, false, this.s, false), 0, new d(this, arrayOfInt));
      AlertDialog localAlertDialog = localBuilder.create();
      localAlertDialog.setCanceledOnTouchOutside(false);
      localAlertDialog.show();
      return;
      this.s[1] = m.a(this, 2131296541);
    }
  }

  public void i()
  {
    finish();
    Intent localIntent = new Intent(this, PrivacyActivity.class);
    localIntent.setFlags(608305152);
    startActivity(localIntent);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903080);
    a(true, 2130837604, 2130837603, m.a(this, 2131296528), true, 2131230769);
    this.n = new g();
    a(this.n, 2131230929, "AppLockerFragment");
  }

  public void onDestroy()
  {
    super.onDestroy();
  }

  public boolean onMenuItemSelected(int paramInt, MenuItem paramMenuItem)
  {
    if ((this.n instanceof g));
    for (boolean bool = ((g)this.n).a(paramMenuItem); ; bool = true)
      return bool;
  }

  public boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    paramMenu.clear();
    if ((this.n instanceof g))
      ((g)this.n).a(paramMenu);
    while (true)
    {
      return super.onCreateOptionsMenu(paramMenu);
      a(paramMenu);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.applocker.AppLockerActivity
 * JD-Core Version:    0.6.2
 */