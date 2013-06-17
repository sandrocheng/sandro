package com.antivirus.ui.main;

import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.os.Messenger;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.antivirus.AVService;
import com.antivirus.ui.scan.results.ScanResultsActivity;
import com.avg.tuneup.traffic.s;
import com.avg.ui.license.EnterLicenseActivity;
import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

public class c extends com.antivirus.ui.a.a.a
{
  public static com.antivirus.core.scanners.c b = com.antivirus.core.scanners.c.a;
  private static int g = 0;
  private boolean Y = false;
  private boolean Z = false;
  public boolean a = false;
  private View aa;
  private Button ab = null;
  private n ac = n.a;
  private b ad = null;
  private b ae = null;
  private b ah = null;
  private b ai = null;
  private l aj = l.b;
  private com.avg.tuneup.battery.b ak;
  private boolean al = false;
  private boolean am = false;
  private Handler an;
  public TextView c;
  public TextView d = null;
  boolean e = false;
  private ProgressBar f;
  private com.antivirus.core.scanners.h h;
  private ImageView i = null;

  private void M()
  {
    int j;
    Intent localIntent;
    int k;
    if (((com.antivirus.ui.a)this.ag).t)
    {
      j = ((HandheldMainActivity)this.ag).n.a(new Messenger(new o(this)), com.antivirus.core.scanners.n.b, b);
      localIntent = new Intent("SCAN_STATUS_BROADCAST");
      switch (j)
      {
      default:
        k = 2131296828;
      case 1:
      case 2:
      case 4:
      case 8:
      case 16:
      case -3:
      case -1:
      }
    }
    while (true)
    {
      String str = com.antivirus.m.a(this.ag, k);
      if (this.c != null)
      {
        this.c.setVisibility(0);
        this.c.setText(str);
      }
      return;
      k = 2131296591;
      continue;
      k = 2131296592;
      continue;
      k = 2131296592;
      continue;
      k = 2131296592;
      continue;
      k = 2131296593;
      continue;
      if (this.Z)
        this.Z = false;
      while (true)
      {
        localIntent.putExtra("SCAN_STATUS_BROADCAST_EXTRA", j);
        android.support.v4.a.e.a(this.ag).a(localIntent);
        break;
        S();
      }
      k = 2131296828;
    }
  }

  private void N()
  {
    m localm = (m)this.ag.c();
    if (localm != null)
    {
      this.ad.setBackgroundDrawable(m.a(localm));
      this.ad.setLowerText(m.b(localm));
      this.Y = m.c(localm);
      this.ac = m.d(localm);
      this.ab.setText(m.e(localm));
      this.c.setText(m.f(localm));
    }
  }

  private void O()
  {
    this.am = false;
    boolean bool = s.e();
    double[] arrayOfDouble;
    if (bool)
    {
      arrayOfDouble = s.a(this.ag.getApplicationContext()).a(bool);
      if (arrayOfDouble != null)
      {
        if (arrayOfDouble[0] < 100.0D)
          break label57;
        this.am = true;
        this.e = true;
      }
    }
    while (true)
    {
      P();
      return;
      label57: if ((com.antivirus.c.g()) && (arrayOfDouble[0] >= com.antivirus.c.h()))
        this.am = true;
    }
  }

  private void P()
  {
    this.ah.setBackgroundResource(2130837631);
    if ((this.al) && (this.am))
      this.ah.setLowerText(com.antivirus.m.a(this.ag, 2131296804));
    while (true)
    {
      return;
      if (this.al)
      {
        this.ah.setLowerText(com.antivirus.m.a(this.ag, 2131296802));
      }
      else if (this.am)
      {
        if (this.e)
          this.ah.a(com.antivirus.m.a(this.ag, 2131296803), 2131165192);
        else
          this.ah.a(com.antivirus.m.a(this.ag, 2131296803), 2131165246);
      }
      else
      {
        this.ah.setBackgroundResource(2130837632);
        this.ah.setLowerText("");
      }
    }
  }

  private void Q()
  {
    p localp = T();
    switch (k.b[localp.ordinal()])
    {
    default:
      com.avg.toolkit.f.a.a("Can't handle: " + localp);
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      return;
      this.ad.setBackgroundResource(2130837635);
      continue;
      this.ad.setBackgroundResource(2130837636);
      continue;
      this.ad.setBackgroundResource(2130837637);
    }
  }

  private void R()
  {
    this.Y = false;
    Bundle localBundle = new Bundle();
    localBundle.putSerializable("__SAD", b);
    AVService.a(this.ag, 2000, 9, localBundle);
    this.ab.setText(com.antivirus.m.a(this.ag, 2131296782));
    this.ac = n.a;
    this.i.setVisibility(0);
    this.f.setProgress(0);
    this.f.setVisibility(8);
    U();
    Intent localIntent = new Intent("SCAN_STATUS_BROADCAST");
    localIntent.putExtra("SCAN_STATUS_BROADCAST_EXTRA", -3);
    android.support.v4.a.e.a(this.ag).a(localIntent);
  }

  private void S()
  {
    this.Y = false;
    this.i.setVisibility(0);
    this.ac = n.b;
    this.f.setProgress(0);
    this.f.setVisibility(8);
    U();
    r();
  }

  private p T()
  {
    p localp;
    if (this.h == null)
      localp = p.a;
    while (true)
    {
      return localp;
      long l = this.h.b;
      boolean bool = this.h.d();
      if (bool)
        localp = p.c;
      else if ((!bool) && (0L == l))
        localp = p.a;
      else if ((!bool) && (0L < l))
        localp = p.b;
      else
        localp = p.a;
    }
  }

  private void U()
  {
    if (((HandheldMainActivity)this.ag).n != null)
      this.h = ((HandheldMainActivity)this.ag).n.a(com.antivirus.core.scanners.c.a);
    if (this.h == null);
    while (true)
    {
      return;
      long l = this.h.b;
      boolean bool = this.h.d();
      this.d.setVisibility(0);
      if (bool)
      {
        this.c.setVisibility(8);
        int j = this.h.e();
        if (1 == j)
          this.d.setText(j + " " + com.antivirus.m.a(this.ag, 2131296799));
        while (true)
        {
          this.i.setImageResource(2130837600);
          a(p.c);
          this.f.setVisibility(8);
          this.ad.setBackgroundResource(2130837637);
          this.ad.setLowerText("");
          break;
          this.d.setText(j + " " + com.antivirus.m.a(this.ag, 2131296800));
        }
      }
      if ((!bool) && (0L == l))
      {
        this.i.setImageResource(2130837584);
        this.c.setVisibility(8);
        this.d.setText(com.antivirus.m.a(this.ag, 2131296795));
        a(p.a);
        this.f.setVisibility(8);
        this.ad.setBackgroundResource(2130837635);
        this.ad.setLowerText(com.antivirus.m.a(this.ag, 2131296795));
      }
      else if ((!bool) && (0L < l))
      {
        this.i.setImageResource(2130837585);
        String str = com.antivirus.m.a(this.ag, 2131296801) + " " + DateFormat.getDateInstance(2, Locale.getDefault()).format(new Date(l));
        this.c.setVisibility(8);
        this.d.setText(str);
        a(p.b);
        this.f.setVisibility(8);
        this.ad.setBackgroundResource(2130837636);
        this.ad.setLowerText("");
      }
    }
  }

  private void a(p paramp)
  {
    switch (k.b[paramp.ordinal()])
    {
    default:
    case 3:
    case 1:
    case 2:
    }
    while (true)
    {
      return;
      this.ab.setText(com.antivirus.m.a(this.ag, 2131296798));
      this.ac = n.b;
      continue;
      this.ab.setText(com.antivirus.m.a(this.ag, 2131296782));
      this.ac = n.a;
    }
  }

  private void a(boolean paramBoolean)
  {
    if (this.Y)
      return;
    this.f.setVisibility(0);
    this.f.setProgress(0);
    this.ad.setLowerText("");
    this.Y = true;
    if (paramBoolean)
    {
      Bundle localBundle = new Bundle();
      localBundle.putSerializable("__SAD", com.antivirus.core.scanners.c.a);
      localBundle.putParcelable("__SAH", new Messenger(new o(this)));
      AVService.a(this.ag, 2000, 1, localBundle);
      this.c.setVisibility(0);
      this.c.setText(com.antivirus.m.a(this.ag, 2131296828));
    }
    while (true)
    {
      this.i.setVisibility(8);
      this.ab.setText(com.antivirus.m.a(this.ag, 2131296666));
      this.d.setVisibility(8);
      this.ac = n.c;
      break;
      M();
    }
  }

  private void c(Intent paramIntent)
  {
    if (paramIntent == null);
    while (true)
    {
      return;
      int j = paramIntent.getIntExtra("level", 0);
      boolean bool1 = com.avg.tuneup.j.n();
      boolean bool2 = false;
      if (bool1)
      {
        int k = com.avg.tuneup.j.o();
        bool2 = false;
        if (j <= k)
          bool2 = true;
      }
      this.al = bool2;
      P();
    }
  }

  public boolean F()
  {
    this.ae.setBackgroundResource(2130837633);
    com.antivirus.applocker.c localc = new com.antivirus.applocker.c();
    boolean bool;
    if (com.avg.toolkit.e.e.a() == null)
    {
      this.ae.setBackgroundResource(2130837634);
      this.ae.setLowerText("");
      bool = true;
    }
    while (true)
    {
      return bool;
      if ((com.antivirus.c.q()) && (localc.e(this.ag)) && (com.avg.toolkit.e.e.a().d == com.avg.toolkit.e.c.c))
      {
        this.ae.setLowerText(com.antivirus.m.a(this.ag, 2131296806));
        bool = false;
      }
      else
      {
        this.ae.setBackgroundResource(2130837634);
        this.ae.setLowerText("");
        bool = false;
      }
    }
  }

  public void G()
  {
    this.ai = new b(this.ag, this.aa, 2131230787);
    this.ai.setUpperText(com.antivirus.m.a(this.ag, 2131296489));
    H();
    this.ai.setOnClickListener(new g(this));
  }

  public void H()
  {
    if ((com.antivirus.c.a(this.ag) != null) && (!"".equals(com.antivirus.c.a(this.ag))))
    {
      this.aj = l.a;
      this.ai.setBackgroundResource(2130837630);
      this.ai.setLowerText("");
    }
    while (true)
    {
      return;
      this.aj = l.b;
      this.ai.setBackgroundResource(2130837629);
      this.ai.setLowerText(com.antivirus.m.a(this.ag, 2131296805));
    }
  }

  public void I()
  {
    this.ad = new b(this.ag, this.aa, 2131230785);
    this.ad.setUpperText(com.antivirus.m.a(this.ag, 2131296783));
    this.ad.setBackgroundResource(2130837635);
    this.ad.setOnClickListener(new h(this));
  }

  public void J()
  {
    this.ah = new b(this.ag, this.aa, 2131230786);
    this.ah.setUpperText(com.antivirus.m.a(this.ag, 2131296454));
    this.ah.setOnClickListener(new i(this));
    this.ak = new com.avg.tuneup.battery.b(0);
    if (this.an == null)
      this.an = new j(this);
    O();
  }

  public Object K()
  {
    m localm = new m(this, null);
    m.a(localm, this.ad.getBackground());
    m.a(localm, this.ad.getLowerText());
    m.a(localm, this.Y);
    m.a(localm, this.ac);
    m.b(localm, this.ab.getText());
    m.c(localm, this.c.getText());
    return localm;
  }

  public View a(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView;
    if (paramViewGroup == null)
    {
      localView = null;
      return localView;
    }
    this.aa = paramLayoutInflater.inflate(2130903049, paramViewGroup, false);
    this.i = ((ImageView)this.aa.findViewById(2131230790));
    this.i.setOnClickListener(new d(this));
    this.ab = ((Button)this.aa.findViewById(2131230783));
    this.ab.setOnClickListener(new e(this));
    this.c = ((TextView)this.aa.findViewById(2131230791));
    this.d = ((TextView)this.aa.findViewById(2131230793));
    this.f = ((ProgressBar)this.aa.findViewById(2131230792));
    this.f.setVisibility(8);
    I();
    J();
    G();
    a();
    int j = com.avg.ui.general.c.i.a(((WindowManager)this.ag.getSystemService("window")).getDefaultDisplay());
    if ((2 == i().getConfiguration().orientation) && (160 == j))
    {
      float f2 = this.ad.getLowerTextSizeInPx();
      this.ad.a(0, f2);
      this.ah.a(0, f2);
      this.ai.a(0, f2);
      this.ae.a(0, f2);
    }
    while (true)
    {
      N();
      localView = this.aa;
      break;
      if (120 == j)
      {
        float f1 = this.ad.getLowerTextSizeInPx();
        this.ad.a(0, f1);
        this.ah.a(0, f1);
        this.ai.a(0, f1);
        this.ae.a(0, f1);
      }
    }
  }

  public void a()
  {
    this.ae = new b(this.ag, this.aa, 2131230788);
    this.ae.setUpperText(com.antivirus.m.a(this.ag, 2131296784));
    this.ae.setOnClickListener(new f(this));
  }

  public void a(Bundle paramBundle)
  {
    super.a(paramBundle);
    c(true);
    this.h = new com.antivirus.core.scanners.h();
    this.h.a(this.ag);
    String str = this.ag.getIntent().getStringExtra("lcc");
    if (com.antivirus.c.e());
    while (true)
    {
      try
      {
        Intent localIntent2 = new Intent(this.ag, ActivationActivity.class);
        localIntent2.putExtra("lcc", str);
        this.ag.startActivityForResult(localIntent2, 1);
        return;
      }
      catch (Exception localException)
      {
        com.avg.toolkit.f.a.a(localException);
        continue;
      }
      com.avg.toolkit.e.g localg = new com.avg.toolkit.e.g(this.ag);
      if (!localg.a())
        localg.b();
      if (str != null)
      {
        Intent localIntent1 = new Intent(this.ag, EnterLicenseActivity.class);
        localIntent1.putExtra("lcc", str);
        localIntent1.putExtra("title", com.antivirus.m.a(this.ag, 2131296288));
        localIntent1.putExtra("firest_edit_text", com.antivirus.m.a(this.ag, 2131296291));
        a(localIntent1);
      }
    }
  }

  public void a(com.antivirus.core.scanners.h paramh)
  {
    this.h = paramh;
    if (this.Y)
      M();
  }

  public boolean a(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((4 == paramInt) && (this.Y))
      R();
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public void b(Intent paramIntent)
  {
    boolean bool = paramIntent.getBooleanExtra("avmsStartScan", false);
    if ((paramIntent.getBooleanExtra("ScannerClient", false)) || (bool))
    {
      paramIntent.removeExtra("ScannerClient");
      this.Z = paramIntent.getBooleanExtra("StartedFromWidget", false);
      paramIntent.removeExtra("StartedFromWidget");
      paramIntent.removeExtra("avmsStartScan");
      a(bool);
    }
    Q();
  }

  public void b(View paramView)
  {
    if (n.a == this.ac)
    {
      a(true);
      com.avg.toolkit.c.a.a(this.ag, "category_app_landing", "action_scan_now", null, 0);
    }
    while (true)
    {
      return;
      if (n.b == this.ac)
      {
        Intent localIntent = new Intent(this.ag, ScanResultsActivity.class);
        localIntent.putExtra("ScannerClient", b.ordinal());
        a(localIntent);
        com.avg.toolkit.c.a.a(this.ag, "category_app_landing", "action_view_scan_results", null, 0);
      }
      else if (n.c == this.ac)
      {
        R();
        com.avg.toolkit.c.a.a(this.ag, "category_app_landing", "action_stop_scan", null, 0);
      }
    }
  }

  public void d(Bundle paramBundle)
  {
    if ((this.Y) && (this.f != null) && (8 == this.f.getVisibility()))
    {
      this.f.setVisibility(0);
      this.f.setProgress(g);
    }
    super.d(paramBundle);
  }

  public void e()
  {
    super.e();
    a(this.aa);
    System.gc();
  }

  public void r()
  {
    super.r();
    Intent localIntent = this.ag.getIntent();
    if (localIntent.getIntExtra("from_notification", -1) == 1)
    {
      com.avg.toolkit.c.a.a(this.ag, "category_app_landing", "action_opened_from_notification", null, 0);
      localIntent.removeExtra("from_notification");
    }
    this.ak.a(this.an);
    this.ag.registerReceiver(this.ak, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
    if (n.c != this.ac)
      if (!this.Y)
        U();
    while (true)
    {
      O();
      H();
      this.a = F();
      b(this.ag.getIntent());
      return;
      this.i.setVisibility(8);
      if (!this.Y)
        this.c.setVisibility(8);
      this.d.setVisibility(8);
    }
  }

  public void s()
  {
    this.ag.unregisterReceiver(this.ak);
    this.ak.a(null);
    super.s();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.main.c
 * JD-Core Version:    0.6.2
 */