package com.avg.tuneup.battery;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import com.avg.toolkit.f;

public class b extends BroadcastReceiver
{
  private int a;
  private Handler b;

  public b(int paramInt)
  {
    this.a = paramInt;
    this.b = null;
  }

  public void a(Handler paramHandler)
  {
    this.b = paramHandler;
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    switch (this.a)
    {
    default:
    case 1:
    case 0:
    case 2:
    }
    while (true)
    {
      return;
      f.a(paramContext, 11000, 3, paramIntent.getExtras());
      continue;
      if (this.b != null)
      {
        Message localMessage = Message.obtain();
        localMessage.obj = paramIntent;
        this.b.sendMessage(localMessage);
        continue;
        f.a(paramContext, 11000, 7, paramIntent.getExtras());
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.tuneup.battery.b
 * JD-Core Version:    0.6.2
 */