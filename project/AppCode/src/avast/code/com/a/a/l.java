package com.a.a;

import android.view.animation.Interpolator;
import java.util.ArrayList;

class l extends p
{
  private float g;
  private float h;
  private float i;
  private boolean j = true;

  public l(o[] paramArrayOfo)
  {
    super(paramArrayOfo);
  }

  public l a()
  {
    ArrayList localArrayList = this.e;
    int k = this.e.size();
    o[] arrayOfo = new o[k];
    for (int m = 0; m < k; m++)
      arrayOfo[m] = ((o)((n)localArrayList.get(m)).e());
    return new l(arrayOfo);
  }

  public Object a(float paramFloat)
  {
    return Float.valueOf(b(paramFloat));
  }

  public float b(float paramFloat)
  {
    int k = 1;
    float f1;
    if (this.a == 2)
    {
      if (this.j)
      {
        this.j = false;
        this.g = ((o)this.e.get(0)).f();
        this.h = ((o)this.e.get(k)).f();
        this.i = (this.h - this.g);
      }
      if (this.d != null)
        paramFloat = this.d.getInterpolation(paramFloat);
      if (this.f == null)
        f1 = this.g + paramFloat * this.i;
    }
    while (true)
    {
      return f1;
      f1 = ((Number)this.f.a(paramFloat, Float.valueOf(this.g), Float.valueOf(this.h))).floatValue();
      continue;
      if (paramFloat <= 0.0F)
      {
        o localo4 = (o)this.e.get(0);
        o localo5 = (o)this.e.get(k);
        float f10 = localo4.f();
        float f11 = localo5.f();
        float f12 = localo4.c();
        float f13 = localo5.c();
        Interpolator localInterpolator3 = localo5.d();
        if (localInterpolator3 != null)
          paramFloat = localInterpolator3.getInterpolation(paramFloat);
        float f14 = (paramFloat - f12) / (f13 - f12);
        if (this.f == null)
          f1 = f10 + f14 * (f11 - f10);
        else
          f1 = ((Number)this.f.a(f14, Float.valueOf(f10), Float.valueOf(f11))).floatValue();
      }
      else if (paramFloat >= 1.0F)
      {
        o localo2 = (o)this.e.get(-2 + this.a);
        o localo3 = (o)this.e.get(-1 + this.a);
        float f5 = localo2.f();
        float f6 = localo3.f();
        float f7 = localo2.c();
        float f8 = localo3.c();
        Interpolator localInterpolator2 = localo3.d();
        if (localInterpolator2 != null)
          paramFloat = localInterpolator2.getInterpolation(paramFloat);
        float f9 = (paramFloat - f7) / (f8 - f7);
        if (this.f == null)
          f1 = f5 + f9 * (f6 - f5);
        else
          f1 = ((Number)this.f.a(f9, Float.valueOf(f5), Float.valueOf(f6))).floatValue();
      }
      else
      {
        o localo1;
        for (Object localObject = (o)this.e.get(0); ; localObject = localo1)
        {
          if (k >= this.a)
            break label614;
          localo1 = (o)this.e.get(k);
          if (paramFloat < localo1.c())
          {
            Interpolator localInterpolator1 = localo1.d();
            if (localInterpolator1 != null)
              paramFloat = localInterpolator1.getInterpolation(paramFloat);
            float f2 = (paramFloat - ((o)localObject).c()) / (localo1.c() - ((o)localObject).c());
            float f3 = ((o)localObject).f();
            float f4 = localo1.f();
            if (this.f == null)
            {
              f1 = f3 + f2 * (f4 - f3);
              break;
            }
            f1 = ((Number)this.f.a(f2, Float.valueOf(f3), Float.valueOf(f4))).floatValue();
            break;
          }
          k++;
        }
        label614: f1 = ((Number)((n)this.e.get(-1 + this.a)).b()).floatValue();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.a.a.l
 * JD-Core Version:    0.6.2
 */