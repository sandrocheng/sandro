package com.avast.android.mobilesecurity.app.home.antitheft.uninstaller;

import android.app.ProgressDialog;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import com.avast.android.generic.ui.widget.CheckBoxRow;
import com.avast.android.generic.util.am;
import com.avast.android.generic.util.ga.TrackedFragment;
import com.avast.android.generic.util.o;
import com.avast.android.generic.util.z;
import com.avast.android.mobilesecurity.Application;

public class RootMethodFragment extends TrackedFragment
{
  private Button a;
  private Button b;
  private CheckBoxRow c;
  private String d = "";
  private String e = null;
  private String f = null;
  private boolean g = false;
  private CheckBoxRow h;
  private CheckBoxRow i;

  private void a(am paramam, o paramo)
  {
    new Thread(new i(this, paramo, paramam, ProgressDialog.show(getActivity(), "", this.e, true))).start();
  }

  private void a(String paramString)
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = getString(2131493323);
    String str = getString(2131493322, arrayOfObject);
    if ((paramString != null) && (!paramString.equals("")))
      str = getString(2131493322, new Object[] { paramString });
    com.avast.android.generic.a.a(getActivity(), str, getString(2131492963), getString(2131492964), new p(this));
  }

  private void b(String paramString)
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = getString(2131493323);
    String str = getString(2131493321, arrayOfObject);
    if ((paramString != null) && (!paramString.equals("")))
      str = getString(2131493321, new Object[] { paramString });
    com.avast.android.generic.a.a(getActivity(), str, getString(2131492963), getString(2131492964), new c(this));
  }

  private void c()
  {
    if (!Application.e())
      d();
    while (true)
    {
      return;
      e();
    }
  }

  private void d()
  {
    com.avast.android.generic.a.a(getActivity(), getString(2131493311), getString(2131493312), getString(2131493313), new k(this), new m(this));
  }

  private void e()
  {
    new Thread(new n(this, ProgressDialog.show(getActivity(), "", this.e, true))).start();
  }

  private void f()
  {
    com.avast.android.generic.util.a.a(this);
    RootFinishedActivity.call(getActivity());
  }

  private void g()
  {
    if (z.f(getActivity()))
      com.avast.android.generic.a.a(getActivity(), this.f, getString(2131492963), getString(2131492964), new d(this), new e(this));
    while (true)
    {
      return;
      f();
    }
  }

  public String a()
  {
    return "/ms/antiTheftUninstall/rootMethod";
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView = paramLayoutInflater.inflate(2130903135, paramViewGroup, false);
    TextView localTextView1 = (TextView)localView.findViewById(2131165511);
    TextView localTextView2 = (TextView)localView.findViewById(2131165512);
    this.a = ((Button)localView.findViewById(2131165516));
    this.b = ((Button)localView.findViewById(2131165385));
    this.c = ((CheckBoxRow)localView.findViewById(2131165513));
    this.h = ((CheckBoxRow)localView.findViewById(2131165514));
    this.i = ((CheckBoxRow)localView.findViewById(2131165515));
    this.c.a(null);
    this.c.b(true);
    this.h.a(null);
    this.h.b(false);
    this.i.a(null);
    this.i.setEnabled(false);
    this.i.setVisibility(8);
    this.c.c(getString(2131493306));
    this.c.d(getString(2131493861));
    this.h.c(getString(2131493308));
    this.h.d(getString(2131493309));
    Application.c(true);
    localTextView1.setText(getString(2131493857));
    localTextView2.setText(getString(2131493858));
    this.e = getString(2131493859);
    this.f = getString(2131493860);
    this.b.setText(getString(2131493448));
    this.a.setText(getString(2131492967));
    this.c.a(new b(this));
    this.h.a(new f(this));
    this.a.setOnClickListener(new g(this));
    this.b.setOnClickListener(new h(this));
    return localView;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.home.antitheft.uninstaller.RootMethodFragment
 * JD-Core Version:    0.6.2
 */