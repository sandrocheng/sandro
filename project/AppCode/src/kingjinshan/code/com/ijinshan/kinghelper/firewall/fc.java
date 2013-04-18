package com.ijinshan.kinghelper.firewall;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import com.ijinshan.kinghelper.common.PickListActivity;

final class fc
  implements DialogInterface.OnClickListener
{
  fc(UserWhiteBlackListActivity paramUserWhiteBlackListActivity)
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
    case 4:
    case 5:
    }
    while (true)
    {
      return;
      Intent localIntent6 = new Intent(this.a, PickListActivity.class);
      localIntent6.setType("vnd.android.cursor.dir/contact");
      localIntent6.removeExtra("PickListActivity1_action_type");
      localIntent6.putExtra("PickListActivity1_action_type", UserWhiteBlackListActivity.c(this.a));
      this.a.startActivity(localIntent6);
      continue;
      Intent localIntent5 = new Intent(this.a, PickListActivity.class);
      localIntent5.setType("vnd.android.cursor.dir/calls");
      localIntent5.removeExtra("PickListActivity1_action_type");
      localIntent5.putExtra("PickListActivity1_action_type", UserWhiteBlackListActivity.c(this.a));
      this.a.startActivity(localIntent5);
      continue;
      Intent localIntent4 = new Intent(this.a, PickListActivity.class);
      localIntent4.setType("vnd.android.cursor.dir/sms");
      localIntent4.removeExtra("PickListActivity1_action_type");
      localIntent4.putExtra("PickListActivity1_action_type", UserWhiteBlackListActivity.c(this.a));
      localIntent4.putExtra("PickListActivity1_ec_conversion_sms", true);
      this.a.startActivity(localIntent4);
      continue;
      Intent localIntent3 = new Intent(this.a, UserWhiteBlackAddActivity.class);
      localIntent3.putExtra("rule_type", UserWhiteBlackListActivity.b(this.a));
      this.a.startActivity(localIntent3);
      continue;
      Intent localIntent2 = new Intent(this.a, UserBlackAddByAreasActivity.class);
      localIntent2.putExtra("rule_type", UserWhiteBlackListActivity.b(this.a));
      this.a.startActivity(localIntent2);
      continue;
      Intent localIntent1 = new Intent(this.a, UserBlackAddByNumbersActivity.class);
      localIntent1.putExtra("rule_type", UserWhiteBlackListActivity.b(this.a));
      this.a.startActivity(localIntent1);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.fc
 * JD-Core Version:    0.6.2
 */