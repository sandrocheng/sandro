package com.keniu.security.protection.ui;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.text.Html;
import android.text.method.LinkMovementMethod;
import android.util.Log;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.keniu.security.protection.l;
import com.keniu.security.util.ap;
import com.keniu.security.util.aq;

public class PreventTheftExperienceInfoActivity extends Activity
{
  private static final int d = 0;
  private static final int e = 1;
  private static final int f = 2;
  private static final int g = 3;
  private static final int h = 4;
  View.OnClickListener a = new d(this);
  View.OnClickListener b = new e(this);
  private String c = "PreventTheftExperienceInfoActivity";
  private int i;
  private TextView j;
  private LinearLayout k;
  private LinearLayout l;
  private Button m;
  private Button n;
  private Button o;
  private TextView p;
  private TextView q;
  private ProgressDialog r;
  private boolean s = false;
  private Handler t = new f(this);

  private void c()
  {
    this.j = ((TextView)findViewById(2131230727));
    this.k = ((LinearLayout)findViewById(2131231225));
    this.l = ((LinearLayout)findViewById(2131231228));
    this.m = ((Button)findViewById(2131231226));
    this.n = ((Button)findViewById(2131231227));
    this.o = ((Button)findViewById(2131231229));
    this.p = ((TextView)findViewById(2131231231));
    this.q = ((TextView)findViewById(2131231232));
  }

  private void d()
  {
    this.j.setText(2131429337);
    this.k.setVisibility(8);
    this.l.setVisibility(0);
    this.p.setText(2131429350);
    this.q.setText(2131429351);
    this.o.setOnClickListener(this.a);
  }

  private void e()
  {
    this.j.setText(2131429338);
    this.k.setVisibility(0);
    this.l.setVisibility(8);
    this.p.setText(2131429343);
    this.q.setText(2131429344);
    this.n.setOnClickListener(this.a);
    this.m.setOnClickListener(this.b);
  }

  private void f()
  {
    this.j.setText(2131429340);
    this.k.setVisibility(0);
    this.l.setVisibility(8);
    this.p.setText(2131429348);
    this.q.setText(2131429349);
    this.n.setOnClickListener(this.a);
    this.m.setOnClickListener(this.b);
  }

  private void g()
  {
    this.j.setText(2131429339);
    this.k.setVisibility(0);
    this.l.setVisibility(8);
    this.p.setText(2131429352);
    this.q.setText(2131429353);
    this.n.setOnClickListener(this.a);
    this.m.setOnClickListener(this.b);
  }

  private void h()
  {
    this.j.setText(2131429341);
    this.k.setVisibility(8);
    this.l.setVisibility(0);
    this.p.setText(2131429342);
    this.o.setOnClickListener(this.a);
  }

  private void i()
  {
    this.r = new ProgressDialog(this);
    this.r.setMessage(getString(2131429358));
    this.r.setIndeterminate(true);
    this.r.setCancelable(true);
    this.r.show();
  }

  public final void a()
  {
    try
    {
      Log.d(this.c, "wait dialog dismiss");
      if ((this.r != null) && (this.r.isShowing()))
        this.r.dismiss();
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  public final void a(String paramString)
  {
    aq localaq = new aq(this, (byte)0);
    localaq.a(getString(2131429357));
    TextView localTextView = new TextView(this);
    localTextView.setText(Html.fromHtml(paramString));
    localTextView.setMovementMethod(LinkMovementMethod.getInstance());
    localTextView.setTextAppearance(this, 2131361804);
    localTextView.setPadding(20, 10, 20, 10);
    localaq.a(localTextView);
    localaq.b(getString(2131427869), null);
    localaq.c().show();
  }

  public final void b()
  {
    String str = ag.a(this);
    new aq(this, (byte)0);
    getSystemService("location");
    try
    {
      boolean bool2 = ag.i(this, "getMobileDataEnabled");
      bool1 = bool2;
      Log.d(this.c, "isMobileDataEnable=" + bool1);
      this.r = new ProgressDialog(this);
      this.r.setMessage(getString(2131429358));
      this.r.setIndeterminate(true);
      this.r.setCancelable(true);
      this.r.show();
      new l(this, str, this.t).a();
      return;
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.printStackTrace();
        boolean bool1 = false;
      }
    }
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    setContentView(2130903158);
    this.j = ((TextView)findViewById(2131230727));
    this.k = ((LinearLayout)findViewById(2131231225));
    this.l = ((LinearLayout)findViewById(2131231228));
    this.m = ((Button)findViewById(2131231226));
    this.n = ((Button)findViewById(2131231227));
    this.o = ((Button)findViewById(2131231229));
    this.p = ((TextView)findViewById(2131231231));
    this.q = ((TextView)findViewById(2131231232));
  }

  public void onDestroy()
  {
    super.onDestroy();
    this.s = true;
  }

  public void onStart()
  {
    super.onStart();
    this.i = getIntent().getIntExtra("type", 3);
    switch (this.i)
    {
    default:
    case 3:
    case 2:
    case 1:
    case 4:
    case 0:
    }
    while (true)
    {
      return;
      this.j.setText(2131429337);
      this.k.setVisibility(8);
      this.l.setVisibility(0);
      this.p.setText(2131429350);
      this.q.setText(2131429351);
      this.o.setOnClickListener(this.a);
      continue;
      this.j.setText(2131429338);
      this.k.setVisibility(0);
      this.l.setVisibility(8);
      this.p.setText(2131429343);
      this.q.setText(2131429344);
      this.n.setOnClickListener(this.a);
      this.m.setOnClickListener(this.b);
      continue;
      this.j.setText(2131429339);
      this.k.setVisibility(0);
      this.l.setVisibility(8);
      this.p.setText(2131429352);
      this.q.setText(2131429353);
      this.n.setOnClickListener(this.a);
      this.m.setOnClickListener(this.b);
      continue;
      this.j.setText(2131429340);
      this.k.setVisibility(0);
      this.l.setVisibility(8);
      this.p.setText(2131429348);
      this.q.setText(2131429349);
      this.n.setOnClickListener(this.a);
      this.m.setOnClickListener(this.b);
      continue;
      this.j.setText(2131429341);
      this.k.setVisibility(8);
      this.l.setVisibility(0);
      this.p.setText(2131429342);
      this.o.setOnClickListener(this.a);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.protection.ui.PreventTheftExperienceInfoActivity
 * JD-Core Version:    0.6.2
 */