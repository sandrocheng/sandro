package com.antivirus.ui.main;

import android.content.ComponentName;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import com.antivirus.m;
import com.antivirus.ui.b.a.b;
import com.avg.ui.general.c.f;
import com.avg.ui.general.r;
import java.util.ArrayList;
import java.util.HashMap;

public class HandheldMainActivity extends com.antivirus.ui.a
  implements com.avg.ui.general.c.a
{
  public com.antivirus.a n;
  private com.avg.toolkit.e.a o;
  private ArrayList p = new ArrayList();
  private HashMap q = new HashMap();
  private com.avg.ui.general.e.a v = new b();

  private void k()
  {
    if (this.n == null);
    while (true)
    {
      return;
      this.o = this.n.a();
      if (this.o != null)
        if (this.o.b())
          a(false, com.avg.ui.general.o.a(r.a), com.avg.ui.general.o.a(r.a), "", true);
        else
          a(false, com.avg.ui.general.o.b(r.a), com.avg.ui.general.o.b(r.a), "", true);
    }
  }

  public ArrayList a(Object paramObject)
  {
    ArrayList localArrayList;
    if (this.o == null)
    {
      localArrayList = null;
      return localArrayList;
    }
    this.p.clear();
    this.q.clear();
    Integer localInteger1 = Integer.valueOf(0);
    Integer localInteger2;
    if ((paramObject instanceof ArrayList))
      if (this.o.b())
      {
        this.p.add(m.a(this, 2131296589));
        HashMap localHashMap7 = this.q;
        localInteger2 = Integer.valueOf(1 + localInteger1.intValue());
        localHashMap7.put(localInteger1, m.a(this, 2131296589));
      }
    while (true)
    {
      label91: this.p.add(m.a(this, 2131296503));
      HashMap localHashMap2 = this.q;
      Integer localInteger3 = Integer.valueOf(1 + localInteger2.intValue());
      localHashMap2.put(localInteger2, m.a(this, 2131296503));
      this.p.add(m.a(this, 2131296272));
      HashMap localHashMap3 = this.q;
      Integer localInteger4 = Integer.valueOf(1 + localInteger3.intValue());
      localHashMap3.put(localInteger3, m.a(this, 2131296272));
      if (!this.o.l)
      {
        this.p.add(m.a(this, 2131296288));
        HashMap localHashMap5 = this.q;
        Integer localInteger5 = Integer.valueOf(1 + localInteger4.intValue());
        localHashMap5.put(localInteger4, m.a(this, 2131296288));
        this.p.add(m.a(this, 2131296257));
        HashMap localHashMap6 = this.q;
        Integer.valueOf(1 + localInteger5.intValue());
        localHashMap6.put(localInteger5, m.a(this, 2131296257));
      }
      do
      {
        while (true)
        {
          com.avg.toolkit.c.a.a(this, "category_app_landing", "action_menu_opened", null, 0);
          localArrayList = this.p;
          break;
          if ((this.o.n > 30) && (!this.o.m))
            break label739;
          this.p.add(m.a(this, 2131296302));
          HashMap localHashMap1 = this.q;
          localInteger2 = Integer.valueOf(1 + localInteger1.intValue());
          localHashMap1.put(localInteger1, m.a(this, 2131296302));
          break label91;
          this.p.add(m.a(this, 2131296257));
          HashMap localHashMap4 = this.q;
          Integer.valueOf(1 + localInteger4.intValue());
          localHashMap4.put(localInteger4, m.a(this, 2131296257));
        }
        if ((paramObject instanceof Menu))
        {
          if (this.o.b())
            ((Menu)paramObject).add(0, 1, 4, m.a(this, 2131296589));
          while (true)
          {
            ((Menu)paramObject).add(1, 2, 2, m.a(this, 2131296503));
            ((Menu)paramObject).add(2, 3, 3, m.a(this, 2131296272));
            if (!this.o.l)
              ((Menu)paramObject).add(3, 4, 4, m.a(this, 2131296288));
            ((Menu)paramObject).add(4, 5, 5, m.a(this, 2131296257));
            break;
            if ((this.o.n <= 30) || (this.o.m))
              ((Menu)paramObject).add(0, 1, 4, m.a(this, 2131296302));
          }
        }
      }
      while (!(paramObject instanceof f));
      if (this.o.b())
        ((f)paramObject).a(0, 1, 4, m.a(this, 2131296589));
      while (true)
      {
        ((f)paramObject).a(1, 2, 2, m.a(this, 2131296503));
        ((f)paramObject).a(2, 3, 3, m.a(this, 2131296272));
        if (!this.o.l)
          ((f)paramObject).a(3, 4, 4, m.a(this, 2131296288));
        ((f)paramObject).a(4, 5, 5, m.a(this, 2131296257));
        break;
        if ((this.o.n <= 30) || (this.o.m))
          ((f)paramObject).a(0, 1, 4, m.a(this, 2131296302));
      }
      label739: localInteger2 = localInteger1;
    }
  }

  protected void a(ComponentName paramComponentName, IBinder paramIBinder)
  {
    this.n = ((com.antivirus.a)paramIBinder);
    k();
    c localc = (c)c("AntivirusMainScreenFragment");
    if (localc.a)
      localc.F();
    if (localc != null)
      localc.a(this.n.a(com.antivirus.core.scanners.c.a));
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
    switch (paramMenuItem.getItemId())
    {
    default:
      com.avg.toolkit.f.a.a();
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    }
    while (true)
    {
      return true;
      this.v.a(this);
      continue;
      this.v.d(this);
      continue;
      this.v.b(this);
      continue;
      this.v.a(this, this.o.l);
      continue;
      this.v.e(this);
    }
  }

  public Object b()
  {
    c localc = (c)c("AntivirusMainScreenFragment");
    if (localc != null);
    for (Object localObject = localc.K(); ; localObject = null)
      return localObject;
  }

  protected void b(int paramInt)
  {
    String str = (String)this.q.get(Integer.valueOf(paramInt));
    if (str.compareTo(m.a(this, 2131296589)) == 0)
      this.v.a(this);
    while (true)
    {
      return;
      if (str.compareTo(m.a(this, 2131296302)) == 0)
        this.v.a(this);
      else if (str.compareTo(m.a(this, 2131296503)) == 0)
        this.v.d(this);
      else if (str.compareTo(m.a(this, 2131296272)) == 0)
        this.v.b(this);
      else if (str.compareTo(m.a(this, 2131296288)) == 0)
        this.v.a(this, this.o.l);
      else if (str.compareTo(m.a(this, 2131296257)) == 0)
        this.v.e(this);
    }
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (1 == paramInt1)
      if (paramInt2 == 0)
        finish();
    while (true)
    {
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
      return;
      if ((2 == paramInt1) && (-1 == paramInt2))
        finish();
    }
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903080);
    if (paramBundle == null)
      a(new c(), 2131230929, "AntivirusMainScreenFragment");
    p();
  }

  public void onDestroy()
  {
    q();
    super.onDestroy();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    c localc = (c)c("AntivirusMainScreenFragment");
    if (localc != null)
      localc.a(paramInt, paramKeyEvent);
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  public boolean onMenuItemSelected(int paramInt, MenuItem paramMenuItem)
  {
    return a(paramMenuItem);
  }

  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    c localc = (c)f().a("AntivirusMainScreenFragment");
    if (localc != null)
      localc.b(paramIntent);
  }

  public boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    onCreateOptionsMenu(paramMenu);
    paramMenu.clear();
    a(paramMenu);
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.main.HandheldMainActivity
 * JD-Core Version:    0.6.2
 */