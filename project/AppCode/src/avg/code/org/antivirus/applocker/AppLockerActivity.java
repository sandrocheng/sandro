package org.antivirus.applocker;

import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.CheckBox;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import java.util.ArrayList;
import org.antivirus.AVSettings;
import org.antivirus.Strings;
import org.antivirus.ui.BaseToolListActivity;
import org.antivirus.ui.IhandleMenuItem;
import org.antivirus.ui.PopupMenuHoneycomb;
import org.antivirus.widget.a.i;
import org.antivirus.widget.a.k;

public class AppLockerActivity extends BaseToolListActivity
  implements IhandleMenuItem
{
  private final int a = 1;
  private final int b = 2;
  private f c;
  private ArrayList f = new ArrayList();
  private boolean g = false;
  private boolean h = false;
  private boolean i = false;
  private long j = 0L;
  private d k;

  private void b(boolean paramBoolean)
  {
    if (!this.i);
    while (true)
    {
      return;
      this.i = false;
      String[] arrayOfString = d();
      new a();
      a.a(this, arrayOfString);
      Bundle localBundle = new Bundle();
      localBundle.putInt("LockedAppsCount", a.d(this));
      k.a(this).a(localBundle, i.e.a());
      if (!paramBoolean)
        Toast.makeText(this, Strings.getString(2131296322), 0).show();
    }
  }

  private String[] d()
  {
    ArrayList localArrayList = new ArrayList();
    for (int m = 0; m < this.f.size(); m++)
    {
      e locale = (e)this.f.get(m);
      if (locale.d)
        localArrayList.add(locale.b.activityInfo.packageName);
    }
    String[] arrayOfString = new String[localArrayList.size()];
    localArrayList.toArray(arrayOfString);
    return arrayOfString;
  }

  protected final void a()
  {
    b(true);
    finish();
  }

  protected final void a(int paramInt)
  {
    switch (paramInt)
    {
    default:
    case 1:
      while (true)
      {
        return;
        this.g = true;
        Intent localIntent = new Intent(this, PasswordConfirmation.class);
        localIntent.putExtra("password_change", true);
        startActivityForResult(localIntent, 0);
        org.antivirus.ganalytics.a.a(this, "app_locker", "change_password", null);
      }
    case 2:
    }
    int m = paramInt - 1;
    if (a.a)
    {
      this.e[m] = Strings.getString(2131296333);
      a.a = false;
      Toast.makeText(this, Strings.getString(2131296335), 1).show();
    }
    while (true)
    {
      org.antivirus.ganalytics.a.a(this, "app_locker", "activate_timer", null);
      break;
      this.e[m] = Strings.getString(2131296334);
      a.a = true;
      Toast.makeText(this, Strings.getString(2131296336), 1).show();
    }
  }

  protected final void a(View paramView)
  {
    PopupMenuHoneycomb localPopupMenuHoneycomb = new PopupMenuHoneycomb(this, paramView);
    addMenu(localPopupMenuHoneycomb);
    localPopupMenuHoneycomb.show();
  }

  protected final void a(boolean paramBoolean)
  {
    for (int m = 0; m < this.f.size(); m++)
      ((e)this.c.getItem(m)).d = paramBoolean;
    this.c.notifyDataSetChanged();
    this.i = true;
  }

  public void addMenu(Object paramObject)
  {
    String[] arrayOfString;
    if ((paramObject instanceof String[]))
    {
      arrayOfString = new String[2];
      arrayOfString[0] = Strings.getString(2131296332);
      if (!a.a)
      {
        arrayOfString[1] = Strings.getString(2131296333);
        System.arraycopy(arrayOfString, 0, paramObject, 0, arrayOfString.length);
      }
    }
    while (true)
    {
      org.antivirus.ganalytics.a.a(this, "app_locker", "menu_opened", null);
      return;
      arrayOfString[1] = Strings.getString(2131296334);
      break;
      if ((paramObject instanceof Menu))
      {
        ((Menu)paramObject).add(0, 1, 1, Strings.getString(2131296332));
        if (!a.a)
          ((Menu)paramObject).add(0, 2, 1, Strings.getString(2131296333));
        else
          ((Menu)paramObject).add(0, 2, 1, Strings.getString(2131296334));
      }
      else if ((paramObject instanceof PopupMenuHoneycomb))
      {
        ((PopupMenuHoneycomb)paramObject).add(0, 1, 1, Strings.getString(2131296332));
        if (!a.a)
          ((PopupMenuHoneycomb)paramObject).add(0, 2, 1, Strings.getString(2131296333));
        else
          ((PopupMenuHoneycomb)paramObject).add(0, 2, 1, Strings.getString(2131296334));
      }
    }
  }

  protected final int b()
  {
    return 2;
  }

  public boolean handleMenuItem(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default:
    case 1:
      while (true)
      {
        return true;
        this.g = true;
        Intent localIntent = new Intent(this, PasswordConfirmation.class);
        localIntent.putExtra("password_change", true);
        startActivityForResult(localIntent, 0);
        org.antivirus.ganalytics.a.a(this, "app_locker", "change_password", null);
      }
    case 2:
    }
    if (a.a)
    {
      paramMenuItem.setTitle(Strings.getString(2131296333));
      a.a = false;
      Toast.makeText(this, Strings.getString(2131296335), 1).show();
    }
    while (true)
    {
      org.antivirus.ganalytics.a.a(this, "app_locker", "activate_timer", null);
      break;
      paramMenuItem.setTitle(Strings.getString(2131296334));
      a.a = true;
      Toast.makeText(this, Strings.getString(2131296336), 1).show();
    }
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if ((1 == paramInt2) || (paramInt2 == 0))
    {
      AVSettings.isPasswordApproved = false;
      finish();
    }
    while (true)
    {
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
      return;
      AVSettings.isPasswordApproved = true;
    }
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903048);
    if (paramBundle == null)
      this.g = false;
    for (this.h = false; ; this.h = paramBundle.getBoolean("mPasswordRegistrationWasRaised"))
    {
      a(2130837580, 2130837579, Strings.getString(2131296320), true);
      ((TextView)findViewById(2131230796)).setText(Strings.getString(2131296343));
      ((CheckBox)findViewById(2131230928)).setOnCheckedChangeListener(new b(this));
      this.c = new f(this, this);
      setListAdapter(this.c);
      getListView().setOnItemClickListener(new c(this));
      this.k = new d(this, this);
      this.k.execute(new String[] { "" });
      return;
      this.g = paramBundle.getBoolean("PasswordReqWasRaised");
    }
  }

  public void onDestroy()
  {
    if (this.k != null)
    {
      this.k.a = false;
      this.k.cancel(true);
    }
    super.onDestroy();
  }

  public boolean onMenuItemSelected(int paramInt, MenuItem paramMenuItem)
  {
    return handleMenuItem(paramMenuItem);
  }

  protected void onPause()
  {
    b(false);
    super.onPause();
  }

  public boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    paramMenu.clear();
    addMenu(paramMenu);
    return super.onCreateOptionsMenu(paramMenu);
  }

  protected void onResume()
  {
    if (AVSettings.isPasswordApproved)
      AVSettings.isPasswordApproved = false;
    while (true)
    {
      super.onResume();
      return;
      if (AVSettings.getApplockerUserPassword(getApplicationContext()).length() == 0)
      {
        startActivityForResult(new Intent(this, PasswordConfirmation.class), 0);
        this.h = true;
      }
      else if ((!a.a) && (!this.h))
      {
        Intent localIntent = new Intent(this, LockerBlockActivity.class);
        localIntent.putExtra("title", Strings.getString(2131296323));
        localIntent.putExtra("firest_edit_text", Strings.getString(2131296327));
        startActivityForResult(localIntent, 1);
        this.g = true;
      }
    }
  }

  protected void onSaveInstanceState(Bundle paramBundle)
  {
    paramBundle.putBoolean("PasswordReqWasRaised", this.g);
    paramBundle.putBoolean("mPasswordRegistrationWasRaised", this.h);
    b(true);
    super.onSaveInstanceState(paramBundle);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.applocker.AppLockerActivity
 * JD-Core Version:    0.6.2
 */