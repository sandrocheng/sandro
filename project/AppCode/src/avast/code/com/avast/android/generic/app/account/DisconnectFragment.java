package com.avast.android.generic.app.account;

import android.annotation.TargetApi;
import android.app.ProgressDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.os.AsyncTask.Status;
import android.os.Bundle;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Message;
import android.support.v4.a.p;
import android.view.View;
import com.avast.android.generic.ad;
import com.avast.android.generic.ae;
import com.avast.android.generic.t;
import com.avast.android.generic.ui.PasswordDialog;
import com.avast.android.generic.util.b;
import com.avast.android.generic.util.ga.TrackedFragment;
import com.avast.android.generic.util.m;
import com.avast.android.generic.util.s;
import com.avast.android.generic.z;
import java.lang.reflect.Method;

public abstract class DisconnectFragment extends TrackedFragment
  implements Handler.Callback
{
  private Handler a;
  private ProgressDialog b;
  private Handler.Callback c;
  private at d;
  private ae e;
  private BroadcastReceiver f = new aq(this);

  public static String a(Context paramContext)
  {
    try
    {
      Method localMethod2 = Class.forName("com.avast.android.mobilesecurity.app.account.ServerAddressHelper").getMethod("getUnpairingServerAddress", new Class[] { Context.class });
      localMethod1 = localMethod2;
      if (localMethod1 == null);
    }
    catch (Exception localException1)
    {
      while (true)
      {
        try
        {
          str1 = (String)localMethod1.invoke(null, new Object[] { paramContext });
          str2 = str1;
          return str2;
          localException1 = localException1;
          m.a("breadcrumbs", "ServerAddressHelper not available.", localException1);
          Method localMethod1 = null;
        }
        catch (Exception localException2)
        {
          m.a("breadcrumbs", "Invocation of ServerAddressHelper.getUnpairingServerAddress() failed.", localException2);
          String str2 = null;
          continue;
        }
        String str1 = null;
      }
    }
  }

  private void a(at paramat)
  {
    if (!isAdded());
    while (true)
    {
      return;
      e();
      this.b = new ProgressDialog(getActivity());
      this.b.setCancelable(true);
      this.b.setCanceledOnTouchOutside(false);
      this.b.setOnCancelListener(new ar(this, paramat));
      this.b.setMessage(getString(z.cR));
      this.b.show();
    }
  }

  @TargetApi(11)
  private void d()
  {
    if (!isAdded());
    while (true)
    {
      return;
      if (this.d != null)
        this.d.cancel(true);
      this.d = new at(this, this.e);
      b.a(this.d, new String[0]);
    }
  }

  private void e()
  {
    if (this.b != null)
    {
      if (isAdded())
        this.b.dismiss();
      this.b = null;
    }
  }

  private void f()
  {
    g();
    p.a(getActivity()).a(this.f, new IntentFilter("com.avast.android.generic.app.account.ACTION_DISCONNECT_CONFIRMED"));
  }

  private void g()
  {
    try
    {
      p.a(getActivity()).a(this.f);
      label14: return;
    }
    catch (Exception localException)
    {
      break label14;
    }
  }

  public String a()
  {
    return null;
  }

  protected abstract int c();

  protected void h()
  {
    AccountDisconnectDialog.a(getFragmentManager());
  }

  public boolean handleMessage(Message paramMessage)
  {
    if ((!isAdded()) || (isDetached()));
    for (boolean bool = false; ; bool = true)
    {
      return bool;
      if (paramMessage.what != t.q);
    }
  }

  protected ae i()
  {
    return this.e;
  }

  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    if ((this.d != null) && (!this.d.getStatus().equals(AsyncTask.Status.FINISHED)))
      a(this.d);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setRetainInstance(true);
    this.a = new Handler();
    f();
  }

  public void onDestroy()
  {
    super.onDestroy();
    g();
    if ((this.d != null) && (!this.d.getStatus().equals(AsyncTask.Status.FINISHED)))
      this.d.cancel(true);
    ((s)ad.a(getActivity(), s.class)).b(c(), this.c);
    this.c = null;
  }

  public void onDetach()
  {
    super.onDetach();
    e();
  }

  public void onPause()
  {
    super.onPause();
    g();
  }

  public void onResume()
  {
    super.onResume();
    f();
  }

  public void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    this.e = ((ae)ad.a(getActivity(), ae.class));
    this.c = PasswordDialog.a(getActivity(), c(), new as(this));
    ((s)ad.a(getActivity(), s.class)).a(t.q, this);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.app.account.DisconnectFragment
 * JD-Core Version:    0.6.2
 */