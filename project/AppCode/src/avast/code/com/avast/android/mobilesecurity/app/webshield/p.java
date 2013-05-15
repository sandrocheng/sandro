package com.avast.android.mobilesecurity.app.webshield;

import android.content.Intent;
import android.support.v4.app.FragmentActivity;
import com.avast.android.generic.ui.widget.CheckBoxRow;
import com.avast.android.generic.ui.widget.c;
import com.avast.android.mobilesecurity.app.globalactivitylog.u;
import com.avast.android.mobilesecurity.app.globalactivitylog.y;

class p
  implements c
{
  p(WebshieldSettingsFragment paramWebshieldSettingsFragment)
  {
  }

  public void a(CheckBoxRow paramCheckBoxRow, boolean paramBoolean)
  {
    String str;
    u localu;
    if (!WebshieldSettingsFragment.a(this.a))
    {
      WebshieldSettingsFragment localWebshieldSettingsFragment = this.a;
      if (!paramBoolean)
        break label226;
      str = "yes";
      localWebshieldSettingsFragment.a("ms-Settings", "webShield", str, 0L);
      if ((paramBoolean) && (!WebshieldSettingsFragment.b(this.a).c()) && (!WebshieldSettingsFragment.c(this.a).c()) && (!WebshieldSettingsFragment.d(this.a).c()))
      {
        WebshieldSettingsFragment.b(this.a).b(true);
        WebshieldSettingsFragment.c(this.a).b(true);
        WebshieldSettingsFragment.d(this.a).b(true);
      }
      WebshieldSettingsFragment.b(this.a).setEnabled(paramBoolean);
      WebshieldSettingsFragment.c(this.a).setEnabled(paramBoolean);
      WebshieldSettingsFragment.d(this.a).setEnabled(paramBoolean);
      WebshieldSettingsFragment.e(this.a).setEnabled(paramBoolean);
      this.a.getActivity().startService(new Intent(this.a.getActivity(), WebshieldService.class));
      localu = u.a(this.a.getActivity());
      if (!paramBoolean)
        break label233;
    }
    label226: label233: for (y localy = y.I; ; localy = y.J)
    {
      localu.a(localy, null, null, null, null, null, null);
      if (!this.a.isAdded());
      return;
      str = "no";
      break;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.webshield.p
 * JD-Core Version:    0.6.2
 */