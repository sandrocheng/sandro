package com.antivirus.ui.callmessagefilter;

import android.graphics.Bitmap;

public abstract class d
{
  private String a;
  private String b;
  private String c;
  private x d;
  private long e;
  private String f;
  private boolean g;
  private Bitmap h;

  protected d(String paramString1, String paramString2, String paramString3, x paramx, long paramLong, String paramString4)
  {
    this.a = paramString1;
    this.b = paramString2;
    this.c = paramString3;
    this.d = paramx;
    this.e = paramLong;
    this.f = paramString4;
    if (paramString3 != null);
    for (boolean bool = true; ; bool = false)
    {
      this.g = bool;
      return;
    }
  }

  public String a()
  {
    return this.a;
  }

  public void a(Bitmap paramBitmap)
  {
    this.h = paramBitmap;
  }

  public void a(x paramx)
  {
    this.d = paramx;
  }

  public void a(boolean paramBoolean)
  {
    this.g = paramBoolean;
  }

  public String b()
  {
    return this.b;
  }

  public Bitmap c()
  {
    return this.h;
  }

  public x d()
  {
    return this.d;
  }

  public long e()
  {
    return this.e;
  }

  public String f()
  {
    return this.f;
  }

  public String g()
  {
    return this.c;
  }

  public boolean h()
  {
    return this.g;
  }

  public String toString()
  {
    return "CallMessageData{displayName='" + this.a + '\'' + ", date='" + this.b + '\'' + ", photoUri='" + this.c + '\'' + ", itemState=" + this.d + ", id=" + this.e + ", phoneNumber='" + this.f + '\'' + '}';
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.callmessagefilter.d
 * JD-Core Version:    0.6.2
 */