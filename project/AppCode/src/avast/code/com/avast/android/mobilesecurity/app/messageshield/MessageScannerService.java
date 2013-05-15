package com.avast.android.mobilesecurity.app.messageshield;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import com.avast.android.generic.ad;
import com.avast.android.generic.util.m;
import com.avast.android.mobilesecurity.t;

public class MessageScannerService extends Service
{
  public IBinder onBind(Intent paramIntent)
  {
    return null;
  }

  public int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    if (!((t)ad.a(this, t.class)).aj())
      stopSelf();
    while (true)
    {
      return 2;
      m.c("MessageScannerService: Old messages scan started.");
      new o(this, new a(this)).execute(new Void[0]);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.messageshield.MessageScannerService
 * JD-Core Version:    0.6.2
 */