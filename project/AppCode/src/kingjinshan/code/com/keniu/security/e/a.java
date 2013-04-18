package com.keniu.security.e;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.jxphone.mosecurity.c.j;

public final class a
  implements c
{
  private Handler a;

  public a(Handler paramHandler)
  {
    this.a = paramHandler;
  }

  private void a(j paramj, d paramd)
  {
    Message localMessage = Message.obtain();
    localMessage.what = paramd.ordinal();
    Bundle localBundle = new Bundle();
    localBundle.putSerializable("CALL", paramj);
    localMessage.setData(localBundle);
    this.a.sendMessage(localMessage);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.e.a
 * JD-Core Version:    0.6.2
 */