package com.avg.ui.license.qrreader.a;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Point;
import android.graphics.Rect;
import android.hardware.Camera;
import android.os.Handler;
import android.preference.PreferenceManager;
import android.view.SurfaceHolder;
import com.avg.ui.license.qrreader.general.o;
import java.io.IOException;

public final class c
{
  private static final String a = c.class.getSimpleName();
  private final Context b;
  private final b c;
  private Camera d;
  private Rect e;
  private Rect f;
  private boolean g;
  private boolean h;
  private boolean i;
  private int j;
  private int k;
  private final d l;
  private final a m;

  public c(Context paramContext)
  {
    this.b = paramContext;
    this.c = new b(paramContext);
    this.l = new d(this.c);
    this.m = new a();
  }

  public o a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    Rect localRect = e();
    if (localRect == null);
    for (o localo = null; ; localo = new o(paramArrayOfByte, paramInt1, paramInt2, localRect.left, localRect.top, localRect.width(), localRect.height(), this.i))
      return localo;
  }

  public void a()
  {
    if (this.d != null)
    {
      this.d.release();
      this.d = null;
      this.e = null;
      this.f = null;
    }
  }

  public void a(int paramInt1, int paramInt2)
  {
    if (this.g)
    {
      Point localPoint = this.c.b();
      if (paramInt1 > localPoint.x)
        paramInt1 = localPoint.x;
      if (paramInt2 > localPoint.y)
        paramInt2 = localPoint.y;
      int n = (localPoint.x - paramInt1) / 2;
      int i1 = (localPoint.y - paramInt2) / 2;
      this.e = new Rect(n, i1, n + paramInt1, i1 + paramInt2);
      this.f = null;
    }
    while (true)
    {
      return;
      this.j = paramInt1;
      this.k = paramInt2;
    }
  }

  public void a(Handler paramHandler, int paramInt)
  {
    Camera localCamera = this.d;
    if ((localCamera != null) && (this.h))
    {
      this.l.a(paramHandler, paramInt);
      localCamera.setOneShotPreviewCallback(this.l);
    }
  }

  public void a(SurfaceHolder paramSurfaceHolder)
  {
    Camera localCamera = this.d;
    if (localCamera == null)
    {
      localCamera = Camera.open();
      if (localCamera == null)
        throw new IOException();
      this.d = localCamera;
    }
    localCamera.setPreviewDisplay(paramSurfaceHolder);
    if (!this.g)
    {
      this.g = true;
      this.c.a(localCamera);
      if ((this.j > 0) && (this.k > 0))
      {
        a(this.j, this.k);
        this.j = 0;
        this.k = 0;
      }
    }
    this.c.b(localCamera);
    this.i = PreferenceManager.getDefaultSharedPreferences(this.b).getBoolean("preferences_reverse_image", false);
  }

  public void b()
  {
    Camera localCamera = this.d;
    if ((localCamera != null) && (!this.h))
    {
      localCamera.startPreview();
      this.h = true;
    }
  }

  public void b(Handler paramHandler, int paramInt)
  {
    if ((this.d != null) && (this.h))
      this.m.a(paramHandler, paramInt);
    try
    {
      this.d.autoFocus(this.m);
      return;
    }
    catch (RuntimeException localRuntimeException)
    {
      while (true)
        com.avg.toolkit.f.a.a(localRuntimeException);
    }
  }

  public void c()
  {
    if ((this.d != null) && (this.h))
    {
      this.d.stopPreview();
      this.l.a(null, 0);
      this.m.a(null, 0);
      this.h = false;
    }
  }

  public Rect d()
  {
    int n = 600;
    int i1 = 240;
    Rect localRect;
    Point localPoint;
    int i2;
    label54: int i3;
    if (this.e == null)
    {
      if (this.d == null)
      {
        localRect = null;
        return localRect;
      }
      localPoint = this.c.b();
      i2 = 3 * localPoint.x / 4;
      if (i2 >= i1)
        break label124;
      n = i1;
      i3 = 3 * localPoint.y / 4;
      if (i3 >= i1)
        break label136;
    }
    while (true)
    {
      int i4 = (localPoint.x - n) / 2;
      int i5 = (localPoint.y - i1) / 2;
      this.e = new Rect(i4, i5, n + i4, i1 + i5);
      localRect = this.e;
      break;
      label124: if (i2 > n)
        break label54;
      n = i2;
      break label54;
      label136: if (i3 > 400)
        i1 = 400;
      else
        i1 = i3;
    }
  }

  public Rect e()
  {
    Rect localRect2;
    if (this.f == null)
    {
      localRect2 = d();
      if (localRect2 != null);
    }
    for (Rect localRect1 = null; ; localRect1 = this.f)
    {
      return localRect1;
      Rect localRect3 = new Rect(localRect2);
      Point localPoint1 = this.c.a();
      Point localPoint2 = this.c.b();
      localRect3.left = (localRect3.left * localPoint1.x / localPoint2.x);
      localRect3.right = (localRect3.right * localPoint1.x / localPoint2.x);
      localRect3.top = (localRect3.top * localPoint1.y / localPoint2.y);
      localRect3.bottom = (localRect3.bottom * localPoint1.y / localPoint2.y);
      this.f = localRect3;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.ui.license.qrreader.a.c
 * JD-Core Version:    0.6.2
 */