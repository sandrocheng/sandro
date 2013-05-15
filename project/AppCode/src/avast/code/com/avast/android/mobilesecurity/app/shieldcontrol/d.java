package com.avast.android.mobilesecurity.app.shieldcontrol;

import android.content.Intent;
import android.support.v4.app.FragmentActivity;
import com.avast.android.generic.ui.widget.CheckBoxRow;
import com.avast.android.generic.ui.widget.c;
import com.avast.android.generic.util.m;
import com.avast.android.mobilesecurity.app.fileshield.FileShieldService;
import com.avast.android.mobilesecurity.app.globalactivitylog.u;
import com.avast.android.mobilesecurity.app.globalactivitylog.y;

class d
  implements c
{
  d(FileShieldFragment paramFileShieldFragment)
  {
  }

  public void a(CheckBoxRow paramCheckBoxRow, boolean paramBoolean)
  {
    String str;
    Intent localIntent;
    label170: u localu;
    if (!FileShieldFragment.a(this.a))
    {
      FileShieldFragment localFileShieldFragment = this.a;
      if (!paramBoolean)
        break label238;
      str = "yes";
      localFileShieldFragment.a("ms-Settings", "fileShield", str, 0L);
      localIntent = new Intent(this.a.getActivity(), FileShieldService.class);
      if (!paramBoolean)
        break label245;
      if ((!FileShieldFragment.b(this.a).c()) && (!FileShieldFragment.c(this.a).c()) && (!FileShieldFragment.d(this.a).c()))
      {
        FileShieldFragment.b(this.a).b(true);
        FileShieldFragment.c(this.a).b(true);
        FileShieldFragment.d(this.a).b(false);
      }
      m.c(getClass().getSimpleName() + ": Starting FileShieldService.");
      this.a.getActivity().startService(localIntent);
      localu = u.a(this.a.getActivity());
      if (!paramBoolean)
        break label290;
    }
    label290: for (y localy = y.K; ; localy = y.L)
    {
      localu.a(localy, null, null, null, null, null, null);
      FileShieldFragment.b(this.a).setEnabled(paramBoolean);
      FileShieldFragment.c(this.a).setEnabled(paramBoolean);
      FileShieldFragment.d(this.a).setEnabled(paramBoolean);
      return;
      label238: str = "no";
      break;
      label245: m.c(getClass().getSimpleName() + ": Stopping FileShieldService.");
      this.a.getActivity().stopService(localIntent);
      break label170;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.shieldcontrol.d
 * JD-Core Version:    0.6.2
 */