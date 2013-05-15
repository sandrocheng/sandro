package com.avast.android.generic.app.wizard;

import android.os.SystemClock;
import com.avast.android.generic.ae;
import com.avast.android.generic.ui.widget.CheckBoxRow;
import com.avast.android.generic.ui.widget.c;

class e
  implements c
{
  e(EulaFragment paramEulaFragment, ae paramae)
  {
  }

  public void a(CheckBoxRow paramCheckBoxRow, boolean paramBoolean)
  {
    EulaFragment localEulaFragment = this.b;
    if (paramBoolean);
    for (String str = "yes"; ; str = "no")
    {
      localEulaFragment.a("ms-Wizard", "communityIQ", str, (int)(SystemClock.uptimeMillis() - EulaFragment.d(this.b)));
      this.a.c(paramBoolean);
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.app.wizard.e
 * JD-Core Version:    0.6.2
 */