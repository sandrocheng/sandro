package org.antivirus.ui.protection;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.BroadcastReceiver;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Locale;
import org.antivirus.AVService;
import org.antivirus.AVSettings;
import org.antivirus.AvApplication;
import org.antivirus.Strings;
import org.antivirus.core.EngineSettings;
import org.antivirus.core.a.n;
import org.antivirus.core.scanners.g;
import org.antivirus.ui.BaseListAdapter.BaseListAdapterItem;
import org.antivirus.ui.BaseToolListActivity;
import org.antivirus.ui.WebViewAdsManager;

public class ProtectionActivity extends BaseToolListActivity
{
  private static boolean r = false;
  BroadcastReceiver a = new q(this);
  private final int b = 0;
  private final int c = 1;
  private final int f = 2;
  private final int g = 3;
  private final int h = 4;
  private final int i = 5;
  private final int j = 6;
  private final int k = 7;
  private final int l = 8;
  private ab m;
  private AlertDialog n;
  private AlertDialog o;
  private View p;
  private Handler q;
  private String s;
  private String t;
  private int u;
  private WebViewAdsManager v;
  private g w;
  private boolean x;
  private Runnable y = new p(this);
  private ServiceConnection z = new v(this);

  private ArrayList h()
  {
    ArrayList localArrayList = new ArrayList();
    int i1 = 0;
    if (i1 < 8)
    {
      switch (i1)
      {
      default:
      case 0:
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      }
      while (true)
      {
        i1++;
        break;
        EngineSettings localEngineSettings = new EngineSettings(getApplicationContext());
        localArrayList.add(new BaseListAdapter.BaseListAdapterItem(Strings.getString(2131296274), Strings.getString(2131296263) + "3.0.3 - " + localEngineSettings.getSecDbVersion(), 2130837811));
        continue;
        localArrayList.add(new BaseListAdapter.BaseListAdapterItem(this.t, this.u, this.s, true, 2130837733));
        continue;
        String str = getResources().getStringArray(2131361792)[d()];
        localArrayList.add(new BaseListAdapter.BaseListAdapterItem(Strings.getString(2131296264), str, 2130837581));
        continue;
        localArrayList.add(new BaseListAdapter.BaseListAdapterItem(Strings.getString(2131296315), Strings.getString(2131296316), 2130837702));
        continue;
        localArrayList.add(new BaseListAdapter.BaseListAdapterItem(Strings.getString(2131296435), Strings.getString(2131296436), 2130837767, AVSettings.isUrlAntiPhishingEnabled()));
        continue;
        localArrayList.add(new BaseListAdapter.BaseListAdapterItem(Strings.getString(2131296591), Strings.getString(2131296592), 2130837769, a(getApplicationContext()).isSDScanEnabled()));
        continue;
        localArrayList.add(new BaseListAdapter.BaseListAdapterItem(Strings.getString(2131296275), Strings.getString(2131296276), 2130837727, a(getApplicationContext()).isAutoScanSMS()));
        continue;
        localArrayList.add(new BaseListAdapter.BaseListAdapterItem(Strings.getString(2131296723), Strings.getString(2131296724), 2130837768, a(getApplicationContext()).isPUPEnabled()));
      }
    }
    return localArrayList;
  }

  private void i()
  {
    if (!n.a(this))
    {
      if (this.o != null)
        this.o.dismiss();
      AlertDialog.Builder localBuilder2 = new AlertDialog.Builder(this);
      localBuilder2.setTitle(Strings.getString(2131296467));
      localBuilder2.setMessage(Strings.getString(2131296468));
      localBuilder2.setIcon(2130837810);
      localBuilder2.setPositiveButton(Strings.getString(2131296259), new y(this));
      localBuilder2.setCancelable(false);
      this.n = localBuilder2.show();
    }
    while (true)
    {
      return;
      AlertDialog.Builder localBuilder1 = new AlertDialog.Builder(this);
      localBuilder1.setTitle(Strings.getString(2131296277));
      localBuilder1.setCancelable(true);
      localBuilder1.setIcon(2130837810);
      this.p = View.inflate(this, 2130903075, null);
      localBuilder1.setView(this.p);
      this.o = localBuilder1.create();
      this.o.setCanceledOnTouchOutside(false);
      ((TextView)this.p.findViewById(2131230910)).setText(Strings.getString(2131296271));
      this.o.show();
      r = true;
      Intent localIntent = new Intent(this, AVService.class);
      localIntent.putExtra("__SAC", 7);
      localIntent.putExtra("__SAD", 1024);
      startService(localIntent);
      registerReceiver(this.a, new IntentFilter("droidsec.com.update"));
      if (this.q == null)
        this.q = new Handler();
      this.q.postDelayed(this.y, 15000L);
    }
  }

  public final void a(String paramString)
  {
    Toast.makeText(this, paramString, 0).show();
  }

  public final int d()
  {
    int i1 = 2;
    long l1 = a(this).getAutoScanInterval();
    if (86400000L == l1)
      i1 = 0;
    while (true)
    {
      return i1;
      if (604800000L == l1)
        i1 = 1;
      else if (-1L != l1);
    }
  }

  public final void e()
  {
    String str1 = Strings.getString(2131296562);
    if ((AvApplication.mAvgFeatures != null) && (AvApplication.mAvgFeatures.b()))
      str1 = Strings.getString(2131296561);
    String str2 = Strings.getString(2131296279).replace("[appname]", str1);
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this);
    localBuilder.setTitle(str2);
    EngineSettings localEngineSettings = new EngineSettings(getApplicationContext());
    localBuilder.setMessage(Strings.getString(2131296278) + localEngineSettings.getSecDbVersion());
    localBuilder.setIcon(2130837812);
    localBuilder.setPositiveButton(Strings.getString(2131296259), new z(this));
    localBuilder.setCancelable(false);
    this.n = localBuilder.show();
  }

  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    this.v.onConfigurationChanged(this, 2131230906, paramConfiguration);
    super.onConfigurationChanged(paramConfiguration);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.w = new g();
    this.w.a(this);
    setContentView(2130903083);
    a(2130837532, 2130837533, Strings.getString(2131296689), false);
    long l1 = this.w.b;
    this.t = Strings.getString(2131296688);
    if (l1 <= 0L)
    {
      this.s = Strings.getString(2131296701);
      this.u = getResources().getColor(2131165245);
    }
    while (true)
    {
      this.m = new ab(this, this, h());
      setListAdapter(this.m);
      getListView().setOnItemClickListener(new w(this));
      if (getIntent().getBooleanExtra("launchFormWidget", false))
      {
        i();
        org.antivirus.a.a.a(this, null);
      }
      this.v = new WebViewAdsManager();
      bindService(new Intent(this, AVService.class), this.z, 1);
      this.x = true;
      return;
      String str = Strings.getString(2131296703);
      this.u = -1;
      if (this.w.a())
      {
        str = "<font color='#ff0000'>" + Strings.getString(2131296706) + "</font>";
        this.t = Strings.getString(2131296704);
      }
      this.s = (Strings.getString(2131296702) + " " + DateFormat.getDateInstance(1, Locale.getDefault()).format(new Date(l1)) + " - " + str);
    }
  }

  protected void onDestroy()
  {
    if (this.v != null)
      this.v.stop();
    if (this.x)
    {
      unbindService(this.z);
      this.x = false;
    }
    super.onDestroy();
  }

  public void onPause()
  {
    if (this.n != null)
    {
      this.n.dismiss();
      this.n = null;
    }
    if (this.o != null)
    {
      this.o.dismiss();
      this.o = null;
      this.p = null;
    }
    try
    {
      unregisterReceiver(this.a);
      label51: super.onPause();
      return;
    }
    catch (Exception localException)
    {
      break label51;
    }
  }

  public void onResume()
  {
    super.onResume();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.protection.ProtectionActivity
 * JD-Core Version:    0.6.2
 */