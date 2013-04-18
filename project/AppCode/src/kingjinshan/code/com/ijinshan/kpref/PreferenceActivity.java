package com.ijinshan.kpref;

import android.app.ListActivity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.widget.ListView;

public abstract class PreferenceActivity extends ListActivity
  implements x
{
  private static final String a = "android:preferences";
  private static final int d = 100;
  private static final int e;
  private t b;
  private Bundle c;
  private Handler f = new o(this);

  private void a(Intent paramIntent)
  {
    f();
    a(this.b.a(paramIntent, this.b.c()));
  }

  private void c()
  {
    if (this.f.hasMessages(0));
    while (true)
    {
      return;
      this.f.obtainMessage(0).sendToTarget();
    }
  }

  private void d()
  {
    PreferenceScreen localPreferenceScreen = this.b.c();
    if (localPreferenceScreen != null)
    {
      localPreferenceScreen.a(getListView());
      if (this.c != null)
      {
        super.onRestoreInstanceState(this.c);
        this.c = null;
      }
    }
  }

  private t e()
  {
    t localt = new t(this);
    localt.a(this);
    return localt;
  }

  private void f()
  {
    if (this.b == null)
      throw new RuntimeException("This should be called after super.onCreate.");
  }

  public final Preference a(CharSequence paramCharSequence)
  {
    if (this.b == null);
    for (Preference localPreference = null; ; localPreference = this.b.a(paramCharSequence))
      return localPreference;
  }

  public final t a()
  {
    return this.b;
  }

  public final void a(int paramInt)
  {
    f();
    a(this.b.a(this, paramInt, this.b.c()));
  }

  public final void a(PreferenceScreen paramPreferenceScreen)
  {
    if ((this.b.a(paramPreferenceScreen)) && (paramPreferenceScreen != null))
    {
      c();
      CharSequence localCharSequence = this.b.c().w();
      if (localCharSequence != null)
        setTitle(localCharSequence);
    }
  }

  public boolean a(PreferenceScreen paramPreferenceScreen, Preference paramPreference)
  {
    return false;
  }

  public final PreferenceScreen b()
  {
    return this.b.c();
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    this.b.a(paramInt1, paramIntent);
  }

  public void onContentChanged()
  {
    super.onContentChanged();
    c();
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903203);
    t localt = new t(this);
    localt.a(this);
    this.b = localt;
    getListView().setScrollBarStyle(0);
  }

  protected void onDestroy()
  {
    super.onDestroy();
    this.b.h();
  }

  protected void onNewIntent(Intent paramIntent)
  {
    if (this.b != null)
      this.b.j();
  }

  protected void onRestoreInstanceState(Bundle paramBundle)
  {
    Bundle localBundle = paramBundle.getBundle("android:preferences");
    if (localBundle != null)
    {
      PreferenceScreen localPreferenceScreen = this.b.c();
      if (localPreferenceScreen != null)
      {
        localPreferenceScreen.c(localBundle);
        this.c = paramBundle;
      }
    }
    while (true)
    {
      return;
      super.onRestoreInstanceState(paramBundle);
    }
  }

  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    PreferenceScreen localPreferenceScreen = this.b.c();
    if (localPreferenceScreen != null)
    {
      Bundle localBundle = new Bundle();
      localPreferenceScreen.a(localBundle);
      paramBundle.putBundle("android:preferences", localBundle);
    }
  }

  protected void onStop()
  {
    super.onStop();
    this.b.g();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kpref.PreferenceActivity
 * JD-Core Version:    0.6.2
 */