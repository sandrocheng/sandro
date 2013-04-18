package com.keniu.security.software;

import android.os.Handler;
import android.os.Message;
import java.io.File;

final class av
  implements Runnable
{
  private o b;

  public av(SoftwareManager2 paramSoftwareManager2, o paramo)
  {
    this.b = paramo;
  }

  public final void run()
  {
    if (new File(this.b.e()).exists());
    for (int i = 0; ; i = 1)
    {
      Message localMessage = Message.obtain();
      localMessage.what = 257;
      localMessage.arg1 = i;
      this.a.a.sendMessage(localMessage);
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.software.av
 * JD-Core Version:    0.6.2
 */