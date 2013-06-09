package org.antivirus.license.qrreader.camera;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.graphics.Point;
import android.hardware.Camera;
import android.hardware.Camera.Parameters;
import android.hardware.Camera.Size;
import android.preference.PreferenceManager;
import android.view.Display;
import android.view.WindowManager;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

final class CameraConfigurationManager
{
  private static final int MAX_PREVIEW_PIXELS = 384000;
  private static final int MIN_PREVIEW_PIXELS = 76800;
  private static final String TAG = "CameraConfiguration";
  private Point cameraResolution;
  private final Context context;
  private Point screenResolution;

  CameraConfigurationManager(Context paramContext)
  {
    this.context = paramContext;
  }

  private static void doSetTorch(Camera.Parameters paramParameters, boolean paramBoolean)
  {
    if (paramBoolean);
    for (String str = findSettableValue(paramParameters.getSupportedFlashModes(), new String[] { "torch", "on" }); ; str = findSettableValue(paramParameters.getSupportedFlashModes(), new String[] { "off" }))
    {
      if (str != null)
        paramParameters.setFlashMode(str);
      return;
    }
  }

  private static Point findBestPreviewSizeValue(Camera.Parameters paramParameters, Point paramPoint, boolean paramBoolean)
  {
    Object localObject1 = null;
    int i = 2147483647;
    Iterator localIterator = paramParameters.getSupportedPreviewSizes().iterator();
    Camera.Size localSize2;
    int k;
    label77: int m;
    label88: int n;
    while (true)
      if (localIterator.hasNext())
      {
        localSize2 = (Camera.Size)localIterator.next();
        int j = localSize2.height * localSize2.width;
        if ((j >= 76800) && (j <= 384000))
          if (paramBoolean)
          {
            k = localSize2.height;
            if (!paramBoolean)
              break label169;
            m = localSize2.width;
            n = Math.abs(m * paramPoint.x - k * paramPoint.y);
            if (n != 0)
              break label179;
          }
      }
    for (Object localObject2 = new Point(k, m); ; localObject2 = localObject1)
    {
      if (localObject2 == null)
      {
        Camera.Size localSize1 = paramParameters.getPreviewSize();
        localObject2 = new Point(localSize1.width, localSize1.height);
      }
      return localObject2;
      k = localSize2.width;
      break label77;
      label169: m = localSize2.height;
      break label88;
      label179: if (n < i);
      for (Object localObject3 = new Point(k, m); ; localObject3 = localObject1)
      {
        localObject1 = localObject3;
        i = n;
        break;
        n = i;
      }
    }
  }

  private static String findSettableValue(Collection paramCollection, String[] paramArrayOfString)
  {
    int j;
    String str;
    if (paramCollection != null)
    {
      int i = paramArrayOfString.length;
      j = 0;
      if (j < i)
      {
        str = paramArrayOfString[j];
        if (!paramCollection.contains(str));
      }
    }
    while (true)
    {
      return str;
      j++;
      break;
      str = null;
    }
  }

  private static void initializeTorch(Camera.Parameters paramParameters, SharedPreferences paramSharedPreferences)
  {
    doSetTorch(paramParameters, paramSharedPreferences.getBoolean("preferences_front_light", false));
  }

  final Point getCameraResolution()
  {
    return this.cameraResolution;
  }

  final Point getScreenResolution()
  {
    return this.screenResolution;
  }

  final void initFromCameraParameters(Camera paramCamera)
  {
    Camera.Parameters localParameters = paramCamera.getParameters();
    Display localDisplay = ((WindowManager)this.context.getSystemService("window")).getDefaultDisplay();
    int i = localDisplay.getWidth();
    int j = localDisplay.getHeight();
    if (i < j);
    while (true)
    {
      this.screenResolution = new Point(j, i);
      this.cameraResolution = findBestPreviewSizeValue(localParameters, this.screenResolution, false);
      return;
      int k = i;
      i = j;
      j = k;
    }
  }

  final void setDesiredCameraParameters(Camera paramCamera)
  {
    Camera.Parameters localParameters = paramCamera.getParameters();
    if (localParameters == null);
    while (true)
    {
      return;
      initializeTorch(localParameters, PreferenceManager.getDefaultSharedPreferences(this.context));
      String str = findSettableValue(localParameters.getSupportedFocusModes(), new String[] { "auto", "macro" });
      if (str != null)
        localParameters.setFocusMode(str);
      localParameters.setPreviewSize(this.cameraResolution.x, this.cameraResolution.y);
      paramCamera.setParameters(localParameters);
    }
  }

  final void setTorch(Camera paramCamera, boolean paramBoolean)
  {
    Camera.Parameters localParameters = paramCamera.getParameters();
    doSetTorch(localParameters, paramBoolean);
    paramCamera.setParameters(localParameters);
    SharedPreferences localSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this.context);
    if (localSharedPreferences.getBoolean("preferences_front_light", false) != paramBoolean)
    {
      SharedPreferences.Editor localEditor = localSharedPreferences.edit();
      localEditor.putBoolean("preferences_front_light", paramBoolean);
      localEditor.commit();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.license.qrreader.camera.CameraConfigurationManager
 * JD-Core Version:    0.6.2
 */