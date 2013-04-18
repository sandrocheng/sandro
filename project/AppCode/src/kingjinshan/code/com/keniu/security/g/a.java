package com.keniu.security.g;

import android.app.ProgressDialog;
import android.content.Context;
import android.os.Handler;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.RadioButton;
import android.widget.TextView;
import com.hoi.widget.q;
import com.keniu.security.f.ab;
import com.keniu.security.f.t;
import com.keniu.security.f.v;
import com.keniu.security.util.ap;
import com.keniu.security.util.aq;
import com.keniu.security.util.ax;

public final class a
{
  private static final int h = 0;
  private static final int i = 1;
  private static final int j = 2;
  public Context a = null;
  private q b;
  private ProgressDialog c;
  private q d;
  private ap e;
  private boolean f = false;
  private Handler g = new d(this);

  public a(Context paramContext, boolean paramBoolean)
  {
    this.a = paramContext;
    this.f = paramBoolean;
  }

  private void a(int paramInt)
  {
    if (paramInt == 2)
      return;
    aq localaq = new aq(this.a, (byte)0);
    localaq.a(this.a.getString(2131428361));
    View localView = ((LayoutInflater)this.a.getSystemService("layout_inflater")).inflate(2130903099, null);
    TextView localTextView = (TextView)localView.findViewById(2131231009);
    StringBuilder localStringBuilder1 = new StringBuilder().append(this.a.getString(2131428347));
    Context localContext = this.a;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(paramInt);
    StringBuilder localStringBuilder2 = localStringBuilder1.append(localContext.getString(2131428390, arrayOfObject));
    String str1 = this.a.getString(2131428391);
    String str2;
    switch (paramInt)
    {
    default:
      str2 = str1 + this.a.getString(2131428388);
    case 3:
    case 4:
    case 9:
    case 10:
    case 5:
    case 6:
    case 7:
    case 8:
    }
    while (true)
    {
      localTextView.setText(str2 + "\n");
      ((TextView)localView.findViewById(2131231010)).setOnClickListener(new h(this));
      localaq.a(localView);
      localaq.b(this.a.getString(2131428834), null);
      localaq.c().show();
      break;
      str2 = str1 + this.a.getString(2131428348);
      continue;
      str2 = str1 + this.a.getString(2131428349);
      continue;
      str2 = str1 + this.a.getString(2131428375);
    }
  }

  private void a(t paramt, v paramv)
  {
    aq localaq = new aq(this.a, (byte)0);
    localaq.a(this.a.getString(2131427865));
    Context localContext = this.a;
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = paramv.f;
    arrayOfObject[1] = ax.c(paramv.e);
    localaq.b(localContext.getString(2131428365, arrayOfObject));
    localaq.b(2131428398, null);
    localaq.a(this.a.getString(2131428346), new b(this, paramt));
    localaq.c().show();
  }

  private void a(v paramv, t paramt, boolean paramBoolean)
  {
    String str1 = paramv.c;
    String str2 = paramv.d;
    String str3 = ab.a().m();
    StringBuilder localStringBuilder = new StringBuilder();
    Context localContext1 = this.a;
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = str3;
    arrayOfObject[1] = str1;
    arrayOfObject[2] = ax.c(paramv.b);
    String str4 = localContext1.getString(2131428366, arrayOfObject) + "<br>" + str2;
    aq localaq = new aq(this.a, (byte)0);
    localaq.a(this.a.getString(2131428361));
    localaq.b(Html.fromHtml(str4));
    Context localContext2 = this.a;
    if (paramBoolean);
    for (int k = 2131428342; ; k = 2131428627)
    {
      localaq.b(localContext2.getString(k), null);
      localaq.a(this.a.getString(2131428346), new e(this, paramt));
      localaq.c().show();
      return;
    }
  }

  private String b(int paramInt)
  {
    String str1 = this.a.getString(2131428391);
    String str2;
    switch (paramInt)
    {
    default:
      str2 = str1 + this.a.getString(2131428388);
    case 3:
    case 4:
    case 9:
    case 10:
    case 5:
    case 6:
    case 7:
    case 8:
    }
    while (true)
    {
      return str2;
      str2 = str1 + this.a.getString(2131428348);
      continue;
      str2 = str1 + this.a.getString(2131428349);
      continue;
      str2 = str1 + this.a.getString(2131428375);
    }
  }

  private void b(t paramt, v paramv)
  {
    aq localaq = new aq(this.a, (byte)0);
    localaq.a(this.a.getString(2131427865));
    Context localContext = this.a;
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = paramv.f;
    arrayOfObject[1] = ax.c(paramv.e);
    localaq.b(localContext.getString(2131428364, arrayOfObject));
    localaq.b(2131428398, null);
    localaq.a(this.a.getString(2131428346), new c(this, paramt));
    localaq.c().show();
  }

  private void c()
  {
    ab localab = ab.a();
    localab.m();
    com.keniu.security.e.b(this.a);
    String str1 = localab.c("antivirus.db");
    String str2 = this.a.getString(2131428380) + "<br>" + this.a.getString(2131428394, new Object[] { str1 });
    String str3 = this.a.getString(2131428361);
    aq localaq = new aq(this.a, (byte)0);
    localaq.a(str3);
    localaq.a(2131427864, null);
    localaq.b(Html.fromHtml(str2));
    localaq.c().show();
  }

  private void c(t paramt, v paramv)
  {
    View localView = ((LayoutInflater)this.a.getSystemService("layout_inflater")).inflate(2130903328, null);
    TextView localTextView = (TextView)localView.findViewById(2131231750);
    localTextView.requestFocus();
    ((TextView)localView.findViewById(2131231751)).setOnClickListener(new f(this, paramv, paramt));
    RadioButton localRadioButton1 = (RadioButton)localView.findViewById(2131231752);
    Context localContext1 = this.a;
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = ax.c(paramv.b);
    localRadioButton1.setText(localContext1.getString(2131428353, arrayOfObject1));
    RadioButton localRadioButton2 = (RadioButton)localView.findViewById(2131231753);
    Context localContext2 = this.a;
    Object[] arrayOfObject2 = new Object[1];
    arrayOfObject2[0] = ax.c(paramv.e);
    localRadioButton2.setText(localContext2.getString(2131428354, arrayOfObject2));
    Context localContext3 = this.a;
    Object[] arrayOfObject3 = new Object[1];
    arrayOfObject3[0] = paramv.c;
    localTextView.setText(localContext3.getString(2131428368, arrayOfObject3));
    aq localaq = new aq(this.a, (byte)0);
    localaq.a(this.a.getString(2131427865));
    localaq.a(localView);
    localaq.a(this.a.getString(2131428346), new g(this, localRadioButton1, paramt, localRadioButton2));
    localaq.b(this.a.getString(2131427866), null);
    this.e = localaq.c();
    this.e.show();
  }

  private void d()
  {
    ab localab = ab.a();
    localab.m();
    String str1 = com.keniu.security.e.b(this.a);
    String str2 = localab.n();
    String str3 = this.a.getString(2131428379) + "<br>" + this.a.getString(2131428395, new Object[] { str1, str2 });
    String str4 = this.a.getString(2131428361);
    aq localaq = new aq(this.a, (byte)0);
    localaq.a(str4);
    localaq.a(2131427864, null);
    localaq.b(Html.fromHtml(str3));
    localaq.c().show();
  }

  private void e()
  {
    aq localaq = new aq(this.a, (byte)0);
    localaq.a(2131428361);
    String str = ab.a().c("antivirus.db");
    localaq.b(String.format(this.a.getString(2131427911), new Object[] { str }));
    localaq.b(2131427864, null);
    localaq.c().show();
  }

  private void f()
  {
    aq localaq = new aq(this.a, (byte)0);
    localaq.a(2131428361);
    String str = ab.a().n();
    localaq.b(String.format(this.a.getString(2131427911), new Object[] { str }));
    localaq.b(2131427864, null);
    localaq.c().show();
  }

  public final void a()
  {
    new n(this).a(this.a, false);
  }

  public final void a(boolean paramBoolean)
  {
    new n(this).a(this.a, paramBoolean);
  }

  public final void b()
  {
    if ((this.c != null) && (this.c.isShowing()))
    {
      this.c.dismiss();
      this.c = null;
    }
    if ((this.d != null) && (this.d.isShowing()))
    {
      this.d.dismiss();
      this.d = null;
    }
    if ((this.b != null) && (this.b.isShowing()))
    {
      this.b.dismiss();
      this.b = null;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.g.a
 * JD-Core Version:    0.6.2
 */