package com.a.a;

import android.view.animation.Interpolator;
import java.util.ArrayList;
import java.util.Arrays;

class p
{
  int a;
  n b;
  n c;
  Interpolator d;
  ArrayList e;
  aj f;

  public p(n[] paramArrayOfn)
  {
    this.a = paramArrayOfn.length;
    this.e = new ArrayList();
    this.e.addAll(Arrays.asList(paramArrayOfn));
    this.b = ((n)this.e.get(0));
    this.c = ((n)this.e.get(-1 + this.a));
    this.d = this.c.d();
  }

  public static p a(float[] paramArrayOfFloat)
  {
    int i = 1;
    int j = paramArrayOfFloat.length;
    o[] arrayOfo = new o[Math.max(j, 2)];
    if (j == i)
    {
      arrayOfo[0] = ((o)n.a(0.0F));
      arrayOfo[i] = ((o)n.a(1.0F, paramArrayOfFloat[0]));
    }
    while (true)
    {
      return new l(arrayOfo);
      arrayOfo[0] = ((o)n.a(0.0F, paramArrayOfFloat[0]));
      while (i < j)
      {
        arrayOfo[i] = ((o)n.a(i / (j - 1), paramArrayOfFloat[i]));
        i++;
      }
    }
  }

  public Object a(float paramFloat)
  {
    Object localObject2;
    if (this.a == 2)
    {
      if (this.d != null)
        paramFloat = this.d.getInterpolation(paramFloat);
      localObject2 = this.f.a(paramFloat, this.b.b(), this.c.b());
    }
    while (true)
    {
      return localObject2;
      if (paramFloat <= 0.0F)
      {
        n localn3 = (n)this.e.get(1);
        Interpolator localInterpolator3 = localn3.d();
        if (localInterpolator3 != null)
          paramFloat = localInterpolator3.getInterpolation(paramFloat);
        float f5 = this.b.c();
        float f6 = (paramFloat - f5) / (localn3.c() - f5);
        localObject2 = this.f.a(f6, this.b.b(), localn3.b());
      }
      else if (paramFloat >= 1.0F)
      {
        n localn2 = (n)this.e.get(-2 + this.a);
        Interpolator localInterpolator2 = this.c.d();
        if (localInterpolator2 != null)
          paramFloat = localInterpolator2.getInterpolation(paramFloat);
        float f3 = localn2.c();
        float f4 = (paramFloat - f3) / (this.c.c() - f3);
        localObject2 = this.f.a(f4, localn2.b(), this.c.b());
      }
      else
      {
        Object localObject1 = this.b;
        int i = 1;
        while (true)
        {
          if (i >= this.a)
            break label361;
          n localn1 = (n)this.e.get(i);
          if (paramFloat < localn1.c())
          {
            Interpolator localInterpolator1 = localn1.d();
            if (localInterpolator1 != null)
              paramFloat = localInterpolator1.getInterpolation(paramFloat);
            float f1 = ((n)localObject1).c();
            float f2 = (paramFloat - f1) / (localn1.c() - f1);
            localObject2 = this.f.a(f2, ((n)localObject1).b(), localn1.b());
            break;
          }
          i++;
          localObject1 = localn1;
        }
        label361: localObject2 = this.c.b();
      }
    }
  }

  public void a(aj paramaj)
  {
    this.f = paramaj;
  }

  public p b()
  {
    ArrayList localArrayList = this.e;
    int i = this.e.size();
    n[] arrayOfn = new n[i];
    for (int j = 0; j < i; j++)
      arrayOfn[j] = ((n)localArrayList.get(j)).e();
    return new p(arrayOfn);
  }

  public String toString()
  {
    Object localObject = " ";
    int i = 0;
    while (i < this.a)
    {
      String str = (String)localObject + ((n)this.e.get(i)).b() + "  ";
      i++;
      localObject = str;
    }
    return localObject;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.a.a.p
 * JD-Core Version:    0.6.2
 */