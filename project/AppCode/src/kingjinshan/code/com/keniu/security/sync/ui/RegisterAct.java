package com.keniu.security.sync.ui;

import android.os.Bundle;
import android.os.Handler;
import android.view.View.OnFocusChangeListener;
import android.view.Window;
import android.widget.ArrayAdapter;
import android.widget.AutoCompleteTextView;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.TextView;
import com.keniu.security.sync.a;
import com.keniu.security.sync.i;
import com.keniu.security.sync.r;

public class RegisterAct extends HelperBaseTitleAct
{
  private static final boolean p = true;
  View.OnFocusChangeListener a = new n(this);
  View.OnFocusChangeListener b = new o(this);
  private AutoCompleteTextView c;
  private EditText d;
  private EditText e;
  private Button f;
  private CheckBox g;
  private Handler h;
  private boolean i = true;
  private boolean j = true;
  private boolean k = true;
  private TextView l;
  private String m;
  private String n;
  private String o;

  protected static void a()
  {
  }

  private void a(String paramString1, String paramString2)
  {
    if (!r.b(this));
    while (true)
    {
      return;
      new p(this).execute(new String[] { paramString1, paramString2 });
    }
  }

  public final void a(Integer paramInteger)
  {
    switch (paramInteger.intValue())
    {
    default:
      com.keniu.security.sync.l.a(this, 2131429485);
    case 0:
    case -4:
    case -10:
    case -13:
    case 1021:
    case 1023:
    }
    while (true)
    {
      return;
      com.keniu.security.sync.l.a(this, 2131427865, 2131429468);
      a.a();
      a.a(this.c.getText().toString());
      this.h.sendEmptyMessageDelayed(16, 30000L);
      continue;
      com.keniu.security.sync.l.a(this, 2131429494);
      continue;
      com.keniu.security.sync.l.a(this, 2131429486);
      continue;
      com.keniu.security.sync.l.a(this, 2131429487);
      continue;
      com.keniu.security.sync.l.a(this, 2131429469);
      continue;
      com.keniu.security.sync.l.a(this, 2131429472);
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.a(paramBundle, 2130903173, 2131429441);
    this.h = new com.keniu.security.sync.j(this, (byte)0);
    this.f = ((Button)findViewById(2131231298));
    this.c = ((AutoCompleteTextView)findViewById(2131231295));
    this.d = ((EditText)findViewById(2131231281));
    this.e = ((EditText)findViewById(2131231297));
    this.g = ((CheckBox)findViewById(2131231299));
    this.l = ((TextView)findViewById(2131231300));
    this.d.setOnFocusChangeListener(this.a);
    this.e.setOnFocusChangeListener(this.b);
    this.g.setOnCheckedChangeListener(new j(this));
    this.l.setOnClickListener(new k(this));
    this.f.setOnClickListener(new l(this));
    this.c.setOnFocusChangeListener(new m(this));
    String str = com.keniu.security.sync.l.b(this);
    if ((str != null) && (str.length() > 0))
    {
      if (str.startsWith("+86"))
        str = str.substring(3);
      this.c.setAdapter(new ArrayAdapter(this, 17367050, new String[] { str }));
    }
    getWindow().setSoftInputMode(3);
  }

  protected void onDestroy()
  {
    i.a(this, ">>>>> on destroy");
    this.o = null;
    this.n = null;
    this.m = null;
    super.onDestroy();
  }

  protected void onPause()
  {
    i.a(this, ">>>>> on pause");
    this.m = this.c.getText().toString();
    this.n = this.d.getText().toString();
    this.o = this.e.getText().toString();
    super.onPause();
  }

  protected void onResume()
  {
    i.a(this, ">>>>> on resume");
    this.i = true;
    this.c.setText(this.m);
    this.d.setText(this.n);
    this.e.setText(this.o);
    super.onResume();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.ui.RegisterAct
 * JD-Core Version:    0.6.2
 */