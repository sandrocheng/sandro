package com.avast.android.mobilesecurity.app.home.antitheft.uninstaller;

import android.app.ProgressDialog;
import com.avast.android.generic.util.a;
import com.avast.android.generic.util.ag;
import com.avast.android.generic.util.q;
import com.avast.android.generic.util.t;
import com.avast.android.generic.util.z;
import com.avast.android.mobilesecurity.Application;
import java.io.File;

class n
  implements Runnable
{
  n(RootMethodFragment paramRootMethodFragment, ProgressDialog paramProgressDialog)
  {
  }

  public void run()
  {
    if (!this.b.isAdded());
    while (true)
    {
      return;
      RootMethodFragment.a(this.b, true);
      RootMethodFragment.a(this.b, "");
      try
      {
        ag.a(this.b.getActivity(), Application.k(), false, 2131099652, 2131099653, 2131099655, null);
        if (!new File(Application.k()).exists())
          t.a("AvastAntiTheft", "Direct uninstall succeeded");
        while (true)
        {
          a.a(this.b, new o(this));
          break;
          RootMethodFragment.a(this.b, false);
        }
      }
      catch (Exception localException)
      {
        while (true)
        {
          localException.printStackTrace();
          if (z.b(this.b.getActivity()) != null)
          {
            RootMethodFragment.a(this.b, q.a(this.b, localException));
            RootMethodFragment.a(this.b, false);
          }
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.home.antitheft.uninstaller.n
 * JD-Core Version:    0.6.2
 */