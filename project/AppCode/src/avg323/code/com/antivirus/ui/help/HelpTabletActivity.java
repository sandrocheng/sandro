package com.antivirus.ui.help;

import android.app.ProgressDialog;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.view.Window;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.TextView;
import com.antivirus.m;

public class HelpTabletActivity extends com.antivirus.ui.a
{
  private boolean A = true;
  private Handler B;
  private int C = -1;
  private boolean D = true;
  private BroadcastReceiver E = new d(this);
  Runnable n = new c(this);
  private boolean o = false;
  private com.avg.ui.general.d.b p = null;
  private WebView q = null;
  private TextView v = null;
  private ProgressDialog w = null;
  private IntentFilter x = new IntentFilter("inAppIntentFilterScreen");
  private Handler y = null;
  private Runnable z = null;

  private void u()
  {
    this.w = ProgressDialog.show(this, "", m.a(this, 2131296354), false, false, null);
    this.w.setOnKeyListener(new a(this));
  }

  private void v()
  {
    this.q = ((WebView)findViewById(2131230912));
    this.q.getSettings().setJavaScriptEnabled(true);
    this.q.getSettings().setBuiltInZoomControls(true);
    this.q.getSettings().setLoadWithOverviewMode(true);
    this.q.getSettings().setUseWideViewPort(true);
    this.q.setWebViewClient(new b(this));
  }

  private void w()
  {
    if ((this.y != null) && (this.z != null))
      this.y.removeCallbacks(this.z);
    try
    {
      if (this.E != null)
        unregisterReceiver(this.E);
      label40: return;
    }
    catch (Exception localException)
    {
      break label40;
    }
  }

  private void x()
  {
    this.q.setVisibility(8);
    this.v.setVisibility(0);
  }

  public void a(int paramInt)
  {
    this.C = paramInt;
    u();
    String str1 = "";
    this.o = false;
    switch (paramInt)
    {
    default:
      this.D = false;
      if (!"".equals(str1))
        this.q.loadUrl(str1);
      break;
    case 0:
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      return;
      com.avg.toolkit.b.h localh2 = new com.avg.toolkit.b.h(this);
      str1 = localh2.b() + "/help.html";
      break;
      if (this.u.a());
      for (String str2 = "/tospro.html"; ; str2 = "/tos.html")
      {
        com.avg.toolkit.b.h localh1 = new com.avg.toolkit.b.h(this);
        str1 = localh1.b() + str2;
        break;
      }
      str1 = "https://www.avg.com";
      break;
      l();
      break;
      this.q.setVisibility(4);
    }
  }

  protected void a(ComponentName paramComponentName, IBinder paramIBinder)
  {
    if (!this.A)
    {
      v();
      this.p = new com.avg.ui.general.d.b();
      a(this.p, 2131230908, "HelpFragment");
      this.v = ((TextView)findViewById(2131230913));
    }
  }

  protected void k()
  {
    if (this.B != null)
      this.B.removeCallbacks(this.n);
  }

  public void l()
  {
    registerReceiver(this.E, this.x);
    com.avg.ui.general.d.h.e(this);
    if (this.y == null)
      this.y = new Handler();
    if (this.z == null)
      this.z = new e(this);
    this.y.postDelayed(this.z, 15000L);
  }

  protected void m()
  {
    if ((this.w != null) && (this.w.isShowing()))
      this.w.dismiss();
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    getWindow().requestFeature(1);
    setContentView(2130903073);
    if (com.avg.toolkit.e.e.a().b())
      a(true, 2130837847, 2130837848, "", false);
    while (true)
    {
      if (paramBundle == null)
        this.A = false;
      p();
      return;
      a(true, 2130837850, 2130837851, "", false);
    }
  }

  protected void onDestroy()
  {
    q();
    super.onDestroy();
  }

  protected void onPause()
  {
    super.onPause();
    w();
    m();
    k();
  }

  protected void onRestart()
  {
    super.onRestart();
    if ((this.q != null) && (!this.D))
      a(this.C);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.help.HelpTabletActivity
 * JD-Core Version:    0.6.2
 */