package com.avast.android.generic.app.account;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.os.AsyncTask;
import android.os.Build.VERSION;
import android.os.Handler;
import android.support.v4.app.FragmentActivity;
import android.widget.Button;
import com.avast.android.generic.util.b;
import com.avast.android.generic.util.f;
import com.avast.android.generic.util.g;
import com.avast.android.generic.util.q;
import com.avast.android.generic.z;

class m extends AsyncTask
{
  private String b;
  private String c;
  private String d;
  private String e;
  private BroadcastReceiver f;
  private String g = null;
  private String h = null;
  private Context i = null;

  public m(AccountFragment paramAccountFragment, Context paramContext)
  {
    this.i = paramContext;
  }

  private void a()
  {
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("com.google.android.c2dm.intent.REGISTRATION");
    localIntentFilter.addCategory(this.a.getActivity().getPackageName());
    this.a.getActivity().registerReceiver(this.f, localIntentFilter, "com.google.android.c2dm.permission.SEND", null);
  }

  private void a(String paramString)
  {
    if (!isCancelled())
      AccountFragment.s(this.a).post(new o(this, paramString));
  }

  private void b()
  {
    try
    {
      this.a.getActivity().unregisterReceiver(this.f);
      label14: return;
    }
    catch (Exception localException)
    {
      break label14;
    }
  }

  protected Boolean a(String[] paramArrayOfString)
  {
    Object localObject2;
    if (!this.a.isAdded())
    {
      localObject2 = Boolean.valueOf(false);
      return localObject2;
    }
    this.b = paramArrayOfString[0];
    this.c = paramArrayOfString[1];
    this.e = paramArrayOfString[2];
    this.d = AccountFragment.a(this.a.getActivity());
    while (true)
    {
      int k;
      try
      {
        if (this.h != null)
          throw new Exception(this.h);
      }
      catch (Exception localException)
      {
        localException = localException;
        b();
        com.avast.android.generic.util.m.a("AccountFragment", "C2DM registration error", localException);
        AccountFragment localAccountFragment = this.a;
        int j = z.ac;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = q.a(this.i, localException);
        a(localAccountFragment.getString(j, arrayOfObject));
        localObject2 = Boolean.valueOf(false);
        break;
        if (Build.VERSION.SDK_INT < 8)
          break label275;
        k = 0;
        if ((this.h == null) && (this.g == null))
        {
          k++;
          Thread.sleep(1000L);
          if ((this.a.isAdded()) && (this.a.getActivity() != null))
            break label288;
          localObject2 = Boolean.valueOf(false);
          break;
        }
        if ((this.h == null) && (this.g != null))
          break label275;
        if (this.h != null)
          throw new Exception(this.h);
      }
      finally
      {
      }
      if (this.g == null)
      {
        com.avast.android.generic.util.m.b("AccountFragment", "C2DM registration error (timeout)");
        a(this.a.getString(z.b));
        localObject2 = Boolean.valueOf(false);
        break;
      }
      label275: Boolean localBoolean = Boolean.valueOf(true);
      localObject2 = localBoolean;
      break;
      label288: if (k <= 10);
    }
  }

  protected void a(Boolean paramBoolean)
  {
    if (!this.a.isAdded());
    while (true)
    {
      return;
      b();
      AccountFragment.t(this.a);
      if ((this.h != null) || (this.g == null))
      {
        AccountFragment.q(this.a).setEnabled(true);
      }
      else
      {
        AccountFragment.b(this.a, new j(this.a, null));
        j localj = AccountFragment.u(this.a);
        String[] arrayOfString = new String[5];
        arrayOfString[0] = this.b;
        arrayOfString[1] = this.c;
        arrayOfString[2] = this.e;
        arrayOfString[3] = this.d;
        arrayOfString[4] = this.g;
        b.a(localj, arrayOfString);
      }
    }
  }

  protected void onCancelled()
  {
    if (!this.a.isAdded());
    while (true)
    {
      return;
      b();
      AccountFragment.q(this.a).setEnabled(true);
    }
  }

  protected void onPreExecute()
  {
    this.f = new n(this);
    AccountFragment.q(this.a).setEnabled(false);
    AccountFragment.a(this.a, this);
    try
    {
      if (Build.VERSION.SDK_INT >= 8)
      {
        a();
        g.a(this.a.getActivity());
      }
      else
      {
        this.h = this.a.getString(z.cj);
      }
    }
    catch (f localf)
    {
      b();
      com.avast.android.generic.util.m.a("AccountFragment", "C2DM registration error", localf);
      this.h = this.a.getString(z.b);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.app.account.m
 * JD-Core Version:    0.6.2
 */