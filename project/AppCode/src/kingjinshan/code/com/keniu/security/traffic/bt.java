package com.keniu.security.traffic;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.widget.EditText;
import android.widget.Toast;

final class bt
  implements DialogInterface.OnClickListener
{
  bt(TrafficMonthLimitSettingActivity paramTrafficMonthLimitSettingActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Intent localIntent;
    if (!TextUtils.isEmpty(TrafficMonthLimitSettingActivity.b(this.a).getText()))
    {
      String str = TrafficMonthLimitSettingActivity.b(this.a).getText().toString();
      localIntent = new Intent("android.intent.action.CALL", Uri.parse("tel:" + str));
    }
    try
    {
      this.a.startActivity(localIntent);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        Toast.makeText(this.a, this.a.getString(2131427403), 0).show();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.bt
 * JD-Core Version:    0.6.2
 */