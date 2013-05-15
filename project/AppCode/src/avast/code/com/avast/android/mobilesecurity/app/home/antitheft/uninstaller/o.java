package com.avast.android.mobilesecurity.app.home.antitheft.uninstaller;

import android.app.ProgressDialog;

class o
  implements Runnable
{
  o(n paramn)
  {
  }

  public void run()
  {
    if (this.a.b.isAdded())
    {
      this.a.a.dismiss();
      if (RootMethodFragment.d(this.a.b))
        break label57;
      RootMethodFragment.c(this.a.b, RootMethodFragment.e(this.a.b));
    }
    while (true)
    {
      return;
      label57: RootMethodFragment.g(this.a.b);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.home.antitheft.uninstaller.o
 * JD-Core Version:    0.6.2
 */