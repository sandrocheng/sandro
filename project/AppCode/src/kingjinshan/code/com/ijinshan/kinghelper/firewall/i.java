package com.ijinshan.kinghelper.firewall;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.text.TextUtils;

final class i
  implements DialogInterface.OnClickListener
{
  i(h paramh, String paramString, long paramLong)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (TextUtils.isEmpty(this.a))
      FirewallCallLogListActivity.a(this.c.a, paramInt, this.b);
    while (true)
    {
      return;
      FirewallCallLogListActivity.a(this.c.a, paramInt, this.b, com.ijinshan.kinghelper.a.i.a(this.a));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.i
 * JD-Core Version:    0.6.2
 */