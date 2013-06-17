package com.antivirus.antitheft;

import android.location.LocationListener;
import android.os.Bundle;

public class x
  implements LocationListener
{
  private long b = System.currentTimeMillis();
  private long c = 300000L;

  public x(w paramw, long paramLong)
  {
    if (paramLong > 0L)
      this.c = paramLong;
  }

  // ERROR //
  public void onLocationChanged(android.location.Location paramLocation)
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnonnull +9 -> 10
    //   4: ldc 36
    //   6: invokestatic 41	com/avg/toolkit/f/a:a	(Ljava/lang/String;)V
    //   9: return
    //   10: aload_1
    //   11: invokevirtual 47	android/location/Location:getProvider	()Ljava/lang/String;
    //   14: invokestatic 53	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   17: ifne +82 -> 99
    //   20: aload_1
    //   21: invokevirtual 47	android/location/Location:getProvider	()Ljava/lang/String;
    //   24: ldc 55
    //   26: invokevirtual 61	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   29: ifeq +141 -> 170
    //   32: getstatic 66	com/antivirus/antitheft/w:a	Ljava/lang/Object;
    //   35: astore 18
    //   37: aload 18
    //   39: monitorenter
    //   40: aload_0
    //   41: getfield 15	com/antivirus/antitheft/x:a	Lcom/antivirus/antitheft/w;
    //   44: aload_1
    //   45: invokevirtual 70	android/location/Location:getLatitude	()D
    //   48: invokestatic 73	com/antivirus/antitheft/w:a	(Lcom/antivirus/antitheft/w;D)D
    //   51: pop2
    //   52: aload_0
    //   53: getfield 15	com/antivirus/antitheft/x:a	Lcom/antivirus/antitheft/w;
    //   56: aload_1
    //   57: invokevirtual 76	android/location/Location:getLongitude	()D
    //   60: invokestatic 78	com/antivirus/antitheft/w:b	(Lcom/antivirus/antitheft/w;D)D
    //   63: pop2
    //   64: aload_1
    //   65: invokevirtual 82	android/location/Location:hasAccuracy	()Z
    //   68: ifeq +80 -> 148
    //   71: aload_0
    //   72: getfield 15	com/antivirus/antitheft/x:a	Lcom/antivirus/antitheft/w;
    //   75: aload_1
    //   76: invokevirtual 86	android/location/Location:getAccuracy	()F
    //   79: f2d
    //   80: invokestatic 88	com/antivirus/antitheft/w:c	(Lcom/antivirus/antitheft/w;D)D
    //   83: pop2
    //   84: aload_0
    //   85: getfield 15	com/antivirus/antitheft/x:a	Lcom/antivirus/antitheft/w;
    //   88: aload_1
    //   89: invokevirtual 91	android/location/Location:getTime	()J
    //   92: invokestatic 94	com/antivirus/antitheft/w:a	(Lcom/antivirus/antitheft/w;J)J
    //   95: pop2
    //   96: aload 18
    //   98: monitorexit
    //   99: invokestatic 24	java/lang/System:currentTimeMillis	()J
    //   102: aload_0
    //   103: getfield 26	com/antivirus/antitheft/x:b	J
    //   106: lsub
    //   107: aload_0
    //   108: getfield 30	com/antivirus/antitheft/x:c	J
    //   111: lcmp
    //   112: ifle -103 -> 9
    //   115: invokestatic 99	com/antivirus/AvApplication:b	()Lcom/antivirus/AvApplication;
    //   118: astore 5
    //   120: aload 5
    //   122: astore_3
    //   123: aload_3
    //   124: ifnull -115 -> 9
    //   127: aload_3
    //   128: ldc 101
    //   130: invokevirtual 107	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   133: checkcast 109	android/location/LocationManager
    //   136: aload_0
    //   137: invokevirtual 113	android/location/LocationManager:removeUpdates	(Landroid/location/LocationListener;)V
    //   140: iconst_0
    //   141: invokestatic 116	com/antivirus/antitheft/w:a	(Z)Z
    //   144: pop
    //   145: goto -136 -> 9
    //   148: aload_0
    //   149: getfield 15	com/antivirus/antitheft/x:a	Lcom/antivirus/antitheft/w;
    //   152: ldc2_w 117
    //   155: invokestatic 88	com/antivirus/antitheft/w:c	(Lcom/antivirus/antitheft/w;D)D
    //   158: pop2
    //   159: goto -75 -> 84
    //   162: astore 19
    //   164: aload 18
    //   166: monitorexit
    //   167: aload 19
    //   169: athrow
    //   170: aload_1
    //   171: invokevirtual 47	android/location/Location:getProvider	()Ljava/lang/String;
    //   174: ldc 120
    //   176: invokevirtual 61	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   179: ifeq -80 -> 99
    //   182: getstatic 122	com/antivirus/antitheft/w:b	Ljava/lang/Object;
    //   185: astore 6
    //   187: aload 6
    //   189: monitorenter
    //   190: aload_0
    //   191: getfield 15	com/antivirus/antitheft/x:a	Lcom/antivirus/antitheft/w;
    //   194: aload_1
    //   195: invokevirtual 70	android/location/Location:getLatitude	()D
    //   198: invokestatic 125	com/antivirus/antitheft/w:d	(Lcom/antivirus/antitheft/w;D)D
    //   201: pop2
    //   202: aload_0
    //   203: getfield 15	com/antivirus/antitheft/x:a	Lcom/antivirus/antitheft/w;
    //   206: aload_1
    //   207: invokevirtual 76	android/location/Location:getLongitude	()D
    //   210: invokestatic 128	com/antivirus/antitheft/w:e	(Lcom/antivirus/antitheft/w;D)D
    //   213: pop2
    //   214: aload_1
    //   215: invokevirtual 82	android/location/Location:hasAccuracy	()Z
    //   218: ifeq +42 -> 260
    //   221: aload_0
    //   222: getfield 15	com/antivirus/antitheft/x:a	Lcom/antivirus/antitheft/w;
    //   225: aload_1
    //   226: invokevirtual 86	android/location/Location:getAccuracy	()F
    //   229: f2d
    //   230: invokestatic 131	com/antivirus/antitheft/w:f	(Lcom/antivirus/antitheft/w;D)D
    //   233: pop2
    //   234: aload_0
    //   235: getfield 15	com/antivirus/antitheft/x:a	Lcom/antivirus/antitheft/w;
    //   238: aload_1
    //   239: invokevirtual 91	android/location/Location:getTime	()J
    //   242: invokestatic 133	com/antivirus/antitheft/w:b	(Lcom/antivirus/antitheft/w;J)J
    //   245: pop2
    //   246: aload 6
    //   248: monitorexit
    //   249: goto -150 -> 99
    //   252: astore 7
    //   254: aload 6
    //   256: monitorexit
    //   257: aload 7
    //   259: athrow
    //   260: aload_0
    //   261: getfield 15	com/antivirus/antitheft/x:a	Lcom/antivirus/antitheft/w;
    //   264: ldc2_w 117
    //   267: invokestatic 131	com/antivirus/antitheft/w:f	(Lcom/antivirus/antitheft/w;D)D
    //   270: pop2
    //   271: goto -37 -> 234
    //   274: astore_2
    //   275: aconst_null
    //   276: astore_3
    //   277: goto -154 -> 123
    //
    // Exception table:
    //   from	to	target	type
    //   40	99	162	finally
    //   148	167	162	finally
    //   190	257	252	finally
    //   260	271	252	finally
    //   115	120	274	java/lang/Exception
  }

  public void onProviderDisabled(String paramString)
  {
  }

  public void onProviderEnabled(String paramString)
  {
  }

  public void onStatusChanged(String paramString, int paramInt, Bundle paramBundle)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.antitheft.x
 * JD-Core Version:    0.6.2
 */