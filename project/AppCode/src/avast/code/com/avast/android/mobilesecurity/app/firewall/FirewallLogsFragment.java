package com.avast.android.mobilesecurity.app.firewall;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.LoaderManager;
import android.support.v4.app.LoaderManager.LoaderCallbacks;
import android.support.v4.e.a;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ListView;
import com.avast.android.generic.ad;
import com.avast.android.generic.util.ga.TrackedListFragment;
import com.avast.android.mobilesecurity.app.firewall.core.h;
import com.avast.android.mobilesecurity.t;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;

public class FirewallLogsFragment extends TrackedListFragment
  implements LoaderManager.LoaderCallbacks
{
  private Button a;
  private t b;
  private LoaderManager c;
  private Looper d;
  private Handler e;
  private boolean f;
  private boolean g;

  private Map a(Context paramContext)
  {
    PackageManager localPackageManager = paramContext.getPackageManager();
    List localList = localPackageManager.getInstalledApplications(0);
    TreeMap localTreeMap1 = new TreeMap();
    if (localList == null);
    for (TreeMap localTreeMap2 = localTreeMap1; ; localTreeMap2 = localTreeMap1)
    {
      return localTreeMap2;
      Iterator localIterator = localList.iterator();
      while (localIterator.hasNext())
      {
        ApplicationInfo localApplicationInfo = (ApplicationInfo)localIterator.next();
        if (localPackageManager.checkPermission("android.permission.INTERNET", localApplicationInfo.packageName) == 0)
        {
          String str1;
          String str2;
          try
          {
            str1 = localApplicationInfo.loadLabel(localPackageManager).toString().trim();
            Integer localInteger = Integer.valueOf(localApplicationInfo.uid);
            str2 = (String)localTreeMap1.get(localInteger);
            if (str2 != null)
              break label146;
            localTreeMap1.put(localInteger, str1);
          }
          catch (Exception localException)
          {
            com.avast.android.generic.util.m.b("Can not load app label resource", localException);
          }
          continue;
          label146: new StringBuilder().append(str2).append(", ").append(str1).toString();
        }
      }
    }
  }

  private void a()
  {
    boolean bool = this.b.Y();
    if (this.a != null)
      this.a.setEnabled(bool);
  }

  private void c()
  {
    this.c.restartLoader(0, null, this);
  }

  public void a(android.support.v4.a.m paramm, Cursor paramCursor)
  {
    a locala = (a)getListAdapter();
    View localView;
    if (locala == null)
    {
      setListAdapter(new ab(getActivity(), paramCursor));
      localView = getView().findViewById(2131165453);
      if (paramCursor.getCount() != 0)
        break label81;
    }
    label81: for (int i = 0; ; i = 8)
    {
      localView.setVisibility(i);
      getView().findViewById(16908292).setVisibility(8);
      return;
      locala.changeCursor(paramCursor);
      break;
    }
  }

  public int a_()
  {
    return 2131493373;
  }

  public String f()
  {
    return "/ms/firewall/log";
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    HandlerThread localHandlerThread = new HandlerThread("Firewall Log Refresh Thread", 1);
    localHandlerThread.start();
    this.d = localHandlerThread.getLooper();
    this.e = new x(this, this.d);
    this.b = ((t)ad.a(getActivity(), t.class));
    this.c = getLoaderManager();
    this.g = true;
  }

  public android.support.v4.a.m onCreateLoader(int paramInt, Bundle paramBundle)
  {
    return new h(getActivity(), a(getActivity()));
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView1 = paramLayoutInflater.inflate(2130903125, paramViewGroup, false);
    if (!this.b.X())
      getActivity().finish();
    for (View localView2 = localView1; ; localView2 = localView1)
    {
      return localView2;
      this.a = ((Button)localView1.findViewById(2131165490));
      this.a.setEnabled(false);
      a();
      this.a.setOnClickListener(new y(this));
    }
  }

  public void onDestroy()
  {
    super.onDestroy();
    this.d.quit();
  }

  public void onLoaderReset(android.support.v4.a.m paramm)
  {
    a locala = (a)getListAdapter();
    if (locala != null)
      locala.changeCursor(null);
  }

  public void onPause()
  {
    super.onPause();
    this.f = true;
    this.e.removeMessages(0);
  }

  public void onResume()
  {
    super.onResume();
    this.f = false;
    this.e.sendMessageDelayed(this.e.obtainMessage(), 30000L);
  }

  public void onStart()
  {
    super.onStart();
    if (!this.g)
      c();
    this.g = false;
  }

  public void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    LayoutInflater localLayoutInflater = LayoutInflater.from(getActivity());
    getListView().addHeaderView(localLayoutInflater.inflate(2130903126, getListView(), false));
    this.c.initLoader(0, null, this);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.firewall.FirewallLogsFragment
 * JD-Core Version:    0.6.2
 */