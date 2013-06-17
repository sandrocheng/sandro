package com.avg.tuneup.storage;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Intent;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Environment;
import android.support.v4.app.o;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import com.avg.a.d;
import com.avg.tuneup.j;

public class StorageActivity extends com.avg.tuneup.g
  implements com.avg.ui.general.c.a
{
  public b n;

  protected void a(View paramView)
  {
    com.avg.ui.general.c.f localf = new com.avg.ui.general.c.f(this, paramView);
    if (this.n == null)
      this.n = ((b)f().a("StorageFragment"));
    if (this.n != null)
      this.n.a(localf);
    localf.a();
  }

  public boolean a(MenuItem paramMenuItem)
  {
    if (this.n == null)
      this.n = ((b)f().a("StorageFragment"));
    if (this.n != null);
    for (boolean bool = this.n.e(paramMenuItem); ; bool = true)
      return bool;
  }

  protected void b(int paramInt)
  {
  }

  public void h()
  {
    String[] arrayOfString = new String[2];
    arrayOfString[0] = getString(com.avg.a.g.by_size);
    arrayOfString[1] = getString(com.avg.a.g.by_name);
    int[] arrayOfInt1 = { 9, 10 };
    if ((Build.VERSION.SDK_INT >= 8) && ((Build.VERSION.SDK_INT < 11) || (!Environment.isExternalStorageEmulated())))
    {
      arrayOfString = new String[3];
      arrayOfString[0] = getString(com.avg.a.g.by_size);
      arrayOfString[1] = getString(com.avg.a.g.by_name);
      arrayOfString[2] = getString(com.avg.a.g.by_location);
      arrayOfInt1 = new int[] { 9, 10, 11 };
    }
    int[] arrayOfInt2 = arrayOfInt1;
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
    localBuilder.setSingleChoiceItems(new com.avg.ui.general.b.e(this, 0, false, arrayOfString, false), 0, new a(this, arrayOfInt2));
    AlertDialog localAlertDialog = localBuilder.create();
    localAlertDialog.setCanceledOnTouchOutside(false);
    localAlertDialog.show();
    com.avg.toolkit.c.a.a(this, "storage_usage", "menu_opened", null, 0);
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
    a(true, d.ab_ic_storage, d.ab_ic_storage_p, getString(com.avg.a.g.performance_storage), true);
    c(d.btn_sorting_actionbar);
    if (paramBundle == null)
    {
      this.n = new b();
      a(this.n, com.avg.a.e.middle_part, "StorageFragment");
    }
  }

  public boolean onMenuItemSelected(int paramInt, MenuItem paramMenuItem)
  {
    if (this.n == null)
      this.n = ((b)f().a("StorageFragment"));
    if (this.n != null);
    for (boolean bool = this.n.e(paramMenuItem); ; bool = true)
      return bool;
  }

  public boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    paramMenu.clear();
    if (this.n == null)
      this.n = ((b)f().a("StorageFragment"));
    if (this.n != null)
      this.n.a(paramMenu);
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.tuneup.storage.StorageActivity
 * JD-Core Version:    0.6.2
 */