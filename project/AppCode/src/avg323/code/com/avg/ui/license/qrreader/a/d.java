package com.avg.ui.license.qrreader.a;

import android.graphics.Point;
import android.hardware.Camera;
import android.hardware.Camera.PreviewCallback;
import android.os.Handler;
import android.os.Message;

final class d
  implements Camera.PreviewCallback
{
  private static final String a = d.class.getSimpleName();
  private final b b;
  private Handler c;
  private int d;

  d(b paramb)
  {
    this.b = paramb;
  }

  void a(Handler paramHandler, int paramInt)
  {
    this.c = paramHandler;
    this.d = paramInt;
  }

  public void onPreviewFrame(byte[] paramArrayOfByte, Camera paramCamera)
  {
    Point localPoint = this.b.a();
    Handler localHandler = this.c;
    if (localHandler != null)
    {
      localHandler.obtainMessage(this.d, localPoint.x, localPoint.y, paramArrayOfByte).sendToTarget();
      this.c = null;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.ui.license.qrreader.a.d
 * JD-Core Version:    0.6.2
 */