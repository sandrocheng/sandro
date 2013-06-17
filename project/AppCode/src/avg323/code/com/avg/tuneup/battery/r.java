package com.avg.tuneup.battery;

import android.content.ComponentName;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.TextView;
import com.avg.a.d;
import com.avg.a.e;
import com.avg.a.g;
import com.avg.tuneup.h;
import java.util.ArrayList;

public class r extends h
{
  private int Y;
  private b Z;
  protected final String a = "com.android.settings";
  private Handler aa;
  protected final String b = "com.android.settings.fuelgauge.PowerUsageSummary";
  protected final String c = "com.android.settings.Settings";
  protected final String d = ":android:show_fragment";
  protected final int e = 5;
  protected final int f = 30;
  private p g;
  private t h;
  private ListView i;

  private void F()
  {
    try
    {
      Intent localIntent = new Intent("android.intent.action.MAIN");
      localIntent.addCategory("android.intent.category.LAUNCHER");
      ComponentName localComponentName;
      if (Build.VERSION.SDK_INT < 11)
      {
        localComponentName = new ComponentName("com.android.settings", "com.android.settings.fuelgauge.PowerUsageSummary");
        localIntent.setFlags(270532608);
      }
      while (true)
      {
        localIntent.setComponent(localComponentName);
        a(localIntent);
        break;
        localComponentName = new ComponentName("com.android.settings", "com.android.settings.Settings");
        localIntent.putExtra(":android:show_fragment", "com.android.settings.fuelgauge.PowerUsageSummary");
        localIntent.setFlags(32768);
      }
    }
    catch (SecurityException localSecurityException)
    {
      com.avg.toolkit.f.a.a(localSecurityException);
    }
  }

  private void b(Intent paramIntent)
  {
    if (paramIntent == null)
      return;
    int j = paramIntent.getIntExtra("health", 0);
    int k = paramIntent.getIntExtra("level", 0);
    int m = paramIntent.getIntExtra("temperature", 0);
    int n = paramIntent.getIntExtra("status", 0);
    if (this.g == null)
      this.g = new p();
    this.g.a(this.ag, k, m, j, n);
    label108: ImageView localImageView1;
    if (this.h == null)
    {
      this.h = new t(this, this.ag);
      this.i.setAdapter(this.h);
      localImageView1 = (ImageView)this.ag.findViewById(e.img_green);
      if (k > 5)
        break label393;
      localImageView1.setBackgroundResource(d.battery_red);
    }
    while (true)
    {
      localImageView1.setMinimumWidth(k * this.Y / 100);
      ImageView localImageView2 = (ImageView)this.ag.findViewById(e.iv_battery_lightning);
      localImageView2.setVisibility(4);
      if (this.g.a())
        localImageView2.setVisibility(0);
      ((TextView)this.ag.findViewById(e.tvBatteryLevel)).setText(k + "%");
      String str1 = this.ag.getString(g.battery_temperature) + " " + this.g.b() + "\n";
      String str2 = str1 + this.ag.getString(g.battery_status) + " " + this.g.i() + "\n";
      String str3 = str2 + this.ag.getString(g.battery_health) + " " + this.g.j();
      ((TextView)this.ag.findViewById(e.tvBatterySummary)).setText(str3);
      break;
      this.h.notifyDataSetChanged();
      break label108;
      label393: if (k <= 30)
        localImageView1.setBackgroundResource(d.battery_orange);
      else
        localImageView1.setBackgroundResource(d.battery_green);
    }
  }

  public View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView;
    if (paramViewGroup == null)
      localView = null;
    while (true)
    {
      return localView;
      localView = paramLayoutInflater.inflate(com.avg.a.f.battery_state, paramViewGroup, false);
      if (this.ag.o())
      {
        a(this.ag.getString(g.performance_battery), localView);
        d(true);
      }
    }
  }

  public ArrayList a(Object paramObject)
  {
    if ((paramObject instanceof Menu))
    {
      ((Menu)paramObject).add(0, 7, 0, this.ag.getString(g.battery_usage));
      ((Menu)paramObject).add(0, 8, 0, this.ag.getString(g.battery_save_settings));
    }
    while (true)
    {
      com.avg.toolkit.c.a.a(this.ag, "battery_consumption", "menu_opened", null, 0);
      return null;
      if ((paramObject instanceof com.avg.ui.general.c.f))
      {
        ((com.avg.ui.general.c.f)paramObject).a(0, 7, 0, this.ag.getString(g.battery_usage));
        ((com.avg.ui.general.c.f)paramObject).a(0, 8, 0, this.ag.getString(g.battery_save_settings));
      }
    }
  }

  protected void a()
  {
    a(new Intent(this.ag.getApplicationContext(), BatterySaveSettingsActivity.class));
  }

  public void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    if (this.aa == null)
      this.aa = new s(this);
    this.Z = new b(0);
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

  public boolean a_(MenuItem paramMenuItem)
  {
    this.ag.closeOptionsMenu();
    if (this.ag.o())
      e(paramMenuItem);
    return super.a_(paramMenuItem);
  }

  public boolean b(int paramInt)
  {
    boolean bool = true;
    switch (paramInt)
    {
    default:
      bool = false;
    case 7:
      while (true)
      {
        return bool;
        F();
        com.avg.toolkit.c.a.a(this.ag, "battery_consumption", "battery_usage", null, 0);
      }
    case 8:
    }
    if (this.ag.o())
      this.ag.a(new c(), e.fragment_content, "BatterySaveSettingsFragment");
    while (true)
    {
      com.avg.toolkit.c.a.a(this.ag, "battery_consumption", "power_saving_options", null, 0);
      break;
      a();
    }
  }

  public boolean b(MenuItem paramMenuItem)
  {
    return b(paramMenuItem.getItemId());
  }

  public void d(Bundle paramBundle)
  {
    super.d(paramBundle);
    this.i = ((ListView)this.ag.findViewById(e.list));
    this.i.setDivider(null);
    this.i.setDividerHeight(0);
    this.Y = BitmapFactory.decodeResource(i(), d.battery_empty).getWidth();
  }

  public boolean e(MenuItem paramMenuItem)
  {
    this.ag.closeOptionsMenu();
    return b(paramMenuItem.getItemId());
  }

  public void r()
  {
    super.r();
    this.Z.a(this.aa);
    this.ag.registerReceiver(this.Z, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
  }

  public void s()
  {
    super.s();
    this.ag.unregisterReceiver(this.Z);
    this.Z.a(null);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.tuneup.battery.r
 * JD-Core Version:    0.6.2
 */