package com.avast.android.antitheft_setup_components.app.home;

import android.content.Intent;
import android.support.v4.app.FragmentActivity;
import android.view.View;
import android.view.View.OnClickListener;
import com.avast.android.generic.util.a;

class m
  implements View.OnClickListener
{
  m(InstallationModeFragment paramInstallationModeFragment, Intent paramIntent)
  {
  }

  public void onClick(View paramView)
  {
    this.b.a("ms-atSetup", "install mode", "easyPlay", 0L);
    this.b.getActivity().startActivity(this.a);
    a.a(this.b);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.antitheft_setup_components.app.home.m
 * JD-Core Version:    0.6.2
 */