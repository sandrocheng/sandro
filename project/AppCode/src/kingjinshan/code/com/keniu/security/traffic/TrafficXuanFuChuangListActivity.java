package com.keniu.security.traffic;

import android.app.ListActivity;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.Button;
import android.widget.ListView;
import android.widget.TextView;
import com.hoi.netstat.f;
import com.hoi.netstat.g;
import com.keniu.security.util.aw;
import java.util.Vector;

public class TrafficXuanFuChuangListActivity extends ListActivity
  implements View.OnClickListener, AdapterView.OnItemClickListener
{
  public static final String a = "com.android.settings";
  public static final String b = "com.android.settings.InstalledAppDetails";
  public static final String c = "android.settings.APPLICATION_DETAILS_SETTINGS";
  protected static final int d = 0;
  protected static final int e = 1;
  private static g f = f.a();
  private static final String g = "package";
  private static final String h = "com.android.settings.ApplicationPkgName";
  private static final String i = "pkg";
  private PackageManager j;
  private ListView k;
  private TextView l;
  private Button m;
  private aw n = new aw();
  private Vector o;
  private dn p;
  private volatile boolean q = false;
  private do r = null;
  private Handler s = new dq(this);

  private void a(String paramString)
  {
    Intent localIntent = new Intent();
    int i1 = Build.VERSION.SDK_INT;
    if (i1 >= 9)
    {
      localIntent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
      localIntent.setData(Uri.fromParts("package", paramString, null));
      startActivity(localIntent);
      return;
    }
    if (i1 == 8);
    for (String str = "pkg"; ; str = "com.android.settings.ApplicationPkgName")
    {
      localIntent.setAction("android.intent.action.VIEW");
      localIntent.setClassName("com.android.settings", "com.android.settings.InstalledAppDetails");
      localIntent.putExtra(str, paramString);
      break;
    }
  }

  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default:
    case 2131231727:
    }
    while (true)
    {
      return;
      TrafficTabActivity.a = true;
      Intent localIntent = new Intent();
      localIntent.setClass(this, TrafficTabActivity.class);
      localIntent.putExtra("extra_to_main", true);
      startActivity(localIntent);
      finish();
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130903317);
    this.k = getListView();
    this.k.setOnItemClickListener(this);
    this.l = ((TextView)findViewById(2131231728));
    this.m = ((Button)findViewById(2131231727));
    this.m.setOnClickListener(this);
    this.j = getPackageManager();
  }

  public void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if ((this.o == null) || (this.o.size() == 0));
    String str1;
    Intent localIntent;
    int i1;
    while (true)
    {
      return;
      str1 = ((do)this.o.get(paramInt)).e;
      localIntent = new Intent();
      i1 = Build.VERSION.SDK_INT;
      if (i1 < 9)
        break;
      localIntent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
      localIntent.setData(Uri.fromParts("package", str1, null));
      startActivity(localIntent);
    }
    if (i1 == 8);
    for (String str2 = "pkg"; ; str2 = "com.android.settings.ApplicationPkgName")
    {
      localIntent.setAction("android.intent.action.VIEW");
      localIntent.setClassName("com.android.settings", "com.android.settings.InstalledAppDetails");
      localIntent.putExtra(str2, str1);
      break;
    }
  }

  protected void onPause()
  {
    super.onPause();
    if (this.n != null)
      this.n.a();
    this.q = true;
  }

  protected void onResume()
  {
    super.onResume();
    this.q = false;
    if (this.n == null)
      this.n = new aw();
    this.n.a(this, 2131428738, 2131428476);
    dd.a(this, new dr(this, this), 1000L);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.TrafficXuanFuChuangListActivity
 * JD-Core Version:    0.6.2
 */