package com.tencent.qqpim.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import cl;

public class SyncStatusReceiver extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent == null);
    while (true)
    {
      return;
      String str1 = paramIntent.getAction();
      if ("com.tencent.qqpim.action_req_is_sync_working".equals(str1))
      {
        if (cl.a)
        {
          String str2 = paramIntent.getStringExtra("package_name");
          if ((str2 != null) && (!str2.equals(paramContext.getPackageName())))
          {
            Intent localIntent = new Intent();
            localIntent.setAction("com.tencent.qqpim.action_resp_sync_is_working");
            paramContext.sendBroadcast(localIntent);
          }
        }
      }
      else if ("com.tencent.qqpim.action_resp_sync_is_working".equals(str1))
        cl.b = true;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpim.receiver.SyncStatusReceiver
 * JD-Core Version:    0.6.2
 */