package com.b.a;

import java.util.List;

public final class dv
{
  private final cj a;
  private final dw[] b;

  public dv(cj paramcj, String[] paramArrayOfString, Class paramClass1, Class paramClass2)
  {
    this.a = paramcj;
    this.b = new dw[paramcj.e().size()];
    int i = 0;
    if (i < this.b.length)
    {
      cq localcq = (cq)paramcj.e().get(i);
      if (localcq.m())
        if (localcq.f() == cr.i)
          this.b[i] = new dz(paramArrayOfString[i], paramClass1, paramClass2);
      while (true)
      {
        i++;
        break;
        if (localcq.f() == cr.h)
        {
          this.b[i] = new dx(paramArrayOfString[i], paramClass1, paramClass2);
        }
        else
        {
          this.b[i] = new dy(paramArrayOfString[i], paramClass1, paramClass2);
          continue;
          if (localcq.f() == cr.i)
            this.b[i] = new ec(paramArrayOfString[i], paramClass1, paramClass2);
          else if (localcq.f() == cr.h)
            this.b[i] = new ea(paramArrayOfString[i], paramClass1, paramClass2);
          else
            this.b[i] = new eb(paramArrayOfString[i], paramClass1, paramClass2);
        }
      }
    }
  }

  private dw a(cq paramcq)
  {
    if (paramcq.r() != this.a)
      throw new IllegalArgumentException("FieldDescriptor does not match message type.");
    if (paramcq.q())
      throw new IllegalArgumentException("This type does not have extensions.");
    return this.b[paramcq.d()];
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.dv
 * JD-Core Version:    0.6.2
 */