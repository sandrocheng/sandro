package com.antivirus.ui.tablet;

import android.app.ActionBar;
import android.app.ActionBar.LayoutParams;
import android.content.ComponentName;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.support.v4.app.Fragment;
import android.telephony.TelephonyManager;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewManager;
import android.widget.ImageView;
import android.widget.TabHost;
import android.widget.TabHost.TabSpec;
import android.widget.TabWidget;
import android.widget.TextView;
import com.antivirus.ui.antitheft.z;
import com.antivirus.ui.main.ActivationActivity;
import com.antivirus.ui.protection.aj;
import com.avg.toolkit.ads.WebViewAdsManager;
import com.avg.tuneup.j;
import com.avg.tuneup.taskkiller.d;
import com.avg.tuneup.traffic.y;
import com.avg.ui.general.c.i;
import com.avg.ui.general.s;
import com.avg.ui.general.t;
import java.util.Arrays;
import java.util.List;

public class DualPaneActivity extends com.antivirus.ui.a
{
  private com.antivirus.ui.privacy.a A;
  private com.avg.tuneup.battery.b B;
  private Handler C;
  private IntentFilter D;
  private c E;
  private View[] F;
  private boolean G;
  private boolean H = true;
  private boolean I = true;
  private boolean J;
  private String K = null;
  private com.avg.ui.general.e.a L = new com.antivirus.ui.b.a.c();
  private WebViewAdsManager M;
  private View.OnClickListener N = null;
  private TabHost O = null;
  private String P = null;
  private List Q = null;
  public aj n;
  public com.antivirus.a o;
  public boolean p = false;
  public int q;
  private com.antivirus.ui.protection.r v;
  private com.antivirus.ui.privacy.b w;
  private com.avg.tuneup.a.c x;
  private com.antivirus.ui.antitheft.b y;
  private z z;

  private void a(TabHost paramTabHost, TabHost.TabSpec paramTabSpec, LayoutInflater paramLayoutInflater, String paramString1, View paramView, int paramInt1, String paramString2, int paramInt2)
  {
    TabHost.TabSpec localTabSpec = paramTabHost.newTabSpec(paramString1);
    localTabSpec.setContent(16908305);
    View localView = paramLayoutInflater.inflate(2130903041, null);
    localView.setTag(paramString1);
    localView.setContentDescription(paramInt2 + "");
    ((TextView)localView.findViewById(2131230733)).setText(paramString2.toUpperCase(getResources().getConfiguration().locale));
    localTabSpec.setIndicator(localView);
    paramTabHost.addTab(localTabSpec);
    this.F[paramInt1] = localView;
  }

  private void a(String paramString, int paramInt)
  {
    ImageView localImageView = (ImageView)findViewById(16908332);
    if (localImageView != null)
    {
      localImageView.setImageResource(paramInt);
      localImageView.setClickable(false);
      localImageView.setOnTouchListener(new h(this, paramString, localImageView, paramInt));
    }
    while (true)
    {
      return;
      com.avg.toolkit.f.a.a();
    }
  }

  private int b(Intent paramIntent)
  {
    int i = 0;
    if (paramIntent != null)
      i = paramIntent.getIntExtra("EXTRA_GOTO", 0);
    return i;
  }

  private void d(String paramString)
  {
    if (paramString.equals("Protection"))
    {
      this.P = "Protection";
      a(this.n, 2131230907, "ScanFragment");
      a(this.v, 2131230908, "Protection");
      a(this.M, "protection");
      if (this.I)
      {
        this.I = false;
        this.G = true;
        if ((!paramString.equals("Protection")) && (!paramString.equals("ScanFragment")))
          break label307;
        b(false);
      }
    }
    while (true)
    {
      return;
      com.avg.toolkit.c.a.a(this, "category_app_landing", "action_protection", null, 0);
      break;
      if (paramString.equals("Privacy"))
      {
        this.P = "Privacy";
        this.w.F();
        if (this.u.b())
          a(this.A, 2131230909, "FooterFragment");
        a(this.w, 2131230908, "Privacy");
        a(this.M, "privacy");
        com.avg.toolkit.c.a.a(this, "category_app_landing", "action_privacy", null, 0);
        break;
      }
      if (paramString.equals("Performance"))
      {
        this.P = "Performance";
        this.x.J();
        a(this.x, 2131230908, "Performance");
        a(this.M, "performance");
        com.avg.toolkit.c.a.a(this, "category_app_landing", "action_performance", null, 0);
        break;
      }
      if (!paramString.equals("AntiTheftFragment"))
        break;
      this.P = "AntiTheftFragment";
      a(x(), 2131230908, y());
      a(this.M, "antitheft");
      com.avg.toolkit.c.a.a(this, "category_app_landing", "action_anti_theft", null, 0);
      break;
      label307: b(true);
    }
  }

  private void e(int paramInt)
  {
    this.O = ((TabHost)findViewById(2131230905));
    switch (paramInt)
    {
    default:
    case 1:
    case 4:
    case 2:
    case 3:
    case 9:
    case 5:
    case 10:
    case 7:
    case 6:
    case 8:
    }
    while (true)
    {
      return;
      this.O.getTabWidget().setCurrentTab(c.a);
      a(new com.antivirus.ui.scan.results.m(), 2131230908, "ScanResultsFragment");
      this.P = "Protection";
      b(true);
      continue;
      this.O.setCurrentTab(c.a);
      b(true);
      a(new com.antivirus.ui.protection.a(), 2131230908, "FileScannerFragment");
      this.P = "Protection";
      continue;
      d(2131230907);
      this.O.setCurrentTab(c.b);
      com.avg.tuneup.a.c localc5 = this.x;
      this.x.getClass();
      localc5.b(1);
      a(this.x, 2131230908, "Performance");
      n();
      a(new com.avg.tuneup.battery.c(), 2131230910, "BatterySaveSettingsFragment");
      this.P = "Performance";
      continue;
      d(2131230907);
      this.O.setCurrentTab(c.b);
      com.avg.tuneup.a.c localc4 = this.x;
      this.x.getClass();
      localc4.b(2);
      a(this.x, 2131230908, "Performance");
      n();
      a(new y(), 2131230910, "TrafficMeterFragment");
      this.P = "Performance";
      continue;
      this.O.setCurrentTab(c.b);
      com.avg.tuneup.a.c localc3 = this.x;
      this.x.getClass();
      localc3.b(2);
      a(this.x, 2131230908, "Performance");
      n();
      a(new com.avg.tuneup.traffic.a(), 2131230910, "DataPlanSettingsFragment");
      this.P = "Performance";
      continue;
      this.O.setCurrentTab(c.b);
      com.avg.tuneup.a.c localc2 = this.x;
      this.x.getClass();
      localc2.b(0);
      a(this.x, 2131230908, "Performance");
      n();
      a(new d(), 2131230910, "TaskKillerFragment");
      this.P = "Performance";
      continue;
      this.O.setCurrentTab(c.b);
      com.avg.tuneup.a.c localc1 = this.x;
      this.x.getClass();
      localc1.b(3);
      a(this.x, 2131230908, "Performance");
      n();
      a(new com.avg.tuneup.storage.b(), 2131230910, "StorageFragment");
      this.P = "Performance";
      continue;
      this.O.setCurrentTab(c.d);
      a(this.w, 2131230908, "Privacy");
      n();
      int j = Arrays.asList(this.w.a).indexOf(s.b);
      this.w.onItemClick(null, null, j, j);
      this.P = "Privacy";
      continue;
      this.O.setCurrentTab(c.d);
      a(this.w, 2131230908, "Privacy");
      n();
      int i = Arrays.asList(this.w.a).indexOf(s.a);
      this.w.onItemClick(null, null, i, i);
      this.P = "Privacy";
      continue;
      this.O.setCurrentTab(c.a);
      a(this.n, 2131230907, "ScanFragment");
      a(this.v, 2131230908, "Protection");
      b(false);
      this.P = "Protection";
    }
  }

  private void e(String paramString)
  {
    int i;
    if (f(paramString))
      if (this.u.b())
        i = com.avg.ui.general.o.a(com.avg.ui.general.r.a);
    while (true)
    {
      a(paramString, i);
      return;
      i = com.avg.ui.general.o.b(com.avg.ui.general.r.a);
      continue;
      if (this.u.b())
        i = com.avg.ui.general.o.a(com.avg.ui.general.r.b);
      else
        i = com.avg.ui.general.o.b(com.avg.ui.general.r.b);
    }
  }

  private void f(int paramInt)
  {
    ((TextView)this.F[paramInt].findViewById(2131230733)).setText(this.E.a(paramInt).toUpperCase(getResources().getConfiguration().locale));
    String str = this.E.b(paramInt);
    TextView localTextView = (TextView)this.F[paramInt].findViewById(2131230734);
    localTextView.setText(str);
    localTextView.setVisibility(0);
    if ((str == null) || ("".equals(str)))
      localTextView.setVisibility(8);
    ImageView localImageView;
    switch (this.E.d(paramInt))
    {
    default:
      localTextView.setTextColor(getResources().getColor(2131165246));
      localImageView = (ImageView)this.F[paramInt].findViewById(2131230735);
      switch (this.E.c(paramInt))
      {
      default:
      case -1:
      case 0:
      case 1:
      }
      break;
    case 0:
    }
    while (true)
    {
      return;
      localTextView.setTextColor(getResources().getColor(2131165192));
      break;
      localImageView.setVisibility(8);
      continue;
      localImageView.setImageResource(2130837561);
      localImageView.setVisibility(0);
      continue;
      localImageView.setImageResource(2130837562);
      localImageView.setVisibility(0);
    }
  }

  private boolean f(String paramString)
  {
    if ((paramString != null) && ((paramString.equals("Protection")) || (paramString.equals("Performance")) || (paramString.equals(y())) || (paramString.equals("Privacy")) || (paramString.equals("ScanFragment"))));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  private void u()
  {
    Intent localIntent = registerReceiver(null, this.D);
    this.E.a(localIntent, this.o.a(com.antivirus.core.scanners.c.a));
    for (int i = 0; i < c.e; i++)
      f(i);
  }

  private void v()
  {
    LayoutInflater localLayoutInflater = LayoutInflater.from(this);
    this.O = ((TabHost)findViewById(2131230905));
    this.O.setup();
    this.Q = com.avg.ui.general.o.a();
    w();
    this.E = new c(this);
    this.F = new View[c.e];
    if (this.Q.contains(t.a))
      a(this.O, null, localLayoutInflater, "Protection", null, c.a, com.antivirus.m.a(this, 2131296783), c.a);
    if (this.Q.contains(t.b))
      a(this.O, null, localLayoutInflater, "Performance", null, c.b, com.antivirus.m.a(this, 2131296454), c.b);
    if (this.Q.contains(t.c))
      a(this.O, null, localLayoutInflater, "AntiTheftFragment", null, c.c, com.antivirus.m.a(this, 2131296489), c.c);
    if (this.Q.contains(t.d))
      a(this.O, null, localLayoutInflater, "Privacy", null, c.d, com.antivirus.m.a(this, 2131296784), c.d);
    this.N = new g(this);
    int i = this.O.getTabWidget().getChildCount();
    for (int j = 0; j < i; j++)
      this.O.getTabWidget().getChildAt(j).setOnClickListener(this.N);
  }

  private void w()
  {
    int i = 0;
    if (i < this.Q.size())
    {
      switch (i.a[((t)this.Q.get(i)).ordinal()])
      {
      default:
      case 1:
      case 2:
      case 3:
      case 4:
      }
      while (true)
      {
        i++;
        break;
        c.a = i;
        continue;
        c.b = i;
        continue;
        c.c = i;
        continue;
        c.d = i;
      }
    }
    c.e = this.Q.size();
  }

  private Fragment x()
  {
    String str = com.antivirus.c.a(this);
    if ((str == null) || ("".equals(str)))
      if (this.z == null)
        this.z = new z();
    for (Object localObject = this.z; ; localObject = this.y)
    {
      return localObject;
      this.z = null;
      if (this.y == null)
        this.y = new com.antivirus.ui.antitheft.b();
    }
  }

  private String y()
  {
    String str1 = com.antivirus.c.a(this);
    if ((str1 == null) || ("".equals(str1)));
    for (String str2 = "AntitheftRegisterFragment"; ; str2 = "AntiTheftFragment")
      return str2;
  }

  private void z()
  {
    try
    {
      startActivityForResult(new Intent(this, ActivationActivity.class), 1);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        com.avg.toolkit.f.a.a(localException);
    }
  }

  public View a(boolean paramBoolean, int paramInt)
  {
    ActionBar localActionBar = getActionBar();
    boolean bool;
    View localView1;
    View localView2;
    if (!paramBoolean)
    {
      bool = true;
      localActionBar.setDisplayShowHomeEnabled(bool);
      localView1 = findViewById(this.q);
      if (!paramBoolean)
        break label84;
      if (localView1 != null)
        break label104;
      localView2 = getLayoutInflater().inflate(paramInt, null);
      this.q = localView2.getId();
      getActionBar().setCustomView(localView2, new ActionBar.LayoutParams(-1, -1));
    }
    while (true)
    {
      return localView2;
      bool = false;
      break;
      label84: if (localView1 != null)
        ((ViewManager)localView1.getParent()).removeView(localView1);
      label104: localView2 = localView1;
    }
  }

  protected void a(ComponentName paramComponentName, IBinder paramIBinder)
  {
    this.o = ((com.antivirus.a)paramIBinder);
    this.n = new aj();
    this.n.a(this.o.a(com.antivirus.core.scanners.c.a));
    this.v = new com.antivirus.ui.protection.r();
    this.x = new com.antivirus.ui.performance.a();
    this.w = new com.antivirus.ui.privacy.b();
    this.A = new com.antivirus.ui.privacy.a();
    String str = com.antivirus.c.a(this);
    if ((str == null) || ("".equals(str)))
    {
      this.z = new z();
      ActionBar localActionBar = getActionBar();
      localActionBar.setDisplayShowTitleEnabled(false);
      localActionBar.setDisplayShowHomeEnabled(true);
      localActionBar.setDisplayShowCustomEnabled(true);
      u();
      int i = b(getIntent());
      if (i == 0)
        break label186;
      getIntent().removeExtra("EXTRA_GOTO");
      e(i);
    }
    while (true)
    {
      invalidateOptionsMenu();
      return;
      this.y = new com.antivirus.ui.antitheft.b();
      break;
      label186: d("Protection");
    }
  }

  public void a(Intent paramIntent)
  {
    this.E.a(paramIntent);
    f(c.b);
  }

  public void a(Fragment paramFragment, int paramInt, String paramString)
  {
    super.a(paramFragment, paramInt, paramString);
    this.G = false;
    this.K = paramString;
    e(paramString);
    invalidateOptionsMenu();
  }

  public void a(Menu paramMenu, int paramInt1, int paramInt2)
  {
    paramMenu.add(0, paramInt1, 0, "").setIcon(paramInt2).setShowAsAction(2);
  }

  public void a(e parame)
  {
    this.E.a(parame);
    f(c.a);
  }

  public boolean a(MenuItem paramMenuItem)
  {
    closeOptionsMenu();
    Fragment localFragment2;
    switch (paramMenuItem.getItemId())
    {
    default:
      android.support.v4.app.o localo = f();
      Fragment localFragment1 = localo.a(2131230910);
      localFragment2 = localo.a(2131230908);
      if (localFragment1 != null)
        localFragment1.a_(paramMenuItem);
      break;
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    }
    while (true)
    {
      return true;
      this.L.a(this);
      continue;
      this.L.d(this);
      continue;
      this.L.b(this);
      continue;
      this.L.a(this, this.u.l);
      continue;
      this.L.e(this);
      continue;
      localFragment2.a_(paramMenuItem);
    }
  }

  public void b(boolean paramBoolean)
  {
    if ((this.K != null) && (!this.K.equals("Privacy")))
      d(2131230909);
    d(2131230910);
    if (paramBoolean)
      d(2131230907);
    if (getResources().getConfiguration().orientation == 2);
    for (float f = 3.5F; ; f = 6.0F)
    {
      a(2131230906, f);
      findViewById(2131230910).setVisibility(8);
      findViewById(2131230908).setBackgroundResource(17170445);
      this.M.setVisibility(0);
      return;
    }
  }

  public void c(boolean paramBoolean)
  {
    if ((j.n()) && (this.B != null) && (this.C != null))
    {
      if (!paramBoolean)
        break label59;
      this.B.a(this.C);
    }
    while (true)
    {
      try
      {
        registerReceiver(this.B, this.D);
        return;
      }
      catch (Exception localException2)
      {
        com.avg.toolkit.f.a.a("BatteryStateBroadcastReceiver already registered");
        continue;
      }
      try
      {
        label59: unregisterReceiver(this.B);
        this.B.a(null);
      }
      catch (Exception localException1)
      {
        while (true)
          com.avg.toolkit.f.a.a("BatteryStateBroadcastReceiver already unregistered");
      }
    }
  }

  protected void g()
  {
    try
    {
      Fragment localFragment = f().a(this.K);
      if ((localFragment != null) && ((localFragment instanceof com.antivirus.ui.a.a.c)))
      {
        if (!((com.antivirus.ui.a.a.c)localFragment).a())
          i();
      }
      else
        i();
    }
    catch (Exception localException)
    {
      com.avg.toolkit.f.a.a(localException);
      i();
    }
  }

  public void i()
  {
    if (this.G)
      super.g();
    while (true)
    {
      return;
      if (this.K.equals("BatterySaveSettingsFragment"))
      {
        a(new com.avg.tuneup.battery.r(), 2131230910, "BatteryStateFragment");
      }
      else if (this.K.equals("DataPlanSettingsFragment"))
      {
        Fragment localFragment = f().a(this.K);
        if (localFragment != null)
          ((com.avg.tuneup.traffic.a)localFragment).a();
        a(new y(), 2131230910, "TrafficMeterFragment");
      }
      else
      {
        d(this.P);
      }
    }
  }

  public View k()
  {
    return findViewById(this.q);
  }

  public void l()
  {
    this.E.b();
    f(c.d);
  }

  public void m()
  {
    this.E.a();
    f(c.c);
  }

  public void n()
  {
    d(2131230909);
    a(2131230910, 4.0F);
    a(2131230906, 2.0F);
    findViewById(2131230908).setBackgroundResource(2131165249);
    this.M.setVisibility(8);
  }

  public boolean o()
  {
    return true;
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt1 == 1)
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

  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    this.M.a(this, paramConfiguration);
    int i;
    if (this.J)
    {
      if (findViewById(2131230910).getVisibility() != 8)
        break label63;
      i = 1;
      if (i != 0)
        if (paramConfiguration.orientation != 2)
          break label68;
    }
    label63: label68: for (float f = 3.5F; ; f = 6.0F)
    {
      a(2131230906, f);
      return;
      i = 0;
      break;
    }
  }

  public void onCreate(Bundle paramBundle)
  {
    r = true;
    requestWindowFeature(8);
    super.onCreate(paramBundle);
    ((TelephonyManager)getSystemService("phone"));
    this.J = false;
    if (Integer.parseInt(Build.VERSION.SDK) >= 13)
      this.J = i.b(this);
    while (true)
    {
      setContentView(2130903072);
      this.D = new IntentFilter("android.intent.action.BATTERY_CHANGED");
      this.B = new com.avg.tuneup.battery.b(0);
      if (this.C == null)
        this.C = new f(this);
      v();
      p();
      this.M = ((WebViewAdsManager)findViewById(2131230911));
      return;
      if (Integer.parseInt(Build.VERSION.SDK) >= 11)
        this.J = true;
    }
  }

  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    if ((this.J) && (this.t))
    {
      if (!f(this.K))
        paramMenu.clear();
    }
    else
      return true;
    paramMenu.add(1, 2, 1, com.antivirus.m.a(this, 2131296503));
    paramMenu.add(2, 3, 2, com.antivirus.m.a(this, 2131296272));
    if (this.u.b())
      paramMenu.add(0, 1, 3, com.antivirus.m.a(this, 2131296589));
    while (true)
    {
      if (!this.u.l)
        paramMenu.add(3, 4, 4, com.antivirus.m.a(this, 2131296288));
      paramMenu.add(4, 5, 5, com.antivirus.m.a(this, 2131296257));
      break;
      if ((this.u.n <= 30) || (this.u.m))
        paramMenu.add(0, 1, 3, com.antivirus.m.a(this, 2131296302));
    }
  }

  public void onDestroy()
  {
    if (this.M != null)
      this.M.a();
    q();
    super.onDestroy();
  }

  public boolean onMenuItemSelected(int paramInt, MenuItem paramMenuItem)
  {
    return a(paramMenuItem);
  }

  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    int i = b(paramIntent);
    if ((i != 0) && (this.t) && (!com.antivirus.c.e()))
    {
      paramIntent.removeExtra("EXTRA_GOTO");
      e(i);
    }
    while (true)
    {
      return;
      if (paramIntent.getBooleanExtra("ScannerClient", false))
        this.n.b(paramIntent);
    }
  }

  public void onPause()
  {
    c(false);
    super.onPause();
  }

  public void onResume()
  {
    super.onResume();
    c(true);
    if (this.J)
    {
      if (!com.antivirus.c.e())
        break label27;
      z();
    }
    while (true)
    {
      return;
      label27: if (this.H)
      {
        this.H = false;
        com.avg.toolkit.e.g localg = new com.avg.toolkit.e.g(this);
        if (!localg.a())
          localg.b();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.tablet.DualPaneActivity
 * JD-Core Version:    0.6.2
 */