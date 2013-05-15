package com.avast.android.mobilesecurity.app.shieldcontrol;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.avast.android.generic.ad;
import com.avast.android.generic.ui.af;
import com.avast.android.generic.ui.widget.CheckBoxRow;
import com.avast.android.generic.util.ga.TrackedFragment;
import com.avast.android.mobilesecurity.t;

public class AppShieldFragment extends TrackedFragment
  implements af
{
  private t a;
  private CheckBoxRow b;
  private CheckBoxRow c;
  private CheckBoxRow d;
  private boolean e = false;

  private void c()
  {
    this.e = true;
    this.b.b(this.a.ag());
    this.c.b(this.a.ai());
    this.d.b(this.a.ah());
    this.e = false;
    this.c.setEnabled(this.b.c());
    this.d.setEnabled(this.b.c());
  }

  public String a()
  {
    return "/ms/shieldControl/appShield";
  }

  public int a_()
  {
    return 2131493901;
  }

  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    this.a = ((t)ad.a(getActivity(), t.class));
    c();
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return paramLayoutInflater.inflate(2130903144, paramViewGroup, false);
  }

  public void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    this.b = ((CheckBoxRow)paramView.findViewById(2131165557));
    this.b.a(new a(this));
    this.c = ((CheckBoxRow)paramView.findViewById(2131165558));
    this.c.a(new b(this));
    this.d = ((CheckBoxRow)paramView.findViewById(2131165559));
    this.d.a(new c(this));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.shieldcontrol.AppShieldFragment
 * JD-Core Version:    0.6.2
 */