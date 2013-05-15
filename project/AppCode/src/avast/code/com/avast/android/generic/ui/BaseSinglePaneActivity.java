package com.avast.android.generic.ui;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import com.avast.android.generic.t;
import com.avast.android.generic.v;

public abstract class BaseSinglePaneActivity extends BaseActivity
{
  private Fragment a;

  protected abstract Fragment d();

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(v.q);
    if (paramBundle == null)
    {
      this.a = d();
      Bundle localBundle = this.a.getArguments();
      if (localBundle == null)
        localBundle = new Bundle();
      localBundle.putAll(b(getIntent()));
      this.a.setArguments(localBundle);
      FragmentTransaction localFragmentTransaction = getSupportFragmentManager().beginTransaction();
      localFragmentTransaction.add(t.aK, this.a, "singleFragment");
      localFragmentTransaction.setTransition(4099);
      localFragmentTransaction.commit();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.ui.BaseSinglePaneActivity
 * JD-Core Version:    0.6.2
 */