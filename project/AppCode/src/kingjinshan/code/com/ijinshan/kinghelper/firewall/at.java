package com.ijinshan.kinghelper.firewall;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import com.ijinshan.kinghelper.common.PickListActivity;

final class at
  implements DialogInterface.OnClickListener
{
  at(FirewallSmsActivity paramFirewallSmsActivity)
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
    }
    while (true)
    {
      return;
      Intent localIntent3 = new Intent(this.a, PickListActivity.class);
      localIntent3.setType("vnd.android.cursor.dir/calls");
      localIntent3.removeExtra("PickListActivity1_action_type");
      localIntent3.putExtra("PickListActivity1_action_type", "PickListActivity1_report_action");
      this.a.startActivity(localIntent3);
      continue;
      Intent localIntent2 = new Intent(this.a, PickListActivity.class);
      localIntent2.setType("vnd.android.cursor.dir/sms");
      localIntent2.removeExtra("PickListActivity1_action_type");
      localIntent2.putExtra("PickListActivity1_action_type", "PickListActivity1_report_action");
      this.a.startActivity(localIntent2);
      continue;
      Intent localIntent1 = new Intent(this.a, UserReportActivity.class);
      this.a.startActivity(localIntent1);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.at
 * JD-Core Version:    0.6.2
 */