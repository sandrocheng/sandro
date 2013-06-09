package org.antivirus.antitheft;

import android.content.Context;
import android.os.Bundle;
import android.os.Message;
import org.antivirus.AVSettings;
import org.antivirus.core.a.q;
import org.antivirus.core.a.v;
import org.antivirus.core.telephony.AntennaInfo;

public class g extends v
{
  private double a;
  private double b;
  private double c;
  private double d;
  private double e;
  private double k;
  private long l;
  private long m;

  private static double a(double paramDouble)
  {
    if ((paramDouble < -90.0D) || (paramDouble > 90.0D))
      paramDouble = 0.0D;
    return paramDouble;
  }

  private static double b(double paramDouble)
  {
    if ((paramDouble < -180.0D) || (paramDouble > 180.0D))
      paramDouble = 0.0D;
    return paramDouble;
  }

  public final boolean a()
  {
    return false;
  }

  public final boolean a(Context paramContext)
  {
    String str = "";
    if (AVSettings.shouldSendLocation())
      str = AntennaInfo.getCellIdTower(paramContext);
    long l1 = System.currentTimeMillis();
    Object[] arrayOfObject = new Object[10];
    arrayOfObject[0] = Double.valueOf(a(this.b));
    arrayOfObject[1] = Double.valueOf(b(this.a));
    arrayOfObject[2] = Double.valueOf(this.e);
    arrayOfObject[3] = Long.valueOf(this.l);
    arrayOfObject[4] = Double.valueOf(a(this.d));
    arrayOfObject[5] = Double.valueOf(b(this.c));
    arrayOfObject[6] = Double.valueOf(this.k);
    arrayOfObject[7] = Long.valueOf(this.m);
    arrayOfObject[8] = str;
    arrayOfObject[9] = Long.valueOf(l1);
    this.f = arrayOfObject;
    return true;
  }

  public final boolean a(Context paramContext, Message paramMessage)
  {
    Bundle localBundle = (Bundle)paramMessage.obj;
    this.a = localBundle.getDouble("gpslng");
    this.a = localBundle.getDouble("gpslng");
    this.b = localBundle.getDouble("gpslat");
    this.c = localBundle.getDouble("netlng");
    this.d = localBundle.getDouble("netlat");
    this.e = localBundle.getDouble("gpsacc");
    this.l = localBundle.getLong("gpstim");
    this.k = localBundle.getDouble("netacc");
    this.m = localBundle.getLong("nettim");
    return true;
  }

  public final boolean a(Context paramContext, Object paramObject)
  {
    return true;
  }

  public final q b()
  {
    return q.c;
  }

  public final int c()
  {
    return 1034;
  }

  public final String d()
  {
    return "Location.update";
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.antitheft.g
 * JD-Core Version:    0.6.2
 */