package com.keniu.security.importx;

import android.app.Dialog;
import android.app.ProgressDialog;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.widget.ListView;
import com.jxphone.mosecurity.activity.BaseContactActivity;

public abstract class BaseImportActivity extends BaseContactActivity
{
  protected static k l;
  private static final String n = "currentPosition";
  protected ListView m;
  private boolean o = false;
  private int p;
  private final int q = 1;
  private final int r = 2;
  private final Handler s = new a(this);
  private boolean t = false;

  private void r()
  {
    if (!this.a)
      this.s.post(new b(this));
    new c(this).start();
  }

  private void s()
  {
    this.m.setOnItemClickListener(new e(this));
  }

  private static int t()
  {
    return 2131231095;
  }

  protected final Bundle a()
  {
    Bundle localBundle = d();
    if (localBundle != null)
      this.p = localBundle.getInt("currentPosition", 0);
    return localBundle;
  }

  protected final void a(com.jxphone.mosecurity.c.c paramc, View paramView)
  {
    if (paramView == null);
    while (true)
    {
      return;
      switch (j.a[paramc.ordinal()])
      {
      default:
        paramView.setBackgroundColor(getResources().getColor(2131296322));
        break;
      case 1:
        paramView.setBackgroundColor(getResources().getColor(2131296320));
        break;
      case 2:
        paramView.setBackgroundColor(getResources().getColor(2131296321));
      }
    }
  }

  public final Bundle c()
  {
    this.o = true;
    Bundle localBundle = super.c();
    localBundle.putInt("currentPosition", this.p);
    return localBundle;
  }

  protected abstract String m();

  protected abstract k n();

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Bundle localBundle = getIntent().getExtras();
    if (localBundle != null)
    {
      Object localObject = localBundle.get("list_type");
      if (localObject != null)
        this.h = ((com.jxphone.mosecurity.c.c)localObject);
    }
    this.m = ((ListView)findViewById(2131231095));
    this.m.setOnItemClickListener(new e(this));
    if (!this.a)
      this.s.post(new b(this));
    new c(this).start();
  }

  protected Dialog onCreateDialog(int paramInt)
  {
    Object localObject;
    switch (paramInt)
    {
    default:
      localObject = super.onCreateDialog(paramInt);
    case 2131427929:
    }
    while (true)
    {
      return localObject;
      localObject = new ProgressDialog(this);
      ((ProgressDialog)localObject).setMessage(getString(2131427929));
      ((ProgressDialog)localObject).setIndeterminate(true);
      ((ProgressDialog)localObject).setCancelable(true);
      ((ProgressDialog)localObject).setOnCancelListener(new d(this));
    }
  }

  protected void onDestroy()
  {
    this.t = true;
    if (!this.o)
    {
      k localk = l;
      if (localk != null)
      {
        l = null;
        localk.b();
      }
    }
    this.m.removeViews(0, this.m.getChildCount());
    super.onDestroy();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.importx.BaseImportActivity
 * JD-Core Version:    0.6.2
 */