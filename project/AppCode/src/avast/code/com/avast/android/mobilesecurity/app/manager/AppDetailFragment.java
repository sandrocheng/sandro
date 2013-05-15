package com.avast.android.mobilesecurity.app.manager;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.avast.android.generic.ad;
import com.avast.android.generic.notification.j;
import com.avast.android.generic.ui.widget.SlideBlock;
import com.avast.android.generic.util.ga.TrackedFragment;
import com.avast.android.generic.util.m;
import com.avast.android.generic.util.u;
import com.avast.android.mobilesecurity.app.firewall.FirewallFragment;
import com.avast.android.mobilesecurity.l;
import com.avast.android.mobilesecurity.r;
import com.avast.android.mobilesecurity.ui.widget.ConnectionTypeButtons;
import com.avast.android.mobilesecurity.ui.widget.TrafficinfoTypeRow;
import java.text.NumberFormat;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class AppDetailFragment extends TrackedFragment
{
  final NumberFormat a = NumberFormat.getNumberInstance();
  final h b = new h(this);
  private String c;
  private int d;
  private int e;
  private SlideBlock f;
  private PackageManager g;
  private ApplicationInfo h;
  private PackageInfo i;
  private com.avast.android.mobilesecurity.app.manager.a.b j;
  private com.avast.android.mobilesecurity.t k;
  private TrafficinfoTypeRow l;
  private TrafficinfoTypeRow m;
  private TrafficinfoTypeRow n;
  private boolean o = true;
  private boolean p;
  private BroadcastReceiver q = new a(this);
  private com.avast.android.mobilesecurity.app.firewall.core.a r = new b(this);
  private com.avast.android.mobilesecurity.app.firewall.a.b s = new c(this);
  private g t;
  private boolean u;

  private void c()
  {
    if (this.f != null)
      this.f.a();
  }

  private void c(View paramView)
  {
    int i1;
    SlideBlock localSlideBlock;
    if ((Build.VERSION.SDK_INT >= 8) && (this.k.aK()))
    {
      i1 = 1;
      localSlideBlock = (SlideBlock)paramView.findViewById(2131165401);
      if (i1 == 0)
        break label208;
      localSlideBlock.setVisibility(0);
      this.l = ((TrafficinfoTypeRow)paramView.findViewById(2131165402));
      this.m = ((TrafficinfoTypeRow)paramView.findViewById(2131165403));
      this.n = ((TrafficinfoTypeRow)paramView.findViewById(2131165404));
      this.l.g(this.o);
      this.m.g(this.o);
      this.n.g(this.o);
      this.l.c(getString(2131493741));
      this.l.b(8);
      this.l.c();
      this.m.c(getString(2131493742));
      this.m.b(8);
      this.m.c();
      this.n.c(getString(2131493743));
      this.n.b(8);
      this.n.c();
      d();
    }
    while (true)
    {
      return;
      i1 = 0;
      break;
      label208: localSlideBlock.setVisibility(8);
    }
  }

  private void d()
  {
    if ((this.l != null) && (this.m != null) && (this.n != null))
    {
      try
      {
        HashMap localHashMap = new HashMap();
        Cursor localCursor = getActivity().getContentResolver().query(r.a(), r.a, "uid = " + this.h.uid, null, null);
        if (localCursor != null)
        {
          boolean bool = localCursor.moveToFirst();
          if (!bool);
        }
        try
        {
          do
            com.avast.android.mobilesecurity.app.trafficinfo.a.a(localCursor, localHashMap);
          while (localCursor.moveToNext());
          localCursor.close();
          if (localHashMap.containsKey(Long.valueOf(this.h.uid)))
          {
            com.avast.android.mobilesecurity.app.trafficinfo.a locala = (com.avast.android.mobilesecurity.app.trafficinfo.a)localHashMap.get(Long.valueOf(this.h.uid));
            this.l.a(locala.d.h, locala.d.i, locala.d.d, locala.d.e, locala.d.b, locala.d.c, locala.d.f, locala.d.g);
            this.m.a(locala.e.h, locala.e.i, locala.e.d, locala.e.e, locala.e.b, locala.e.c, locala.e.f, locala.e.g);
            this.n.a(locala.f.h, locala.f.i, locala.f.d, locala.f.e, locala.f.b, locala.f.c, locala.f.f, locala.f.g);
          }
        }
        catch (Exception localException2)
        {
          while (true)
            com.avast.android.generic.util.t.a("AvastMobileSecurityNetworkInfo", "Can not read network info", localException2);
        }
      }
      catch (Exception localException1)
      {
        com.avast.android.generic.util.t.a("AvastMobileSecurity", "Somehow could not update app data info", localException1);
      }
      this.l.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L);
      this.m.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L);
      this.n.a(0L, 0L, 0L, 0L, 0L, 0L, 0L, 0L);
    }
  }

  private void d(View paramView)
  {
    EnumMap localEnumMap = new EnumMap(com.avast.android.mobilesecurity.app.advisor.h.class);
    Iterator localIterator1 = EnumSet.allOf(com.avast.android.mobilesecurity.app.advisor.h.class).iterator();
    while (localIterator1.hasNext())
    {
      com.avast.android.mobilesecurity.app.advisor.h localh2 = (com.avast.android.mobilesecurity.app.advisor.h)localIterator1.next();
      f localf3 = new f();
      localf3.a = getString(getResources().getIdentifier("l_" + localh2.b(), "string", getActivity().getPackageName()));
      localEnumMap.put(localh2, localf3);
    }
    PackageManager localPackageManager = getActivity().getPackageManager();
    if (this.i.requestedPermissions != null)
    {
      String[] arrayOfString2 = this.i.requestedPermissions;
      int i4 = arrayOfString2.length;
      int i5 = 0;
      if (i5 < i4)
      {
        String str = arrayOfString2[i5];
        if (localPackageManager.checkPermission(str, this.i.packageName) == -1);
        while (true)
        {
          i5++;
          break;
          com.avast.android.mobilesecurity.app.advisor.h localh1 = (com.avast.android.mobilesecurity.app.advisor.h)com.avast.android.mobilesecurity.app.advisor.g.a.get(str);
          if (localh1 != null)
          {
            f localf2 = (f)localEnumMap.get(localh1);
            int i6 = getResources().getIdentifier(str.replace(".", "_"), "string", getActivity().getPackageName());
            if (i6 > 0)
              localf2.b.add(getString(i6));
            while (true)
            {
              int i7 = getResources().getIdentifier("descr_" + str.replace(".", "_"), "string", getActivity().getPackageName());
              if (i7 <= 0)
                break label372;
              localf2.c.add(getString(i7));
              break;
              localf2.b.add(str.replace(".", "_"));
            }
            label372: localf2.c.add(str.replace(".", "_"));
          }
        }
      }
    }
    LinearLayout localLinearLayout = (LinearLayout)paramView.findViewById(2131165406);
    LayoutInflater localLayoutInflater = getActivity().getLayoutInflater();
    Iterator localIterator2 = localEnumMap.entrySet().iterator();
    int i1 = 0;
    f localf1;
    Cursor localCursor;
    if (localIterator2.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator2.next();
      localf1 = (f)localEntry.getValue();
      if (localEntry.getKey() == com.avast.android.mobilesecurity.app.advisor.h.g)
      {
        ContentResolver localContentResolver = getActivity().getContentResolver();
        Uri localUri = com.avast.android.mobilesecurity.e.a();
        String[] arrayOfString1 = new String[2];
        arrayOfString1[0] = String.valueOf(com.avast.android.mobilesecurity.app.advisor.h.g.a());
        arrayOfString1[1] = this.c;
        localCursor = localContentResolver.query(localUri, null, "groupId = ? and packageName = ?", arrayOfString1, null);
      }
    }
    while (true)
    {
      try
      {
        if (localCursor.moveToNext())
        {
          TextView localTextView4 = (TextView)localLayoutInflater.inflate(2130903184, null, false);
          localTextView4.setText(localf1.a);
          localLinearLayout.addView(localTextView4);
          View localView3 = localLayoutInflater.inflate(2130903183, null, false);
          TextView localTextView5 = (TextView)localView3.findViewById(2131165630);
          localTextView5.setId(-1);
          localTextView5.setText(getString(2131493527));
          TextView localTextView6 = (TextView)localView3.findViewById(2131165631);
          localTextView6.setId(-1);
          localTextView6.setText(getString(2131493528));
          localLinearLayout.addView(localView3);
          i1 = 1;
        }
        if (localCursor != null)
          localCursor.close();
        if (localf1.b.isEmpty())
          break label946;
        TextView localTextView1 = (TextView)localLayoutInflater.inflate(2130903184, null, false);
        localTextView1.setText(localf1.a);
        localLinearLayout.addView(localTextView1);
        int i3 = 0;
        if (i3 < localf1.b.size())
        {
          View localView2 = localLayoutInflater.inflate(2130903183, null, false);
          TextView localTextView2 = (TextView)localView2.findViewById(2131165630);
          localTextView2.setId(-1);
          localTextView2.setText((CharSequence)localf1.b.get(i3));
          TextView localTextView3 = (TextView)localView2.findViewById(2131165631);
          localTextView3.setId(-1);
          localTextView3.setText((CharSequence)localf1.c.get(i3));
          localLinearLayout.addView(localView2);
          i3++;
        }
      }
      finally
      {
        if (localCursor != null)
          localCursor.close();
      }
      break;
      if (i1 == 0)
      {
        View localView1 = localLayoutInflater.inflate(2130903183, localLinearLayout, false);
        ((TextView)localView1.findViewById(2131165630)).setText(getText(2131493602));
        m.c("permission name id 3 = 2131165630");
        ((TextView)localView1.findViewById(2131165631)).setVisibility(8);
        m.c("permission descr id 3 = 2131165631");
        localLinearLayout.addView(localView1);
      }
      return;
      label946: int i2 = i1;
    }
  }

  private void e()
  {
    View localView = getView().findViewById(2131165386);
    if ((this.d != 0) && (Build.VERSION.SDK_INT >= 8));
    for (boolean bool = true; ; bool = false)
    {
      localView.setEnabled(bool);
      return;
    }
  }

  private void f()
  {
    Intent localIntent = new Intent();
    int i1 = Build.VERSION.SDK_INT;
    if (i1 >= 9)
    {
      localIntent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
      localIntent.setData(Uri.parse("package:" + this.h.packageName));
      startActivity(localIntent);
      return;
    }
    if (i1 == 8);
    for (String str = "pkg"; ; str = "com.android.settings.ApplicationPkgName")
    {
      localIntent.setAction("android.intent.action.VIEW");
      localIntent.setClassName("com.android.settings", "com.android.settings.InstalledAppDetails");
      localIntent.putExtra(str, this.h.packageName);
      break;
    }
  }

  @TargetApi(8)
  private void g()
  {
    if (Build.VERSION.SDK_INT >= 8)
      ((ActivityManager)getActivity().getSystemService("activity")).killBackgroundProcesses(this.c);
  }

  private void h()
  {
    try
    {
      com.avast.android.generic.util.t.a("AvastMobileSecurity", "Registered stats receiver");
      IntentFilter localIntentFilter = new IntentFilter();
      localIntentFilter.addAction("com.avast.android.mobilesecurity.trafficinfo.STATS_DB_UPDATED");
      getActivity().registerReceiver(this.q, localIntentFilter);
      label37: return;
    }
    catch (Exception localException)
    {
      break label37;
    }
  }

  private void i()
  {
    try
    {
      com.avast.android.generic.util.t.a("AvastMobileSecurity", "Unregistered stats receiver");
      getActivity().unregisterReceiver(this.q);
      label20: return;
    }
    catch (Exception localException)
    {
      break label20;
    }
  }

  public String a()
  {
    return "/ms/appManager/detail";
  }

  public int a_()
  {
    return 2131493571;
  }

  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.k = ((com.avast.android.mobilesecurity.t)ad.a(getActivity(), com.avast.android.mobilesecurity.t.class));
    this.o = u.a(getActivity(), true);
    this.c = getArguments().getString("packageName");
    this.d = getArguments().getInt("pid", 0);
    this.e = getArguments().getInt("expandBlock", 0);
    this.f = null;
    this.j = new com.avast.android.mobilesecurity.app.manager.a.b(getActivity());
    try
    {
      this.g = getActivity().getPackageManager();
      this.h = this.g.getApplicationInfo(this.c, 128);
      this.i = this.g.getPackageInfo(this.c, 4096);
      if (getArguments().getInt("notification_id") > 0)
        ((j)ad.a(getActivity(), j.class)).a(getArguments().getInt("notification_id"));
      return;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      while (true)
      {
        this.h = new ApplicationInfo();
        this.h.name = getActivity().getString(2131493588);
        this.h.packageName = this.c;
        this.h.uid = -1;
        this.i = new PackageInfo();
        this.i.versionName = getActivity().getString(2131493589);
        this.i.requestedPermissions = null;
      }
    }
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    Object localObject;
    if ((isRemoving()) || (getActivity().isFinishing()))
      localObject = null;
    while (true)
    {
      return localObject;
      this.u = true;
      View localView1 = paramLayoutInflater.inflate(2130903097, paramViewGroup, false);
      if (this.e > 0)
      {
        View localView2 = localView1.findViewById(this.e);
        if ((localView2 instanceof SlideBlock))
          this.f = ((SlideBlock)localView2);
      }
      ImageView localImageView = (ImageView)localView1.findViewById(2131165625);
      try
      {
        localImageView.setImageDrawable(this.h.loadIcon(this.g));
        localTextView1 = (TextView)localView1.findViewById(2131165626);
        m.c("app name id = 2131165626");
      }
      catch (Exception localException2)
      {
        try
        {
          localTextView1.setText(this.h.loadLabel(this.g).toString());
          TextView localTextView2 = (TextView)localView1.findViewById(2131165627);
          Object[] arrayOfObject = new Object[2];
          arrayOfObject[0] = this.i.versionName;
          arrayOfObject[1] = this.c;
          localTextView2.setText(getString(2131493597, arrayOfObject));
          ((TextView)localView1.findViewById(2131165391)).setText(this.a.format(this.j.a(this.c, null) / 1024L) + " " + getString(2131493073));
          localView1.findViewById(2131165386).setOnClickListener(new d(this));
          localView1.findViewById(2131165387).setOnClickListener(new e(this));
          d(localView1);
          c(localView1);
          boolean bool = this.k.X();
          localConnectionTypeButtons = (ConnectionTypeButtons)localView1.findViewById(2131165408);
          if (!bool);
        }
        catch (Exception localException2)
        {
          while (true)
          {
            ConnectionTypeButtons localConnectionTypeButtons;
            try
            {
              TextView localTextView1;
              String str1 = this.g.getPackageInfo(this.c, 0).sharedUserId;
              if (str1 == null)
                str1 = this.c;
              localConnectionTypeButtons.a(new com.avast.android.mobilesecurity.app.firewall.a.d(getActivity().getContentResolver(), l.a(str1), this.s));
              String str2 = getString(2131493694);
              if (this.k.aJ())
                str2 = getString(2131493695);
              localConnectionTypeButtons.c(getString(2131493637) + " - " + str2);
              this.p = false;
              h();
              localObject = localView1;
              break;
              localException1 = localException1;
              localImageView.setImageResource(16908294);
              continue;
              localException2 = localException2;
              localTextView1.setText(getActivity().getString(2131493588));
            }
            catch (PackageManager.NameNotFoundException localNameNotFoundException)
            {
              a.a.a.a.a.a.a().a(localNameNotFoundException);
              localConnectionTypeButtons.setVisibility(8);
              localView1.findViewById(2131165407).setVisibility(8);
              continue;
            }
            localConnectionTypeButtons.setVisibility(8);
            localView1.findViewById(2131165407).setVisibility(8);
          }
        }
      }
    }
  }

  public void onDestroy()
  {
    super.onDestroy();
    i();
  }

  public void onPause()
  {
    this.u = true;
    if (this.t != null)
    {
      this.t.cancel(true);
      this.t = null;
    }
    Application localApplication = getActivity().getApplication();
    try
    {
      if (this.p)
        FirewallFragment.a(localApplication, this.r);
      super.onPause();
      return;
    }
    catch (Exception localException)
    {
      while (true)
        m.b("Firewall: Error applying rules", localException);
    }
  }

  @TargetApi(11)
  public void onResume()
  {
    super.onResume();
    this.u = false;
    a("ms-AppManager", "Open App Detail", this.c, 0L);
    this.t = new g(this, null);
    com.avast.android.generic.util.b.a(this.t, new Void[0]);
  }

  public void onStart()
  {
    super.onStart();
    c();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.manager.AppDetailFragment
 * JD-Core Version:    0.6.2
 */