package com.antivirus.applocker;

import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.CheckBox;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import com.antivirus.m;
import com.antivirus.ui.tablet.DualPaneActivity;
import com.antivirus.widget.applocker.AppLockerWidgetPlugin;
import java.util.ArrayList;

public class g extends com.antivirus.ui.a.a.a
  implements AdapterView.OnItemClickListener, com.antivirus.ui.a.a.c, com.avg.ui.general.c.a
{
  private View a = null;
  private ListView b = null;
  private i c;
  private l d;
  private ArrayList e = new ArrayList();
  private boolean f = false;
  private long g = 0L;

  private void F()
  {
    ((TextView)this.a.findViewById(2131230803)).setText(m.a(this.ag, 2131296550));
    ((CheckBox)this.a.findViewById(2131230994)).setOnCheckedChangeListener(new h(this));
    this.d = new l(this, this.ag);
    this.b = ((ListView)this.a.findViewById(2131230805));
    this.b.setAdapter(this.d);
    this.b.setOnItemClickListener(this);
  }

  private String[] G()
  {
    ArrayList localArrayList = new ArrayList();
    for (int i = 0; i < this.e.size(); i++)
    {
      k localk = (k)this.e.get(i);
      if (localk.d)
        localArrayList.add(localk.b.activityInfo.packageName);
    }
    String[] arrayOfString = new String[localArrayList.size()];
    localArrayList.toArray(arrayOfString);
    return arrayOfString;
  }

  private void c(int paramInt)
  {
    if (com.antivirus.c.q())
    {
      new c().f(this.ag);
      com.antivirus.c.g(false);
      Toast.makeText(this.ag, m.a(this.ag, 2131296542), 1).show();
    }
    while (true)
    {
      return;
      com.antivirus.c.g(true);
      Toast.makeText(this.ag, m.a(this.ag, 2131296543), 1).show();
    }
  }

  private void e(MenuItem paramMenuItem)
  {
    if (com.antivirus.c.q())
    {
      paramMenuItem.setTitle(m.a(this.ag, 2131296540));
      new c().f(this.ag);
      com.antivirus.c.g(false);
      Toast.makeText(this.ag, m.a(this.ag, 2131296542), 1).show();
    }
    while (true)
    {
      return;
      paramMenuItem.setTitle(m.a(this.ag, 2131296541));
      com.antivirus.c.g(true);
      Toast.makeText(this.ag, m.a(this.ag, 2131296543), 1).show();
    }
  }

  public View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    this.a = paramLayoutInflater.inflate(2130903052, paramViewGroup, false);
    if (this.ag.o())
      a(m.a(this.ag, 2131296528), this.a);
    F();
    return this.a;
  }

  public ArrayList a(Object paramObject)
  {
    String[] arrayOfString;
    if ((paramObject instanceof String[]))
    {
      arrayOfString = new String[2];
      arrayOfString[0] = m.a(this.ag, 2131296539);
      if (!com.antivirus.c.q())
      {
        arrayOfString[1] = m.a(this.ag, 2131296540);
        System.arraycopy(arrayOfString, 0, paramObject, 0, arrayOfString.length);
      }
    }
    while (true)
    {
      com.avg.toolkit.c.a.a(this.ag, "app_locker", "menu_opened", null, 0);
      return null;
      arrayOfString[1] = m.a(this.ag, 2131296541);
      break;
      if ((paramObject instanceof Menu))
      {
        ((Menu)paramObject).add(0, 13, 1, m.a(this.ag, 2131296539));
        if (!com.antivirus.c.q())
          ((Menu)paramObject).add(0, 14, 1, m.a(this.ag, 2131296540));
        else
          ((Menu)paramObject).add(0, 14, 1, m.a(this.ag, 2131296541));
      }
      else if ((paramObject instanceof com.avg.ui.general.c.f))
      {
        ((com.avg.ui.general.c.f)paramObject).a(0, 13, 1, m.a(this.ag, 2131296539));
        if (!com.antivirus.c.q())
          ((com.avg.ui.general.c.f)paramObject).a(0, 14, 1, m.a(this.ag, 2131296540));
        else
          ((com.avg.ui.general.c.f)paramObject).a(0, 14, 1, m.a(this.ag, 2131296541));
      }
    }
  }

  public void a(Bundle paramBundle)
  {
    d(true);
    super.a(paramBundle);
    this.c = new i(this, this.ag);
    this.c.execute(new String[] { "" });
  }

  public void a(Menu paramMenu)
  {
    if (this.ag.o())
    {
      paramMenu.clear();
      a(paramMenu);
    }
    super.a(paramMenu);
  }

  public void a(boolean paramBoolean)
  {
    if (!this.f);
    while (true)
    {
      return;
      Intent localIntent = new Intent(this.ag, AppBlockService.class);
      this.ag.startService(localIntent);
      this.f = false;
      String[] arrayOfString = G();
      new c().a(this.ag, arrayOfString);
      com.avg.toolkit.f.a(this.ag, 25000, 8, AppLockerWidgetPlugin.k());
      if (paramBoolean)
        Toast.makeText(this.ag, m.a(this.ag, 2131296530), 0).show();
    }
  }

  public boolean a()
  {
    a(true);
    return false;
  }

  public boolean a(MenuItem paramMenuItem)
  {
    this.ag.closeOptionsMenu();
    switch (paramMenuItem.getItemId())
    {
    default:
    case 13:
    case 14:
    }
    while (true)
    {
      return true;
      if (this.ag.o())
        this.ag.a(new q(), 2131230910, "PasswordConfirmationFragment");
      while (true)
      {
        com.avg.toolkit.c.a.a(this.ag, "app_locker", "change_password", null, 0);
        break;
        Intent localIntent = new Intent(this.ag, PasswordConfirmation.class);
        localIntent.putExtra("password_change", true);
        a(localIntent, 0);
      }
      e(paramMenuItem);
      if (this.ag.o())
        ((DualPaneActivity)this.ag).l();
      com.avg.toolkit.c.a.a(this.ag, "app_locker", "activate_timer", null, 0);
    }
  }

  public boolean a_(MenuItem paramMenuItem)
  {
    if (this.ag.o())
      a(paramMenuItem);
    return super.a_(paramMenuItem);
  }

  public void b(int paramInt)
  {
    switch (paramInt)
    {
    default:
    case 13:
    case 14:
    }
    while (true)
    {
      return;
      Intent localIntent = new Intent(this.ag, PasswordConfirmation.class);
      localIntent.putExtra("password_change", true);
      a(localIntent, 0);
      com.avg.toolkit.c.a.a(this.ag, "app_locker", "change_password", null, 0);
      continue;
      c(paramInt - 1);
      com.avg.toolkit.c.a.a(this.ag, "app_locker", "activate_timer", null, 0);
    }
  }

  public void e()
  {
    super.e();
    a(this.a);
    System.gc();
  }

  public void e(Bundle paramBundle)
  {
    a(true);
    super.e(paramBundle);
  }

  protected void e(boolean paramBoolean)
  {
    for (int i = 0; i < this.e.size(); i++)
      ((k)this.d.getItem(i)).d = paramBoolean;
    this.d.notifyDataSetChanged();
    this.f = true;
  }

  public void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    int i = 1;
    k localk1 = (k)this.e.get((int)paramLong);
    String str = localk1.b.activityInfo.packageName;
    int j = 0;
    int k = 0;
    if (j < this.e.size())
    {
      k localk3;
      if ((j != paramLong) && (((k)this.e.get(j)).b.activityInfo.packageName.equals(str)))
      {
        localk3 = (k)this.d.getItem(j);
        if (((k)this.e.get(j)).d)
          break label140;
      }
      label140: for (int m = i; ; m = 0)
      {
        localk3.d = m;
        k = i;
        j++;
        break;
      }
    }
    if ((!localk1.d) && (k != 0) && (System.currentTimeMillis() - this.g > 5000L))
    {
      this.g = System.currentTimeMillis();
      Toast.makeText(this.ag, m.a(this.ag, 2131296556), i).show();
    }
    this.f = i;
    k localk2 = (k)this.d.getItem((int)paramLong);
    if (!localk1.d);
    while (true)
    {
      localk2.d = i;
      this.d.notifyDataSetChanged();
      return;
      i = 0;
    }
  }

  public void r()
  {
    c localc = new c();
    if (com.antivirus.c.b)
      com.antivirus.c.b = false;
    while (true)
    {
      super.r();
      return;
      if (!localc.d(this.ag))
      {
        com.antivirus.c.b = true;
        if (this.ag.o())
        {
          this.ag.a(new n(), 2131230910, "LockerBlockFragment");
        }
        else
        {
          Intent localIntent = new Intent(this.ag, LockerBlockActivity.class);
          localIntent.putExtra("title", m.a(this.ag, 2131296531));
          localIntent.putExtra("firest_edit_text", m.a(this.ag, 2131296534));
          a(localIntent, 1);
          this.ag.finish();
        }
      }
    }
  }

  public void s()
  {
    a(false);
    super.s();
  }

  public void t()
  {
    if (this.c != null)
    {
      this.c.a = false;
      this.c.cancel(true);
    }
    super.t();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.applocker.g
 * JD-Core Version:    0.6.2
 */