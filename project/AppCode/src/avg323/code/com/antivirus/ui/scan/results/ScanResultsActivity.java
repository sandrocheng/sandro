package com.antivirus.ui.scan.results;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.ComponentName;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.support.v4.app.Fragment;
import android.support.v4.app.o;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import com.antivirus.ui.protection.ProtectionActivity;
import com.avg.ui.general.b.e;
import com.avg.ui.general.c.f;
import java.util.ArrayList;

public class ScanResultsActivity extends com.antivirus.ui.a
  implements com.avg.ui.general.c.a
{
  public com.antivirus.a n;

  private void a(com.avg.toolkit.e.a parama)
  {
    if (parama == null);
    while (true)
    {
      return;
      if (parama.b())
        a(true, 2130837566, 2130837567, "", true);
      else
        a(true, 2130837568, 2130837569, "", true);
    }
  }

  private boolean e(int paramInt)
  {
    m localm = (m)c("ScanResultsFragment");
    if ((localm != null) && (localm.b(paramInt)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public ArrayList a(Object paramObject)
  {
    if ((paramObject instanceof ContextMenu))
    {
      ((ContextMenu)paramObject).add(0, 15, 0, com.antivirus.m.a(this, 2131296644));
      ((ContextMenu)paramObject).add(0, 16, 0, com.antivirus.m.a(this, 2131296645));
    }
    while (true)
    {
      return null;
      if ((paramObject instanceof Menu))
      {
        ((Menu)paramObject).add(0, 15, 0, com.antivirus.m.a(this, 2131296644));
        ((Menu)paramObject).add(0, 16, 0, com.antivirus.m.a(this, 2131296645));
      }
      else if ((paramObject instanceof f))
      {
        ((f)paramObject).a(0, 15, 0, com.antivirus.m.a(this, 2131296644));
        ((f)paramObject).a(0, 16, 0, com.antivirus.m.a(this, 2131296645));
      }
    }
  }

  protected void a(ComponentName paramComponentName, IBinder paramIBinder)
  {
    this.n = ((com.antivirus.a)paramIBinder);
    Fragment localFragment = f().a("ScanResultsFragment");
    if (localFragment != null)
      ((m)localFragment).F();
    while (true)
    {
      a(this.n.a());
      return;
      a(new m(), 2131230929, "ScanResultsFragment");
    }
  }

  protected void a(View paramView)
  {
    f localf = new f(this, paramView);
    a(localf);
    localf.a();
  }

  public boolean a(MenuItem paramMenuItem)
  {
    closeOptionsMenu();
    return e(paramMenuItem.getItemId());
  }

  public void h()
  {
    String[] arrayOfString = new String[2];
    arrayOfString[0] = com.antivirus.m.a(this, 2131296644);
    arrayOfString[1] = com.antivirus.m.a(this, 2131296645);
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
    localBuilder.setSingleChoiceItems(new e(this, 0, false, arrayOfString, false), 0, new j(this));
    AlertDialog localAlertDialog = localBuilder.create();
    localAlertDialog.setCanceledOnTouchOutside(false);
    localAlertDialog.show();
  }

  public void i()
  {
    finish();
    Intent localIntent = new Intent(this, ProtectionActivity.class);
    localIntent.setFlags(608305152);
    startActivity(localIntent);
  }

  public boolean onContextItemSelected(MenuItem paramMenuItem)
  {
    return a(paramMenuItem);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903080);
    p();
  }

  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    super.onCreateContextMenu(paramContextMenu, paramView, paramContextMenuInfo);
    paramContextMenu.clear();
    a(paramContextMenu);
  }

  public void onDestroy()
  {
    q();
    super.onDestroy();
  }

  public boolean onMenuItemSelected(int paramInt, MenuItem paramMenuItem)
  {
    return a(paramMenuItem);
  }

  protected void onNewIntent(Intent paramIntent)
  {
    m localm = (m)c("ScanResultsFragment");
    if (localm != null)
      localm.b(paramIntent);
    super.onNewIntent(paramIntent);
  }

  public boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    paramMenu.clear();
    a(paramMenu);
    return super.onCreateOptionsMenu(paramMenu);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.scan.results.ScanResultsActivity
 * JD-Core Version:    0.6.2
 */