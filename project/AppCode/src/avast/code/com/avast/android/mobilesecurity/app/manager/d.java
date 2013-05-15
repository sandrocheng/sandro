package com.avast.android.mobilesecurity.app.manager;

import android.view.View;
import android.view.View.OnClickListener;

class d
  implements View.OnClickListener
{
  d(AppDetailFragment paramAppDetailFragment)
  {
  }

  public void onClick(View paramView)
  {
    AppDetailFragment.b(this.a);
    paramView.setEnabled(false);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.manager.d
 * JD-Core Version:    0.6.2
 */