package com.avast.android.mobilesecurity.app.webshield;

import com.avast.android.generic.ui.widget.CheckBoxRow;
import com.avast.android.generic.ui.widget.c;

class s
  implements c
{
  s(WebshieldSettingsFragment paramWebshieldSettingsFragment)
  {
  }

  public void a(CheckBoxRow paramCheckBoxRow, boolean paramBoolean)
  {
    WebshieldSettingsFragment localWebshieldSettingsFragment;
    if (!WebshieldSettingsFragment.a(this.a))
    {
      localWebshieldSettingsFragment = this.a;
      if (!paramBoolean)
        break label87;
    }
    label87: for (String str = "yes"; ; str = "no")
    {
      localWebshieldSettingsFragment.a("ms-Settings", "siteCorrect", str, 0L);
      WebshieldSettingsFragment.e(this.a).setEnabled(paramBoolean);
      if ((!paramBoolean) && (!WebshieldSettingsFragment.b(this.a).c()) && (!WebshieldSettingsFragment.c(this.a).c()))
        WebshieldSettingsFragment.f(this.a).b(false);
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.webshield.s
 * JD-Core Version:    0.6.2
 */