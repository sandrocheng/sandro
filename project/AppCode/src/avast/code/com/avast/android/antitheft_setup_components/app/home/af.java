package com.avast.android.antitheft_setup_components.app.home;

import android.app.ProgressDialog;
import com.avast.android.antitheft_setup_components.f;
import com.avast.android.antitheft_setup_components.g;
import com.avast.android.generic.ui.widget.CheckBoxRow;
import com.avast.android.generic.util.am;
import com.avast.android.generic.util.o;
import com.avast.android.generic.util.q;

class af
  implements Runnable
{
  af(RootMethodFragment paramRootMethodFragment, o paramo, am paramam, ProgressDialog paramProgressDialog)
  {
  }

  public void run()
  {
    if (!this.d.isAdded());
    while (true)
    {
      return;
      RootMethodFragment.a(this.d, false);
      RootMethodFragment.a(this.d, "");
      int i = com.avast.android.antitheft_setup_components.b.a.a(this.a);
      try
      {
        com.avast.android.generic.util.ag.a(this.d.getActivity(), "AvastAntiTheftInstaller.temp.apk", "/system/app/com.avast.android.antitheft.apk", true, f.e, f.d, false, false, i, this.a, this.b, RootMethodFragment.d(this.d).c());
        RootMethodFragment.a(this.d, true);
        this.d.a("ms-atSetup", "root method, update-zip", "success", 0L);
        com.avast.android.generic.util.a.a(this.d, new ag(this));
      }
      catch (com.avast.android.generic.util.a.a locala)
      {
        while (this.d.isAdded())
        {
          this.d.a("ms-atSetup", "root method, update-zip, error", "not enough space", 0L);
          RootMethodFragment localRootMethodFragment1 = this.d;
          RootMethodFragment localRootMethodFragment2 = this.d;
          int j = g.E;
          Object[] arrayOfObject = new Object[2];
          arrayOfObject[0] = locala.a(this.d.getActivity());
          arrayOfObject[1] = locala.b(this.d.getActivity());
          RootMethodFragment.a(localRootMethodFragment1, localRootMethodFragment2.getString(j, arrayOfObject));
          RootMethodFragment.a(this.d, false);
        }
      }
      catch (Exception localException)
      {
        while (true)
        {
          this.d.a("ms-atSetup", "root method, update-zip, error", localException.getMessage(), 0L);
          localException.printStackTrace();
          RootMethodFragment.a(this.d, q.a(this.d, localException));
          RootMethodFragment.a(this.d, false);
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.antitheft_setup_components.app.home.af
 * JD-Core Version:    0.6.2
 */