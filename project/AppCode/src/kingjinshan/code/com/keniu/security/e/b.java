package com.keniu.security.e;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;

public final class b
  implements c
{
  private Handler a;

  public b(Handler paramHandler)
  {
    this.a = paramHandler;
  }

  private void a(com.jxphone.mosecurity.c.b paramb, d paramd)
  {
    Message localMessage = Message.obtain();
    localMessage.what = paramd.ordinal();
    Bundle localBundle = new Bundle();
    localBundle.putSerializable("contact", paramb);
    localMessage.setData(localBundle);
    this.a.sendMessage(localMessage);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.e.b
 * JD-Core Version:    0.6.2
 */