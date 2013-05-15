package com.avast.android.generic.ui;

import android.annotation.TargetApi;
import android.content.Intent;
import android.content.IntentSender;
import android.net.Uri;
import android.os.Bundle;
import android.os.SystemClock;
import android.view.KeyEvent;
import com.actionbarsherlock.app.ActionBar;
import com.actionbarsherlock.app.SherlockFragmentActivity;
import com.actionbarsherlock.view.MenuItem;
import com.avast.android.generic.Application;
import com.avast.android.generic.ad;
import com.avast.android.generic.ae;
import com.avast.android.generic.g;
import com.avast.android.generic.k;
import com.avast.android.generic.util.l;
import com.avast.android.generic.util.m;
import com.google.analytics.tracking.android.bo;

@TargetApi(14)
public abstract class BaseActivity extends SherlockFragmentActivity
{
  public static long f;
  private static long h;
  private boolean a = false;
  private boolean b = false;
  private boolean c;
  final com.avast.android.generic.util.a d = com.avast.android.generic.util.a.a(this);
  protected boolean e = false;
  private String g;

  public static Intent a(Bundle paramBundle)
  {
    Intent localIntent1 = new Intent();
    if (paramBundle == null);
    for (Intent localIntent2 = localIntent1; ; localIntent2 = localIntent1)
    {
      return localIntent2;
      localIntent1.setAction(paramBundle.getString("_action"));
      Uri localUri = (Uri)paramBundle.getParcelable("_uri");
      if (localUri != null)
        localIntent1.setData(localUri);
      localIntent1.putExtras(paramBundle);
      localIntent1.removeExtra("_uri");
    }
  }

  public static Bundle b(Intent paramIntent)
  {
    Bundle localBundle = new Bundle();
    if (paramIntent == null);
    while (true)
    {
      return localBundle;
      if (paramIntent.getAction() != null)
        localBundle.putString("_action", paramIntent.getAction());
      Uri localUri = paramIntent.getData();
      if (localUri != null)
        localBundle.putParcelable("_uri", localUri);
      if (paramIntent.getExtras() != null)
        localBundle.putAll(paramIntent.getExtras());
    }
  }

  public void a(Intent paramIntent)
  {
    startActivity(paramIntent);
  }

  public void a(Uri paramUri)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setData(paramUri);
    a(localIntent);
  }

  public void a(Class paramClass)
  {
    a(new Intent(this, paramClass));
  }

  public void a(Class paramClass, Bundle paramBundle)
  {
    Intent localIntent = new Intent(this, paramClass);
    localIntent.putExtras(paramBundle);
    a(localIntent);
  }

  public void a(boolean paramBoolean)
  {
    this.e = paramBoolean;
  }

  protected com.avast.android.generic.util.a e()
  {
    return this.d;
  }

  public void f()
  {
    m.b(getClass().getSimpleName(), "Allowing one-time unauthorized access.");
    this.a = true;
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    ActionBar localActionBar = getSupportActionBar();
    if (localActionBar != null)
      localActionBar.setHomeButtonEnabled(true);
    this.g = g.a(this);
    ae localae = (ae)ad.a(this, ae.class);
    this.c = localae.b("GAFirstRun", true);
    if ((localae.p()) && (((Application)getApplication()).a()) && (l.b(this)));
    for (boolean bool = true; ; bool = false)
    {
      com.avast.android.generic.util.ga.a.b().a(bool);
      if ((bool) && (this.c))
      {
        m.c("Analytics firstRun.");
        localae.a("GAFirstRun", false);
        localae.b();
      }
      return;
    }
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 82)
      com.avast.android.generic.util.ga.a.a().a("common", "keyMenuPressed", getClass().getName(), Long.valueOf(0L));
    if (paramInt == 4)
      com.avast.android.generic.util.ga.a.a().a("common", "keyBackPressed", getClass().getName(), Long.valueOf(0L));
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  public boolean onKeyLongPress(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((this.d.a(paramInt, paramKeyEvent)) || (super.onKeyLongPress(paramInt, paramKeyEvent)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if ((this.d.a(paramMenuItem)) || (super.onOptionsItemSelected(paramMenuItem)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  protected void onPause()
  {
    super.onPause();
    if ((!this.e) && (!this.b))
      h = SystemClock.elapsedRealtime();
    this.b = false;
  }

  protected void onPostResume()
  {
    super.onPostResume();
    if (!this.e)
    {
      if (this.a)
        break label28;
      k.a(this);
    }
    while (true)
    {
      this.a = false;
      return;
      label28: this.b = true;
    }
  }

  protected void onResume()
  {
    super.onResume();
    g.a(this, this.g);
  }

  protected void onStart()
  {
    super.onStart();
    f = SystemClock.elapsedRealtime() - h;
    com.avast.android.generic.util.ga.a.b().a(this);
    if (this.c)
    {
      com.avast.android.generic.util.ga.a.a().a("common", "firstRun", getPackageName(), Long.valueOf(0L));
      com.avast.android.generic.util.ga.a.a().a("common", "firstRun-GA-v2", getPackageName(), Long.valueOf(0L));
    }
  }

  protected void onStop()
  {
    super.onStop();
    com.avast.android.generic.util.ga.a.b().b(this);
  }

  public void startIntentSenderForResult(IntentSender paramIntentSender, int paramInt1, Intent paramIntent, int paramInt2, int paramInt3, int paramInt4)
  {
    if ((paramInt1 != -1) && ((0xFFFF0000 & paramInt1) != 0))
      throw new IllegalArgumentException("Can only use lower 16 bits for requestCode");
    super.startIntentSenderForResult(paramIntentSender, paramInt1, paramIntent, paramInt2, paramInt3, paramInt4);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.ui.BaseActivity
 * JD-Core Version:    0.6.2
 */