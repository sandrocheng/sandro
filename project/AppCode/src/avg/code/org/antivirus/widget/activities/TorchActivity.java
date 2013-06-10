package org.antivirus.widget.activities;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.hardware.Camera;
import android.hardware.Camera.Parameters;
import android.os.Bundle;
import android.view.SurfaceHolder;
import android.view.SurfaceHolder.Callback;
import android.view.SurfaceView;
import android.view.Window;
import java.io.IOException;
import org.antivirus.AVSettings;
import org.antivirus.core.Logger;
import org.antivirus.ganalytics.a;
import org.antivirus.ui.main.ActivationActivity;
import org.antivirus.widget.a.i;
import org.antivirus.widget.a.k;

public class TorchActivity extends Activity
  implements SurfaceHolder.Callback
{
  private static Camera a;
  private static Context b;
  private static Camera.Parameters c;

  private static Camera a()
  {
    if (a == null);
    try
    {
      a = Camera.open();
      return a;
    }
    catch (RuntimeException localRuntimeException)
    {
      while (true)
      {
        a.release();
        a = null;
      }
    }
  }

  private static Camera.Parameters b()
  {
    if (c == null)
      c = a.getParameters();
    return c;
  }

  private void c()
  {
    AVSettings.setFlashLightOn(false);
    k.a(this).a(null, i.j.a());
    finish();
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (1 == paramInt1)
      if (paramInt2 == 0)
        c();
    while (true)
    {
      super.onActivityResult(paramInt1, paramInt2, paramIntent);
      return;
      if ((2 == paramInt1) && (-1 == paramInt2))
        c();
    }
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    b = this;
    getWindow().addFlags(128);
    setContentView(2130903063);
    ((SurfaceView)findViewById(2131230869)).getHolder().addCallback(this);
    if (AVSettings.shouldShowActivationScreen());
    try
    {
      startActivityForResult(new Intent(this, ActivationActivity.class), 1);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        Logger.log(localException);
    }
  }

  protected void onDestroy()
  {
    if (a != null)
      a.a(this, "widget", "widget_flashlight_closed", null);
    try
    {
      if (a != null)
      {
        Camera.Parameters localParameters = b();
        localParameters.setFlashMode("off");
        a().setParameters(localParameters);
      }
      label38: a.stopPreview();
      a.release();
      a = null;
      super.onDestroy();
      return;
    }
    catch (Exception localException)
    {
      break label38;
    }
  }

  public void surfaceChanged(SurfaceHolder paramSurfaceHolder, int paramInt1, int paramInt2, int paramInt3)
  {
    a.startPreview();
    Camera.Parameters localParameters = b();
    if (!"torch".equals(localParameters.getFlashMode()))
    {
      localParameters.setFlashMode("torch");
      a.setParameters(localParameters);
    }
  }

  public void surfaceCreated(SurfaceHolder paramSurfaceHolder)
  {
    a();
    try
    {
      a.setPreviewDisplay(paramSurfaceHolder);
      return;
    }
    catch (IOException localIOException)
    {
      while (true)
        localIOException.printStackTrace();
    }
  }

  public void surfaceDestroyed(SurfaceHolder paramSurfaceHolder)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.widget.activities.TorchActivity
 * JD-Core Version:    0.6.2
 */