package com.avg.ui.license.qrreader.a;

import android.hardware.Camera;
import android.hardware.Camera.AutoFocusCallback;
import android.os.Handler;
import android.os.Message;

final class a
  implements Camera.AutoFocusCallback
{
  private static final String a = a.class.getSimpleName();
  private Handler b;
  private int c;

  void a(Handler paramHandler, int paramInt)
  {
    this.b = paramHandler;
    this.c = paramInt;
  }

  public void onAutoFocus(boolean paramBoolean, Camera paramCamera)
  {
    if (this.b != null)
    {
      Message localMessage = this.b.obtainMessage(this.c, Boolean.valueOf(paramBoolean));
      this.b.sendMessageDelayed(localMessage, 1500L);
      this.b = null;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.ui.license.qrreader.a.a
 * JD-Core Version:    0.6.2
 */