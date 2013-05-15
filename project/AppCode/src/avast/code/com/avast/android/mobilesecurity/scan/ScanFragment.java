package com.avast.android.mobilesecurity.scan;

import android.app.Activity;
import android.content.ContentResolver;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.a.m;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.LoaderManager;
import android.support.v4.app.LoaderManager.LoaderCallbacks;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.avast.android.generic.ad;
import com.avast.android.generic.ui.BaseActivity;
import com.avast.android.generic.util.ga.TrackedFragment;
import com.avast.android.mobilesecurity.q;
import com.avast.android.mobilesecurity.t;
import java.io.Serializable;

public class ScanFragment extends TrackedFragment
  implements LoaderManager.LoaderCallbacks, k
{
  protected ProgressBar a;
  protected TextView b;
  protected TextView c;
  protected TextView d;
  protected TextView e;
  protected TextView f;
  protected TextView g;
  protected Button h;
  private g i;
  private boolean j;
  private boolean k;
  private Class l;
  private Uri m;
  private boolean n;
  private boolean o;
  private boolean p = false;
  private boolean q = false;
  private boolean r = false;
  private Handler s;
  private ContentObserver t;
  private int u;
  private ScanService v;
  private int w;
  private Runnable x = new e(this);
  private ServiceConnection y = new f(this);

  private void b(int paramInt)
  {
    boolean bool1;
    int i1;
    if ((!this.k) && (this.n) && (isAdded()) && (isVisible()))
    {
      Button localButton1 = this.h;
      if ((this.p) || (paramInt <= 0))
        break label148;
      bool1 = true;
      localButton1.setEnabled(bool1);
      Button localButton2 = this.h;
      Resources localResources = getResources();
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(paramInt);
      localButton2.setText(localResources.getQuantityString(2131689491, paramInt, arrayOfObject));
      if (!this.p)
      {
        boolean bool2 = ((t)ad.a(getActivity(), t.class)).am();
        if (paramInt <= 0)
          break label160;
        Button localButton3 = this.h;
        if (!bool2)
          break label153;
        i1 = 2130837881;
        label135: localButton3.setBackgroundResource(i1);
      }
    }
    while (true)
    {
      this.w = paramInt;
      return;
      label148: bool1 = false;
      break;
      label153: i1 = 2130837894;
      break label135;
      label160: this.h.setBackgroundResource(2130837879);
    }
  }

  private void b(boolean paramBoolean)
  {
    this.s.removeCallbacks(this.x);
    if (paramBoolean)
      this.u = (1 + this.u);
    int i1 = this.u / 60;
    int i2 = this.u % 60;
    TextView localTextView = this.d;
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(i1);
    arrayOfObject[1] = Integer.valueOf(i2);
    localTextView.setText(String.format("%d:%02d", arrayOfObject));
    this.s.postDelayed(this.x, 1000L);
  }

  private void e()
  {
    getActivity().getSupportLoaderManager().initLoader(10003, null, this);
  }

  private void f()
  {
    BaseActivity localBaseActivity = (BaseActivity)getActivity();
    if ((this.m != null) && (localBaseActivity != null))
    {
      localBaseActivity.a(new Intent("android.intent.action.VIEW", this.m));
      this.o = true;
    }
  }

  public String a()
  {
    return null;
  }

  public void a(int paramInt)
  {
    if (paramInt == j.a.ordinal())
      if (this.n)
        if ((this.o) || (this.m == null))
          this.i.b(true);
    while (true)
    {
      return;
      this.i.c(true);
      f();
      continue;
      if ((this.v != null) && (this.j))
      {
        Bundle localBundle = new Bundle();
        localBundle.putBoolean("widgetScan", this.r);
        this.v.b(localBundle);
      }
      else
      {
        getActivity().finish();
        continue;
        this.n = true;
        this.o = false;
      }
    }
  }

  public void a(m paramm, Cursor paramCursor)
  {
    switch (paramm.k())
    {
    default:
    case 10003:
    }
    while (true)
    {
      return;
      b(paramCursor.getCount());
    }
  }

  public void a(ScanProgress paramScanProgress)
  {
    this.n = paramScanProgress.j;
    this.c.setText(paramScanProgress.b);
    this.e.setText(paramScanProgress.c);
    this.f.setText(paramScanProgress.f + "");
    this.a.setIndeterminate(paramScanProgress.m);
    this.a.setMax(paramScanProgress.d);
    this.a.setProgress(Math.min(paramScanProgress.e, paramScanProgress.d));
    this.u = Math.max(paramScanProgress.h, this.u);
    TextView localTextView = this.g;
    if (paramScanProgress.m);
    for (int i1 = 4; ; i1 = 0)
    {
      localTextView.setVisibility(i1);
      int i2 = Math.min(Math.round(100.0F * (paramScanProgress.e / paramScanProgress.d)), 100);
      this.g.setText(i2 + "%");
      b(false);
      b(this.w);
      return;
    }
  }

  public void a(boolean paramBoolean)
  {
    this.s.removeCallbacks(this.x);
    if ((!paramBoolean) || (this.m == null))
      this.i.b(paramBoolean);
    while (true)
    {
      return;
      this.i.c(paramBoolean);
      f();
    }
  }

  public int a_()
  {
    return 2131493380;
  }

  void c()
  {
    getActivity().bindService(new Intent(getActivity(), this.l), this.y, 1);
    this.j = true;
  }

  void d()
  {
    if (this.j)
    {
      if (this.v != null)
      {
        this.v.b(this);
        this.v = null;
      }
      getActivity().unbindService(this.y);
      this.j = false;
    }
  }

  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    e();
  }

  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    if ((paramActivity instanceof g))
    {
      this.i = ((g)paramActivity);
      if (getArguments() != null)
        break label87;
    }
    label87: for (Serializable localSerializable = null; ; localSerializable = getArguments().getSerializable("serviceClass"))
    {
      this.l = ((Class)localSerializable);
      if (this.l != null)
        break;
      throw new NullPointerException("ScanFragment needs serviceClass argument");
      throw new ClassCastException("activity has to implement " + g.class.getName());
    }
    getActivity().startService(new Intent(getActivity(), this.l));
    Bundle localBundle = getArguments();
    if (localBundle != null)
    {
      this.m = ((Uri)localBundle.getParcelable("logUri"));
      this.p = localBundle.getBoolean("skipable");
      this.q = localBundle.getBoolean("logInvisible");
      this.r = localBundle.getBoolean("widgetScan");
    }
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.s = new Handler();
    this.k = true;
    LoaderManager localLoaderManager = getActivity().getSupportLoaderManager();
    this.t = new b(this, this.s, localLoaderManager);
  }

  public m onCreateLoader(int paramInt, Bundle paramBundle)
  {
    switch (paramInt)
    {
    default:
      throw new IllegalArgumentException("loader " + paramInt + " is unknown");
    case 10003:
    }
    return new android.support.v4.a.f(getActivity(), q.c(), null, null, null, null);
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView = paramLayoutInflater.inflate(2130903136, paramViewGroup, false);
    this.a = ((ProgressBar)localView.findViewById(2131165456));
    if (paramBundle != null)
    {
      this.a.setMax(paramBundle.getInt("progressMax"));
      this.a.setProgress(paramBundle.getInt("progress"));
    }
    this.b = ((TextView)localView.findViewById(2131165504));
    this.c = ((TextView)localView.findViewById(2131165275));
    this.d = ((TextView)localView.findViewById(2131165521));
    this.e = ((TextView)localView.findViewById(2131165517));
    this.f = ((TextView)localView.findViewById(2131165519));
    this.g = ((TextView)localView.findViewById(2131165455));
    this.h = ((Button)localView.findViewById(2131165479));
    this.h.setOnClickListener(new c(this));
    Button localButton = this.h;
    Resources localResources = getResources();
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(0);
    localButton.setText(localResources.getQuantityString(2131689491, 0, arrayOfObject));
    if (this.q)
      this.h.setVisibility(4);
    TextView localTextView = (TextView)localView.findViewById(2131165380);
    if (this.p)
    {
      localTextView.setVisibility(4);
      localTextView.setText(2131493348);
    }
    localTextView.setOnClickListener(new d(this));
    if (paramBundle != null)
    {
      this.o = paramBundle.getBoolean("logLaunched");
      this.n = paramBundle.getBoolean("scanRunning");
      this.w = paramBundle.getInt("lastProblemsCount");
    }
    return localView;
  }

  public void onDestroy()
  {
    super.onDestroy();
    d();
  }

  public void onLoaderReset(m paramm)
  {
  }

  public void onPause()
  {
    super.onPause();
    this.k = true;
    this.s.removeCallbacks(this.x);
    d();
    getActivity().getContentResolver().unregisterContentObserver(this.t);
  }

  public void onResume()
  {
    super.onResume();
    this.k = false;
    c();
    getActivity().getContentResolver().registerContentObserver(q.a(), true, this.t);
  }

  public void onSaveInstanceState(Bundle paramBundle)
  {
    paramBundle.putBoolean("logLaunched", this.o);
    paramBundle.putBoolean("scanRunning", this.n);
    if (this.a != null)
    {
      paramBundle.putInt("progress", this.a.getProgress());
      paramBundle.putInt("progressMax", this.a.getMax());
    }
    paramBundle.putInt("lastProblemsCount", this.w);
    super.onSaveInstanceState(paramBundle);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.scan.ScanFragment
 * JD-Core Version:    0.6.2
 */