package com.antivirus.ui.protection;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.CheckBox;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import com.antivirus.AVService;
import com.antivirus.core.b;
import com.antivirus.core.scanners.h;
import com.antivirus.m;
import com.antivirus.ui.main.HandheldMainActivity;
import com.antivirus.ui.scan.results.ScanResultsActivity;
import com.antivirus.ui.tablet.DualPaneActivity;
import com.antivirus.widget.update.UpdateWidgetPlugin;
import com.avg.toolkit.b.f;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;
import java.util.Locale;

public class r extends com.antivirus.ui.a.a.a
  implements AdapterView.OnItemClickListener
{
  private static boolean b = false;
  private String Y = null;
  private String Z = null;
  BroadcastReceiver a = new w(this);
  private String aa = null;
  private int ab;
  private boolean ac = false;
  private ah[] ad;
  private Runnable ae = new s(this);
  private BroadcastReceiver ah = new u(this);
  private View c = null;
  private Handler d = null;
  private View e = null;
  private AlertDialog f = null;
  private AlertDialog g = null;
  private h h = null;
  private ai i = null;

  private void F()
  {
    this.h.a(this.ag);
    long l = this.h.b;
    this.Z = m.a(this.ag, 2131296782);
    this.ac = this.ag.getIntent().getBooleanExtra("SCAN_STATUS_EXTRA", false);
    if (this.ac)
    {
      this.Y = m.a(this.ag, 2131296322);
      this.ab = i().getColor(2131165246);
    }
    while (true)
    {
      return;
      if (l <= 0L)
      {
        this.Y = m.a(this.ag, 2131296795);
        this.ab = i().getColor(2131165246);
      }
      else
      {
        String str = m.a(this.ag, 2131296797);
        this.ab = -1;
        if (this.h.d())
        {
          str = "<font color='#ff0000'>" + m.a(this.ag, 2131296800) + "</font>";
          this.Z = m.a(this.ag, 2131296798);
        }
        this.Y = (m.a(this.ag, 2131296796) + " " + DateFormat.getDateInstance(1, Locale.getDefault()).format(new Date(l)) + "<br>" + str);
      }
    }
  }

  private void G()
  {
    ListView localListView = (ListView)this.c.findViewById(2131230805);
    this.i = new ai(this, this.ag, a(this.c.getContext()));
    localListView.setAdapter(this.i);
    localListView.setOnItemClickListener(this);
  }

  private int H()
  {
    int j = 2;
    long l = this.af.g();
    if (86400000L == l)
      j = 0;
    while (true)
    {
      return j;
      if (604800000L == l)
        j = 1;
      else if (-1L != l);
    }
  }

  private void I()
  {
    boolean bool;
    com.avg.ui.general.a.a locala;
    if (!this.af.v())
    {
      bool = true;
      locala = this.ag;
      if (!bool)
        break label60;
    }
    label60: for (String str = "on"; ; str = "off")
    {
      com.avg.toolkit.c.a.a(locala, "protection", "safe_web_surfing", str, 0);
      this.af.e(bool);
      AVService.a(this.ag, 3000, 3, null);
      return;
      bool = false;
      break;
    }
  }

  private void J()
  {
    if (this.af.n())
      if (com.antivirus.c.x())
        K();
    while (true)
    {
      AVService.a(this.ag, 2000, 6, null);
      return;
      this.af.c(false);
      com.antivirus.c.i(false);
      com.avg.toolkit.c.a.a(this.ag, "protection", "scan_sms", "off", 0);
      continue;
      this.af.c(true);
      com.antivirus.c.i(true);
      com.avg.toolkit.c.a.a(this.ag, "protection", "scan_sms", "on", 0);
    }
  }

  private void K()
  {
    android.support.v4.app.i locali = h();
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(locali);
    View localView = LayoutInflater.from(locali).inflate(2130903071, null);
    localBuilder.setTitle(a(2131296485));
    localBuilder.setView(localView);
    localBuilder.setMessage(a(2131296759));
    CheckBox localCheckBox = (CheckBox)localView.findViewById(2131230904);
    localBuilder.setPositiveButton(2131296672, new ab(this));
    localBuilder.setNegativeButton(2131296673, new ac(this));
    AlertDialog localAlertDialog = localBuilder.create();
    localAlertDialog.setOnDismissListener(new ad(this, localCheckBox));
    localAlertDialog.show();
  }

  private void L()
  {
    String str1 = m.a(this.ag, 2131296675);
    if ((com.avg.toolkit.e.e.a() != null) && (com.avg.toolkit.e.e.a().b()))
      str1 = m.a(this.ag, 2131296674);
    String str2 = m.a(this.ag, 2131296488).replace("[appname]", str1);
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this.ag);
    localBuilder.setTitle(str2);
    b localb = new b(this.ag.getApplicationContext());
    localBuilder.setMessage(m.a(this.ag, 2131296487) + localb.u());
    localBuilder.setIcon(2130837871);
    localBuilder.setPositiveButton(m.a(this.ag, 2131296269), new ae(this));
    localBuilder.setCancelable(true);
    this.f = localBuilder.show();
  }

  private void M()
  {
    if (this.ac)
      Toast.makeText(this.ag, m.a(this.ag, 2131296484), 1).show();
    while (true)
    {
      return;
      this.aa = new b(this.ag.getApplicationContext()).u();
      if (!f.a(this.ag))
      {
        if (this.g != null)
          this.g.dismiss();
        AlertDialog.Builder localBuilder2 = new AlertDialog.Builder(this.ag);
        localBuilder2.setTitle(m.a(this.ag, 2131296261));
        localBuilder2.setMessage(m.a(this.ag, 2131296262));
        localBuilder2.setIcon(2130837869);
        localBuilder2.setPositiveButton(m.a(this.ag, 2131296269), new ag(this));
        localBuilder2.setCancelable(true);
        this.f = localBuilder2.show();
      }
      else
      {
        AlertDialog.Builder localBuilder1 = new AlertDialog.Builder(this.ag);
        localBuilder1.setTitle(m.a(this.ag, 2131296828));
        localBuilder1.setCancelable(true);
        localBuilder1.setIcon(2130837869);
        this.e = View.inflate(this.ag, 2130903087, null);
        localBuilder1.setView(this.e);
        this.g = localBuilder1.create();
        this.g.setCanceledOnTouchOutside(false);
        ((TextView)this.e.findViewById(2131230969)).setText(m.a(this.ag, 2131296298));
        this.g.show();
        b = true;
        AVService.a(this.ag, 4000, 2004, null);
        this.ag.registerReceiver(this.a, new IntentFilter("droidsec.com.update"));
        if (this.d == null)
          this.d = new Handler();
        this.d.postDelayed(this.ae, 15000L);
      }
    }
  }

  private ArrayList a(Context paramContext)
  {
    ArrayList localArrayList = new ArrayList();
    ah[] arrayOfah = this.ad;
    int j = arrayOfah.length;
    int k = 0;
    if (k < j)
    {
      ah localah = arrayOfah[k];
      switch (t.a[localah.ordinal()])
      {
      default:
      case 1:
      case 2:
      case 4:
      case 3:
      case 6:
      case 7:
      case 5:
      case 8:
      }
      while (true)
      {
        k++;
        break;
        b localb = new b(this.ag.getApplicationContext());
        try
        {
          PackageInfo localPackageInfo2 = paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 0);
          localPackageInfo1 = localPackageInfo2;
          localArrayList.add(new com.avg.ui.general.b.c(m.a(this.ag, 2131296483), m.a(this.ag, 2131296474) + localPackageInfo1.versionName + " - " + localb.u(), 2130837870));
        }
        catch (Exception localException)
        {
          while (true)
          {
            com.avg.toolkit.f.a.a(localException);
            PackageInfo localPackageInfo1 = null;
          }
        }
        localArrayList.add(new com.avg.ui.general.b.c(this.Z, this.ab, this.Y, true, 2130837780));
        continue;
        String str = i().getStringArray(2131427337)[H()];
        localArrayList.add(new com.avg.ui.general.b.c(m.a(this.ag, 2131296476), str, 2130837605));
        continue;
        localArrayList.add(new com.avg.ui.general.b.c(m.a(this.ag, 2131296524), m.a(this.ag, 2131296525), 2130837747));
        continue;
        localArrayList.add(new com.avg.ui.general.b.c(m.a(this.ag, 2131296632), m.a(this.ag, 2131296633), 2130837819, this.af.v()));
        continue;
        localArrayList.add(new com.avg.ui.general.b.c(m.a(this.ag, 2131296691), m.a(this.ag, 2131296692), 2130837821, this.af.i()));
        continue;
        localArrayList.add(new com.avg.ui.general.b.c(m.a(this.ag, 2131296485), m.a(this.ag, 2131296486), 2130837774, this.af.n()));
        continue;
        localArrayList.add(new com.avg.ui.general.b.c(m.a(this.ag, 2131296817), m.a(this.ag, 2131296818), 2130837820, this.af.o()));
      }
    }
    return localArrayList;
  }

  private void a(String paramString)
  {
    Toast.makeText(this.ag, paramString, 0).show();
  }

  private void b(int paramInt)
  {
    int j = 1;
    long l = this.af.g();
    switch (paramInt)
    {
    case 1:
    default:
      if (604800000L == l)
        break;
    case 0:
    case 2:
    }
    while (true)
    {
      this.af.e(604800000L);
      int k = j;
      try
      {
        b localb = new b(this.ag);
        if (localb.f() == 0L)
          localb.d(System.currentTimeMillis());
        com.antivirus.c.n();
        if (k != 0)
        {
          int m = Arrays.asList(this.ad).indexOf(ah.c);
          String str = i().getStringArray(2131427337)[paramInt];
          ((com.avg.ui.general.b.c)this.i.getItem(m)).a(str);
          this.i.notifyDataSetChanged();
          AVService.a(this.ag, 2000, 5, null);
        }
        return;
        if (86400000L != l);
        while (true)
        {
          this.af.e(86400000L);
          k = j;
          break;
          j = 0;
        }
        j = 0;
        continue;
        if (-1L != l);
        while (true)
        {
          this.af.e(-1L);
          k = j;
          break;
          j = 0;
        }
      }
      catch (Exception localException)
      {
        while (true)
          com.avg.toolkit.f.a.a(localException);
      }
    }
  }

  public View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView;
    if (paramViewGroup == null)
    {
      localView = null;
      return localView;
    }
    if (this.ag.o());
    for (this.c = paramLayoutInflater.inflate(2130903088, paramViewGroup, false); ; this.c = paramLayoutInflater.inflate(2130903083, paramViewGroup, false))
    {
      G();
      localView = this.c;
      break;
    }
  }

  public void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    android.support.v4.a.e.a(this.ag).a(this.ah, new IntentFilter("SCAN_STATUS_BROADCAST"));
    if (!this.ag.t())
      this.ag.p();
    this.h = new h();
    F();
    if (this.ag.getIntent().getBooleanExtra("launchFormWidget", false))
    {
      M();
      AVService.a(this.ag, 4000, 6001, null);
      this.ag.getIntent().removeExtra("launchFormWidget");
    }
    if (this.ag.o())
    {
      ah[] arrayOfah3 = new ah[6];
      arrayOfah3[0] = ah.a;
      arrayOfah3[1] = ah.c;
      arrayOfah3[2] = ah.d;
      arrayOfah3[3] = ah.e;
      arrayOfah3[4] = ah.f;
      arrayOfah3[5] = ah.h;
      this.ad = arrayOfah3;
    }
    while (true)
    {
      return;
      if (com.avg.ui.general.c.i.b(this.ag))
      {
        ah[] arrayOfah2 = new ah[7];
        arrayOfah2[0] = ah.a;
        arrayOfah2[1] = ah.b;
        arrayOfah2[2] = ah.c;
        arrayOfah2[3] = ah.d;
        arrayOfah2[4] = ah.e;
        arrayOfah2[5] = ah.f;
        arrayOfah2[6] = ah.h;
        this.ad = arrayOfah2;
      }
      else
      {
        ah[] arrayOfah1 = new ah[8];
        arrayOfah1[0] = ah.a;
        arrayOfah1[1] = ah.b;
        arrayOfah1[2] = ah.c;
        arrayOfah1[3] = ah.d;
        arrayOfah1[4] = ah.e;
        arrayOfah1[5] = ah.f;
        arrayOfah1[6] = ah.g;
        arrayOfah1[7] = ah.h;
        this.ad = arrayOfah1;
      }
    }
  }

  public void d()
  {
    if (this.f != null)
    {
      this.f.dismiss();
      this.f = null;
    }
    if (this.g != null)
    {
      this.g.dismiss();
      this.g = null;
      this.e = null;
    }
    try
    {
      this.ag.unregisterReceiver(this.a);
      label54: super.d();
      return;
    }
    catch (Exception localException)
    {
      break label54;
    }
  }

  public void e()
  {
    android.support.v4.a.e.a(this.ag).a(this.ah);
    a(this.c);
    System.gc();
    super.e();
  }

  public void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    boolean bool1 = true;
    switch (t.a[this.ad[paramInt].ordinal()])
    {
    default:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
      while (true)
      {
        return;
        M();
        AVService.a(this.ag, 4000, 6001, null);
        AVService.a(this.ag, 25000, 8, UpdateWidgetPlugin.k());
        com.avg.toolkit.c.a.a(this.ag, "protection", "update_now", null, 0);
        continue;
        if (!this.ac)
        {
          if (!this.h.d())
          {
            com.avg.toolkit.c.a.a(this.ag, "protection", "scan_now", null, 0);
            Intent localIntent2 = new Intent(this.ag, HandheldMainActivity.class);
            localIntent2.putExtra("avmsStartScan", bool1);
            localIntent2.setFlags(872415232);
            a(localIntent2);
          }
          while (true)
          {
            this.ag.finish();
            break;
            Intent localIntent1 = new Intent(this.ag, ScanResultsActivity.class);
            localIntent1.putExtra("ScannerClient", com.antivirus.ui.main.c.b.ordinal());
            a(localIntent1);
            com.avg.toolkit.c.a.a(this.ag, "app_landing", "view_scan_results", null, 0);
          }
          if (this.ag.o())
          {
            this.ag.d(2131230907);
            this.ag.a(new a(), 2131230908, "FileScannerFragment");
          }
          else
          {
            a(new Intent(this.ag, FileScannerActivity.class));
            com.avg.toolkit.c.a.a(this.ag, "protection", "file_scanner", "permitted", 0);
            continue;
            AlertDialog.Builder localBuilder = new AlertDialog.Builder(this.ag);
            localBuilder.setTitle(m.a(this.ag, 2131296477));
            localBuilder.setIcon(2130837731);
            localBuilder.setSingleChoiceItems(new com.avg.ui.general.b.e(this.ag, H(), m.b(this.ag, 2131427337)), H(), new v(this));
            AlertDialog localAlertDialog = localBuilder.create();
            localAlertDialog.setCanceledOnTouchOutside(false);
            localAlertDialog.show();
            com.avg.toolkit.c.a.a(this.ag, "protection", "scan_freq", null, 0);
            continue;
            J();
            this.i.notifyDataSetChanged();
            continue;
            I();
            this.i.notifyDataSetChanged();
          }
        }
      }
    case 7:
      if (this.af.i())
      {
        this.af.a(false);
        com.avg.toolkit.c.a.a(this.ag, "protection", "scan_sd", "off", 0);
      }
      while (true)
      {
        this.i.notifyDataSetChanged();
        break;
        this.af.a(bool1);
        com.avg.toolkit.c.a.a(this.ag, "protection", "scan_sd", "on", 0);
      }
    case 8:
    }
    boolean bool2 = this.af.o();
    b localb = this.af;
    label567: com.avg.ui.general.a.a locala;
    if (!bool2)
    {
      localb.d(bool1);
      locala = this.ag;
      if (!bool2)
        break label618;
    }
    label618: for (String str = "off"; ; str = "on")
    {
      com.avg.toolkit.c.a.a(locala, "protection", "enable_pup", str, 0);
      this.i.notifyDataSetChanged();
      break;
      bool1 = false;
      break label567;
    }
  }

  public void r()
  {
    if (this.ag.o())
    {
      DualPaneActivity localDualPaneActivity = (DualPaneActivity)this.ag;
      if (localDualPaneActivity.p)
      {
        localDualPaneActivity.p = false;
        localDualPaneActivity.n.a(true);
      }
    }
    super.r();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.protection.r
 * JD-Core Version:    0.6.2
 */