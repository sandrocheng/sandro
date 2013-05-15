package com.avast.android.mobilesecurity.app.trafficinfo;

import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;

final class d extends Handler
{
  public d(NetworkStatsService paramNetworkStatsService, Looper paramLooper)
  {
    super(paramLooper);
  }

  public void handleMessage(Message paramMessage)
  {
    NetworkStatsService.a(this.a, (Intent)paramMessage.obj);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.trafficinfo.d
 * JD-Core Version:    0.6.2
 */