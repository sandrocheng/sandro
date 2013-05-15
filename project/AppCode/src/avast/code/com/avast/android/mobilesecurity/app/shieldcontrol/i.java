package com.avast.android.mobilesecurity.app.shieldcontrol;

import com.avast.android.generic.ui.widget.CheckBoxRow;
import com.avast.android.generic.ui.widget.c;

class i
  implements c
{
  i(MessageShieldFragment paramMessageShieldFragment)
  {
  }

  public void a(CheckBoxRow paramCheckBoxRow, boolean paramBoolean)
  {
    MessageShieldFragment localMessageShieldFragment;
    if (!MessageShieldFragment.a(this.a))
    {
      localMessageShieldFragment = this.a;
      if (!paramBoolean)
        break label63;
    }
    label63: for (String str = "yes"; ; str = "no")
    {
      localMessageShieldFragment.a("ms-Settings", "incomingMessageShield", str, 0L);
      if ((!paramBoolean) && (!MessageShieldFragment.c(this.a).c()))
        MessageShieldFragment.d(this.a).b(false);
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.shieldcontrol.i
 * JD-Core Version:    0.6.2
 */