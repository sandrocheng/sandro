package com.jxphone.mosecurity.activity.friend;

import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import android.util.Log;

final class c extends Handler
{
  c(FriendActivity paramFriendActivity)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    FriendActivity.a(this.a);
    Intent localIntent = new Intent("com.conew.mosecurity.ACTION_PRIVATE_SPACE_CONTACTS_CHANGE");
    this.a.sendBroadcast(localIntent);
    Log.e("FriendActivity>>", "sendBroadcast>>ACTION_PRIVATE_SPACE_CONTACTS_CHANGE");
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.activity.friend.c
 * JD-Core Version:    0.6.2
 */