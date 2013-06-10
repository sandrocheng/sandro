package org.antivirus.license.qrreader.camera;

import android.graphics.Point;
import android.hardware.Camera;
import android.hardware.Camera.PreviewCallback;
import android.os.Handler;
import android.os.Message;

final class PreviewCallback
  implements Camera.PreviewCallback
{
  private static final String TAG = PreviewCallback.class.getSimpleName();
  private final CameraConfigurationManager configManager;
  private Handler previewHandler;
  private int previewMessage;

  PreviewCallback(CameraConfigurationManager paramCameraConfigurationManager)
  {
    this.configManager = paramCameraConfigurationManager;
  }

  public final void onPreviewFrame(byte[] paramArrayOfByte, Camera paramCamera)
  {
    Point localPoint = this.configManager.getCameraResolution();
    Handler localHandler = this.previewHandler;
    if (localHandler != null)
    {
      localHandler.obtainMessage(this.previewMessage, localPoint.x, localPoint.y, paramArrayOfByte).sendToTarget();
      this.previewHandler = null;
    }
  }

  final void setHandler(Handler paramHandler, int paramInt)
  {
    this.previewHandler = paramHandler;
    this.previewMessage = paramInt;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.license.qrreader.camera.PreviewCallback
 * JD-Core Version:    0.6.2
 */