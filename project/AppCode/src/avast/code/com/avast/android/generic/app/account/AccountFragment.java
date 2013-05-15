package com.avast.android.generic.app.account;

import android.annotation.TargetApi;
import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask.Status;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentBreadCrumbs;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.avast.android.generic.f.b.a;
import com.avast.android.generic.t;
import com.avast.android.generic.ui.widget.CheckBoxRow;
import com.avast.android.generic.util.aa;
import com.avast.android.generic.util.ae;
import com.avast.android.generic.util.b;
import com.avast.android.generic.util.ga.TrackedFragment;
import com.avast.android.generic.v;
import com.avast.android.generic.z;
import java.lang.reflect.Method;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class AccountFragment extends TrackedFragment
{
  private static final Pattern a = Pattern.compile("[a-zA-Z0-9\\+\\.\\_\\%\\-\\+]{1,256}\\@[a-zA-Z0-9][a-zA-Z0-9\\-]{0,64}(\\.[a-zA-Z0-9][a-zA-Z0-9\\-]{0,25})+");
  private boolean b = false;
  private EditText c;
  private ImageView d;
  private TextView e;
  private EditText f;
  private EditText g;
  private ImageView h;
  private ImageView i;
  private TextView j;
  private EditText k;
  private ImageView l;
  private TextView m;
  private Button n;
  private boolean o;
  private Handler p;
  private CheckBoxRow q;
  private boolean r;
  private boolean s = true;
  private j t;
  private m u;
  private ProgressDialog v;
  private ProgressDialog w;

  public static String a(Context paramContext)
  {
    try
    {
      Method localMethod2 = Class.forName("com.avast.android.mobilesecurity.app.account.ServerAddressHelper").getMethod("getPairingServerAddress", new Class[] { Context.class });
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
          com.avast.android.generic.util.m.a("AccountFragment", "ServerAddressHelper not available.", localException1);
          Method localMethod1 = null;
        }
        catch (Exception localException2)
        {
          com.avast.android.generic.util.m.a("AccountFragment", "Invocation of ServerAddressHelper.getPairingServerAddress() failed.", localException2);
          String str2 = null;
          continue;
        }
        String str1 = null;
      }
    }
  }

  private void a(Context paramContext, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      com.avast.android.generic.util.m.b("AccountFragment", "Sending avast! account connected broadcast.");
      Intent localIntent = new Intent("com.avast.android.mobilesecurity.app.account.ACCOUNT_CONNECTED");
      ae.a(localIntent);
      paramContext.sendBroadcast(localIntent, "com.avast.android.generic.COMM_PERMISSION");
      if (isAdded())
        e();
    }
  }

  private void a(j paramj)
  {
    c();
    this.v = new ProgressDialog(getActivity());
    this.v.setCancelable(true);
    this.v.setOnCancelListener(new g(this, paramj));
    this.v.setMessage(getString(z.cI));
    this.v.show();
  }

  private void a(m paramm)
  {
    d();
    this.w = new ProgressDialog(getActivity());
    this.w.setCancelable(true);
    this.w.setOnCancelListener(new h(this, paramm));
    this.w.setMessage(getString(z.bN));
    this.w.show();
  }

  private void a(String paramString1, String paramString2, String paramString3)
  {
    this.u = new m(this, getActivity());
    b.a(this.u, new String[] { paramString1, paramString2, paramString3 });
  }

  private void c()
  {
    if (this.v != null)
    {
      if (isAdded())
        this.v.dismiss();
      this.v = null;
    }
  }

  private void d()
  {
    if (this.w != null)
    {
      if (isAdded())
        this.w.dismiss();
      this.w = null;
    }
  }

  private void e()
  {
    String str;
    if (this.o)
    {
      str = getActivity().getPackageName();
      if (!str.equals("com.avast.android.mobilesecurity"))
        break label88;
    }
    while (true)
    {
      try
      {
        Method localMethod2 = Class.forName("com.avast.android.mobilesecurity.app.wizard.ScanWizardActivity").getMethod("call", new Class[] { Context.class });
        Object[] arrayOfObject2 = new Object[1];
        arrayOfObject2[0] = getActivity();
        localMethod2.invoke(null, arrayOfObject2);
        j();
        return;
      }
      catch (Exception localException2)
      {
        com.avast.android.generic.util.m.c("AccountFragment", "ScanWizardActivity not available.", localException2);
        continue;
      }
      label88: if (str.equals("com.avast.android.backup"))
        try
        {
          Method localMethod1 = Class.forName("com.avast.android.backup.app.home.HomeActivity").getMethod("call", new Class[] { Context.class });
          Object[] arrayOfObject1 = new Object[1];
          arrayOfObject1[0] = getActivity();
          localMethod1.invoke(null, arrayOfObject1);
        }
        catch (Exception localException1)
        {
          com.avast.android.generic.util.m.c("AccountFragment", "HomeActivity not available.", localException1);
        }
    }
  }

  private boolean f()
  {
    return a.matcher(this.c.getText().toString()).matches();
  }

  private boolean g()
  {
    String str = aa.c(this.k.getText().toString());
    if ((!str.startsWith("+")) && (!str.startsWith("00")));
    for (boolean bool = false; ; bool = true)
      return bool;
  }

  private boolean h()
  {
    boolean bool1 = true;
    boolean bool2;
    if (this.f.length() >= 7)
    {
      bool2 = bool1;
      boolean bool3 = this.f.getText().toString().equals(this.g.getText().toString());
      if ((!bool2) || (!bool3))
        break label55;
    }
    while (true)
    {
      return bool1;
      bool2 = false;
      break;
      label55: bool1 = false;
    }
  }

  public String a()
  {
    if (this.o);
    for (String str = "/ms/wizard/account/connector"; ; str = "/ms/account/connector")
      return str;
  }

  public int a_()
  {
    return z.aw;
  }

  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    getActivity().getWindow().setSoftInputMode(1);
    if ((this.t != null) && (!this.t.getStatus().equals(AsyncTask.Status.FINISHED)))
      a(this.t);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.p = new Handler();
    setRetainInstance(true);
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView = paramLayoutInflater.inflate(v.t, paramViewGroup, false);
    b(localView);
    return localView;
  }

  public void onDestroy()
  {
    super.onDestroy();
    if ((this.t != null) && (!this.t.getStatus().equals(AsyncTask.Status.FINISHED)))
      this.t.cancel(true);
  }

  public void onDetach()
  {
    super.onDetach();
    c();
    d();
  }

  public void onPause()
  {
    super.onPause();
  }

  public void onResume()
  {
    super.onResume();
  }

  @TargetApi(5)
  public void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    this.o = getArguments().getBoolean("wizard", false);
    this.s = getArguments().getBoolean("queryPhoneNumber", true);
    if (this.o)
    {
      paramView.findViewById(t.d).setVisibility(0);
      paramView.findViewById(t.aV).setVisibility(0);
      a(paramView).setVisibility(8);
    }
    this.c = ((EditText)paramView.findViewById(t.b));
    this.d = ((ImageView)paramView.findViewById(t.aU));
    this.e = ((TextView)paramView.findViewById(t.au));
    this.c.addTextChangedListener(new r(this, null));
    this.f = ((EditText)paramView.findViewById(t.J));
    this.g = ((EditText)paramView.findViewById(t.K));
    this.h = ((ImageView)paramView.findViewById(t.B));
    this.i = ((ImageView)paramView.findViewById(t.D));
    this.j = ((TextView)paramView.findViewById(t.aS));
    p localp = new p(this, null);
    this.f.addTextChangedListener(localp);
    this.g.addTextChangedListener(localp);
    View localView1 = paramView.findViewById(t.ap);
    this.r = a.g(getActivity());
    this.k = ((EditText)paramView.findViewById(t.az));
    this.l = ((ImageView)paramView.findViewById(t.O));
    this.q = ((CheckBoxRow)paramView.findViewById(t.x));
    q localq = new q(this, null);
    this.k.addTextChangedListener(localq);
    this.m = ((TextView)paramView.findViewById(t.at));
    if ((this.r) && (this.s))
    {
      ((LinearLayout)paramView.findViewById(t.C)).setVisibility(8);
      this.q.b(true);
      ((CheckBoxRow)paramView.findViewById(t.s)).a(new d(this, localView1, localp));
      if (this.b)
        localView1.setVisibility(0);
      this.n = ((Button)paramView.findViewById(t.j));
      this.n.setOnClickListener(new e(this));
      Button localButton = (Button)paramView.findViewById(t.aW);
      localButton.setOnClickListener(new f(this));
      View localView2 = paramView.findViewById(t.w);
      if (this.o)
      {
        localView2.setVisibility(0);
        localButton.setText(z.aL);
      }
      return;
    }
    LinearLayout localLinearLayout1 = (LinearLayout)paramView.findViewById(t.C);
    if (this.s);
    for (int i1 = 0; ; i1 = 8)
    {
      localLinearLayout1.setVisibility(i1);
      this.q.b(false);
      LinearLayout localLinearLayout2 = (LinearLayout)paramView.findViewById(t.aO);
      localLinearLayout2.setVisibility(8);
      this.q.a(new c(this, localLinearLayout2, localq));
      break;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.app.account.AccountFragment
 * JD-Core Version:    0.6.2
 */