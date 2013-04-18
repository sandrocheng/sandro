package com.keniu.security.commumgr;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;

final class l
  implements DialogInterface.OnClickListener
{
  l(OnekeyCallSettingActivity paramOnekeyCallSettingActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Intent localIntent = new Intent("android.intent.action.MAIN");
    localIntent.setFlags(268435456);
    localIntent.addCategory("android.intent.category.HOME");
    this.a.startActivity(localIntent);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.commumgr.l
 * JD-Core Version:    0.6.2
 */