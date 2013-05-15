package com.avast.android.mobilesecurity.app.webshield;

import android.content.pm.PackageManager;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.avast.android.generic.ad;
import com.avast.android.generic.ui.widget.CheckBoxRow;
import com.avast.android.generic.ui.widget.NextRow;
import com.avast.android.generic.util.ga.TrackedFragment;
import com.avast.android.mobilesecurity.t;

public class WebshieldSettingsFragment extends TrackedFragment
{
  private t a;
  private CheckBoxRow b;
  private CheckBoxRow c;
  private CheckBoxRow d;
  private CheckBoxRow e;
  private CheckBoxRow f;
  private NextRow g;
  private boolean h = false;

  private void c()
  {
    boolean bool = true;
    this.h = bool;
    this.b.b(this.a.S());
    this.c.b(this.a.T());
    this.d.b(this.a.U());
    this.e.b(this.a.V());
    this.f.b(this.a.W());
    this.h = false;
    this.c.setEnabled(this.b.c());
    this.d.setEnabled(this.b.c());
    this.e.setEnabled(this.b.c());
    CheckBoxRow localCheckBoxRow = this.f;
    if ((this.b.c()) && (this.e.c()));
    while (true)
    {
      localCheckBoxRow.setEnabled(bool);
      return;
      bool = false;
    }
  }

  public String a()
  {
    return "/ms/shieldControl/webShield";
  }

  public int a_()
  {
    return 2131493604;
  }

  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    this.a = ((t)ad.a(getActivity(), t.class));
    c();
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return paramLayoutInflater.inflate(2130903150, paramViewGroup, false);
  }

  public void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    this.b = ((CheckBoxRow)paramView.findViewById(2131165572));
    this.g = ((NextRow)paramView.findViewById(2131165577));
    this.e = ((CheckBoxRow)paramView.findViewById(2131165575));
    this.f = ((CheckBoxRow)paramView.findViewById(2131165576));
    TextView localTextView = (TextView)paramView.findViewById(2131165382);
    String str1 = getString(2131493608) + ", " + getString(2131493609) + ", " + getString(2131493611) + ", " + getString(2131493612) + ", " + getString(2131493613);
    if (getActivity().getPackageManager().checkPermission("com.dolphin.browser.permission.ACCESS_PROVIDER", getActivity().getPackageName()) == 0);
    for (String str2 = getString(2131493615); ; str2 = getString(2131493614))
    {
      localTextView.setText(getString(2131493607, new Object[] { str1, str2 }));
      this.g.setVisibility(8);
      this.b.a(new p(this));
      this.c = ((CheckBoxRow)paramView.findViewById(2131165573));
      this.c.a(new q(this));
      this.d = ((CheckBoxRow)paramView.findViewById(2131165574));
      this.d.a(new r(this));
      this.e.a(new s(this));
      this.b.a(true);
      this.e.a(true);
      this.f.a(false);
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.webshield.WebshieldSettingsFragment
 * JD-Core Version:    0.6.2
 */