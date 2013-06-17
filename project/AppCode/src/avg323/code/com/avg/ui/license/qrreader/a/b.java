package com.avg.ui.license.qrreader.a;

import android.content.Context;
import android.content.SharedPreferences;
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

final class b
{
  private final Context a;
  private Point b;
  private Point c;

  b(Context paramContext)
  {
    this.a = paramContext;
  }

  private static Point a(Camera.Parameters paramParameters, Point paramPoint, boolean paramBoolean)
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

  private static String a(Collection paramCollection, String[] paramArrayOfString)
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

  private static void a(Camera.Parameters paramParameters, SharedPreferences paramSharedPreferences)
  {
    a(paramParameters, paramSharedPreferences.getBoolean("preferences_front_light", false));
  }

  private static void a(Camera.Parameters paramParameters, boolean paramBoolean)
  {
    if (paramBoolean);
    for (String str = a(paramParameters.getSupportedFlashModes(), new String[] { "torch", "on" }); ; str = a(paramParameters.getSupportedFlashModes(), new String[] { "off" }))
    {
      if (str != null)
        paramParameters.setFlashMode(str);
      return;
    }
  }

  Point a()
  {
    return this.c;
  }

  void a(Camera paramCamera)
  {
    Camera.Parameters localParameters = paramCamera.getParameters();
    Display localDisplay = ((WindowManager)this.a.getSystemService("window")).getDefaultDisplay();
    int i = localDisplay.getWidth();
    int j = localDisplay.getHeight();
    if (i < j);
    while (true)
    {
      this.b = new Point(j, i);
      this.c = a(localParameters, this.b, false);
      return;
      int k = j;
      j = i;
      i = k;
    }
  }

  Point b()
  {
    return this.b;
  }

  void b(Camera paramCamera)
  {
    Camera.Parameters localParameters = paramCamera.getParameters();
    if (localParameters == null);
    while (true)
    {
      return;
      a(localParameters, PreferenceManager.getDefaultSharedPreferences(this.a));
      String str = a(localParameters.getSupportedFocusModes(), new String[] { "auto", "macro" });
      if (str != null)
        localParameters.setFocusMode(str);
      localParameters.setPreviewSize(this.c.x, this.c.y);
      paramCamera.setParameters(localParameters);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.ui.license.qrreader.a.b
 * JD-Core Version:    0.6.2
 */