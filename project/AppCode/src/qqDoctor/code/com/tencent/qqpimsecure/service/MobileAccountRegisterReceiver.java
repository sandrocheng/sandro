package com.tencent.qqpimsecure.service;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.tencent.qqpimsecure.ui.activity.SyncMobileRegisterActivity;

public class MobileAccountRegisterReceiver extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent == null);
    while (true)
    {
      return;
      int i = getResultCode();
      if ("com.tencent.qqpimsecure.action_register_sms_sended".equals(paramIntent.getAction()))
      {
        Intent localIntent = new Intent();
        localIntent.setClass(paramContext, SyncMobileRegisterActivity.class);
        localIntent.addFlags(805306368);
        Bundle localBundle = new Bundle();
        localBundle.putInt("retcode_sms_sened_key", i);
        localIntent.putExtras(localBundle);
        paramContext.startActivity(localIntent);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.service.MobileAccountRegisterReceiver
 * JD-Core Version:    0.6.2
 */