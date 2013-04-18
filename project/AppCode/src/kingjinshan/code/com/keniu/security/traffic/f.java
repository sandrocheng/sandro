package com.keniu.security.traffic;

import android.content.pm.ApplicationInfo;
import android.graphics.drawable.Drawable;

public final class f
{
  int a;
  String[] b;
  boolean c;
  boolean d;
  boolean e = false;
  String f;
  ApplicationInfo g;
  Drawable h;
  boolean i;
  boolean j;
  boolean k = false;
  boolean l = false;
  double m;

  public f()
  {
  }

  private f(int paramInt, String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    this.a = paramInt;
    this.b = new String[] { paramString };
    this.c = paramBoolean1;
    this.d = paramBoolean2;
    this.m = 0.0D;
  }

  public final String toString()
  {
    if (this.f == null)
    {
      StringBuilder localStringBuilder = new StringBuilder();
      localStringBuilder.append(this.b[0]);
      localStringBuilder.append("\n");
      this.f = localStringBuilder.toString();
    }
    return this.f;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.f
 * JD-Core Version:    0.6.2
 */