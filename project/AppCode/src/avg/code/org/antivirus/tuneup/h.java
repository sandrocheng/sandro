package org.antivirus.tuneup;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import org.antivirus.AVService;

public final class h extends BroadcastReceiver
{
  private int a;
  private Handler b;

  public h(int paramInt)
  {
    this.a = paramInt;
    this.b = null;
  }

  public final void a(Handler paramHandler)
  {
    this.b = paramHandler;
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
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
      Intent localIntent2 = new Intent(paramContext, AVService.class);
      localIntent2.putExtras(paramIntent.getExtras());
      localIntent2.putExtra("__SAC", 314);
      paramContext.startService(localIntent2);
      continue;
      if (this.b != null)
      {
        Message localMessage = Message.obtain();
        localMessage.obj = paramIntent;
        this.b.sendMessage(localMessage);
        continue;
        Intent localIntent1 = new Intent(paramContext, AVService.class);
        localIntent1.putExtras(paramIntent.getExtras());
        localIntent1.putExtra("__SAC", 315);
        paramContext.startService(localIntent1);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.tuneup.h
 * JD-Core Version:    0.6.2
 */