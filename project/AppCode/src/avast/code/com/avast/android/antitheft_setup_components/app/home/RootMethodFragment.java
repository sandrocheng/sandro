package com.avast.android.antitheft_setup_components.app.home;

import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import com.avast.android.antitheft_setup_components.d;
import com.avast.android.antitheft_setup_components.e;
import com.avast.android.antitheft_setup_components.g;
import com.avast.android.generic.Application;
import com.avast.android.generic.ui.widget.CheckBoxRow;
import com.avast.android.generic.util.ag;
import com.avast.android.generic.util.am;
import com.avast.android.generic.util.ga.TrackedFragment;
import com.avast.android.generic.util.o;
import java.io.File;

public class RootMethodFragment extends TrackedFragment
{
  private Button a;
  private Button b;
  private CheckBoxRow c;
  private CheckBoxRow d;
  private CheckBoxRow e;
  private String f = "";
  private boolean g = false;

  private void a(am paramam, o paramo)
  {
    new Thread(new af(this, paramo, paramam, ProgressDialog.show(getActivity(), "", getString(g.j), true))).start();
  }

  private void a(String paramString)
  {
    int i = g.O;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = getString(g.ae);
    String str = getString(i, arrayOfObject);
    if ((paramString != null) && (!paramString.equals("")))
      str = getString(g.O, new Object[] { paramString });
    com.avast.android.generic.a.a(getActivity(), str, getString(g.p), getString(g.s), new t(this), new u(this));
  }

  private void b(String paramString)
  {
    int i = g.g;
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = getString(g.ae);
    String str = getString(i, arrayOfObject);
    if ((paramString != null) && (!paramString.equals("")))
      str = getString(g.g, new Object[] { paramString });
    com.avast.android.generic.a.a(getActivity(), str, getString(g.p), getString(g.s), new v(this), new w(this));
  }

  private void c()
  {
    if (!Application.e())
      e();
    while (true)
    {
      return;
      d();
    }
  }

  private void d()
  {
    new Thread(new aa(this, ProgressDialog.show(getActivity(), "", getString(g.j), true))).start();
  }

  private void e()
  {
    com.avast.android.generic.a.a(getActivity(), getString(g.Q), getString(g.Y), getString(g.a), new ac(this), new ae(this));
  }

  private void f()
  {
    if (com.avast.android.generic.util.z.f(getActivity()))
      com.avast.android.generic.a.a(getActivity(), getString(g.H), getString(g.p), getString(g.s), new ah(this), new s(this));
    while (true)
    {
      return;
      a("ms-atSetup", "root method, update-zip, success", "finished", 0L);
      g();
    }
  }

  private void g()
  {
    if ((!isAdded()) || (getActivity() == null));
    while (true)
    {
      return;
      File localFile = new File(getActivity().getFilesDir() + "/" + "AvastAntiTheftInstaller.temp.apk");
      if ((localFile != null) && (localFile.exists()))
        localFile.delete();
      ((RootMethodWizardActivity)getActivity()).c();
      com.avast.android.generic.util.a.a(this);
      startActivity(new Intent(getActivity(), InstallationFinishedWizardActivity.class));
    }
  }

  public String a()
  {
    return "/ms/antiTheftSetup/rootMethod";
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    View localView = paramLayoutInflater.inflate(e.b, paramViewGroup, false);
    this.a = ((Button)localView.findViewById(d.b));
    this.b = ((Button)localView.findViewById(d.c));
    this.c = ((CheckBoxRow)localView.findViewById(d.o));
    this.c.c(getString(g.u));
    this.c.d(getString(g.n));
    this.c.a(null);
    this.c.b(true);
    this.d = ((CheckBoxRow)localView.findViewById(d.d));
    this.d.c(getString(g.R));
    this.d.d(getString(g.aa));
    this.d.a(null);
    this.d.b(false);
    this.e = ((CheckBoxRow)localView.findViewById(d.i));
    this.e.c(getString(g.A));
    this.e.d(getString(g.x));
    this.e.a(null);
    this.c.b(true);
    this.d.b(false);
    this.e.b(false);
    this.e.setEnabled(ag.a(getActivity()));
    Application.c(true);
    this.c.a(new r(this));
    this.d.a(new x(this));
    this.a.setOnClickListener(new y(this));
    this.b.setOnClickListener(new z(this));
    return localView;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.antitheft_setup_components.app.home.RootMethodFragment
 * JD-Core Version:    0.6.2
 */