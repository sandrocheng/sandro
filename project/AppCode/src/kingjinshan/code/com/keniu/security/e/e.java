package com.keniu.security.e;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.jxphone.mosecurity.c.l;

public final class e
  implements c
{
  private Handler a;

  public e(Handler paramHandler)
  {
    this.a = paramHandler;
  }

  private void a(l paraml, d paramd)
  {
    Message localMessage = Message.obtain();
    localMessage.what = paramd.ordinal();
    Bundle localBundle = new Bundle();
    localBundle.putSerializable("sms", paraml);
    localMessage.setData(localBundle);
    this.a.sendMessage(localMessage);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.e.e
 * JD-Core Version:    0.6.2
 */