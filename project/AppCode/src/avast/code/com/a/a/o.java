package com.a.a;

class o extends n
{
  float d;

  o(float paramFloat)
  {
    this.a = paramFloat;
    this.b = Float.TYPE;
  }

  o(float paramFloat1, float paramFloat2)
  {
    this.a = paramFloat1;
    this.d = paramFloat2;
    this.b = Float.TYPE;
    this.c = true;
  }

  public void a(Object paramObject)
  {
    if ((paramObject != null) && (paramObject.getClass() == Float.class))
    {
      this.d = ((Float)paramObject).floatValue();
      this.c = true;
    }
  }

  public Object b()
  {
    return Float.valueOf(this.d);
  }

  public float f()
  {
    return this.d;
  }

  public o g()
  {
    o localo = new o(c(), this.d);
    localo.a(d());
    return localo;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.a.a.o
 * JD-Core Version:    0.6.2
 */