package com.jxphone.mosecurity.activity.friend;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.util.Log;

final class ax extends BroadcastReceiver
{
  private ax(FriendSmsActivity paramFriendSmsActivity, byte paramByte)
  {
  }

  final void a(Context paramContext)
  {
    IntentFilter localIntentFilter = new IntentFilter("com.conew.mosecurity.ACTION_PRIVATE_SPACE_CONTACTS_CHANGE");
    localIntentFilter.addAction("com.conew.mosecurity.ACTION_CHECK_PWD_END");
    localIntentFilter.addCategory("android.intent.category.DEFAULT");
    paramContext.registerReceiver(this, localIntentFilter);
  }

  final void b(Context paramContext)
  {
    paramContext.unregisterReceiver(this);
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    if ("com.conew.mosecurity.ACTION_PRIVATE_SPACE_CONTACTS_CHANGE".equalsIgnoreCase(paramIntent.getAction()))
      FriendSmsActivity.a(this.a);
    while (true)
    {
      return;
      if ("com.conew.mosecurity.ACTION_CHECK_PWD_END".equalsIgnoreCase(paramIntent.getAction()))
      {
        FriendSmsActivity.a(this.a, paramIntent.getBooleanExtra("isDummy", false));
        try
        {
          this.a.f();
        }
        catch (Exception localException)
        {
          Log.e("FriendCallLogActivity>>CallLogBroadcastReceiver", ">.onReceive", localException);
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.activity.friend.ax
 * JD-Core Version:    0.6.2
 */