package com.keniu.security.traffic;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import com.ijinshan.kinghelper.firewall.IpDialSettingsActivity;
import com.ijinshan.kinghelper.firewall.dc;

final class em
  implements DialogInterface.OnClickListener
{
  em(TrafficZiFeiSettingActivity paramTrafficZiFeiSettingActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    dc.c();
    Intent localIntent = new Intent(this.a.getApplicationContext(), IpDialSettingsActivity.class);
    localIntent.putExtra("fromSIMChange", true);
    this.a.startActivity(localIntent);
    this.a.finish();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.em
 * JD-Core Version:    0.6.2
 */