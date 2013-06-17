package com.avg.tuneup.battery;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.o;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import com.avg.a.d;
import com.avg.tuneup.j;

public class BatteryStateActivity extends com.avg.tuneup.g
  implements com.avg.ui.general.c.a
{
  protected void a(View paramView)
  {
    r localr = (r)f().a(com.avg.a.e.middle_part);
    com.avg.ui.general.c.f localf = new com.avg.ui.general.c.f(this, paramView);
    localr.a(localf);
    localf.a();
  }

  public boolean a(MenuItem paramMenuItem)
  {
    return ((r)f().a(com.avg.a.e.middle_part)).e(paramMenuItem);
  }

  protected void b(int paramInt)
  {
  }

  public void h()
  {
    String[] arrayOfString = new String[2];
    arrayOfString[0] = getString(com.avg.a.g.battery_usage);
    arrayOfString[1] = getString(com.avg.a.g.battery_save_settings);
    int[] arrayOfInt = { 7, 8 };
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
    localBuilder.setSingleChoiceItems(new com.avg.ui.general.b.e(this, 0, false, arrayOfString, false), 0, new q(this, arrayOfInt));
    AlertDialog localAlertDialog = localBuilder.create();
    localAlertDialog.setCanceledOnTouchOutside(false);
    localAlertDialog.show();
    com.avg.toolkit.c.a.a(this, "battery_consumption", "menu_opened", null, 0);
  }

  public void i()
  {
    finish();
    try
    {
      Intent localIntent = new Intent(this, Class.forName(j.s()));
      localIntent.setFlags(608305152);
      startActivity(localIntent);
      return;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      while (true)
        com.avg.toolkit.f.a.a("Unable to find top performance class");
    }
  }

  protected r k()
  {
    return new r();
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(com.avg.a.f.fragment_activity);
    a(true, d.ab_ic_battery, d.ab_ic_battery_p, getString(com.avg.a.g.performance_battery), true);
    if (paramBundle == null)
      a(k(), com.avg.a.e.middle_part, "BatteryStateFragment");
  }

  public boolean onMenuItemSelected(int paramInt, MenuItem paramMenuItem)
  {
    r localr = (r)f().a(com.avg.a.e.middle_part);
    if ((localr != null) && (localr.e(paramMenuItem)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    paramMenu.clear();
    r localr = (r)f().a(com.avg.a.e.middle_part);
    if (localr != null)
      localr.a(paramMenu);
    return super.onCreateOptionsMenu(paramMenu);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.tuneup.battery.BatteryStateActivity
 * JD-Core Version:    0.6.2
 */