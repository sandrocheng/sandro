package com.ijinshan.kinghelper.firewall;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import com.ijinshan.kinghelper.common.NumberPickListActivity;

final class cd
  implements DialogInterface.OnClickListener
{
  cd(IpDialNoUseNumberListActivity paramIpDialNoUseNumberListActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    switch (paramInt)
    {
    default:
    case 0:
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      return;
      Intent localIntent3 = new Intent(this.a, NumberPickListActivity.class);
      localIntent3.setType("vnd.android.cursor.dir/contact");
      this.a.startActivityForResult(localIntent3, 1);
      continue;
      Intent localIntent2 = new Intent(this.a, NumberPickListActivity.class);
      localIntent2.setType("vnd.android.cursor.dir/calls");
      this.a.startActivityForResult(localIntent2, 1);
      continue;
      Intent localIntent1 = new Intent(this.a, NumberPickListActivity.class);
      localIntent1.setType("vnd.android.cursor.dir/sms");
      this.a.startActivityForResult(localIntent1, 1);
      continue;
      this.a.showDialog(8210);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.cd
 * JD-Core Version:    0.6.2
 */