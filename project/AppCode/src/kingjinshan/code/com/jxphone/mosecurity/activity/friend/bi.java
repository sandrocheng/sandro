package com.jxphone.mosecurity.activity.friend;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.jxphone.mosecurity.c.l;

final class bi extends Handler
{
  bi(PeopleSmsLogActivity paramPeopleSmsLogActivity)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    Object localObject = paramMessage.getData().get("sms");
    if ((localObject == null) || (((l)localObject).f() == 3));
    while (true)
    {
      return;
      PeopleSmsLogActivity.a(this.a);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.activity.friend.bi
 * JD-Core Version:    0.6.2
 */