package org.antivirus.license.qrreader.camera;

import android.hardware.Camera;
import android.hardware.Camera.AutoFocusCallback;
import android.os.Handler;
import android.os.Message;

final class AutoFocusCallback
  implements Camera.AutoFocusCallback
{
  private static final long AUTOFOCUS_INTERVAL_MS = 1500L;
  private static final String TAG = AutoFocusCallback.class.getSimpleName();
  private Handler autoFocusHandler;
  private int autoFocusMessage;

  public final void onAutoFocus(boolean paramBoolean, Camera paramCamera)
  {
    if (this.autoFocusHandler != null)
    {
      Message localMessage = this.autoFocusHandler.obtainMessage(this.autoFocusMessage, Boolean.valueOf(paramBoolean));
      this.autoFocusHandler.sendMessageDelayed(localMessage, 1500L);
      this.autoFocusHandler = null;
    }
  }

  final void setHandler(Handler paramHandler, int paramInt)
  {
    this.autoFocusHandler = paramHandler;
    this.autoFocusMessage = paramInt;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.license.qrreader.camera.AutoFocusCallback
 * JD-Core Version:    0.6.2
 */