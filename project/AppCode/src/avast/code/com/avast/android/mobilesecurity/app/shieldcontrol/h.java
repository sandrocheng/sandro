package com.avast.android.mobilesecurity.app.shieldcontrol;

import com.avast.android.generic.ui.widget.CheckBoxRow;
import com.avast.android.generic.ui.widget.c;
import com.avast.android.mobilesecurity.app.globalactivitylog.u;
import com.avast.android.mobilesecurity.app.globalactivitylog.y;

class h
  implements c
{
  h(MessageShieldFragment paramMessageShieldFragment)
  {
  }

  public void a(CheckBoxRow paramCheckBoxRow, boolean paramBoolean)
  {
    String str;
    u localu;
    if (!MessageShieldFragment.a(this.a))
    {
      MessageShieldFragment localMessageShieldFragment = this.a;
      if (!paramBoolean)
        break label143;
      str = "yes";
      localMessageShieldFragment.a("ms-Settings", "messageShield", str, 0L);
      if ((paramBoolean) && (!MessageShieldFragment.b(this.a).c()) && (!MessageShieldFragment.c(this.a).c()))
      {
        MessageShieldFragment.b(this.a).b(true);
        MessageShieldFragment.c(this.a).b(true);
      }
      MessageShieldFragment.b(this.a).setEnabled(paramBoolean);
      MessageShieldFragment.c(this.a).setEnabled(paramBoolean);
      localu = u.a(this.a.getActivity());
      if (!paramBoolean)
        break label150;
    }
    label143: label150: for (y localy = y.s; ; localy = y.t)
    {
      localu.a(localy, null, null, null, null, null, null);
      return;
      str = "no";
      break;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.shieldcontrol.h
 * JD-Core Version:    0.6.2
 */