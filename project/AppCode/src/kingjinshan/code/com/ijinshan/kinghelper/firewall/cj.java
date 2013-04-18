package com.ijinshan.kinghelper.firewall;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.TextView;

final class cj
  implements DialogInterface.OnClickListener
{
  cj(IpDialSettingsActivity paramIpDialSettingsActivity, TextView paramTextView)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (IpDialSettingsActivity.n(this.b))
    {
      IpDialSettingsActivity.b(this.b, false);
      this.a.setVisibility(8);
    }
    this.b.removeDialog(20480);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.cj
 * JD-Core Version:    0.6.2
 */