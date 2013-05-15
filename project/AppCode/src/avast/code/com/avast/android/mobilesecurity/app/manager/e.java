package com.avast.android.mobilesecurity.app.manager;

import android.view.View;
import android.view.View.OnClickListener;

class e
  implements View.OnClickListener
{
  e(AppDetailFragment paramAppDetailFragment)
  {
  }

  public void onClick(View paramView)
  {
    this.a.a("ms-AppManager", "Open System Info", AppDetailFragment.c(this.a), 0L);
    AppDetailFragment.d(this.a);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.manager.e
 * JD-Core Version:    0.6.2
 */