package com.a.a;

import android.view.View;
import com.a.b.c;
import com.a.c.a.a;
import java.util.HashMap;
import java.util.Map;

public final class q extends ak
{
  private static final Map h = new HashMap();
  private Object i;
  private String j;
  private c k;

  static
  {
    h.put("alpha", r.a);
    h.put("pivotX", r.b);
    h.put("pivotY", r.c);
    h.put("translationX", r.d);
    h.put("translationY", r.e);
    h.put("rotation", r.f);
    h.put("rotationX", r.g);
    h.put("rotationY", r.h);
    h.put("scaleX", r.i);
    h.put("scaleY", r.j);
    h.put("scrollX", r.k);
    h.put("scrollY", r.l);
    h.put("x", r.m);
    h.put("y", r.n);
  }

  public q()
  {
  }

  private q(Object paramObject, String paramString)
  {
    this.i = paramObject;
    a(paramString);
  }

  public static q a(Object paramObject, String paramString, float[] paramArrayOfFloat)
  {
    q localq = new q(paramObject, paramString);
    localq.a(paramArrayOfFloat);
    return localq;
  }

  public q a(long paramLong)
  {
    super.b(paramLong);
    return this;
  }

  public void a()
  {
    super.a();
  }

  void a(float paramFloat)
  {
    super.a(paramFloat);
    int m = this.f.length;
    for (int n = 0; n < m; n++)
      this.f[n].b(this.i);
  }

  public void a(c paramc)
  {
    if (this.f != null)
    {
      ag localag = this.f[0];
      String str = localag.c();
      localag.a(paramc);
      this.g.remove(str);
      this.g.put(this.j, localag);
    }
    if (this.k != null)
      this.j = paramc.a();
    this.k = paramc;
    this.e = false;
  }

  public void a(String paramString)
  {
    if (this.f != null)
    {
      ag localag = this.f[0];
      String str = localag.c();
      localag.a(paramString);
      this.g.remove(str);
      this.g.put(paramString, localag);
    }
    this.j = paramString;
    this.e = false;
  }

  public void a(float[] paramArrayOfFloat)
  {
    if ((this.f == null) || (this.f.length == 0))
      if (this.k != null)
      {
        ag[] arrayOfag2 = new ag[1];
        arrayOfag2[0] = ag.a(this.k, paramArrayOfFloat);
        a(arrayOfag2);
      }
    while (true)
    {
      return;
      ag[] arrayOfag1 = new ag[1];
      arrayOfag1[0] = ag.a(this.j, paramArrayOfFloat);
      a(arrayOfag1);
      continue;
      super.a(paramArrayOfFloat);
    }
  }

  void d()
  {
    if (!this.e)
    {
      if ((this.k == null) && (a.a) && ((this.i instanceof View)) && (h.containsKey(this.j)))
        a((c)h.get(this.j));
      int m = this.f.length;
      for (int n = 0; n < m; n++)
        this.f[n].a(this.i);
      super.d();
    }
  }

  public q e()
  {
    return (q)super.f();
  }

  public String toString()
  {
    String str = "ObjectAnimator@" + Integer.toHexString(hashCode()) + ", target " + this.i;
    if (this.f != null)
      for (int m = 0; m < this.f.length; m++)
        str = str + "\n    " + this.f[m].toString();
    return str;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.a.a.q
 * JD-Core Version:    0.6.2
 */