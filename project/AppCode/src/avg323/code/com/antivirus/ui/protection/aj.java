package com.antivirus.ui.protection;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Messenger;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.antivirus.AVService;
import com.antivirus.core.scanners.h;
import com.antivirus.core.scanners.n;
import com.antivirus.ui.tablet.DualPaneActivity;
import com.antivirus.ui.tablet.e;
import com.avg.ui.general.o;
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

public class aj extends com.antivirus.ui.a.a.a
{
  private static int ae = 0;
  public static com.antivirus.core.scanners.c g = com.antivirus.core.scanners.c.a;
  private boolean Y = false;
  private String Z = null;
  public TextView a = null;
  private h aa = null;
  private View ab = null;
  private am ac = am.a;
  private boolean ad = false;
  public ImageView b = null;
  public TextView c = null;
  public ProgressBar d = null;
  public TextView e = null;
  public Button f = null;
  private View h = null;
  private String i = null;

  private void G()
  {
    this.Y = false;
    this.b.setVisibility(0);
    this.ac = am.b;
    this.d.setProgress(0);
    this.d.setVisibility(4);
    H();
    r();
  }

  private void H()
  {
    ((DualPaneActivity)this.ag).a(com.antivirus.ui.tablet.c.a(this.aa));
    if (((DualPaneActivity)this.ag).o != null)
      this.aa = ((DualPaneActivity)this.ag).o.a(com.antivirus.core.scanners.c.a);
    if (this.aa == null);
    while (true)
    {
      return;
      long l = this.aa.b;
      boolean bool = this.aa.d();
      if (bool)
      {
        this.b.setImageResource(2130837600);
        this.c.setVisibility(0);
        int j = this.aa.e();
        if (1 == j)
          this.c.setText(j + " " + com.antivirus.m.a(this.ag, 2131296799));
        while (true)
        {
          this.c.setTextColor(this.ag.getResources().getColor(2131165241));
          this.e.setVisibility(8);
          this.a.setVisibility(4);
          this.d.setVisibility(4);
          this.ab.setVisibility(8);
          a(ao.c);
          break;
          this.c.setText(j + " " + com.antivirus.m.a(this.ag, 2131296800));
        }
      }
      if ((!bool) && (0L == l))
      {
        this.b.setImageResource(2130837584);
        this.c.setText(com.antivirus.m.a(this.ag, 2131296795));
        this.c.setVisibility(0);
        this.e.setVisibility(8);
        this.a.setVisibility(4);
        a(ao.a);
        this.d.setVisibility(4);
      }
      else if ((!bool) && (0L < l))
      {
        this.b.setImageResource(2130837585);
        String str = com.antivirus.m.a(this.ag, 2131296801) + " " + DateFormat.getDateInstance(2, Locale.getDefault()).format(new Date(l));
        this.c.setVisibility(0);
        this.c.setText(com.antivirus.m.a(this.ag, 2131296830));
        this.c.setTextColor(this.ag.getResources().getColor(2131165242));
        this.e.setVisibility(0);
        this.e.setText(str);
        a(ao.b);
        this.d.setVisibility(4);
        this.ab.setVisibility(8);
      }
    }
  }

  private LinearLayout.LayoutParams I()
  {
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -2, 1.5F);
    localLayoutParams.gravity = 80;
    return localLayoutParams;
  }

  private void J()
  {
    int j;
    if (this.ag.t)
      switch (((DualPaneActivity)this.ag).o.a(new Messenger(new an(this)), n.b, com.antivirus.ui.main.c.b))
      {
      default:
        j = 2131296322;
        this.i = com.antivirus.m.a(this.ag, j);
        this.a.setText(this.i);
        this.a.setVisibility(0);
        this.ab.setVisibility(0);
      case 1:
      case 2:
      case 4:
      case 8:
      case 16:
      case -3:
      }
    while (true)
    {
      return;
      j = 2131296591;
      break;
      j = 2131296592;
      break;
      j = 2131296592;
      break;
      j = 2131296592;
      break;
      j = 2131296593;
      break;
      if (this.ad)
        this.ad = false;
      else
        G();
    }
  }

  private void K()
  {
    this.Y = false;
    Bundle localBundle = new Bundle();
    localBundle.putSerializable("__SAD", g);
    AVService.a(this.ag, 2000, 9, localBundle);
    this.Z = com.antivirus.m.a(this.ag, 2131296782);
    this.f.setText(this.Z);
    LinearLayout.LayoutParams localLayoutParams = I();
    this.f.setLayoutParams(localLayoutParams);
    this.ac = am.a;
    this.b.setVisibility(0);
    this.d.setProgress(0);
    this.d.setVisibility(4);
    H();
  }

  private void a(ao paramao)
  {
    LinearLayout.LayoutParams localLayoutParams = I();
    switch (al.a[paramao.ordinal()])
    {
    default:
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      return;
      int j = this.aa.e();
      if (1 == j)
        this.c.setText(j + " " + com.antivirus.m.a(this.ag, 2131296799));
      while (true)
      {
        this.Z = com.antivirus.m.a(this.ag, 2131296798);
        this.f.setText(this.Z);
        this.f.setLayoutParams(localLayoutParams);
        this.ac = am.b;
        this.ab.setVisibility(8);
        break;
        this.c.setText(j + " " + com.antivirus.m.a(this.ag, 2131296800));
      }
      this.a.setVisibility(4);
      this.Z = com.antivirus.m.a(this.ag, 2131296782);
      this.f.setText(this.Z);
      this.f.setLayoutParams(localLayoutParams);
      this.ac = am.a;
      this.ab.setVisibility(8);
    }
  }

  public View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    if (paramViewGroup == null);
    for (View localView = null; ; localView = this.h)
    {
      return localView;
      this.h = paramLayoutInflater.inflate(2130903089, paramViewGroup, false);
      this.a = ((TextView)this.h.findViewById(2131230974));
      if (this.i != null)
        this.a.setText(this.i);
      this.f = ((Button)this.h.findViewById(2131230979));
      if (this.Z != null)
        this.f.setText(this.Z);
      this.b = ((ImageView)this.h.findViewById(2131230975));
      this.d = ((ProgressBar)this.h.findViewById(2131230978));
      this.c = ((TextView)this.h.findViewById(2131230976));
      this.ab = this.h.findViewById(2131230973);
      this.e = ((TextView)this.h.findViewById(2131230977));
      this.f.setOnClickListener(new ak(this));
    }
  }

  public void a()
  {
    if (am.a == this.ac)
    {
      a(true);
      if (o.c())
        ((DualPaneActivity)this.ag).a(e.d);
      com.avg.toolkit.c.a.a(this.ag, "app_landing", "scan_now", null, 0);
    }
    while (true)
    {
      return;
      if (am.b == this.ac)
      {
        com.antivirus.ui.scan.results.m localm = new com.antivirus.ui.scan.results.m();
        this.ag.a(localm, 2131230908, "ScanResultsFragment");
        this.ag.invalidateOptionsMenu();
        com.avg.toolkit.c.a.a(this.ag, "app_landing", "view_scan_results", null, 0);
        this.ag.d(2131230907);
      }
      else if (am.c == this.ac)
      {
        K();
        com.avg.toolkit.c.a.a(this.ag, "app_landing", "stop_scan", null, 0);
      }
    }
  }

  public void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    c(true);
    if (!this.ag.t())
      this.ag.p();
    this.aa = new h();
    this.aa.a(this.ag);
  }

  public void a(h paramh)
  {
    this.aa = paramh;
    if (this.Y)
      J();
  }

  public void a(boolean paramBoolean)
  {
    if (this.Y)
      return;
    if (this.ag.o())
      ((DualPaneActivity)this.ag).a(e.d);
    this.d.setVisibility(0);
    this.d.setProgress(0);
    this.Y = true;
    if (paramBoolean)
    {
      Bundle localBundle = new Bundle();
      localBundle.putSerializable("__SAD", com.antivirus.core.scanners.c.a);
      localBundle.putParcelable("__SAH", new Messenger(new an(this)));
      AVService.a(this.ag, 2000, 1, localBundle);
    }
    while (true)
    {
      this.b.setVisibility(8);
      this.c.setVisibility(8);
      this.e.setVisibility(8);
      this.ab.setVisibility(0);
      this.Z = com.antivirus.m.a(this.ag, 2131296666);
      this.f.setText(this.Z);
      this.ac = am.c;
      break;
      J();
    }
  }

  public void b(Intent paramIntent)
  {
    boolean bool = paramIntent.getBooleanExtra("avmsStartScan", false);
    if ((paramIntent.getBooleanExtra("ScannerClient", false)) || (bool))
    {
      paramIntent.removeExtra("ScannerClient");
      this.ad = paramIntent.getBooleanExtra("StartedFromWidget", false);
      paramIntent.removeExtra("StartedFromWidget");
      paramIntent.removeExtra("avmsStartScan");
      a(bool);
    }
  }

  public void e(Bundle paramBundle)
  {
    paramBundle.putString("mUpdatingTv", this.a.getText().toString());
    super.e(paramBundle);
  }

  public void r()
  {
    Intent localIntent = this.ag.getIntent();
    if (localIntent.getIntExtra("from_notification", -1) == 1)
    {
      com.avg.toolkit.c.a.a(this.ag, "app_landing", "opened_from_notification", null, 0);
      localIntent.removeExtra("from_notification");
    }
    b(localIntent);
    if (am.c != this.ac)
      if (!this.Y)
        H();
    while (true)
    {
      super.r();
      return;
      this.b.setVisibility(8);
      if (!this.Y);
      this.c.setVisibility(8);
      this.e.setVisibility(8);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.protection.aj
 * JD-Core Version:    0.6.2
 */