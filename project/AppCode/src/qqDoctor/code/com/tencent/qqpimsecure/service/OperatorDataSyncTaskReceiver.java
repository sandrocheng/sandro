package com.tencent.qqpimsecure.service;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import di;
import iu;
import iy;
import np;
import wr;
import xa;

public class OperatorDataSyncTaskReceiver extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    wr localwr = wr.a(paramContext);
    if ((new iu(QQPimApplication.a()).j()) && (new iy(QQPimApplication.a()).a.getBoolean("netword_service_status", di.b().f())) && (localwr.d()))
      new Thread(new xa(localwr)).start();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.service.OperatorDataSyncTaskReceiver
 * JD-Core Version:    0.6.2
 */