package com.ijinshan.kinghelper.firewall;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.ijinshan.kinghelper.a.i;
import java.io.PrintStream;

final class aw
  implements DialogInterface.OnClickListener
{
  aw(au paramau, long paramLong, String paramString1, String paramString2)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    System.out.println("sms: " + this.a);
    FirewallSmsLogListActivity.a(this.d.a, paramInt, this.a, i.a(this.b), this.c);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.aw
 * JD-Core Version:    0.6.2
 */