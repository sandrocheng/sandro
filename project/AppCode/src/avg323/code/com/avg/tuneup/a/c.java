package com.avg.tuneup.a;

import android.app.ActivityManager;
import android.app.ActivityManager.MemoryInfo;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.StatFs;
import android.support.v4.app.Fragment;
import android.text.format.Formatter;
import android.view.View;
import android.widget.ListView;
import com.avg.a.g;
import com.avg.tuneup.battery.BatteryStateActivity;
import com.avg.tuneup.battery.r;
import com.avg.tuneup.j;
import com.avg.tuneup.storage.StorageActivity;
import com.avg.tuneup.taskkiller.TaskKillerActivity;
import com.avg.tuneup.taskkiller.o;
import com.avg.tuneup.traffic.TrafficMeterActivity;
import com.avg.tuneup.traffic.s;
import com.avg.tuneup.traffic.y;
import java.io.File;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

public class c extends com.avg.ui.general.fragments.d
{
  public final int Y = 0;
  public final int Z = 1;
  public final int aa = 2;
  public final int ab = 3;
  protected final int ac = 4;
  private i ae;
  private com.avg.tuneup.battery.b af;
  private Handler ag;
  private int ah;
  private String ai;
  private String aj;
  private String ak;
  private int al;
  private String am;
  private int an;
  private int ao;
  ArrayList i;

  public c()
  {
    P();
    this.ao = -1;
  }

  private void K()
  {
    new Thread(new f(this)).start();
  }

  private long L()
  {
    ActivityManager.MemoryInfo localMemoryInfo = new ActivityManager.MemoryInfo();
    ((ActivityManager)this.ad.getSystemService("activity")).getMemoryInfo(localMemoryInfo);
    return localMemoryInfo.availMem;
  }

  private int M()
  {
    ArrayList localArrayList = new o(this.ad.getPackageName()).a(this.ad, false, false);
    int j = 0;
    if (localArrayList != null)
      j = localArrayList.size();
    return j;
  }

  private void N()
  {
    while (true)
    {
      try
      {
        StatFs localStatFs1 = new StatFs(Environment.getDataDirectory().getPath());
        long l1 = localStatFs1.getBlockSize();
        long l2 = localStatFs1.getAvailableBlocks();
        this.am = (this.ad.getString(g.performance_free_space_system) + " " + Formatter.formatFileSize(this.ad, l2 * l1) + "\n");
        if ((Build.VERSION.SDK_INT < 11) || (!Environment.isExternalStorageEmulated()))
        {
          String str = Environment.getExternalStorageState();
          if ("mounted".equals(str))
            break label229;
          boolean bool = "mounted_ro".equals(str);
          j = 0;
          if (bool)
            break label229;
          if (j != 0)
          {
            StatFs localStatFs2 = new StatFs(Environment.getExternalStorageDirectory().getPath());
            long l3 = localStatFs2.getBlockSize();
            long l4 = localStatFs2.getAvailableBlocks();
            this.am = (this.am + this.ad.getString(g.performance_free_space_sd) + " " + Formatter.formatFileSize(this.ad, l4 * l3));
          }
        }
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        com.avg.toolkit.f.a.a(localIllegalArgumentException);
      }
      return;
      label229: int j = 1;
    }
  }

  private void O()
  {
    boolean bool = s.b(this.ad);
    this.aj = this.ad.getString(g.performance_setup_plan);
    this.al = i().getColor(com.avg.a.c.orange_warning);
    if (!bool)
      this.aj = "";
    double[] arrayOfDouble;
    int j;
    String str;
    if (j.a())
    {
      this.al = -1;
      arrayOfDouble = s.a(this.ad.getApplicationContext()).a(true);
      if (arrayOfDouble != null)
      {
        Calendar localCalendar = s.a(this.ad.getApplicationContext()).f();
        j = s.a(this.ad.getApplicationContext()).g();
        str = DateFormat.getDateInstance(2, Locale.getDefault()).format(new Date(localCalendar.getTimeInMillis()));
        this.aj = (this.ad.getString(g.used) + " " + Formatter.formatFileSize(this.ad, ()arrayOfDouble[1]) + " " + this.ad.getString(g.performance_of) + " " + Formatter.formatFileSize(this.ad, j.c()) + "\n");
        if (j > 0)
          break label272;
        this.aj += this.ad.getString(g.till_midnight);
        if (arrayOfDouble[0] < 100.0D)
          break label345;
      }
    }
    for (this.al = -65536; ; this.al = i().getColor(com.avg.a.c.orange_warning))
      label272: label345: 
      do
      {
        return;
        this.aj = (this.aj + this.ad.getString(g.until).replace("[number]", new StringBuilder().append(j).append("").toString()) + " " + str);
        break;
      }
      while ((!j.i()) || (arrayOfDouble[0] < j.j()));
  }

  private void P()
  {
    this.i = new ArrayList();
    int j = 0;
    if (j < 4)
    {
      switch (j)
      {
      default:
      case 0:
      case 1:
      case 2:
      case 3:
      }
      while (true)
      {
        j++;
        break;
        this.i.add(new com.avg.ui.general.b.h(0));
        continue;
        this.i.add(new com.avg.ui.general.b.h(1));
        continue;
        this.i.add(new com.avg.ui.general.b.h(2));
        continue;
        this.i.add(new com.avg.ui.general.b.h(3));
      }
    }
  }

  private void b(Intent paramIntent)
  {
    if (paramIntent == null)
      return;
    this.ah = paramIntent.getIntExtra("level", 0);
    switch (paramIntent.getIntExtra("status", 0))
    {
    default:
      this.ai = this.ad.getString(g.unknown);
    case 2:
    case 3:
    case 5:
    case 4:
    }
    while (true)
    {
      this.ae.notifyDataSetChanged();
      break;
      this.ai = this.ad.getString(g.battery_charging);
      continue;
      this.ai = this.ad.getString(g.battery_discharging);
      continue;
      this.ai = this.ad.getString(g.battery_full);
      continue;
      this.ai = this.ad.getString(g.battery_not_charging);
    }
  }

  private void c(int paramInt)
  {
    int j = ((com.avg.ui.general.b.h)this.i.get(paramInt)).a;
    if (this.ad.o())
    {
      this.ae.a(false);
      this.ae.notifyDataSetChanged();
    }
    this.an = j;
    h localh;
    switch (j)
    {
    default:
      com.avg.toolkit.f.a.a();
      throw new IllegalStateException("Illegal Item selected");
    case 0:
      localh = I();
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      Fragment localFragment = h.a(localh);
      String str = h.b(localh);
      if ((this.ad.o()) && (localFragment != null) && (!this.ad.b(str)))
      {
        this.ad.a(localFragment, com.avg.a.e.fragment_content, str);
        this.ad.n();
      }
      return;
      localh = H();
      continue;
      localh = G();
      continue;
      localh = F();
    }
  }

  protected h F()
  {
    return a(StorageActivity.class, com.avg.tuneup.storage.b.class, "StorageFragment", "storage_usage");
  }

  protected h G()
  {
    return a(TrafficMeterActivity.class, y.class, "TrafficMeterFragment", "data_usage");
  }

  protected h H()
  {
    return a(BatteryStateActivity.class, r.class, "BatteryStateFragment", "battery_consumption");
  }

  protected h I()
  {
    return a(TaskKillerActivity.class, com.avg.tuneup.taskkiller.d.class, "TaskKillerFragment", "task_killer");
  }

  public void J()
  {
    if (this.ae != null)
    {
      this.an = -1;
      this.ae.a(true);
    }
  }

  protected h a(Class paramClass1, Class paramClass2, String paramString1, String paramString2)
  {
    h localh = new h(this);
    if (this.ad.o());
    while (true)
    {
      try
      {
        h.a(localh, (Fragment)paramClass2.newInstance());
        h.a(localh, paramString1);
        com.avg.toolkit.c.a.a(this.ad, "performance", paramString2, "permitted", 0);
        return localh;
      }
      catch (Exception localException)
      {
        com.avg.toolkit.f.a.a("Unable to create fragment instance: " + paramClass2.getName());
        continue;
      }
      a(new Intent(this.ad, paramClass1));
    }
  }

  public void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    this.af = new com.avg.tuneup.battery.b(0);
    if (this.ag == null)
      this.ag = new d(this);
    this.ak = (this.ad.getString(g.performance_running_tasks) + "\n");
    this.ak += this.ad.getString(g.performance_free_memory);
    this.ae = new i(this, this.ad, this.i);
  }

  public void a(View paramView, Bundle paramBundle)
  {
    this.an = -1;
    if (this.ao != -1)
    {
      this.an = this.ao;
      this.ao = -1;
      this.ae.a(false);
    }
    super.a(paramView, paramBundle);
  }

  public void b(int paramInt)
  {
    this.ao = paramInt;
    if (this.ae != null)
    {
      this.an = paramInt;
      this.ae.a(false);
      this.ae.notifyDataSetChanged();
    }
  }

  public void d(Bundle paramBundle)
  {
    super.d(paramBundle);
    a(this.ae);
    a().setOnItemClickListener(new e(this));
  }

  public void r()
  {
    super.r();
    this.af.a(this.ag);
    this.ad.registerReceiver(this.af, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
    O();
    N();
    K();
  }

  public void s()
  {
    super.s();
    this.ad.unregisterReceiver(this.af);
    this.af.a(null);
  }

  public void t()
  {
    super.t();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.tuneup.a.c
 * JD-Core Version:    0.6.2
 */