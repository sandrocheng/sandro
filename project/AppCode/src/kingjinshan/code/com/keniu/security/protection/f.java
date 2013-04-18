package com.keniu.security.protection;

import android.content.Context;
import android.graphics.Bitmap;
import android.hardware.Camera;
import android.hardware.Camera.Parameters;
import android.hardware.Camera.PictureCallback;
import android.hardware.Camera.ShutterCallback;
import android.os.Build.VERSION;
import android.os.Handler;
import android.util.Log;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import android.view.SurfaceView;
import java.io.IOException;
import java.lang.reflect.Method;

public final class f extends SurfaceView
  implements SurfaceHolder.Callback
{
  private static final String a = "KnCameraPreview";
  private SurfaceHolder b;
  private Bitmap c;
  private Context d;
  private Handler e = new g(this);
  private Camera.ShutterCallback f = new h(this);
  private Camera.PictureCallback g = new i(this);
  private Camera.PictureCallback h = new j(this);

  f(Context paramContext, SurfaceHolder paramSurfaceHolder)
  {
    super(paramContext);
    this.d = paramContext;
    this.b = paramSurfaceHolder;
    this.b.addCallback(this);
    this.b.setType(3);
  }

  public static void a()
  {
    Log.d("KnCameraPreview", "stopCamera");
    Camera localCamera = e.a();
    if (localCamera != null);
    try
    {
      localCamera.stopPreview();
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  public static void b()
  {
    Log.d("KnCameraPreview", "initCamera");
    Camera localCamera = e.a();
    e.e();
    Camera.Parameters localParameters = localCamera.getParameters();
    if (localParameters != null)
    {
      localParameters.setPictureFormat(256);
      localCamera.setParameters(localParameters);
    }
    if (Build.VERSION.SDK_INT > 7);
    try
    {
      Class localClass = localCamera.getClass();
      Class[] arrayOfClass = new Class[1];
      arrayOfClass[0] = Integer.TYPE;
      Method localMethod = localClass.getMethod("setDisplayOrientation", arrayOfClass);
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(90);
      localMethod.invoke(localCamera, arrayOfObject);
      localCamera.startPreview();
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  public final void c()
  {
    Camera localCamera = e.a();
    if (localCamera != null)
    {
      if (this.c != null)
      {
        Log.d("KnCameraPreview", "cameraBitmap.recycle");
        this.c.recycle();
      }
      localCamera.takePicture(this.f, this.g, this.h);
    }
  }

  public final void surfaceChanged(SurfaceHolder paramSurfaceHolder, int paramInt1, int paramInt2, int paramInt3)
  {
    Log.d("KnCameraPreview", "surfaceChanged");
    b();
  }

  public final void surfaceCreated(SurfaceHolder paramSurfaceHolder)
  {
    Log.d("KnCameraPreview", "surfaceCreated");
    Camera localCamera = e.b();
    try
    {
      localCamera.setPreviewDisplay(paramSurfaceHolder);
      return;
    }
    catch (IOException localIOException)
    {
      while (true)
      {
        localIOException.printStackTrace();
        e.c();
      }
    }
  }

  public final void surfaceDestroyed(SurfaceHolder paramSurfaceHolder)
  {
    Log.d("KnCameraPreview", "surfaceDestroyed");
    a();
    e.c();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.protection.f
 * JD-Core Version:    0.6.2
 */