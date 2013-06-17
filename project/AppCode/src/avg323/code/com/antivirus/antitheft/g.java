package com.antivirus.antitheft;

import android.content.Context;
import android.os.Bundle;
import android.os.Message;
import com.antivirus.c;
import com.antivirus.core.f.a;
import com.avg.toolkit.b.e;

public class g extends com.avg.toolkit.b.g
{
  private double a;
  private double b;
  private double c;
  private double d;
  private double e;
  private double j;
  private long k;
  private long l;

  private double a(double paramDouble)
  {
    if ((paramDouble < -90.0D) || (paramDouble > 90.0D))
      paramDouble = 0.0D;
    return paramDouble;
  }

  private double b(double paramDouble)
  {
    if ((paramDouble < -180.0D) || (paramDouble > 180.0D))
      paramDouble = 0.0D;
    return paramDouble;
  }

  public e a()
  {
    return e.c;
  }

  public boolean a(Context paramContext)
  {
    return false;
  }

  public boolean a(Context paramContext, Message paramMessage)
  {
    Bundle localBundle = (Bundle)paramMessage.obj;
    this.a = localBundle.getDouble("gpslng");
    this.a = localBundle.getDouble("gpslng");
    this.b = localBundle.getDouble("gpslat");
    this.c = localBundle.getDouble("netlng");
    this.d = localBundle.getDouble("netlat");
    this.e = localBundle.getDouble("gpsacc");
    this.k = localBundle.getLong("gpstim");
    this.j = localBundle.getDouble("netacc");
    this.l = localBundle.getLong("nettim");
    return true;
  }

  public boolean a(Context paramContext, Object paramObject)
  {
    return true;
  }

  public boolean b(Context paramContext)
  {
    String str = "";
    if (c.d())
      str = a.a(paramContext);
    long l1 = System.currentTimeMillis();
    Object[] arrayOfObject = new Object[10];
    arrayOfObject[0] = Double.valueOf(a(this.b));
    arrayOfObject[1] = Double.valueOf(b(this.a));
    arrayOfObject[2] = Double.valueOf(this.e);
    arrayOfObject[3] = Long.valueOf(this.k);
    arrayOfObject[4] = Double.valueOf(a(this.d));
    arrayOfObject[5] = Double.valueOf(b(this.c));
    arrayOfObject[6] = Double.valueOf(this.j);
    arrayOfObject[7] = Long.valueOf(this.l);
    arrayOfObject[8] = str;
    arrayOfObject[9] = Long.valueOf(l1);
    this.f = arrayOfObject;
    return true;
  }

  public int b_()
  {
    return 9005;
  }

  public String c()
  {
    return "Location.update";
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.antitheft.g
 * JD-Core Version:    0.6.2
 */