package com.avast.android.mobilesecurity.app.home.antitheft.uninstaller;

import android.app.ProgressDialog;

class j
  implements Runnable
{
  j(i parami)
  {
  }

  public void run()
  {
    if (this.a.d.isAdded())
    {
      this.a.c.dismiss();
      if (RootMethodFragment.d(this.a.d))
        break label57;
      RootMethodFragment.b(this.a.d, RootMethodFragment.e(this.a.d));
    }
    while (true)
    {
      return;
      label57: RootMethodFragment.f(this.a.d);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.home.antitheft.uninstaller.j
 * JD-Core Version:    0.6.2
 */