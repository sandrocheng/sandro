package com.avast.android.mobilesecurity.app.firewall;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.avast.android.generic.ui.widget.CheckBoxRow;
import com.avast.android.generic.ui.widget.NextRow;
import com.avast.android.generic.util.al;
import com.avast.android.generic.util.ga.TrackedFragment;
import com.avast.android.mobilesecurity.app.firewall.core.a;
import com.avast.android.mobilesecurity.t;

public class FirewallSettingsFragment extends TrackedFragment
{
  public static a a = new ad();
  private NextRow b;
  private CheckBoxRow c;
  private CheckBoxRow d;
  private CheckBoxRow e;
  private NextRow f;
  private String[] g;
  private t h;

  private void c()
  {
    d();
  }

  private void d()
  {
    if (this.h.aJ());
    for (String str1 = getString(2131493695); ; str1 = getString(2131493694))
    {
      String str2 = getString(2131493009, new Object[] { str1 });
      this.b.d(str2);
      return;
    }
  }

  private void e()
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(al.d(getActivity()));
    localBuilder.setItems(this.g, new ao(this));
    AlertDialog localAlertDialog = localBuilder.create();
    localAlertDialog.setInverseBackgroundForced(true);
    localAlertDialog.show();
  }

  public String a()
  {
    return "/ms/firewall/settings";
  }

  public int a_()
  {
    return 2131493685;
  }

  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    String[] arrayOfString = new String[2];
    arrayOfString[0] = getString(2131493695);
    arrayOfString[1] = getString(2131493694);
    this.g = arrayOfString;
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    ViewGroup localViewGroup = (ViewGroup)paramLayoutInflater.inflate(2130903127, paramViewGroup, false);
    this.h = ((t)com.avast.android.generic.ad.a(getActivity(), t.class));
    this.b = ((NextRow)localViewGroup.findViewById(2131165491));
    this.f = ((NextRow)localViewGroup.findViewById(2131165495));
    this.c = ((CheckBoxRow)localViewGroup.findViewById(2131165494));
    this.d = ((CheckBoxRow)localViewGroup.findViewById(2131165492));
    this.e = ((CheckBoxRow)localViewGroup.findViewById(2131165493));
    c();
    return localViewGroup;
  }

  public void onResume()
  {
    super.onResume();
  }

  public void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    this.b.setOnClickListener(new ae(this));
    this.f.setOnClickListener(new af(this));
    this.f.setEnabled(this.h.Y());
    this.c.b(this.h.Y());
    this.d.b(this.h.Z());
    this.e.b(this.h.aa());
    this.c.a(new ag(this));
    this.d.a(new ah(this));
    this.e.a(new an(this));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.firewall.FirewallSettingsFragment
 * JD-Core Version:    0.6.2
 */