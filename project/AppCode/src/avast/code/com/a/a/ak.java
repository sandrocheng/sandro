package com.a.a;

import android.os.Looper;
import android.util.AndroidRuntimeException;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import java.util.ArrayList;
import java.util.HashMap;

public class ak extends a
{
  private static ThreadLocal h = new ThreadLocal();
  private static final ThreadLocal i = new al();
  private static final ThreadLocal j = new am();
  private static final ThreadLocal k = new an();
  private static final ThreadLocal l = new ao();
  private static final ThreadLocal m = new ap();
  private static final Interpolator n = new AccelerateDecelerateInterpolator();
  private static final aj o = new m();
  private static final aj p = new k();
  private static long z = 10L;
  private int A = 0;
  private int B = 1;
  private Interpolator C = n;
  private ArrayList D = null;
  long b;
  long c = -1L;
  int d = 0;
  boolean e = false;
  ag[] f;
  HashMap g;
  private boolean q = false;
  private int r = 0;
  private float s = 0.0F;
  private boolean t = false;
  private long u;
  private boolean v = false;
  private boolean w = false;
  private long x = 300L;
  private long y = 0L;

  private void a(boolean paramBoolean)
  {
    if (Looper.myLooper() == null)
      throw new AndroidRuntimeException("Animators may only be run on Looper threads");
    this.q = paramBoolean;
    this.r = 0;
    this.d = 0;
    this.w = true;
    this.t = false;
    ((ArrayList)j.get()).add(this);
    if (this.y == 0L)
    {
      c(g());
      this.d = 0;
      this.v = true;
      if (this.a != null)
      {
        ArrayList localArrayList = (ArrayList)this.a.clone();
        int i1 = localArrayList.size();
        for (int i2 = 0; i2 < i1; i2++)
          ((b)localArrayList.get(i2)).a(this);
      }
    }
    aq localaq = (aq)h.get();
    if (localaq == null)
    {
      localaq = new aq(null);
      h.set(localaq);
    }
    localaq.sendEmptyMessage(0);
  }

  private boolean a(long paramLong)
  {
    int i1 = 1;
    if (!this.t)
    {
      this.t = i1;
      this.u = paramLong;
      i1 = 0;
    }
    while (true)
    {
      return i1;
      long l1 = paramLong - this.u;
      if (l1 <= this.y)
        break;
      this.b = (paramLong - (l1 - this.y));
      this.d = i1;
    }
  }

  public static ak b(float[] paramArrayOfFloat)
  {
    ak localak = new ak();
    localak.a(paramArrayOfFloat);
    return localak;
  }

  private void e()
  {
    ((ArrayList)i.get()).remove(this);
    ((ArrayList)j.get()).remove(this);
    ((ArrayList)k.get()).remove(this);
    this.d = 0;
    if ((this.v) && (this.a != null))
    {
      ArrayList localArrayList = (ArrayList)this.a.clone();
      int i1 = localArrayList.size();
      for (int i2 = 0; i2 < i1; i2++)
        ((b)localArrayList.get(i2)).b(this);
    }
    this.v = false;
    this.w = false;
  }

  private void n()
  {
    d();
    ((ArrayList)i.get()).add(this);
    if ((this.y > 0L) && (this.a != null))
    {
      ArrayList localArrayList = (ArrayList)this.a.clone();
      int i1 = localArrayList.size();
      for (int i2 = 0; i2 < i1; i2++)
        ((b)localArrayList.get(i2)).a(this);
    }
  }

  public void a()
  {
    a(false);
  }

  void a(float paramFloat)
  {
    float f1 = this.C.getInterpolation(paramFloat);
    this.s = f1;
    int i1 = this.f.length;
    for (int i2 = 0; i2 < i1; i2++)
      this.f[i2].a(f1);
    if (this.D != null)
    {
      int i3 = this.D.size();
      for (int i4 = 0; i4 < i3; i4++)
        ((ar)this.D.get(i4)).a(this);
    }
  }

  public void a(Interpolator paramInterpolator)
  {
    if (paramInterpolator != null);
    for (this.C = paramInterpolator; ; this.C = new LinearInterpolator())
      return;
  }

  public void a(float[] paramArrayOfFloat)
  {
    if ((paramArrayOfFloat == null) || (paramArrayOfFloat.length == 0))
      return;
    if ((this.f == null) || (this.f.length == 0))
    {
      ag[] arrayOfag = new ag[1];
      arrayOfag[0] = ag.a("", paramArrayOfFloat);
      a(arrayOfag);
    }
    while (true)
    {
      this.e = false;
      break;
      this.f[0].a(paramArrayOfFloat);
    }
  }

  public void a(ag[] paramArrayOfag)
  {
    int i1 = paramArrayOfag.length;
    this.f = paramArrayOfag;
    this.g = new HashMap(i1);
    for (int i2 = 0; i2 < i1; i2++)
    {
      ag localag = paramArrayOfag[i2];
      this.g.put(localag.c(), localag);
    }
    this.e = false;
  }

  public ak b(long paramLong)
  {
    if (paramLong < 0L)
      throw new IllegalArgumentException("Animators cannot have negative duration: " + paramLong);
    this.x = paramLong;
    return this;
  }

  public void c(long paramLong)
  {
    d();
    long l1 = AnimationUtils.currentAnimationTimeMillis();
    if (this.d != 1)
    {
      this.c = paramLong;
      this.d = 2;
    }
    this.b = (l1 - paramLong);
    d(l1);
  }

  void d()
  {
    if (!this.e)
    {
      int i1 = this.f.length;
      for (int i2 = 0; i2 < i1; i2++)
        this.f[i2].b();
      this.e = true;
    }
  }

  boolean d(long paramLong)
  {
    if (this.d == 0)
    {
      this.d = 1;
      if (this.c >= 0L)
        break label59;
      this.b = paramLong;
    }
    boolean bool1;
    while (true)
    {
      int i1 = this.d;
      bool1 = false;
      switch (i1)
      {
      default:
        return bool1;
        label59: this.b = (paramLong - this.c);
        this.c = -1L;
      case 1:
      case 2:
      }
    }
    float f1;
    if (this.x > 0L)
      f1 = (float)(paramLong - this.b) / (float)this.x;
    boolean bool2;
    label203: float f2;
    while (true)
      if (f1 >= 1.0F)
        if ((this.r < this.A) || (this.A == -1))
        {
          if (this.a != null)
          {
            int i2 = this.a.size();
            int i3 = 0;
            while (true)
              if (i3 < i2)
              {
                ((b)this.a.get(i3)).c(this);
                i3++;
                continue;
                f1 = 1.0F;
                break;
              }
          }
          if (this.B == 2)
          {
            if (this.q)
            {
              bool2 = false;
              this.q = bool2;
            }
          }
          else
          {
            this.r += (int)f1;
            f2 = f1 % 1.0F;
            this.b += this.x;
          }
        }
    while (true)
    {
      if (this.q)
        f2 = 1.0F - f2;
      a(f2);
      break;
      bool2 = true;
      break label203;
      f2 = Math.min(f1, 1.0F);
      bool1 = true;
      continue;
      f2 = f1;
      bool1 = false;
    }
  }

  public ak f()
  {
    int i1 = 0;
    ak localak = (ak)super.c();
    if (this.D != null)
    {
      ArrayList localArrayList = this.D;
      localak.D = new ArrayList();
      int i3 = localArrayList.size();
      for (int i4 = 0; i4 < i3; i4++)
        localak.D.add(localArrayList.get(i4));
    }
    localak.c = -1L;
    localak.q = false;
    localak.r = 0;
    localak.e = false;
    localak.d = 0;
    localak.t = false;
    ag[] arrayOfag = this.f;
    if (arrayOfag != null)
    {
      int i2 = arrayOfag.length;
      localak.f = new ag[i2];
      localak.g = new HashMap(i2);
      while (i1 < i2)
      {
        ag localag = arrayOfag[i1].a();
        localak.f[i1] = localag;
        localak.g.put(localag.c(), localag);
        i1++;
      }
    }
    return localak;
  }

  public long g()
  {
    if ((!this.e) || (this.d == 0));
    for (long l1 = 0L; ; l1 = AnimationUtils.currentAnimationTimeMillis() - this.b)
      return l1;
  }

  public String toString()
  {
    String str = "ValueAnimator@" + Integer.toHexString(hashCode());
    if (this.f != null)
      for (int i1 = 0; i1 < this.f.length; i1++)
        str = str + "\n    " + this.f[i1].toString();
    return str;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.a.a.ak
 * JD-Core Version:    0.6.2
 */