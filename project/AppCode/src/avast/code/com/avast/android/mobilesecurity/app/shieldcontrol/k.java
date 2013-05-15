package com.avast.android.mobilesecurity.app.shieldcontrol;

import android.view.View;
import android.view.View.OnClickListener;
import com.avast.android.generic.ui.BaseActivity;

class k
  implements View.OnClickListener
{
  k(ShieldControlFragment paramShieldControlFragment)
  {
  }

  public void onClick(View paramView)
  {
    AppShieldActivity.call((BaseActivity)this.a.getActivity());
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.shieldcontrol.k
 * JD-Core Version:    0.6.2
 */