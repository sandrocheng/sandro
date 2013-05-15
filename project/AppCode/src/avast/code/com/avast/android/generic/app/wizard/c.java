package com.avast.android.generic.app.wizard;

import android.os.SystemClock;
import android.view.View;
import android.view.View.OnClickListener;
import com.avast.android.generic.ad;
import com.avast.android.generic.ae;
import com.avast.android.generic.util.a;

class c
  implements View.OnClickListener
{
  c(EulaFragment paramEulaFragment)
  {
  }

  public void onClick(View paramView)
  {
    ae localae = (ae)ad.a(this.a.getActivity(), ae.class);
    this.a.a("ms-Wizard", "accept", "yes", (int)(SystemClock.uptimeMillis() - EulaFragment.d(this.a)));
    EulaFragment localEulaFragment = this.a;
    if (localae.p());
    for (String str = "yes"; ; str = "no")
    {
      localEulaFragment.a("ms-Wizard", "communityIQ allowed during accept", str, 0L);
      this.a.d();
      localae.a("eulaDone", true);
      localae.b();
      this.a.c();
      a.a(this.a);
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.app.wizard.c
 * JD-Core Version:    0.6.2
 */