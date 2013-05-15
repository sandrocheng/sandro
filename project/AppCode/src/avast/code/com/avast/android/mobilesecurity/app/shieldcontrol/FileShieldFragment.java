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

public class FileShieldFragment extends TrackedFragment
  implements af
{
  private t a;
  private CheckBoxRow b;
  private CheckBoxRow c;
  private CheckBoxRow d;
  private CheckBoxRow e;
  private boolean f = false;

  private void c()
  {
    this.f = true;
    this.b.b(this.a.ac());
    this.c.b(this.a.ae());
    this.d.b(this.a.ad());
    this.e.b(this.a.af());
    this.f = false;
    this.c.setEnabled(this.b.c());
    this.d.setEnabled(this.b.c());
    this.e.setEnabled(this.b.c());
  }

  public String a()
  {
    return "/ms/shieldControl/fileShield";
  }

  public int a_()
  {
    return 2131493907;
  }

  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    this.a = ((t)ad.a(getActivity(), t.class));
    c();
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return paramLayoutInflater.inflate(2130903146, paramViewGroup, false);
  }

  public void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    this.b = ((CheckBoxRow)paramView.findViewById(2131165563));
    this.b.a(new d(this));
    this.c = ((CheckBoxRow)paramView.findViewById(2131165565));
    this.c.a(new e(this));
    this.d = ((CheckBoxRow)paramView.findViewById(2131165564));
    this.d.a(new f(this));
    this.e = ((CheckBoxRow)paramView.findViewById(2131165566));
    this.e.a(new g(this));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.shieldcontrol.FileShieldFragment
 * JD-Core Version:    0.6.2
 */