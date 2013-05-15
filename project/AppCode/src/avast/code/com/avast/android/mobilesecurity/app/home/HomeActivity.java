package com.avast.android.mobilesecurity.app.home;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.ContentUris;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler.Callback;
import android.support.v4.a.p;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.support.v4.app.LoaderManager;
import android.support.v4.app.LoaderManager.LoaderCallbacks;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import com.actionbarsherlock.view.Menu;
import com.actionbarsherlock.view.MenuInflater;
import com.actionbarsherlock.view.MenuItem;
import com.avast.android.generic.ad;
import com.avast.android.generic.app.home.EmptyPaneFragment;
import com.avast.android.generic.ui.BaseMultiPaneActivity;
import com.avast.android.generic.util.al;
import com.avast.android.generic.util.b;
import com.avast.android.generic.util.s;
import com.avast.android.mobilesecurity.Application;
import com.avast.android.mobilesecurity.app.widget.WidgetControlProvider;
import com.avast.android.mobilesecurity.app.wizard.WizardScannerScanService;
import com.avast.android.mobilesecurity.q;
import com.avast.android.mobilesecurity.scan.ScanActivity;

public class HomeActivity extends BaseMultiPaneActivity
  implements LoaderManager.LoaderCallbacks, com.avast.android.generic.ui.t, com.avast.android.mobilesecurity.scan.g
{
  private MenuItem a;
  private boolean b;
  private boolean c;
  private n g;
  private EmptyPaneFragment h;
  private BroadcastReceiver i;
  private com.avast.android.mobilesecurity.ui.g j;
  private Handler.Callback k;

  private void a()
  {
    this.j = new com.avast.android.mobilesecurity.ui.g(this, b(), 2130903206);
    this.j.a(new f(this));
  }

  @SuppressLint({"NewApi"})
  private void a(int paramInt1, int paramInt2, View.OnClickListener paramOnClickListener)
  {
    if (this.a == null)
      this.g = new n(this, paramInt1, paramInt2, paramOnClickListener);
    while (true)
    {
      return;
      this.a.setActionView(paramInt1);
      if (paramOnClickListener != null)
        this.a.getActionView().findViewById(2131165326).setOnClickListener(paramOnClickListener);
      if (paramInt2 > 0)
        ((Button)this.a.getActionView().findViewById(2131165326)).setText(paramInt2);
    }
  }

  private void a(View paramView)
  {
    if (!((com.avast.android.mobilesecurity.t)ad.a(this, com.avast.android.mobilesecurity.t.class)).aX())
      paramView.postDelayed(new g(this), 800L);
  }

  private View b()
  {
    Object localObject1 = (FrameLayout)findViewById(16908290);
    boolean bool = ((View)localObject1).getParent() instanceof ViewGroup;
    Object localObject2 = null;
    if (bool)
      localObject2 = (ViewGroup)((View)localObject1).getParent();
    while ((((View)localObject2).getParent() instanceof ViewGroup))
    {
      ViewGroup localViewGroup = (ViewGroup)((View)localObject2).getParent();
      Object localObject3 = localObject2;
      localObject2 = localViewGroup;
      localObject1 = localObject3;
    }
    return localObject1;
  }

  private void b(View paramView)
  {
    com.avast.android.mobilesecurity.t localt = (com.avast.android.mobilesecurity.t)ad.a(this, com.avast.android.mobilesecurity.t.class);
    s locals = (s)ad.a(this, s.class);
    com.avast.android.generic.a.a locala = (com.avast.android.generic.a.a)ad.a(this, com.avast.android.generic.a.a.class);
    if ((localt.o()) && (!locala.a()))
    {
      this.k = new h(this, paramView, locals);
      locals.a(2131165212, this.k);
    }
    while (true)
    {
      return;
      a(paramView);
    }
  }

  private void b(Class paramClass)
  {
    DashboardFragment localDashboardFragment = (DashboardFragment)getSupportFragmentManager().findFragmentById(2131165280);
    if ((localDashboardFragment != null) && (localDashboardFragment.c() < 0))
      localDashboardFragment.a(paramClass);
  }

  private void c()
  {
    Fragment localFragment = getSupportFragmentManager().findFragmentById(2131165281);
    if ((al.b(this)) && (localFragment == null))
    {
      FragmentTransaction localFragmentTransaction = getSupportFragmentManager().beginTransaction();
      if (this.h == null)
        this.h = new EmptyPaneFragment();
      localFragmentTransaction.add(2131165281, this.h, EmptyPaneFragment.class.getSimpleName());
      localFragmentTransaction.commit();
    }
    while (true)
    {
      return;
      if ((localFragment instanceof EmptyPaneFragment))
        this.h = ((EmptyPaneFragment)localFragment);
    }
  }

  public static void call(Context paramContext)
  {
    call(paramContext, null);
  }

  public static void call(Context paramContext, Intent paramIntent)
  {
    Intent localIntent = new Intent(paramContext, HomeActivity.class);
    if (paramIntent != null)
    {
      localIntent.putExtra("open", paramIntent);
      localIntent.setData(ContentUris.withAppendedId(Uri.EMPTY, paramIntent.hashCode()));
    }
    if (!(paramContext instanceof Activity))
      localIntent.setFlags(268435456);
    paramContext.startActivity(localIntent);
  }

  private void d()
  {
    getSupportLoaderManager().restartLoader(10003, null, this);
  }

  private void g()
  {
    if (this.i == null)
      this.i = new k(this);
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("com.avast.android.mobilesecurity.app.scanner.ACTION_LOG_CLEARED");
    localIntentFilter.addAction("com.avast.android.mobilesecurity.app.scanner.ACTION_PROBLEM_FOUND");
    localIntentFilter.addAction("com.avast.android.mobilesecurity.service.UPDATE_SUCCESSFUL");
    localIntentFilter.addAction("com.avast.android.mobilesecurity.service.UP_TO_DATE");
    p.a(this).a(this.i, localIntentFilter);
  }

  private void h()
  {
    p.a(this).a(this.i);
  }

  protected com.avast.android.generic.ui.a a(String paramString)
  {
    String str = paramString.replace("Activity", "Fragment");
    try
    {
      Class localClass2 = Class.forName(str);
      localClass1 = localClass2;
      if (localClass1 != null)
      {
        b(localClass1);
        if (this.h != null)
          getSupportFragmentManager().beginTransaction().remove(this.h).commit();
      }
      return new com.avast.android.generic.ui.a(this, localClass1, str, 2131165281);
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      while (true)
      {
        com.avast.android.generic.util.m.b("Fragment not found", localClassNotFoundException);
        Class localClass1 = null;
      }
    }
  }

  public void a(android.support.v4.a.m paramm, Cursor paramCursor)
  {
    if (paramm.k() == 10003)
    {
      if ((paramCursor != null) || (this.b))
        break label40;
      getSupportLoaderManager().restartLoader(10003, null, this);
      this.b = true;
    }
    while (true)
    {
      return;
      label40: if ((paramCursor != null) && (paramCursor.getCount() > 0))
      {
        if (((com.avast.android.mobilesecurity.t)ad.a(this, com.avast.android.mobilesecurity.t.class)).am());
        for (int m = 2130903077; ; m = 2130903079)
        {
          a(m, 0, new i(this));
          break;
        }
      }
      if ((Application.i()) || (((com.avast.android.mobilesecurity.t)ad.a(this, com.avast.android.mobilesecurity.t.class)).aG()))
        a(2130903079, 2131493368, new j(this));
      else
        b.a(new l(this, null), new Void[0]);
    }
  }

  protected void a(FragmentManager paramFragmentManager, FragmentTransaction paramFragmentTransaction, Fragment paramFragment)
  {
    super.a(paramFragmentManager, paramFragmentTransaction, paramFragment);
    paramFragmentTransaction.addToBackStack(null);
  }

  public void b(boolean paramBoolean)
  {
    getSupportFragmentManager().popBackStack();
  }

  public void c(boolean paramBoolean)
  {
    d();
    this.c = true;
    getSupportFragmentManager().popBackStack();
  }

  public void onBackPressed()
  {
    if (this.j.a())
      this.j.d();
    while (true)
    {
      return;
      super.onBackPressed();
    }
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903066);
    c();
    getSupportFragmentManager().addOnBackStackChangedListener(new d(this));
    a();
    if ((paramBundle != null) && (paramBundle.getBoolean("global_activity_log_visible")))
      findViewById(2131165280).post(new e(this));
  }

  public android.support.v4.a.m onCreateLoader(int paramInt, Bundle paramBundle)
  {
    return new android.support.v4.a.f(this, q.c(), null, null, null, null);
  }

  public boolean onCreateOptionsMenu(Menu paramMenu)
  {
    getSupportMenuInflater().inflate(2131755011, paramMenu);
    this.a = paramMenu.findItem(2131165756);
    if ((this.a != null) && (this.g != null))
    {
      a(this.g.a, this.g.b, this.g.c);
      this.g = null;
    }
    while (true)
    {
      return true;
      d();
    }
  }

  public void onLoaderReset(android.support.v4.a.m paramm)
  {
  }

  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    setIntent(paramIntent);
  }

  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 16908332)
      this.j.c();
    for (boolean bool = true; ; bool = super.onOptionsItemSelected(paramMenuItem))
      return bool;
  }

  protected void onPostCreate(Bundle paramBundle)
  {
    super.onPostCreate(paramBundle);
  }

  protected void onResume()
  {
    super.onResume();
  }

  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putBoolean("global_activity_log_visible", this.j.a());
  }

  protected void onStart()
  {
    d();
    super.onStart();
    g();
    WidgetControlProvider.a(this);
    if (Application.i())
      ((Application)getApplication()).j();
    if (!((com.avast.android.mobilesecurity.t)ad.a(this, com.avast.android.mobilesecurity.t.class)).b("scanDone", false))
    {
      ScanActivity.call(this, WizardScannerScanService.class, q.a(), null);
      ((DashboardFragment)getSupportFragmentManager().findFragmentById(2131165280)).a(0);
    }
    if ((getIntent().getExtras() != null) && (getIntent().getParcelableExtra("open") != null))
    {
      Intent localIntent = (Intent)getIntent().getParcelableExtra("open");
      getSupportFragmentManager().popBackStackImmediate(null, 1);
      DashboardFragment localDashboardFragment = (DashboardFragment)getSupportFragmentManager().findFragmentById(2131165280);
      if (localDashboardFragment != null)
        localDashboardFragment.a();
      a(localIntent);
    }
    b(b());
  }

  protected void onStop()
  {
    super.onStop();
    h();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.home.HomeActivity
 * JD-Core Version:    0.6.2
 */