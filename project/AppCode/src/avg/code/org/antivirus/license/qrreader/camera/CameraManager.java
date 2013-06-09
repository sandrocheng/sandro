package org.antivirus.license.qrreader.camera;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Point;
import android.graphics.Rect;
import android.hardware.Camera;
import android.os.Handler;
import android.preference.PreferenceManager;
import android.view.SurfaceHolder;
import java.io.IOException;
import org.antivirus.core.Logger;
import org.antivirus.license.qrreader.general.PlanarYUVLuminanceSource;

public final class CameraManager
{
  private static final int MAX_FRAME_HEIGHT = 400;
  private static final int MAX_FRAME_WIDTH = 600;
  private static final int MIN_FRAME_HEIGHT = 240;
  private static final int MIN_FRAME_WIDTH = 240;
  private static final String TAG = CameraManager.class.getSimpleName();
  private final AutoFocusCallback autoFocusCallback;
  private Camera camera;
  private final CameraConfigurationManager configManager;
  private final Context context;
  private Rect framingRect;
  private Rect framingRectInPreview;
  private boolean initialized;
  private final PreviewCallback previewCallback;
  private boolean previewing;
  private int requestedFramingRectHeight;
  private int requestedFramingRectWidth;
  private boolean reverseImage;

  public CameraManager(Context paramContext)
  {
    this.context = paramContext;
    this.configManager = new CameraConfigurationManager(paramContext);
    this.previewCallback = new PreviewCallback(this.configManager);
    this.autoFocusCallback = new AutoFocusCallback();
  }

  public final PlanarYUVLuminanceSource buildLuminanceSource(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    Rect localRect = getFramingRectInPreview();
    if (localRect == null);
    for (PlanarYUVLuminanceSource localPlanarYUVLuminanceSource = null; ; localPlanarYUVLuminanceSource = new PlanarYUVLuminanceSource(paramArrayOfByte, paramInt1, paramInt2, localRect.left, localRect.top, localRect.width(), localRect.height(), this.reverseImage))
      return localPlanarYUVLuminanceSource;
  }

  public final void closeDriver()
  {
    if (this.camera != null)
    {
      this.camera.release();
      this.camera = null;
      this.framingRect = null;
      this.framingRectInPreview = null;
    }
  }

  public final Rect getFramingRect()
  {
    int i = 600;
    int j = 240;
    Rect localRect;
    Point localPoint;
    int k;
    label54: int m;
    if (this.framingRect == null)
    {
      if (this.camera == null)
      {
        localRect = null;
        return localRect;
      }
      localPoint = this.configManager.getScreenResolution();
      k = 3 * localPoint.x / 4;
      if (k >= j)
        break label124;
      i = j;
      m = 3 * localPoint.y / 4;
      if (m >= j)
        break label136;
    }
    while (true)
    {
      int n = (localPoint.x - i) / 2;
      int i1 = (localPoint.y - j) / 2;
      this.framingRect = new Rect(n, i1, i + n, j + i1);
      localRect = this.framingRect;
      break;
      label124: if (k > i)
        break label54;
      i = k;
      break label54;
      label136: if (m > 400)
        j = 400;
      else
        j = m;
    }
  }

  public final Rect getFramingRectInPreview()
  {
    Rect localRect2;
    if (this.framingRectInPreview == null)
    {
      localRect2 = getFramingRect();
      if (localRect2 != null);
    }
    for (Rect localRect1 = null; ; localRect1 = this.framingRectInPreview)
    {
      return localRect1;
      Rect localRect3 = new Rect(localRect2);
      Point localPoint1 = this.configManager.getCameraResolution();
      Point localPoint2 = this.configManager.getScreenResolution();
      localRect3.left = (localRect3.left * localPoint1.x / localPoint2.x);
      localRect3.right = (localRect3.right * localPoint1.x / localPoint2.x);
      localRect3.top = (localRect3.top * localPoint1.y / localPoint2.y);
      localRect3.bottom = (localRect3.bottom * localPoint1.y / localPoint2.y);
      this.framingRectInPreview = localRect3;
    }
  }

  public final void openDriver(SurfaceHolder paramSurfaceHolder)
  {
    Camera localCamera = this.camera;
    if (localCamera == null)
    {
      localCamera = Camera.open();
      if (localCamera == null)
        throw new IOException();
      this.camera = localCamera;
    }
    localCamera.setPreviewDisplay(paramSurfaceHolder);
    if (!this.initialized)
    {
      this.initialized = true;
      this.configManager.initFromCameraParameters(localCamera);
      if ((this.requestedFramingRectWidth > 0) && (this.requestedFramingRectHeight > 0))
      {
        setManualFramingRect(this.requestedFramingRectWidth, this.requestedFramingRectHeight);
        this.requestedFramingRectWidth = 0;
        this.requestedFramingRectHeight = 0;
      }
    }
    this.configManager.setDesiredCameraParameters(localCamera);
    this.reverseImage = PreferenceManager.getDefaultSharedPreferences(this.context).getBoolean("preferences_reverse_image", false);
  }

  public final void requestAutoFocus(Handler paramHandler, int paramInt)
  {
    if ((this.camera != null) && (this.previewing))
      this.autoFocusCallback.setHandler(paramHandler, paramInt);
    try
    {
      this.camera.autoFocus(this.autoFocusCallback);
      return;
    }
    catch (RuntimeException localRuntimeException)
    {
      while (true)
        Logger.log(localRuntimeException);
    }
  }

  public final void requestPreviewFrame(Handler paramHandler, int paramInt)
  {
    Camera localCamera = this.camera;
    if ((localCamera != null) && (this.previewing))
    {
      this.previewCallback.setHandler(paramHandler, paramInt);
      localCamera.setOneShotPreviewCallback(this.previewCallback);
    }
  }

  public final void setManualFramingRect(int paramInt1, int paramInt2)
  {
    if (this.initialized)
    {
      Point localPoint = this.configManager.getScreenResolution();
      if (paramInt1 > localPoint.x)
        paramInt1 = localPoint.x;
      if (paramInt2 > localPoint.y)
        paramInt2 = localPoint.y;
      int i = (localPoint.x - paramInt1) / 2;
      int j = (localPoint.y - paramInt2) / 2;
      this.framingRect = new Rect(i, j, i + paramInt1, j + paramInt2);
      this.framingRectInPreview = null;
    }
    while (true)
    {
      return;
      this.requestedFramingRectWidth = paramInt1;
      this.requestedFramingRectHeight = paramInt2;
    }
  }

  public final void startPreview()
  {
    Camera localCamera = this.camera;
    if ((localCamera != null) && (!this.previewing))
    {
      localCamera.startPreview();
      this.previewing = true;
    }
  }

  public final void stopPreview()
  {
    if ((this.camera != null) && (this.previewing))
    {
      this.camera.stopPreview();
      this.previewCallback.setHandler(null, 0);
      this.autoFocusCallback.setHandler(null, 0);
      this.previewing = false;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.license.qrreader.camera.CameraManager
 * JD-Core Version:    0.6.2
 */