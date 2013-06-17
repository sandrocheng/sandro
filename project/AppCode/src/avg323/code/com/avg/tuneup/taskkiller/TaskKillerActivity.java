package com.avg.tuneup.taskkiller;

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

public class TaskKillerActivity extends com.avg.tuneup.g
  implements com.avg.ui.general.c.a
{
  protected void a(View paramView)
  {
    n localn = (n)f().a(com.avg.a.e.middle_part);
    com.avg.ui.general.c.f localf = new com.avg.ui.general.c.f(this, paramView);
    localn.a(localf);
    localf.a();
  }

  public boolean a(MenuItem paramMenuItem)
  {
    return ((n)f().a(com.avg.a.e.middle_part)).e(paramMenuItem);
  }

  public void h()
  {
    String[] arrayOfString = new String[2];
    arrayOfString[0] = getString(com.avg.a.g.by_ram);
    arrayOfString[1] = getString(com.avg.a.g.by_name);
    int[] arrayOfInt = { 12, 10 };
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
    localBuilder.setSingleChoiceItems(new com.avg.ui.general.b.e(this, 0, false, arrayOfString, false), 0, new c(this, arrayOfInt));
    AlertDialog localAlertDialog = localBuilder.create();
    localAlertDialog.setCanceledOnTouchOutside(false);
    localAlertDialog.show();
    com.avg.toolkit.c.a.a(this, "task_killer", "menu_opened", null, 0);
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

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(com.avg.a.f.fragment_activity);
    a(true, d.ab_ic_task_killer, d.ab_ic_task_killer_p, getString(com.avg.a.g.title_task_killer_preference), true);
    c(d.btn_sorting_actionbar);
    if (paramBundle == null)
      a(new n(), com.avg.a.e.middle_part, "TaskKillerFragment");
  }

  public boolean onMenuItemSelected(int paramInt, MenuItem paramMenuItem)
  {
    n localn = (n)f().a(com.avg.a.e.middle_part);
    if (localn != null);
    for (boolean bool = localn.e(paramMenuItem); ; bool = false)
      return bool;
  }

  public boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    paramMenu.clear();
    n localn = (n)f().a(com.avg.a.e.middle_part);
    if (localn != null)
      localn.a(paramMenu);
    return super.onCreateOptionsMenu(paramMenu);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.tuneup.taskkiller.TaskKillerActivity
 * JD-Core Version:    0.6.2
 */