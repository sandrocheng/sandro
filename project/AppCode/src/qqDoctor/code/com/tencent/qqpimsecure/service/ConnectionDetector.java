package com.tencent.qqpimsecure.service;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import com.tencent.tmsecure.common.TMSApplication;
import qy;
import qz;

public class ConnectionDetector extends BroadcastReceiver
{
  private Context a = null;
  private Handler b = new qy(this);

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (TMSApplication.getApplicaionContext() == null);
    while (true)
    {
      return;
      paramContext.startService(new Intent(paramContext, TMSApplication.getSecureServiceClass()));
      this.a = TMSApplication.getApplicaionContext();
      new Thread(new qz(this)).start();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.service.ConnectionDetector
 * JD-Core Version:    0.6.2
 */