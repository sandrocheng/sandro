package com.avast.android.mobilesecurity.app.shieldcontrol;

import android.view.View;
import android.view.View.OnClickListener;
import com.avast.android.generic.ui.BaseActivity;

class n
  implements View.OnClickListener
{
  n(ShieldControlFragment paramShieldControlFragment)
  {
  }

  public void onClick(View paramView)
  {
    FileShieldActivity.call((BaseActivity)this.a.getActivity());
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.shieldcontrol.n
 * JD-Core Version:    0.6.2
 */