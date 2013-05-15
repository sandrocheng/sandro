package com.avast.android.generic.app.account;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Message;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import com.avast.android.generic.ad;
import com.avast.android.generic.ag;
import com.avast.android.generic.ah;
import com.avast.android.generic.service.AvastService;
import com.avast.android.generic.t;
import com.avast.android.generic.util.a;
import com.avast.android.generic.util.an;
import com.avast.android.generic.v;

public class ConnectionCheckFragment extends DisconnectFragment
{
  private TextView a;
  private Button b;
  private Button c;
  private boolean d = false;
  private Context e;
  private Activity f;
  private com.avast.android.generic.ae g;
  private com.avast.android.generic.ae h;
  private int i = -1;
  private boolean j = false;
  private boolean k = false;
  private View.OnClickListener l = new w(this);
  private View.OnClickListener m = new x(this);
  private BroadcastReceiver n = new y(this);

  private void d()
  {
    try
    {
      IntentFilter localIntentFilter = new IntentFilter();
      localIntentFilter.addAction("com.avast.android.generic.action.ACTION_CONNECTION_CHECK_RECEIVED");
      getActivity().registerReceiver(this.n, localIntentFilter);
      label27: return;
    }
    catch (Exception localException)
    {
      break label27;
    }
  }

  private void e()
  {
    try
    {
      getActivity().unregisterReceiver(this.n);
      label11: return;
    }
    catch (Exception localException)
    {
      break label11;
    }
  }

  public void a(int paramInt)
  {
    new aa(this, paramInt).c(new Void[0]);
  }

  protected int c()
  {
    return t.p;
  }

  public boolean handleMessage(Message paramMessage)
  {
    if ((!isAdded()) || (isDetached()));
    for (boolean bool = false; ; bool = true)
    {
      return bool;
      if (paramMessage.what == t.q)
        a.a(this);
    }
  }

  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (paramInt1 == 100)
      a.a(this);
    while (true)
    {
      return;
      a(paramInt1);
    }
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView = paramLayoutInflater.inflate(v.A, paramViewGroup, false);
    b(localView);
    Intent localIntent = new Intent("com.avast.android.mobilesecurity.app.account.PUSH_ACCOUNT_COMMUNICATION");
    com.avast.android.generic.util.ae.a(localIntent);
    getActivity().sendBroadcast(localIntent, "com.avast.android.generic.COMM_PERMISSION");
    this.f = getActivity();
    this.e = this.f.getApplicationContext();
    this.g = ((com.avast.android.generic.ae)ad.a(this.e, ag.class));
    this.h = ((com.avast.android.generic.ae)ad.a(this.e, ah.class));
    this.a = ((TextView)localView.findViewById(t.n));
    this.b = ((Button)localView.findViewById(t.r));
    this.c = ((Button)localView.findViewById(t.aW));
    this.c.setOnClickListener(new z(this));
    this.i = getActivity().getIntent().getIntExtra("versionResId", -1);
    if ((getActivity().getPackageName().equals("com.avast.android.mobilesecurity")) || (getActivity().getPackageName().equals("com.avast.android.backup")))
    {
      a(2);
      this.j = false;
    }
    for (this.k = false; ; this.k = AvastService.a(getActivity()))
    {
      return localView;
      a(1);
      this.j = true;
    }
  }

  public void onDestroy()
  {
    e();
    super.onDestroy();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.app.account.ConnectionCheckFragment
 * JD-Core Version:    0.6.2
 */