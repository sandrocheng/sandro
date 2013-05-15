package com.a.a;

import android.view.animation.Interpolator;

public abstract class n
  implements Cloneable
{
  float a;
  Class b;
  boolean c = false;
  private Interpolator d = null;

  public static n a(float paramFloat)
  {
    return new o(paramFloat);
  }

  public static n a(float paramFloat1, float paramFloat2)
  {
    return new o(paramFloat1, paramFloat2);
  }

  public void a(Interpolator paramInterpolator)
  {
    this.d = paramInterpolator;
  }

  public abstract void a(Object paramObject);

  public boolean a()
  {
    return this.c;
  }

  public abstract Object b();

  public float c()
  {
    return this.a;
  }

  public Interpolator d()
  {
    return this.d;
  }

  public abstract n e();
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.a.a.n
 * JD-Core Version:    0.6.2
 */