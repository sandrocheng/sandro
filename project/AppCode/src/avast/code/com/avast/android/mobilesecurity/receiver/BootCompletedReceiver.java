package com.avast.android.mobilesecurity.receiver;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;

public class BootCompletedReceiver extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    Intent localIntent = new Intent(paramIntent);
    localIntent.setComponent(new ComponentName(paramContext, BootCompletedService.class));
    paramContext.startService(localIntent);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.receiver.BootCompletedReceiver
 * JD-Core Version:    0.6.2
 */