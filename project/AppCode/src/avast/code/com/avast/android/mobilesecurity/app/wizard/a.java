package com.avast.android.mobilesecurity.app.wizard;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.avast.android.antitheft_setup_components.app.home.InstallationModeActivity;

class a
  implements View.OnClickListener
{
  a(AntiTheftOfferFragment paramAntiTheftOfferFragment)
  {
  }

  public void onClick(View paramView)
  {
    this.a.a("ms-Wizard", "Anti Theft Install Offer", "setup", 0L);
    this.a.startActivityForResult(new Intent(this.a.getActivity(), InstallationModeActivity.class), 0);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.wizard.a
 * JD-Core Version:    0.6.2
 */