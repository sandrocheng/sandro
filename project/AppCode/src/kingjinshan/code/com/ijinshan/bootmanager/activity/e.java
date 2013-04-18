package com.ijinshan.bootmanager.activity;

import android.content.ComponentName;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.pm.PackageManager;
import java.util.List;

final class e
  implements DialogInterface.OnClickListener
{
  e(AutoBootMangerActivity paramAutoBootMangerActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Intent localIntent = new Intent("android.settings.APPLICATION_DEVELOPMENT_SETTINGS");
    localIntent.setComponent(new ComponentName("com.android.settings", "com.android.settings.DevelopmentSettings"));
    if (this.a.getPackageManager().queryIntentActivities(localIntent, 0).size() != 0)
      this.a.startActivity(localIntent);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.bootmanager.activity.e
 * JD-Core Version:    0.6.2
 */