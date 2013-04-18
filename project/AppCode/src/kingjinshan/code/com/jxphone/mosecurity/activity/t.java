package com.jxphone.mosecurity.activity;

import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import android.view.Display;
import android.view.WindowManager;
import com.jxphone.mosecurity.activity.friend.FriendTabActivity;
import com.jxphone.mosecurity.c.c;

public final class t extends Handler
{
  private int b;

  public t(BaseContactActivity paramBaseContactActivity)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
    case 1:
    case 2:
    }
    while (true)
    {
      return;
      this.b = this.a.getRequestedOrientation();
      int i = this.a.getWindowManager().getDefaultDisplay().getOrientation();
      BaseContactActivity localBaseContactActivity = this.a;
      if (i % 2 == 0);
      for (int j = 1; ; j = 0)
      {
        localBaseContactActivity.setRequestedOrientation(j);
        break;
      }
      this.a.setRequestedOrientation(this.b);
      if ((this.a.h == c.b) && (this.a.j) && (!this.a.i))
      {
        this.a.j = false;
        this.a.startActivity(new Intent(this.a, FriendTabActivity.class));
        this.a.finish();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.activity.t
 * JD-Core Version:    0.6.2
 */