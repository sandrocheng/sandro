package com.keniu.security.traffic;

import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.view.KeyEvent;
import com.ijinshan.kinghelper.common.RadioButtonPreference;
import com.ijinshan.kpref.Preference;
import com.ijinshan.kpref.n;
import com.keniu.security.monitor.a;
import com.keniu.security.util.BasePreferenceActivity;

public class SaveTrafficModelSettingActivity extends BasePreferenceActivity
  implements n
{
  public static r a = null;
  public static HandlerThread b = null;
  public static Handler c;
  public static v d = new v();
  private RadioButtonPreference e;
  private RadioButtonPreference f;
  private RadioButtonPreference g;
  private RadioButtonPreference h;
  private Preference i;
  private y j;

  private void c()
  {
    this.h.a(true);
    this.e.a(false);
    this.f.a(false);
    this.g.a(false);
  }

  private void d()
  {
    this.g.a(true);
    this.e.a(false);
    this.f.a(false);
    this.h.a(false);
  }

  private void e()
  {
    this.f.a(true);
    this.e.a(false);
    this.g.a(false);
    this.h.a(false);
  }

  private void f()
  {
    this.e.a(true);
    this.f.a(false);
    this.g.a(false);
    this.h.a(false);
  }

  public final boolean a(Preference paramPreference)
  {
    String str = paramPreference.A();
    if (str.compareToIgnoreCase(this.e.A()) == 0)
    {
      f();
      this.j.w = 0;
      this.j.a(this, 2131428292);
    }
    while (true)
    {
      return false;
      if (str.compareToIgnoreCase(this.f.A()) == 0)
      {
        e();
        this.j.w = 1;
        this.j.a(this, 2131428292);
      }
      else if (str.compareToIgnoreCase(this.g.A()) == 0)
      {
        d();
        this.j.w = 2;
        this.j.a(this, 2131428292);
      }
      else if (str.compareToIgnoreCase(this.h.A()) == 0)
      {
        c();
        this.j.w = 3;
        this.j.a(this, 2131428292);
      }
      else if (str.compareToIgnoreCase(this.i.A()) == 0)
      {
        Intent localIntent = new Intent();
        localIntent.setClass(this, SaveTrafficWhiteListActivity.class);
        startActivity(localIntent);
      }
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.a(paramBundle, 2131034130);
    this.e = ((RadioButtonPreference)a(getString(2131428272)));
    this.e.a(this);
    this.f = ((RadioButtonPreference)a(getString(2131428273)));
    this.f.a(this);
    this.g = ((RadioButtonPreference)a(getString(2131428274)));
    this.g.a(this);
    this.h = ((RadioButtonPreference)a(getString(2131428275)));
    this.h.a(this);
    this.i = a(getString(2131428271));
    this.i.a(this);
    this.j = y.a(this);
    switch (this.j.w)
    {
    default:
    case 0:
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      return;
      f();
      continue;
      e();
      continue;
      d();
      continue;
      c();
    }
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    a locala;
    if (paramInt == 4)
    {
      locala = a.a();
      if ((this.j.w != 0) && (this.j.w != 1) && (this.j.w != 2))
        break label198;
      if (a == null)
        a = new r();
      locala.a(a.p, a);
      locala.a(a.o, a);
      locala.a(a.p, a, 1342177279);
      locala.a(a.o, a, 1342177279);
    }
    while (true)
    {
      if ((this.j.w == 0) || (this.j.w == 2));
      try
      {
        if (b == null)
          b = new HandlerThread("thread_save_traffic");
        b.start();
        label150: if (c == null)
          c = new Handler(b.getLooper());
        c.post(d);
        while (true)
        {
          setResult(-1);
          finish();
          return super.onKeyDown(paramInt, paramKeyEvent);
          label198: if (a == null)
            break;
          locala.a(a.p, a);
          locala.a(a.o, a);
          a = null;
          break;
          q.a(getApplicationContext());
          f[] arrayOff = e.c(getApplicationContext(), false);
          String str = q.b();
          for (int k = 0; k < arrayOff.length; k++)
          {
            f localf = arrayOff[k];
            if (!str.contains(String.valueOf(localf.a)))
            {
              if ((q.c().contains(String.valueOf(localf.a))) && (localf.d))
              {
                q.b(localf.a, true);
                localf.e = false;
                localf.d = false;
              }
              localf.h.setCallback(null);
            }
          }
          e.b(getApplicationContext(), false);
          try
          {
            if (b != null)
            {
              b.quit();
              b = null;
              c = null;
            }
          }
          catch (Exception localException)
          {
          }
        }
      }
      catch (IllegalThreadStateException localIllegalThreadStateException)
      {
        break label150;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.SaveTrafficModelSettingActivity
 * JD-Core Version:    0.6.2
 */