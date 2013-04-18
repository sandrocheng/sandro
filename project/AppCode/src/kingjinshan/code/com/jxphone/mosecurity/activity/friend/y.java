package com.jxphone.mosecurity.activity.friend;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.util.Log;

final class y extends BroadcastReceiver
{
  private y(FriendCallLogActivity paramFriendCallLogActivity, byte paramByte)
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
    {
      FriendCallLogActivity.a(this.a);
      Log.e("FriendCallLog>>", "CallLogBroadcastReceiver>>onReceive>>ACTION_PRIVATE_SPACE_CONTACTS_CHANGE");
    }
    while (true)
    {
      return;
      if ("com.conew.mosecurity.ACTION_CHECK_PWD_END".equalsIgnoreCase(paramIntent.getAction()))
      {
        FriendCallLogActivity.a(this.a, paramIntent.getBooleanExtra("isDummy", false));
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
 * Qualified Name:     com.jxphone.mosecurity.activity.friend.y
 * JD-Core Version:    0.6.2
 */