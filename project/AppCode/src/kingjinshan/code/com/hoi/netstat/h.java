package com.hoi.netstat;

public final class h
  implements a
{
  public String a;
  public long b;
  public long c;

  public h(String paramString, long paramLong1, long paramLong2)
  {
    this.a = paramString;
    this.b = paramLong1;
    this.c = paramLong2;
  }

  public final String a()
  {
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = this.a;
    arrayOfObject[1] = Long.valueOf(this.b);
    arrayOfObject[2] = Long.valueOf(this.c);
    return String.format("%s:tx%d,rx%d", arrayOfObject);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.hoi.netstat.h
 * JD-Core Version:    0.6.2
 */