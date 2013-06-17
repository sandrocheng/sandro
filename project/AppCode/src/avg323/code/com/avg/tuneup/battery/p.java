package com.avg.tuneup.battery;

import android.content.Context;
import com.avg.a.g;

public class p
{
  private int a;
  private int b;
  private String c = "";
  private String d = "";
  private String e = "";
  private String f;
  private String g;
  private String h;
  private String i;
  private String j;
  private String k;

  public void a(Context paramContext, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.b = paramInt4;
    this.a = paramInt2;
    int m = (int)(3.8D * paramInt1 / 60.0D);
    int n = (int)(3.8D * paramInt1 % 60.0D);
    StringBuilder localStringBuilder1 = new StringBuilder().append(m).append(":");
    String str1;
    String str2;
    label142: String str3;
    label217: String str4;
    label292: String str5;
    label367: String str6;
    if (n < 10)
    {
      str1 = "0";
      this.g = (str1 + n);
      int i1 = (int)(2.3D * paramInt1 / 60.0D);
      int i2 = (int)(2.3D * paramInt1 % 60.0D);
      StringBuilder localStringBuilder2 = new StringBuilder().append(i1).append(":");
      if (i2 >= 10)
        break label611;
      str2 = "0";
      this.f = (str2 + i2);
      int i3 = (int)(6.0D * paramInt1 / 60.0D);
      int i4 = (int)(6.0D * paramInt1 % 60.0D);
      StringBuilder localStringBuilder3 = new StringBuilder().append(i3).append(":");
      if (i4 >= 10)
        break label618;
      str3 = "0";
      this.h = (str3 + i4);
      int i5 = (int)(3.0D * paramInt1 / 60.0D);
      int i6 = (int)(3.0D * paramInt1 % 60.0D);
      StringBuilder localStringBuilder4 = new StringBuilder().append(i5).append(":");
      if (i6 >= 10)
        break label625;
      str4 = "0";
      this.i = (str4 + i6);
      int i7 = (int)(5.7D * paramInt1 / 60.0D);
      int i8 = (int)(5.7D * paramInt1 % 60.0D);
      StringBuilder localStringBuilder5 = new StringBuilder().append(i7).append(":");
      if (i8 >= 10)
        break label632;
      str5 = "0";
      this.j = (str5 + i8);
      int i9 = (int)(180.0D * paramInt1 / 60.0D);
      int i10 = (int)(180.0D * paramInt1 % 60.0D);
      StringBuilder localStringBuilder6 = new StringBuilder().append(i9).append(":");
      if (i10 >= 10)
        break label639;
      str6 = "0";
      label442: this.k = (str6 + i10);
      double d1 = 32.0D + 1.8D * (paramInt2 / 10.0D);
      this.c = ((int)d1 + "°F | " + paramInt2 / 10 + "°C");
      switch (paramInt4)
      {
      default:
        this.d = paramContext.getString(g.unknown);
        switch (paramInt3)
        {
        default:
          label559: this.e = paramContext.getString(g.unknown);
        case 4:
        case 2:
        case 5:
        case 3:
        }
        break;
      case 2:
      case 3:
      case 5:
      case 4:
      }
    }
    while (true)
    {
      return;
      str1 = "";
      break;
      label611: str2 = "";
      break label142;
      label618: str3 = "";
      break label217;
      label625: str4 = "";
      break label292;
      label632: str5 = "";
      break label367;
      label639: str6 = "";
      break label442;
      this.d = paramContext.getString(g.battery_charging);
      break label559;
      this.d = paramContext.getString(g.battery_discharging);
      break label559;
      this.d = paramContext.getString(g.battery_full);
      break label559;
      this.d = paramContext.getString(g.battery_not_charging);
      break label559;
      this.e = paramContext.getString(g.battery_dead);
      continue;
      this.e = paramContext.getString(g.battery_good);
      continue;
      this.e = paramContext.getString(g.battery_overvoltage);
      continue;
      this.e = paramContext.getString(g.battery_overheat);
    }
  }

  public boolean a()
  {
    if (this.b == 2);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public String b()
  {
    return this.c;
  }

  public String c()
  {
    return this.f;
  }

  public String d()
  {
    return this.g;
  }

  public String e()
  {
    return this.h;
  }

  public String f()
  {
    return this.i;
  }

  public String g()
  {
    return this.j;
  }

  public String h()
  {
    return this.k;
  }

  public String i()
  {
    return this.d;
  }

  public String j()
  {
    return this.e;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.tuneup.battery.p
 * JD-Core Version:    0.6.2
 */