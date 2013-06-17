package com.antivirus.ui.protection;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.antivirus.c;
import com.antivirus.core.b;
import com.avg.toolkit.c.a;

class ab
  implements DialogInterface.OnClickListener
{
  ab(r paramr)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    r.y(this.a).c(false);
    c.i(false);
    a.a(r.z(this.a), "protection", "scan_sms", "off", 0);
    r.f(this.a).notifyDataSetInvalidated();
    paramDialogInterface.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.protection.ab
 * JD-Core Version:    0.6.2
 */