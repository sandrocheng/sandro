package com.avast.android.mobilesecurity.app.shieldcontrol;

import android.view.View;
import android.view.View.OnClickListener;
import com.avast.android.mobilesecurity.app.webshield.WebshieldSettingsActivity;

class l
  implements View.OnClickListener
{
  l(ShieldControlFragment paramShieldControlFragment)
  {
  }

  public void onClick(View paramView)
  {
    WebshieldSettingsActivity.call(this.a.getActivity());
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.shieldcontrol.l
 * JD-Core Version:    0.6.2
 */