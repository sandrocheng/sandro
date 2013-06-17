package com.antivirus.ui.privacy;

import android.app.Dialog;
import android.app.NotificationManager;
import android.content.ComponentName;
import android.content.Intent;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import com.antivirus.applocker.AppLockerActivity;
import com.antivirus.applocker.LockerBlockActivity;
import com.antivirus.applocker.PasswordConfirmation;
import com.antivirus.applocker.g;
import com.antivirus.applocker.q;
import com.antivirus.m;
import com.antivirus.ui.backup.apps.BackupMainActivity;
import com.antivirus.ui.callmessagefilter.CallMessageFilterActivity;
import com.antivirus.ui.callmessagefilter.fragment.CallMessageTabFragment;
import com.antivirus.ui.callmessagefilter.fragment.ah;
import com.antivirus.ui.i;
import com.antivirus.wipe.WipeByApp;
import com.antivirus.wipe.WipeSd;
import com.antivirus.wipe.ab;
import com.avg.ui.general.j;
import com.avg.ui.general.o;
import com.avg.ui.general.s;
import java.util.ArrayList;

public class b extends com.antivirus.ui.a.a.a
  implements AdapterView.OnItemClickListener
{
  public s[] a;
  private View b = null;
  private ArrayList c = null;
  private Dialog d = null;
  private int e;
  private int f;
  private h g;
  private boolean h = false;

  private void G()
  {
    ListView localListView = (ListView)this.b.findViewById(2131230805);
    localListView.setOnItemClickListener(this);
    localListView.setAdapter(this.g);
  }

  private void H()
  {
    this.c = new ArrayList();
    com.avg.toolkit.e.a locala = com.avg.toolkit.e.e.a();
    s[] arrayOfs = o.b();
    int i = arrayOfs.length;
    int j = 0;
    if (j < i)
    {
      s locals = arrayOfs[j];
      switch (g.a[locals.ordinal()])
      {
      default:
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      }
      while (true)
      {
        j++;
        break;
        if (com.avg.toolkit.e.e.a().d != com.avg.toolkit.e.c.a)
        {
          ArrayList localArrayList2 = this.c;
          int m = locals.a();
          boolean bool3;
          if ((locala.b()) || (locala.d()))
          {
            bool3 = true;
            label132: if (com.avg.toolkit.e.e.a().d == com.avg.toolkit.e.c.c)
              break label175;
          }
          label175: for (boolean bool4 = true; ; bool4 = false)
          {
            localArrayList2.add(new i(m, bool3, bool4));
            break;
            bool3 = false;
            break label132;
          }
          if (com.avg.toolkit.e.e.a().h != com.avg.toolkit.e.c.a)
          {
            ArrayList localArrayList1 = this.c;
            int k = locals.a();
            boolean bool1;
            if ((locala.b()) || (locala.d()))
            {
              bool1 = true;
              label223: if (com.avg.toolkit.e.e.a().h == com.avg.toolkit.e.c.c)
                break label266;
            }
            label266: for (boolean bool2 = true; ; bool2 = false)
            {
              localArrayList1.add(new i(k, bool1, bool2));
              break;
              bool1 = false;
              break label223;
            }
            this.c.add(new i(locals.a(), false, false));
            continue;
            this.c.add(new i(locals.a(), false, false));
            continue;
            this.c.add(new i(locals.a(), false, false));
            continue;
            this.c.add(new i(locals.a(), false, false));
          }
        }
      }
    }
    this.g = new h(this, this.ag);
  }

  private void I()
  {
    Intent localIntent = new Intent(this.ag, CallMessageFilterActivity.class);
    if (this.h)
    {
      localIntent.putExtra("default_tab_name", com.antivirus.ui.callmessagefilter.fragment.n.b);
      localIntent.putExtra("default_filter_option", ah.b.a());
      ((NotificationManager)this.ag.getSystemService("notification")).cancel(16);
    }
    a(localIntent);
    com.avg.toolkit.c.a.a(this.ag, "call_message_blocker", "call_message_blocker_open_privacy", null, 0);
  }

  private void J()
  {
    Intent localIntent = new Intent();
    if (Integer.parseInt(Build.VERSION.SDK) >= 11)
    {
      localIntent.setComponent(new ComponentName("com.android.settings", "com.android.settings.Settings"));
      localIntent.putExtra(":android:show_fragment", "com.android.settings.MasterClear");
      localIntent.setFlags(268468224);
    }
    while (true)
    {
      a(localIntent);
      com.avg.toolkit.c.a.a(this.ag, "privacy", "wipe_device", "permitted", 0);
      return;
      localIntent.setComponent(new ComponentName("com.android.settings", "com.android.settings.MasterClear"));
    }
  }

  private void K()
  {
    a(new Intent(this.ag, WipeByApp.class));
  }

  private void L()
  {
    a(new Intent(this.ag, WipeSd.class));
  }

  private void M()
  {
    com.antivirus.applocker.c localc = new com.antivirus.applocker.c();
    if (com.antivirus.c.b(this.ag.getApplicationContext()).length() == 0)
      if (this.ag.o())
        if (!b(s.a.a()));
    do
    {
      while (true)
      {
        return;
        this.g.a(false);
        this.ag.a(new q(), 2131230910, "PasswordConfirmationFragment");
        this.ag.n();
        while (true)
        {
          com.avg.toolkit.c.a.a(this.ag, "app_locker", "change_password", null, 0);
          break;
          a(new Intent(this.ag, PasswordConfirmation.class), 0);
        }
        if ((localc.d(this.ag)) || (!com.antivirus.c.b))
          break;
        if (this.ag.o())
        {
          if (!b(s.a.a()))
          {
            this.g.a(false);
            this.ag.a(new com.antivirus.applocker.n(), 2131230910, "LockerBlockFragment");
            this.ag.n();
          }
        }
        else
        {
          Intent localIntent = new Intent(this.ag, LockerBlockActivity.class);
          localIntent.putExtra("title", m.a(this.ag, 2131296531));
          localIntent.putExtra("firest_edit_text", m.a(this.ag, 2131296534));
          a(localIntent, 1);
        }
      }
      if (!this.ag.o())
        break;
    }
    while (b(s.a.a()));
    this.g.a(false);
    this.ag.a(new g(), 2131230910, "AppLockerFragment");
    this.ag.n();
    while (true)
    {
      com.avg.toolkit.c.a.a(this.ag, "privacy", "app_locker", "permitted", 0);
      break;
      a(new Intent(this.ag, AppLockerActivity.class));
    }
  }

  private void N()
  {
    new Thread(new c(this, h())).start();
  }

  private void O()
  {
    new Thread(new e(this, this.ag)).start();
  }

  private void a(s params)
  {
    switch (g.a[params.ordinal()])
    {
    default:
      return;
    case 1:
    case 2:
    }
    for (String str = "app_locker"; ; str = "app_backup")
    {
      com.avg.toolkit.c.a.a(this.ag, "privacy", str, "forbidden", 0);
      break;
    }
  }

  private boolean b(int paramInt)
  {
    if (this.g.a() == paramInt);
    for (boolean bool = true; ; bool = false)
    {
      return bool;
      this.g.a(paramInt);
    }
  }

  public void F()
  {
    if (this.g != null)
    {
      O();
      this.f = -1;
      this.g.a(-1);
      this.g.a(true);
    }
  }

  public View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    this.b = paramLayoutInflater.inflate(2130903083, paramViewGroup, false);
    if (com.avg.toolkit.e.e.a() != null)
      G();
    return this.b;
  }

  public void a()
  {
    this.a = o.b();
    H();
    G();
  }

  public void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    if (!this.ag.t())
      this.ag.p();
    this.e = -1;
    this.f = -1;
    if (com.avg.toolkit.e.e.a() != null)
    {
      this.a = o.b();
      H();
    }
  }

  public void e()
  {
    super.e();
    a(this.b);
    System.gc();
  }

  public void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if (paramInt >= this.c.size());
    label181: 
    do
    {
      do
      {
        while (true)
        {
          return;
          i locali = (i)this.c.get(paramInt);
          this.f = locali.a;
          if (this.ag.o())
            this.g.notifyDataSetChanged();
          s locals;
          try
          {
            locals = s.a(locali.a);
            switch (g.a[locals.ordinal()])
            {
            default:
              break;
            case 1:
              if (!locali.b)
                break label181;
              this.d = j.a(this.ag, m.a(this.ag, 2131296553), m.a(this.ag, 2131296554), m.a(this.ag, 2131296555), 2130837730, false);
              a(locals);
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            }
          }
          catch (IllegalArgumentException localIllegalArgumentException)
          {
            com.avg.toolkit.f.a.a();
          }
          continue;
          M();
          continue;
          if (locali.b)
          {
            this.d = j.a(this.ag, m.a(this.ag, 2131296808), m.a(this.ag, 2131296809), m.a(this.ag, 2131296810), 2130837729, false);
            a(locals);
          }
          else if (this.ag.o())
          {
            if (!b(s.b.a()))
            {
              this.g.a(false);
              this.ag.a(new com.antivirus.ui.backup.apps.b(), 2131230910, "BackupAndRestoreTabsFragment");
              this.ag.n();
            }
          }
          else
          {
            while (true)
            {
              com.avg.toolkit.c.a.a(this.ag, "privacy", "app_backup", "permitted", 0);
              break;
              a(new Intent(this.ag, BackupMainActivity.class));
            }
            if (this.ag.o())
            {
              if (!b(s.c.a()))
              {
                this.g.a(false);
                this.ag.a(new CallMessageTabFragment(), 2131230910, "CallMessageTabFragment");
                this.ag.n();
              }
            }
            else
            {
              I();
              continue;
              J();
            }
          }
        }
        if (!this.ag.o())
          break;
      }
      while (b(s.f.a()));
      this.g.a(false);
      this.ag.a(new ab(), 2131230910, "WipeSdFragment");
      this.ag.n();
      while (true)
      {
        com.avg.toolkit.c.a.a(this.ag, "privacy", "wipe_sd", "permitted", 0);
        break;
        L();
      }
      if (!this.ag.o())
        break;
    }
    while (b(s.e.a()));
    this.g.a(false);
    this.ag.a(new com.antivirus.wipe.b(), 2131230910, "WipeByAppFragment");
    this.ag.n();
    while (true)
    {
      com.avg.toolkit.c.a.a(this.ag, "privacy", "wipe_data", "permitted", 0);
      break;
      K();
    }
  }

  public void r()
  {
    super.r();
    if (this.g == null)
      this.g = new h(this, this.ag);
    O();
    N();
    Intent localIntent = this.ag.getIntent();
    if (localIntent == null);
    while (true)
    {
      return;
      if ((localIntent.getBooleanExtra("launchFormWidget", false)) && (!o.c()))
      {
        localIntent.removeExtra("launchFormWidget");
        M();
        this.ag.finish();
      }
    }
  }

  public void t()
  {
    if (this.d != null)
    {
      this.d.dismiss();
      this.d = null;
    }
    super.t();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.privacy.b
 * JD-Core Version:    0.6.2
 */