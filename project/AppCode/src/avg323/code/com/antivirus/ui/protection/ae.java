package com.antivirus.ui.protection;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.avg.ui.general.a.a;

class ae
  implements DialogInterface.OnClickListener
{
  ae(r paramr)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    r.A(this.a).runOnUiThread(new af(this));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.protection.ae
 * JD-Core Version:    0.6.2
 */