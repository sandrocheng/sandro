package com.tencent.qqpimsecure.ui.activity;

import afp;
import afr;
import afs;
import afu;
import afv;
import agb;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.Window;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageView;
import com.tencent.qqpimsecure.uilib.view.ButtonView;
import com.tencent.qqpimsecure.uilib.view.ProgressBarView;
import com.tencent.tmsecure.common.TMSApplication;
import com.tencent.tmsecure.utils.WifiUtil;
import di;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class WifiApproveDialog extends Activity
{
  private static PackageManager j = TMSApplication.getApplicaionContext().getPackageManager();
  private View a;
  private String b;
  private String c;
  private String d;
  private boolean e;
  private boolean f;
  private WebView g;
  private boolean h;
  private boolean i;
  private boolean k;
  private boolean l;
  private Handler m = new afp(this);
  private a n = new a(this);

  private static Intent b(String paramString)
  {
    Intent localIntent1 = new Intent();
    localIntent1.addFlags(268435456);
    localIntent1.setAction("android.intent.action.VIEW");
    localIntent1.setData(Uri.parse(paramString));
    List localList = j.queryIntentActivities(localIntent1, 0);
    ResolveInfo localResolveInfo;
    if (localList != null)
    {
      Iterator localIterator = localList.iterator();
      do
      {
        if (!localIterator.hasNext())
          break;
        localResolveInfo = (ResolveInfo)localIterator.next();
      }
      while (!localResolveInfo.activityInfo.packageName.equals("com.tencent.mtt"));
    }
    while (true)
    {
      try
      {
        if (j.getPackageInfo(localResolveInfo.activityInfo.packageName, 0).versionCode < 35)
          break;
        localIntent1.setClassName(localResolveInfo.activityInfo.packageName, localResolveInfo.activityInfo.name);
        i1 = 1;
        if (i1 == 0)
          break label161;
        localIntent2 = localIntent1;
        return localIntent2;
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
        localNameNotFoundException.printStackTrace();
      }
      break;
      label161: Intent localIntent2 = null;
      continue;
      int i1 = 0;
    }
  }

  public void onBackPressed()
  {
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    this.b = getIntent().getStringExtra("Location");
    this.h = getIntent().getBooleanExtra("FromInternalUI", false);
    this.i = getIntent().getBooleanExtra("HasApproved", false);
    getIntent().getBooleanExtra("ReceiveError", false);
    this.c = getIntent().getStringExtra("WifiSsid");
    this.l = false;
    if ((this.c == null) || (this.b == null))
      new StringBuilder("mSsid=").append(this.c).append(", mLocation=").append(this.b).toString();
    c.a().a(this.n);
  }

  protected void onDestroy()
  {
    super.onDestroy();
    c.a().b(this.n);
  }

  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    setIntent(paramIntent);
    this.b = getIntent().getStringExtra("Location");
    this.h = getIntent().getBooleanExtra("FromInternalUI", false);
    this.i = getIntent().getBooleanExtra("HasApproved", false);
    getIntent().getBooleanExtra("ReceiveError", false);
    this.c = getIntent().getStringExtra("WifiSsid");
    if ((this.c == null) || (this.b == null))
      new StringBuilder("mSsid=").append(this.c).append(", mLocation=").append(this.b).toString();
  }

  protected void onPause()
  {
    super.onPause();
    this.l = true;
    this.m.removeMessages(100);
    if (this.k)
    {
      ((ViewGroup)getWindow().getDecorView().findViewById(16908290)).removeView(this.a);
      this.a = null;
    }
  }

  protected void onResume()
  {
    super.onResume();
    this.l = false;
    if (this.k)
      if (this.a == null)
      {
        this.a = di.c();
        di.d.a = ((WifiApproveDialog)this);
        setContentView(this.a);
      }
    while (true)
    {
      return;
      WifiUtil.needWifiApprove(new afr(this));
    }
  }

  public static final class a
  {
    a(WifiApproveDialog paramWifiApproveDialog)
    {
    }
  }

  public static final class b
  {
    public WifiApproveDialog a;
    public View b;
    public WebView c;
    public ProgressBarView d;
    public ButtonView e;
    public ButtonView f;
    public ButtonView g;
    public ButtonView h;
    public ProgressBarView i;
    public ImageView j;
    public View.OnClickListener k = new afs(this);
    public View.OnClickListener l = new afu(this);
    public WebChromeClient m = new afv(this);
    public WebViewClient n = new agb(this);
  }

  public static class c
  {
    private static c a;
    private List<WifiApproveDialog.a> b = new ArrayList();

    public static c a()
    {
      try
      {
        if (a == null)
          a = new c();
        return a;
      }
      finally
      {
        localObject = finally;
        throw localObject;
      }
    }

    public final void a(WifiApproveDialog.a parama)
    {
      synchronized (this.b)
      {
        this.b.add(parama);
        return;
      }
    }

    public final void a(String paramString, boolean paramBoolean)
    {
      synchronized (this.b)
      {
        Iterator localIterator = this.b.iterator();
        if (localIterator.hasNext())
        {
          WifiApproveDialog.a locala = (WifiApproveDialog.a)localIterator.next();
          WifiApproveDialog.a(locala.a, paramString);
          WifiApproveDialog.a(locala.a, paramBoolean);
          WifiApproveDialog.j(locala.a);
        }
      }
    }

    public final boolean b(WifiApproveDialog.a parama)
    {
      synchronized (this.b)
      {
        if (this.b.contains(parama))
        {
          bool = this.b.remove(parama);
          return bool;
        }
        boolean bool = true;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.ui.activity.WifiApproveDialog
 * JD-Core Version:    0.6.2
 */