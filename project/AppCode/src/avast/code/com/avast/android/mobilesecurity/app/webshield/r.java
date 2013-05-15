package com.avast.android.mobilesecurity.app.webshield;

import com.avast.android.generic.ui.widget.CheckBoxRow;
import com.avast.android.generic.ui.widget.c;

class r
  implements c
{
  r(WebshieldSettingsFragment paramWebshieldSettingsFragment)
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
      localWebshieldSettingsFragment.a("ms-Settings", "webMalwareShield", str, 0L);
      if ((!paramBoolean) && (!WebshieldSettingsFragment.b(this.a).c()) && (!WebshieldSettingsFragment.d(this.a).c()))
        WebshieldSettingsFragment.f(this.a).b(false);
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.webshield.r
 * JD-Core Version:    0.6.2
 */