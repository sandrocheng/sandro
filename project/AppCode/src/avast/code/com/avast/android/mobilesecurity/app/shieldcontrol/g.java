package com.avast.android.mobilesecurity.app.shieldcontrol;

import com.avast.android.generic.ui.widget.CheckBoxRow;
import com.avast.android.generic.ui.widget.c;

class g
  implements c
{
  g(FileShieldFragment paramFileShieldFragment)
  {
  }

  public void a(CheckBoxRow paramCheckBoxRow, boolean paramBoolean)
  {
    FileShieldFragment localFileShieldFragment;
    if (!FileShieldFragment.a(this.a))
    {
      localFileShieldFragment = this.a;
      if (!paramBoolean)
        break label76;
    }
    label76: for (String str = "yes"; ; str = "no")
    {
      localFileShieldFragment.a("ms-Settings", "fileMountShield", str, 0L);
      if ((!paramBoolean) && (!FileShieldFragment.b(this.a).c()) && (!FileShieldFragment.c(this.a).c()))
        FileShieldFragment.e(this.a).b(false);
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.shieldcontrol.g
 * JD-Core Version:    0.6.2
 */