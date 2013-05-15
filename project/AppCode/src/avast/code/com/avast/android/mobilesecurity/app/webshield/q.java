package com.avast.android.mobilesecurity.app.webshield;

import com.avast.android.generic.ui.widget.CheckBoxRow;
import com.avast.android.generic.ui.widget.c;

class q
  implements c
{
  q(WebshieldSettingsFragment paramWebshieldSettingsFragment)
  {
  }

  public void a(CheckBoxRow paramCheckBoxRow, boolean paramBoolean)
  {
    WebshieldSettingsFragment localWebshieldSettingsFragment;
    if (!WebshieldSettingsFragment.a(this.a))
    {
      localWebshieldSettingsFragment = this.a;
      if (!paramBoolean)
        break label76;
    }
    label76: for (String str = "yes"; ; str = "no")
    {
      localWebshieldSettingsFragment.a("ms-Settings", "webPhishingShield", str, 0L);
      if ((!paramBoolean) && (!WebshieldSettingsFragment.c(this.a).c()) && (!WebshieldSettingsFragment.d(this.a).c()))
        WebshieldSettingsFragment.f(this.a).b(false);
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.webshield.q
 * JD-Core Version:    0.6.2
 */