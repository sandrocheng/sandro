package com.avast.android.mobilesecurity.app.home.antitheft.uninstaller;

import android.app.ProgressDialog;
import com.avast.android.generic.util.ag;
import com.avast.android.generic.util.am;
import com.avast.android.generic.util.o;
import com.avast.android.generic.util.q;
import com.avast.android.generic.util.t;
import com.avast.android.mobilesecurity.Application;

class i
  implements Runnable
{
  i(RootMethodFragment paramRootMethodFragment, o paramo, am paramam, ProgressDialog paramProgressDialog)
  {
  }

  public void run()
  {
    if (!this.d.isAdded());
    while (true)
    {
      return;
      RootMethodFragment.a(this.d, true);
      RootMethodFragment.a(this.d, "");
      try
      {
        ag.a(this.d.getActivity(), Application.k(), true, 2131099652, 2131099653, com.avast.android.antitheft_setup_components.b.a.a(this.a), this.b);
        t.a("AvastAntiTheft", "ZIP uninstall succeeded");
        com.avast.android.generic.util.a.a(this.d, new j(this));
      }
      catch (Exception localException)
      {
        while (true)
        {
          localException.printStackTrace();
          RootMethodFragment.a(this.d, q.a(this.d, localException));
          RootMethodFragment.a(this.d, false);
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.home.antitheft.uninstaller.i
 * JD-Core Version:    0.6.2
 */