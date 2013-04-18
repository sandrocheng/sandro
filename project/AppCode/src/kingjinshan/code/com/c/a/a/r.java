package com.c.a.a;

import android.content.Context;
import android.location.GpsStatus.Listener;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;

final class r
  implements GpsStatus.Listener, LocationListener
{
  private static r f = null;
  private LocationManager a;
  private boolean b = false;
  private boolean c = false;
  private volatile Location d = null;
  private Context e;

  static
  {
    new String[] { "gps", "network" };
  }

  private r(Context paramContext)
  {
    try
    {
      this.a = ((LocationManager)paramContext.getSystemService("location"));
      label32: return;
    }
    catch (Exception localException)
    {
      break label32;
    }
  }

  public static r a(Context paramContext)
  {
    try
    {
      if (f == null)
        f = new r(paramContext);
      f.e = paramContext;
      r localr = f;
      return localr;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void a()
  {
    this.a.addGpsStatusListener(this);
  }

  final boolean b()
  {
    return this.b;
  }

  final boolean c()
  {
    if ((!this.c) && (this.b));
    try
    {
      if (this.a.isProviderEnabled("gps"))
      {
        this.c = true;
        this.a.requestLocationUpdates("gps", 0L, 0.0F, this);
      }
      label43: return this.c;
    }
    catch (Exception localException)
    {
      break label43;
    }
  }

  public final void d()
  {
    this.a.removeGpsStatusListener(this);
    this.c = false;
    this.b = false;
    this.a.removeUpdates(this);
  }

  public final void onGpsStatusChanged(int paramInt)
  {
    switch (paramInt)
    {
    case 1:
    default:
    case 2:
    case 3:
    }
    while (true)
    {
      return;
      this.b = false;
      continue;
      this.b = true;
    }
  }

  // ERROR //
  public final void onLocationChanged(Location paramLocation)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: ifnull +142 -> 145
    //   6: aload_0
    //   7: getfield 41	com/c/a/a/r:d	Landroid/location/Location;
    //   10: ifnonnull +156 -> 166
    //   13: aload_0
    //   14: new 85	android/location/Location
    //   17: dup
    //   18: aload_1
    //   19: invokespecial 87	android/location/Location:<init>	(Landroid/location/Location;)V
    //   22: putfield 41	com/c/a/a/r:d	Landroid/location/Location;
    //   25: ldc2_w 88
    //   28: aload_0
    //   29: getfield 41	com/c/a/a/r:d	Landroid/location/Location;
    //   32: invokevirtual 93	android/location/Location:getLongitude	()D
    //   35: dmul
    //   36: d2i
    //   37: putstatic 98	com/c/a/a/s:c	I
    //   40: ldc2_w 88
    //   43: aload_0
    //   44: getfield 41	com/c/a/a/r:d	Landroid/location/Location;
    //   47: invokevirtual 101	android/location/Location:getLatitude	()D
    //   50: dmul
    //   51: d2i
    //   52: putstatic 103	com/c/a/a/s:d	I
    //   55: aload_0
    //   56: getfield 41	com/c/a/a/r:d	Landroid/location/Location;
    //   59: invokevirtual 107	android/location/Location:getAccuracy	()F
    //   62: f2i
    //   63: putstatic 109	com/c/a/a/s:e	I
    //   66: invokestatic 115	android/os/SystemClock:elapsedRealtime	()J
    //   69: putstatic 119	com/c/a/a/s:g	J
    //   72: aload_0
    //   73: getfield 41	com/c/a/a/r:d	Landroid/location/Location;
    //   76: invokevirtual 122	android/location/Location:getBearing	()F
    //   79: f2i
    //   80: putstatic 125	com/c/a/a/s:h	I
    //   83: aload_0
    //   84: getfield 41	com/c/a/a/r:d	Landroid/location/Location;
    //   87: invokevirtual 128	android/location/Location:getSpeed	()F
    //   90: f2i
    //   91: putstatic 131	com/c/a/a/s:i	I
    //   94: aload_0
    //   95: getfield 41	com/c/a/a/r:d	Landroid/location/Location;
    //   98: invokevirtual 134	android/location/Location:getAltitude	()D
    //   101: d2i
    //   102: putstatic 137	com/c/a/a/s:j	I
    //   105: ldc 25
    //   107: aload_0
    //   108: getfield 41	com/c/a/a/r:d	Landroid/location/Location;
    //   111: invokevirtual 141	android/location/Location:getProvider	()Ljava/lang/String;
    //   114: invokevirtual 144	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   117: ifeq +65 -> 182
    //   120: ldc 146
    //   122: putstatic 149	com/c/a/a/s:f	Ljava/lang/String;
    //   125: aload_0
    //   126: getfield 39	com/c/a/a/r:c	Z
    //   129: ifeq +16 -> 145
    //   132: aload_0
    //   133: iconst_0
    //   134: putfield 39	com/c/a/a/r:c	Z
    //   137: aload_0
    //   138: getfield 53	com/c/a/a/r:a	Landroid/location/LocationManager;
    //   141: aload_0
    //   142: invokevirtual 79	android/location/LocationManager:removeUpdates	(Landroid/location/LocationListener;)V
    //   145: aload_0
    //   146: monitorenter
    //   147: aload_0
    //   148: invokevirtual 152	java/lang/Object:notifyAll	()V
    //   151: aload_0
    //   152: monitorexit
    //   153: aload_0
    //   154: getfield 58	com/c/a/a/r:e	Landroid/content/Context;
    //   157: invokestatic 154	com/c/a/a/s:a	()Ljava/lang/String;
    //   160: invokestatic 157	com/c/a/a/s:a	(Landroid/content/Context;Ljava/lang/String;)V
    //   163: aload_0
    //   164: monitorexit
    //   165: return
    //   166: aload_0
    //   167: getfield 41	com/c/a/a/r:d	Landroid/location/Location;
    //   170: aload_1
    //   171: invokevirtual 160	android/location/Location:set	(Landroid/location/Location;)V
    //   174: goto -149 -> 25
    //   177: astore_2
    //   178: aload_0
    //   179: monitorexit
    //   180: aload_2
    //   181: athrow
    //   182: ldc 162
    //   184: putstatic 149	com/c/a/a/s:f	Ljava/lang/String;
    //   187: goto -42 -> 145
    //   190: astore 4
    //   192: new 164	java/lang/StringBuilder
    //   195: dup
    //   196: invokespecial 165	java/lang/StringBuilder:<init>	()V
    //   199: ldc 167
    //   201: invokevirtual 171	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   204: aload 4
    //   206: invokevirtual 174	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   209: invokevirtual 171	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   212: invokevirtual 177	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   215: pop
    //   216: invokestatic 181	com/c/a/a/p:a	()V
    //   219: goto -68 -> 151
    //   222: astore_3
    //   223: aload_0
    //   224: monitorexit
    //   225: aload_3
    //   226: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   6	147	177	finally
    //   153	163	177	finally
    //   166	174	177	finally
    //   182	187	177	finally
    //   223	227	177	finally
    //   147	151	190	java/lang/Exception
    //   147	151	222	finally
    //   151	153	222	finally
    //   192	219	222	finally
  }

  public final void onProviderDisabled(String paramString)
  {
  }

  public final void onProviderEnabled(String paramString)
  {
  }

  public final void onStatusChanged(String paramString, int paramInt, Bundle paramBundle)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.c.a.a.r
 * JD-Core Version:    0.6.2
 */