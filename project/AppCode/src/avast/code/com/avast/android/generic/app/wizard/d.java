package com.avast.android.generic.app.wizard;

import android.os.SystemClock;
import android.view.View;
import android.view.View.OnClickListener;
import com.avast.android.generic.util.a;

class d
  implements View.OnClickListener
{
  d(EulaFragment paramEulaFragment)
  {
  }

  public void onClick(View paramView)
  {
    this.a.a("ms-Wizard", "accept", "no", (int)(SystemClock.uptimeMillis() - EulaFragment.d(this.a)));
    a.a(this.a);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.app.wizard.d
 * JD-Core Version:    0.6.2
 */