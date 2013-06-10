package org.antivirus.license.qrreader.general;

import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.google.zxing.Result;
import java.util.Collection;
import org.antivirus.license.qrreader.camera.CameraManager;

public final class CaptureActivityHandler extends Handler
{
  private static final String TAG = CaptureActivityHandler.class.getSimpleName();
  private final CaptureActivity activity;
  private final CameraManager cameraManager;
  private final DecodeThread decodeThread;
  private CaptureActivityHandler.State state;

  CaptureActivityHandler(CaptureActivity paramCaptureActivity, Collection paramCollection, String paramString, CameraManager paramCameraManager)
  {
    this.activity = paramCaptureActivity;
    this.decodeThread = new DecodeThread(paramCaptureActivity, paramCollection, paramString, new ViewfinderResultPointCallback(paramCaptureActivity.getViewfinderView()));
    this.decodeThread.start();
    this.state = CaptureActivityHandler.State.SUCCESS;
    this.cameraManager = paramCameraManager;
    paramCameraManager.startPreview();
    restartPreviewAndDecode();
  }

  private void restartPreviewAndDecode()
  {
    if (this.state == CaptureActivityHandler.State.SUCCESS)
    {
      this.state = CaptureActivityHandler.State.PREVIEW;
      this.cameraManager.requestPreviewFrame(this.decodeThread.getHandler(), 2131230721);
      this.cameraManager.requestAutoFocus(this, 2131230720);
      this.activity.drawViewfinder();
    }
  }

  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    case 2131230721:
    case 2131230725:
    default:
    case 2131230720:
    case 2131230726:
    case 2131230723:
    case 2131230722:
    case 2131230727:
    case 2131230724:
    }
    while (true)
    {
      return;
      if (this.state == CaptureActivityHandler.State.PREVIEW)
      {
        this.cameraManager.requestAutoFocus(this, 2131230720);
        continue;
        restartPreviewAndDecode();
        continue;
        this.state = CaptureActivityHandler.State.SUCCESS;
        Bundle localBundle = paramMessage.getData();
        if (localBundle == null);
        for (Bitmap localBitmap = null; ; localBitmap = (Bitmap)localBundle.getParcelable("barcode_bitmap"))
        {
          this.activity.handleDecode((Result)paramMessage.obj, localBitmap);
          break;
        }
        this.state = CaptureActivityHandler.State.PREVIEW;
        this.cameraManager.requestPreviewFrame(this.decodeThread.getHandler(), 2131230721);
        continue;
        this.activity.setResult(-1, (Intent)paramMessage.obj);
        this.activity.finish();
        continue;
        Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse((String)paramMessage.obj));
        localIntent.addFlags(524288);
        this.activity.startActivity(localIntent);
      }
    }
  }

  public final void quitSynchronously()
  {
    this.state = CaptureActivityHandler.State.DONE;
    this.cameraManager.stopPreview();
    Message.obtain(this.decodeThread.getHandler(), 2131230725).sendToTarget();
    try
    {
      this.decodeThread.join(500L);
      label39: removeMessages(2131230723);
      removeMessages(2131230722);
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      break label39;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.license.qrreader.general.CaptureActivityHandler
 * JD-Core Version:    0.6.2
 */