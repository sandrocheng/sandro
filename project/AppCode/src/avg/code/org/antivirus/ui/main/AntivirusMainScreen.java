package org.antivirus.ui.main;

import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.os.Messenger;
import android.text.Html;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import android.widget.Toast;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import org.antivirus.AVService;
import org.antivirus.AVService.LocalBinder;
import org.antivirus.AVSettings;
import org.antivirus.Strings;
import org.antivirus.core.EngineSettings;
import org.antivirus.core.Logger;
import org.antivirus.core.compatibility.DonutTools;
import org.antivirus.tuneup.ba;
import org.antivirus.ui.BaseToolActivity;
import org.antivirus.ui.IhandleMenuItem;
import org.antivirus.ui.PopupMenuHoneycomb;
import org.antivirus.ui.help.Help;
import org.antivirus.ui.license.LicenseEnteringActivity;
import org.antivirus.ui.scan.results.ScanResultsExpandable;
import org.antivirus.ui.settings.LanguageSelector;

public class AntivirusMainScreen extends BaseToolActivity
  implements IhandleMenuItem
{
  public static org.antivirus.core.scanners.c a = org.antivirus.core.scanners.c.a;
  private static int m = 0;
  private o A = null;
  private j B = j.b;
  private org.antivirus.tuneup.h C;
  private boolean D = false;
  private boolean E = false;
  private Handler F;
  ArrayList b = new ArrayList();
  HashMap c = new HashMap();
  org.antivirus.core.scanners.g d;
  AVService.LocalBinder e;
  public TextView f;
  public TextView g = null;
  boolean h = false;
  public ServiceConnection i = new b(this);
  private org.antivirus.core.b.a j;
  private boolean k;
  private ProgressBar l;
  private ImageView n = null;
  private final int o = 1;
  private final int p = 2;
  private final int q = 3;
  private final int r = 4;
  private final int s = 5;
  private Button t = null;
  private boolean u = false;
  private boolean v = false;
  private l w = l.a;
  private o x = null;
  private o y = null;
  private o z = null;

  private void a(Intent paramIntent)
  {
    boolean bool1 = paramIntent.getBooleanExtra("avmsStartScan", false);
    if ((paramIntent.getBooleanExtra("ScannerClient", false)) || (bool1))
    {
      paramIntent.removeExtra("ScannerClient");
      this.v = paramIntent.getBooleanExtra("StartedFromWidget", false);
      paramIntent.removeExtra("StartedFromWidget");
      paramIntent.removeExtra("avmsStartScan");
      a(bool1);
    }
    long l1;
    boolean bool2;
    n localn;
    if (this.d != null)
    {
      l1 = this.d.b;
      bool2 = this.d.a();
      if (bool2)
      {
        localn = n.c;
        switch (i.b[localn.ordinal()])
        {
        default:
          Logger.error("Can't handle: " + localn);
        case 1:
        case 2:
        case 3:
        }
      }
    }
    while (true)
    {
      return;
      if (((bool2) || (0L != l1)) && (!bool2) && (0L < l1))
      {
        localn = n.b;
        break;
      }
      localn = n.a;
      break;
      this.x.setBackgroundResource(2130837611);
      continue;
      this.x.setBackgroundResource(2130837612);
      continue;
      this.x.setBackgroundResource(2130837613);
    }
  }

  private void a(n paramn)
  {
    switch (i.b[paramn.ordinal()])
    {
    default:
    case 3:
    case 1:
    case 2:
    }
    while (true)
    {
      return;
      this.t.setText(2131296704);
      this.w = l.b;
      continue;
      this.t.setText(2131296688);
      this.w = l.a;
    }
  }

  private void a(boolean paramBoolean)
  {
    if (this.u)
      return;
    this.l.setVisibility(0);
    this.l.setProgress(0);
    this.x.setLowerText("");
    this.u = true;
    if (paramBoolean)
    {
      Intent localIntent = new Intent(this, AVService.class);
      localIntent.putExtra("__SAC", 22);
      localIntent.putExtra("__SAD", org.antivirus.core.scanners.c.a);
      localIntent.putExtra("__SAH", new Messenger(new m(this)));
      startService(localIntent);
      this.f.setVisibility(0);
      this.f.setText(2131296287);
    }
    while (true)
    {
      this.n.setVisibility(8);
      this.t.setText(2131296469);
      this.g.setVisibility(8);
      this.w = l.c;
      break;
      d();
    }
  }

  private void d()
  {
    int i1 = 2131296397;
    if (this.k)
      switch (this.e.setHandler(new Messenger(new m(this)), org.antivirus.core.scanners.m.b, a))
      {
      default:
        i1 = 2131296287;
      case 2:
      case 4:
      case 8:
        String str = Strings.getString(i1);
        this.f.setVisibility(0);
        this.f.setText(str);
      case 1:
      case 16:
      case -1:
      }
    while (true)
    {
      return;
      i1 = 2131296396;
      break;
      i1 = 2131296398;
      break;
      if (this.v)
        this.v = false;
      else
        k();
    }
  }

  private void e()
  {
    if (this.e == null);
    while (true)
    {
      return;
      this.j = this.e.getFeatures();
      if (this.j != null)
        if (this.j.b())
          a(false, 2130837554, 2130837554, "", true);
        else
          a(false, 2130837555, 2130837555, "", true);
    }
  }

  private void f()
  {
    if (org.antivirus.applocker.a.a)
    {
      this.y.setBackgroundResource(2130837609);
      this.y.setLowerText(Strings.getString(2131296712));
    }
    while (true)
    {
      return;
      this.y.setBackgroundResource(2130837610);
      this.y.setLowerText("");
    }
  }

  private void g()
  {
    if ((AVSettings.getFindRUser(this) != null) && (!"".equals(AVSettings.getFindRUser(this))))
    {
      this.B = j.a;
      this.A.setBackgroundResource(2130837606);
      this.A.setLowerText("");
    }
    while (true)
    {
      return;
      this.B = j.b;
      this.A.setBackgroundResource(2130837605);
      this.A.setLowerText(Strings.getString(2131296711));
    }
  }

  private void h()
  {
    this.E = false;
    boolean bool = ba.d();
    double[] arrayOfDouble;
    if (bool)
    {
      arrayOfDouble = ba.a(getApplicationContext()).a(bool);
      if (arrayOfDouble != null)
      {
        if (arrayOfDouble[0] < 100.0D)
          break label54;
        this.E = true;
        this.h = true;
      }
    }
    while (true)
    {
      i();
      return;
      label54: if ((AVSettings.isQuotaWarningNotificationOn()) && (arrayOfDouble[0] >= AVSettings.getDataPlanNotificationThreshold()))
        this.E = true;
    }
  }

  private void i()
  {
    this.z.setBackgroundResource(2130837607);
    if ((this.D) && (this.E))
      this.z.setLowerText(Strings.getString(2131296710));
    while (true)
    {
      return;
      if (this.D)
      {
        this.z.setLowerText(Strings.getString(2131296708));
      }
      else if (this.E)
      {
        if (this.h)
          this.z.a(Strings.getString(2131296709), 2131165192);
        else
          this.z.a(Strings.getString(2131296709), 2131165245);
      }
      else
      {
        this.z.setBackgroundResource(2130837608);
        this.z.setLowerText("");
      }
    }
  }

  private void j()
  {
    this.u = false;
    Intent localIntent = new Intent(this, AVService.class);
    localIntent.putExtra("__SAC", 27);
    localIntent.putExtra("__SAD", a);
    startService(localIntent);
    this.t.setText(2131296688);
    this.w = l.a;
    this.n.setVisibility(0);
    this.l.setProgress(0);
    this.l.setVisibility(8);
    l();
  }

  private void k()
  {
    this.u = false;
    this.n.setVisibility(0);
    this.w = l.b;
    this.l.setProgress(0);
    this.l.setVisibility(8);
    l();
    onResume();
  }

  private void l()
  {
    if (this.e != null)
      this.d = this.e.getScanResults(org.antivirus.core.scanners.c.a);
    if (this.d == null);
    while (true)
    {
      return;
      long l1 = this.d.b;
      boolean bool = this.d.a();
      this.g.setVisibility(0);
      if (bool)
      {
        this.f.setVisibility(8);
        int i1 = this.d.b();
        if (1 == i1)
          this.g.setText(i1 + " " + Strings.getString(2131296705));
        while (true)
        {
          this.n.setImageResource(2130837576);
          a(n.c);
          this.l.setVisibility(8);
          this.x.setBackgroundResource(2130837613);
          this.x.setLowerText("");
          break;
          this.g.setText(i1 + " " + Strings.getString(2131296706));
        }
      }
      if ((!bool) && (0L == l1))
      {
        this.n.setImageResource(2130837560);
        this.f.setVisibility(8);
        this.g.setText(2131296701);
        a(n.a);
        this.l.setVisibility(8);
        this.x.setBackgroundResource(2130837611);
        this.x.setLowerText(Strings.getString(2131296701));
      }
      else if ((!bool) && (0L < l1))
      {
        this.n.setImageResource(2130837561);
        String str = Strings.getString(2131296707) + " " + DateFormat.getDateInstance(2, Locale.getDefault()).format(new Date(l1));
        this.f.setVisibility(8);
        this.g.setText(str);
        a(n.b);
        this.l.setVisibility(8);
        this.x.setBackgroundResource(2130837612);
        this.x.setLowerText("");
      }
    }
  }

  private void m()
  {
    if (!org.antivirus.core.a.n.a(this))
      Toast.makeText(this, Strings.getString(2131296468), 1).show();
    while (true)
    {
      return;
      Intent localIntent = new Intent(this, AVService.class);
      localIntent.putExtra("__SAC", 119);
      startService(localIntent);
      org.antivirus.ganalytics.a.a(this, "app_landing", "upgrade", null);
    }
  }

  private void n()
  {
    org.antivirus.ganalytics.a.a(this, "app_landing", "language", null);
    startActivityForResult(new Intent(this, LanguageSelector.class), 2);
  }

  private void o()
  {
    Intent localIntent = new Intent("android.intent.action.SEND");
    localIntent.putExtra("android.intent.extra.EMAIL", new String[] { "" });
    localIntent.putExtra("android.intent.extra.SUBJECT", Strings.getString(2131296393));
    StringBuilder localStringBuilder = new StringBuilder();
    EngineSettings localEngineSettings = new EngineSettings(this);
    String str1 = Strings.getString(2131296394);
    if (localEngineSettings.getAWSserver());
    for (String str2 = "aws.droidsecurity.com"; ; str2 = "www.avgmobilation.com")
    {
      localStringBuilder.append(str1.replace("[url]", str2));
      localStringBuilder.append("\n");
      localIntent.putExtra("android.intent.extra.TEXT", Html.fromHtml(localStringBuilder.toString()));
      localIntent.setType("text/html");
      startActivity(Intent.createChooser(localIntent, "Email:"));
      org.antivirus.ganalytics.a.a(this, "app_landing", "share", null);
      return;
    }
  }

  private void p()
  {
    if (!this.j.l)
    {
      Intent localIntent = new Intent(this, LicenseEnteringActivity.class);
      localIntent.putExtra("title", Strings.getString(2131296382));
      localIntent.putExtra("firest_edit_text", Strings.getString(2131296383));
      localIntent.setFlags(268435456);
      startActivity(localIntent);
      org.antivirus.ganalytics.a.a(this, "app_landing", "license", null);
    }
    while (true)
    {
      return;
      startActivity(new Intent(this, Help.class));
      org.antivirus.ganalytics.a.a(this, "app_landing", "help", null);
    }
  }

  private void q()
  {
    startActivity(new Intent(this, Help.class));
    org.antivirus.ganalytics.a.a(this, "app_landing", "help", null);
  }

  protected final void a(int paramInt)
  {
    String str = (String)this.c.get(Integer.valueOf(paramInt));
    if (str.compareTo(Strings.getString(2131296391)) == 0)
      m();
    while (true)
    {
      return;
      if (str.compareTo(Strings.getString(2131296395)) == 0)
        m();
      else if (str.compareTo(Strings.getString(2131296293)) == 0)
        n();
      else if (str.compareTo(Strings.getString(2131296392)) == 0)
        o();
      else if (str.compareTo(Strings.getString(2131296382)) == 0)
        p();
      else if (str.compareTo(Strings.getString(2131296262)) == 0)
        q();
    }
  }

  protected final void a(View paramView)
  {
    PopupMenuHoneycomb localPopupMenuHoneycomb = new PopupMenuHoneycomb(this, paramView);
    addMenu(localPopupMenuHoneycomb);
    localPopupMenuHoneycomb.show();
  }

  public ArrayList addMenu(Object paramObject)
  {
    ArrayList localArrayList;
    if (this.j == null)
    {
      localArrayList = null;
      return localArrayList;
    }
    this.b.clear();
    this.c.clear();
    Integer localInteger1 = Integer.valueOf(0);
    Integer localInteger2;
    if ((paramObject instanceof ArrayList))
      if (this.j.b())
      {
        this.b.add(Strings.getString(2131296391));
        HashMap localHashMap7 = this.c;
        localInteger2 = Integer.valueOf(1 + localInteger1.intValue());
        localHashMap7.put(localInteger1, Strings.getString(2131296391));
      }
    while (true)
    {
      label91: this.b.add(Strings.getString(2131296293));
      HashMap localHashMap2 = this.c;
      Integer localInteger3 = Integer.valueOf(1 + localInteger2.intValue());
      localHashMap2.put(localInteger2, Strings.getString(2131296293));
      this.b.add(Strings.getString(2131296392));
      HashMap localHashMap3 = this.c;
      Integer localInteger4 = Integer.valueOf(1 + localInteger3.intValue());
      localHashMap3.put(localInteger3, Strings.getString(2131296392));
      if (!this.j.l)
      {
        this.b.add(Strings.getString(2131296382));
        HashMap localHashMap5 = this.c;
        Integer localInteger5 = Integer.valueOf(1 + localInteger4.intValue());
        localHashMap5.put(localInteger4, Strings.getString(2131296382));
        this.b.add(Strings.getString(2131296262));
        HashMap localHashMap6 = this.c;
        Integer.valueOf(1 + localInteger5.intValue());
        localHashMap6.put(localInteger5, Strings.getString(2131296262));
      }
      do
      {
        while (true)
        {
          org.antivirus.ganalytics.a.a(this, "app_landing", "menu_opened", null);
          localArrayList = this.b;
          break;
          if ((this.j.n > 30) && (!this.j.m))
            break label740;
          this.b.add(Strings.getString(2131296395));
          HashMap localHashMap1 = this.c;
          localInteger2 = Integer.valueOf(1 + localInteger1.intValue());
          localHashMap1.put(localInteger1, Strings.getString(2131296395));
          break label91;
          this.b.add(Strings.getString(2131296262));
          HashMap localHashMap4 = this.c;
          Integer.valueOf(1 + localInteger4.intValue());
          localHashMap4.put(localInteger4, Strings.getString(2131296262));
        }
        if ((paramObject instanceof Menu))
        {
          if (this.j.b())
            ((Menu)paramObject).add(0, 1, 4, Strings.getString(2131296391));
          while (true)
          {
            ((Menu)paramObject).add(1, 2, 2, Strings.getString(2131296293));
            ((Menu)paramObject).add(2, 3, 3, Strings.getString(2131296392));
            if (!this.j.l)
              ((Menu)paramObject).add(3, 4, 4, Strings.getString(2131296382));
            ((Menu)paramObject).add(4, 5, 5, Strings.getString(2131296262));
            break;
            if ((this.j.n <= 30) || (this.j.m))
              ((Menu)paramObject).add(0, 1, 4, Strings.getString(2131296395));
          }
        }
      }
      while (!(paramObject instanceof PopupMenuHoneycomb));
      if (this.j.b())
        ((PopupMenuHoneycomb)paramObject).add(0, 1, 4, Strings.getString(2131296391));
      while (true)
      {
        ((PopupMenuHoneycomb)paramObject).add(1, 2, 2, Strings.getString(2131296293));
        ((PopupMenuHoneycomb)paramObject).add(2, 3, 3, Strings.getString(2131296392));
        if (!this.j.l)
          ((PopupMenuHoneycomb)paramObject).add(3, 4, 4, Strings.getString(2131296382));
        ((PopupMenuHoneycomb)paramObject).add(4, 5, 5, Strings.getString(2131296262));
        break;
        if ((this.j.n <= 30) || (this.j.m))
          ((PopupMenuHoneycomb)paramObject).add(0, 1, 4, Strings.getString(2131296395));
      }
      label740: localInteger2 = localInteger1;
    }
  }

  public boolean handleMenuItem(MenuItem paramMenuItem)
  {
    switch (paramMenuItem.getItemId())
    {
    default:
      Logger.errorBadAgrument();
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    }
    while (true)
    {
      return true;
      m();
      continue;
      n();
      continue;
      o();
      continue;
      p();
      continue;
      q();
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

  public void onClickMainButton(View paramView)
  {
    if (l.a == this.w)
    {
      a(true);
      org.antivirus.ganalytics.a.a(this, "app_landing", "scan_now", null);
    }
    while (true)
    {
      return;
      if (l.b == this.w)
      {
        Intent localIntent = new Intent(this, ScanResultsExpandable.class);
        localIntent.putExtra("ScannerClient", a.ordinal());
        startActivity(localIntent);
        org.antivirus.ganalytics.a.a(this, "app_landing", "view_scan_results", null);
      }
      else if (l.c == this.w)
      {
        j();
        org.antivirus.ganalytics.a.a(this, "app_landing", "stop_scan", null);
      }
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    setContentView(2130903045);
    this.n = ((ImageView)findViewById(2131230785));
    this.n.setOnClickListener(new c(this));
    this.t = ((Button)findViewById(2131230778));
    this.f = ((TextView)findViewById(2131230786));
    this.g = ((TextView)findViewById(2131230788));
    this.l = ((ProgressBar)findViewById(2131230787));
    this.l.setVisibility(8);
    bindService(new Intent(this, AVService.class), this.i, 1);
    this.d = new org.antivirus.core.scanners.g();
    this.d.a(this);
    String str = getIntent().getStringExtra("lcc");
    if (AVSettings.shouldShowActivationScreen());
    while (true)
    {
      int i1;
      try
      {
        Intent localIntent2 = new Intent(this, ActivationActivity.class);
        localIntent2.putExtra("lcc", str);
        startActivityForResult(localIntent2, 1);
        this.x = new o(this, 2131230780);
        this.x.setUpperText(Strings.getString(2131296689));
        this.x.setBackgroundResource(2130837611);
        this.x.setOnClickListener(new f(this));
        this.z = new o(this, 2131230781);
        this.z.setUpperText(Strings.getString(2131296674));
        this.z.setOnClickListener(new g(this));
        this.C = new org.antivirus.tuneup.h(0);
        if (this.F == null)
          this.F = new h(this);
        h();
        this.A = new o(this, 2131230782);
        this.A.setUpperText(Strings.getString(2131296280));
        g();
        this.A.setOnClickListener(new e(this));
        this.y = new o(this, 2131230783);
        this.y.setUpperText(Strings.getString(2131296690));
        f();
        this.y.setOnClickListener(new d(this));
        i1 = DonutTools.getDisplayDensity(((WindowManager)getSystemService("window")).getDefaultDisplay());
        if ((2 != getResources().getConfiguration().orientation) || (160 != i1))
          break label671;
        float f2 = this.x.getLowerTextSizeInPx();
        this.x.setUpperTextSize$255e752(f2);
        this.z.setUpperTextSize$255e752(f2);
        this.A.setUpperTextSize$255e752(f2);
        this.y.setUpperTextSize$255e752(f2);
        k localk = (k)getLastNonConfigurationInstance();
        if (localk != null)
        {
          this.x.setBackgroundDrawable(localk.a);
          this.x.setLowerText(localk.b);
          this.u = localk.c;
          this.w = localk.d;
          this.t.setText(localk.e);
        }
        super.onCreate(paramBundle);
        return;
      }
      catch (Exception localException)
      {
        Logger.log(localException);
        continue;
      }
      org.antivirus.core.b.g localg = new org.antivirus.core.b.g(this);
      if (!localg.a())
        localg.b();
      if (str != null)
      {
        Intent localIntent1 = new Intent(this, LicenseEnteringActivity.class);
        localIntent1.putExtra("lcc", str);
        localIntent1.putExtra("title", Strings.getString(2131296382));
        localIntent1.putExtra("firest_edit_text", Strings.getString(2131296383));
        startActivity(localIntent1);
        continue;
        label671: if (120 == i1)
        {
          float f1 = this.x.getLowerTextSizeInPx();
          this.x.setUpperTextSize$255e752(f1);
          this.z.setUpperTextSize$255e752(f1);
          this.A.setUpperTextSize$255e752(f1);
          this.y.setUpperTextSize$255e752(f1);
        }
      }
    }
  }

  public void onDestroy()
  {
    super.onDestroy();
    if (this.k)
    {
      unbindService(this.i);
      this.k = false;
    }
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((4 == paramInt) && (this.u))
      j();
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  public boolean onMenuItemSelected(int paramInt, MenuItem paramMenuItem)
  {
    return handleMenuItem(paramMenuItem);
  }

  protected void onNewIntent(Intent paramIntent)
  {
    a(paramIntent);
    super.onNewIntent(paramIntent);
  }

  protected void onPause()
  {
    unregisterReceiver(this.C);
    this.C.a(null);
    super.onPause();
  }

  public boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    onCreateOptionsMenu(paramMenu);
    paramMenu.clear();
    if (addMenu(paramMenu) != null);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public void onResume()
  {
    super.onResume();
    Intent localIntent = getIntent();
    if (localIntent.getIntExtra("from_notification", -1) == 1)
    {
      org.antivirus.ganalytics.a.a(this, "app_landing", "opened_from_notification", null);
      localIntent.removeExtra("from_notification");
    }
    e();
    a(localIntent);
    this.C.a(this.F);
    registerReceiver(this.C, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
    if (l.c != this.w)
      if (!this.u)
        l();
    while (true)
    {
      h();
      g();
      f();
      return;
      this.n.setVisibility(8);
      if (!this.u)
        this.f.setVisibility(8);
      this.g.setVisibility(8);
    }
  }

  public Object onRetainNonConfigurationInstance()
  {
    k localk = new k(this, (byte)0);
    localk.a = this.x.getBackground();
    localk.b = this.x.getLowerText();
    localk.c = this.u;
    localk.d = this.w;
    localk.e = this.t.getText();
    return localk;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.main.AntivirusMainScreen
 * JD-Core Version:    0.6.2
 */