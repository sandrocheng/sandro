package com.keniu.security.traffic;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.widget.EditText;
import android.widget.Toast;

final class er
  implements DialogInterface.OnClickListener
{
  er(TrafficZiFeiSettingActivity2 paramTrafficZiFeiSettingActivity2, EditText paramEditText)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Intent localIntent;
    if (!TextUtils.isEmpty(this.a.getText()))
    {
      String str = this.a.getText().toString();
      localIntent = new Intent("android.intent.action.CALL", Uri.parse("tel:" + str));
    }
    try
    {
      this.b.startActivity(localIntent);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        Toast.makeText(this.b, this.b.getString(2131427403), 0).show();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.er
 * JD-Core Version:    0.6.2
 */