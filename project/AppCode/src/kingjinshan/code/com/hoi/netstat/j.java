package com.hoi.netstat;

public final class j
  implements a
{
  public String a;
  public k b = new k(this);
  public l c = new l(this);

  public final String a()
  {
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = this.a;
    arrayOfObject[1] = Integer.valueOf(this.c.a);
    arrayOfObject[2] = Integer.valueOf(this.b.a);
    return String.format("%s:tx%d,rx%d", arrayOfObject);
  }

  public final void a(String paramString)
  {
    String[] arrayOfString = paramString.trim().split("[\\s:]+");
    this.a = arrayOfString[0];
    this.b.a = Integer.parseInt(arrayOfString[1]);
    this.b.b = Integer.parseInt(arrayOfString[2]);
    this.b.c = Integer.parseInt(arrayOfString[3]);
    this.b.d = Integer.parseInt(arrayOfString[4]);
    this.b.e = Integer.parseInt(arrayOfString[5]);
    this.b.f = Integer.parseInt(arrayOfString[6]);
    this.b.g = Integer.parseInt(arrayOfString[7]);
    this.b.h = Integer.parseInt(arrayOfString[8]);
    this.c.a = Integer.parseInt(arrayOfString[9]);
    this.c.b = Integer.parseInt(arrayOfString[10]);
    this.c.c = Integer.parseInt(arrayOfString[11]);
    this.c.d = Integer.parseInt(arrayOfString[12]);
    this.c.e = Integer.parseInt(arrayOfString[13]);
    this.c.f = Integer.parseInt(arrayOfString[14]);
    this.c.g = Integer.parseInt(arrayOfString[15]);
    this.c.h = Integer.parseInt(arrayOfString[16]);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.hoi.netstat.j
 * JD-Core Version:    0.6.2
 */