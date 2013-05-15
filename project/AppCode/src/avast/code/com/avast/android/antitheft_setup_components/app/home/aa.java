package com.avast.android.antitheft_setup_components.app.home;

import android.app.ProgressDialog;
import com.avast.android.antitheft_setup_components.f;
import com.avast.android.antitheft_setup_components.g;
import com.avast.android.generic.ui.widget.CheckBoxRow;
import com.avast.android.generic.util.ag;
import com.avast.android.generic.util.q;
import java.io.File;

class aa
  implements Runnable
{
  aa(RootMethodFragment paramRootMethodFragment, ProgressDialog paramProgressDialog)
  {
  }

  public void run()
  {
    if (!this.b.isAdded());
    while (true)
    {
      return;
      RootMethodFragment.a(this.b, false);
      RootMethodFragment.a(this.b, "");
      try
      {
        ag.a(this.b.getActivity(), "AvastAntiTheftInstaller.temp.apk", "/system/app/com.avast.android.antitheft.apk", false, f.e, f.d, false, false, 0, null, null, RootMethodFragment.d(this.b).c());
        if (new File("/system/app/com.avast.android.antitheft.apk").exists())
          RootMethodFragment.a(this.b, true);
        com.avast.android.generic.util.a.a(this.b, new ab(this));
      }
      catch (com.avast.android.generic.util.a.a locala)
      {
        while (this.b.isAdded())
        {
          this.b.a("ms-atSetup", "root method, direct write, error", "not enough space", 0L);
          RootMethodFragment localRootMethodFragment1 = this.b;
          RootMethodFragment localRootMethodFragment2 = this.b;
          int i = g.E;
          Object[] arrayOfObject = new Object[2];
          arrayOfObject[0] = locala.a(this.b.getActivity());
          arrayOfObject[1] = locala.b(this.b.getActivity());
          RootMethodFragment.a(localRootMethodFragment1, localRootMethodFragment2.getString(i, arrayOfObject));
          RootMethodFragment.a(this.b, false);
        }
      }
      catch (Exception localException)
      {
        while (true)
        {
          this.b.a("ms-atSetup", "root method, direct write, error", localException.getMessage(), 0L);
          localException.printStackTrace();
          RootMethodFragment.a(this.b, q.a(this.b, localException));
          RootMethodFragment.a(this.b, false);
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.antitheft_setup_components.app.home.aa
 * JD-Core Version:    0.6.2
 */