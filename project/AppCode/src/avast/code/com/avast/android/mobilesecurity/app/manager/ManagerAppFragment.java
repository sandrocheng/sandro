package com.avast.android.mobilesecurity.app.manager;

import android.database.Cursor;
import android.os.Bundle;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Message;
import android.os.SystemClock;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.LoaderManager;
import android.support.v4.app.LoaderManager.LoaderCallbacks;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.RadioButton;
import com.avast.android.generic.ad;
import com.avast.android.generic.ae;
import com.avast.android.generic.util.ga.TrackedListFragment;
import com.avast.android.mobilesecurity.app.manager.a.a.b;
import com.avast.android.mobilesecurity.app.manager.a.a.c;
import com.avast.android.mobilesecurity.app.manager.a.a.h;
import com.avast.android.mobilesecurity.app.manager.a.e;

public class ManagerAppFragment extends TrackedListFragment
  implements Handler.Callback, LoaderManager.LoaderCallbacks
{
  Handler a;
  long b;
  private int c;
  private int d;
  private int e;
  private int f;
  private ae g;
  private long h;
  private String[] i;
  private boolean j = false;
  private boolean k;
  private boolean l;
  private boolean m = false;
  private long n;
  private e o;
  private RadioButton p;
  private RadioButton q;
  private RadioButton r;
  private RadioButton s;

  private void a(boolean paramBoolean)
  {
    if ((getActivity() == null) || (getActivity().isFinishing()) || (this.k))
      com.avast.android.generic.util.m.d("ManagerAppFragment.refresh() - END");
    while (true)
    {
      return;
      com.avast.android.generic.util.m.d("ManagerAppFragment.refresh()");
      LoaderManager localLoaderManager = getActivity().getSupportLoaderManager();
      Bundle localBundle = new Bundle();
      localBundle.putInt("listType", this.e);
      localBundle.putInt("order", this.d);
      if (!paramBoolean)
        ((android.support.v4.e.a)getListAdapter()).changeCursor(null);
      this.n = SystemClock.uptimeMillis();
      localLoaderManager.restartLoader(this.f, localBundle, this).o();
      this.b = SystemClock.elapsedRealtime();
      g();
    }
  }

  private void b(int paramInt)
  {
    this.c = paramInt;
    Cursor localCursor = (Cursor)getListAdapter().getItem(paramInt);
    String str = localCursor.getString(localCursor.getColumnIndex(c.i));
    int i1 = localCursor.getInt(localCursor.getColumnIndex(c.l));
    AppDetailActivity.call(getActivity(), str, i1, 2131165388);
  }

  private void c(View paramView)
  {
    this.s = ((RadioButton)paramView.findViewById(2131165409));
    if (this.s != null)
    {
      this.r = ((RadioButton)paramView.findViewById(2131165410));
      this.q = ((RadioButton)paramView.findViewById(2131165411));
      this.p = ((RadioButton)paramView.findViewById(2131165412));
      i locali = new i(this);
      this.s.setOnCheckedChangeListener(locali);
      this.r.setOnCheckedChangeListener(locali);
      this.q.setOnCheckedChangeListener(locali);
      this.p.setOnCheckedChangeListener(locali);
    }
    for (this.j = true; ; this.j = false)
      return;
  }

  private void d()
  {
    a(false);
  }

  private void e()
  {
    a(true);
  }

  private void g()
  {
    if (this.j)
    {
      if (this.d == 0)
        this.s.setChecked(true);
      if (this.d == 3)
        this.r.setChecked(true);
      if (this.d == 2)
        this.q.setChecked(true);
      if (this.d == 1)
        this.p.setChecked(true);
    }
  }

  public int a()
  {
    return this.e;
  }

  public void a(int paramInt)
  {
    if ((this.e == 1) && ((paramInt == 3) || (paramInt == 2)));
    while (true)
    {
      return;
      this.d = paramInt;
      this.g.a("am_order", this.d);
      this.g.b();
      this.m = false;
      d();
    }
  }

  public void a(android.support.v4.a.m paramm, Cursor paramCursor)
  {
    if ((isAdded()) && (!isRemoving()))
    {
      b localb = (b)paramm;
      com.avast.android.generic.util.m.c("ManagerAppFragment.onLoadFinished() - " + paramCursor.getCount());
      this.h = localb.x();
      Cursor localCursor = ((android.support.v4.e.a)getListAdapter()).swapCursor(paramCursor);
      if (localCursor != null)
        localCursor.close();
      if (this.e == 1)
      {
        a("ms-AppManager", "countOfAllApps", "", paramCursor.getCount());
        a("ms-AppManager", "timeToLoadAllApps", this.i[this.d], (int)(SystemClock.uptimeMillis() - this.n));
      }
      if ((this.e == 0) && (!this.m))
      {
        a("ms-AppManager", "countOfRunningApps", "", paramCursor.getCount());
        a("ms-AppManager", "timeToLoadRunningApps", this.i[this.d], (int)(SystemClock.uptimeMillis() - this.n));
        this.m = true;
      }
      if ((this.e == 0) || (this.d == 2) || (this.d == 3))
      {
        long l1 = SystemClock.elapsedRealtime();
        com.avast.android.generic.util.m.d("ManagerAppFragment.onLoadFinished() - REFRESH INTERVAL: " + (3000L - l1 + this.b));
        this.a.sendEmptyMessageDelayed(0, Math.max(3000L - l1 + this.b, 0L));
      }
    }
  }

  public int a_()
  {
    return 2131493357;
  }

  public int c()
  {
    return this.d;
  }

  public String f()
  {
    return null;
  }

  public boolean handleMessage(Message paramMessage)
  {
    if ((this.o == null) || (!this.o.c()))
      e();
    while (true)
    {
      return true;
      this.a.sendEmptyMessageDelayed(0, 500L);
    }
  }

  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    setListAdapter(new j(this, getActivity().getApplicationContext(), null));
    LoaderManager localLoaderManager = getActivity().getSupportLoaderManager();
    Bundle localBundle = new Bundle();
    localBundle.putInt("listType", this.e);
    localBundle.putInt("order", this.d);
    this.n = SystemClock.uptimeMillis();
    localLoaderManager.initLoader(this.f, localBundle, this);
    com.avast.android.generic.util.m.c("ManagerAppFragment.onActivityCreated()");
    this.l = true;
    g();
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setRetainInstance(true);
    this.i = new String[] { "title", "size", "memory", "cpu" };
    this.a = new Handler(this);
    this.g = ((ae)ad.a(getActivity(), ae.class));
    if (paramBundle != null);
    for (this.e = paramBundle.getInt("listType"); ; this.e = getArguments().getInt("list_type", 0))
    {
      this.d = getArguments().getInt("order_by", 0);
      if ((this.e == 1) && ((this.d == 2) || (this.d == 3)))
        this.d = 0;
      this.f = (55000 + 100 * this.e);
      return;
    }
  }

  public android.support.v4.a.m onCreateLoader(int paramInt, Bundle paramBundle)
  {
    com.avast.android.generic.util.m.c("ManagerAppFragment.onCreateLoader() - " + paramBundle);
    int i1 = paramBundle.getInt("listType");
    int i2 = paramBundle.getInt("order");
    if (i1 == 1);
    for (Object localObject = new com.avast.android.mobilesecurity.app.manager.a.a.a(getActivity(), i2); ; localObject = new h(getActivity(), i2))
      return localObject;
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView = paramLayoutInflater.inflate(2130903131, paramViewGroup, false);
    c(localView);
    return localView;
  }

  public void onListItemClick(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    b(paramInt);
  }

  public void onLoaderReset(android.support.v4.a.m paramm)
  {
    com.avast.android.generic.util.m.c("ManagerAppFragment.onLoaderReset()");
    if ((isAdded()) && (!isRemoving()))
    {
      Cursor localCursor = ((android.support.v4.e.a)getListAdapter()).swapCursor(null);
      if (localCursor != null)
        localCursor.close();
    }
  }

  public void onPause()
  {
    super.onPause();
    this.k = true;
  }

  public void onResume()
  {
    super.onResume();
    this.k = false;
    if (!this.l)
    {
      com.avast.android.generic.util.m.d("ManagerAppFragment.onResume() - QUEUE MESSAGE");
      this.a.sendEmptyMessageDelayed(0, 0L);
    }
    this.l = false;
    g();
  }

  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putInt("curChoice", this.c);
    paramBundle.putInt("listType", this.e);
  }

  public void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    if (this.e == 1)
      if (this.j)
      {
        this.r.setVisibility(8);
        this.q.setVisibility(8);
      }
    while (true)
    {
      return;
      if (this.j)
      {
        this.r.setVisibility(0);
        this.q.setVisibility(0);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.manager.ManagerAppFragment
 * JD-Core Version:    0.6.2
 */