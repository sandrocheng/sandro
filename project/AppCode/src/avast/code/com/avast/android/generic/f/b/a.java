package com.avast.android.generic.f.b;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.NetworkInfo.State;
import android.telephony.CellLocation;
import android.telephony.PhoneStateListener;
import android.telephony.ServiceState;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.avast.android.generic.util.t;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public abstract class a extends PhoneStateListener
{
  private static String f = null;
  private static boolean g = false;
  private TelephonyManager a;
  private CellLocation b;
  private int c;
  private ServiceState d;
  private Context e;

  public static String a(Context paramContext)
  {
    TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
    Object localObject;
    if (localTelephonyManager == null)
    {
      t.a("AvastGeneric", paramContext, "StateProvider: could not get telephony manager");
      localObject = null;
    }
    while (true)
    {
      return localObject;
      String str = localTelephonyManager.getNetworkOperatorName();
      if ((str == null) || (str.equals("")))
      {
        localObject = localTelephonyManager.getSimOperatorName();
        if ((localObject == null) || (((String)localObject).equals("")))
          localObject = null;
      }
      else
      {
        localObject = str;
      }
    }
  }

  private void a()
  {
    try
    {
      b localb = new b(this.e, this.a, this.b, this.c, this.d);
      if (localb.a() == 0)
        a(localb);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        t.a("AvastGeneric", this.e, "RadioData could not be instantiated", localException);
    }
  }

  public static void a(ConnectivityManager paramConnectivityManager, boolean paramBoolean)
  {
    int i = 0;
    if (!paramBoolean)
      f = null;
    try
    {
      NetworkInfo localNetworkInfo = paramConnectivityManager.getActiveNetworkInfo();
      if ((localNetworkInfo == null) || (localNetworkInfo.getState() == null) || (localNetworkInfo.getState() == NetworkInfo.State.DISCONNECTED) || (localNetworkInfo.getState() == NetworkInfo.State.DISCONNECTED))
      {
        f = null;
        g = true;
      }
      else
      {
        int j = localNetworkInfo.getType();
        if ((j == 7) || (j == 8))
        {
          f = null;
          g = true;
        }
      }
    }
    catch (Throwable localThrowable)
    {
      f = null;
    }
    Iterator localIterator1 = Collections.list(NetworkInterface.getNetworkInterfaces()).iterator();
    Object localObject1 = null;
    Object localObject2 = null;
    int k = 0;
    while (true)
    {
      Iterator localIterator2;
      if (localIterator1.hasNext())
        localIterator2 = Collections.list(((NetworkInterface)localIterator1.next()).getInetAddresses()).iterator();
      while (localIterator2.hasNext())
      {
        InetAddress localInetAddress = (InetAddress)localIterator2.next();
        Object localObject3;
        Object localObject4;
        int n;
        int m;
        if ((!localInetAddress.isLoopbackAddress()) && (!TextUtils.isEmpty(localInetAddress.getHostAddress())))
        {
          if ((localInetAddress instanceof Inet6Address))
          {
            localObject3 = localInetAddress.getHostAddress();
            localObject4 = localObject2;
            n = k;
            m = 1;
          }
          else
          {
            String str = localInetAddress.getHostAddress();
            m = i;
            n = 1;
            Object localObject5 = localObject1;
            localObject4 = str;
            localObject3 = localObject5;
            break label327;
            if ((i != 0) && (k != 0))
              f = localObject2;
            while (true)
            {
              g = true;
              break;
              if (i != 0)
                f = localObject1;
              else if (k != 0)
                f = localObject2;
              else
                f = null;
            }
          }
        }
        else
        {
          localObject3 = localObject1;
          localObject4 = localObject2;
          m = i;
          n = k;
          break label327;
          return;
        }
        label327: k = n;
        i = m;
        localObject2 = localObject4;
        localObject1 = localObject3;
      }
    }
  }

  public static String b(Context paramContext)
  {
    Object localObject = null;
    TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
    if (localTelephonyManager == null)
      t.a("AvastGeneric", paramContext, "StateProvider: could not get telephony manager");
    while (true)
    {
      return localObject;
      int i = localTelephonyManager.getSimState();
      localObject = null;
      if (i != 1)
        try
        {
          String str = localTelephonyManager.getSubscriberId();
          if (str != null)
          {
            boolean bool = str.equals("");
            if (!bool);
          }
          else
          {
            str = null;
          }
          localObject = str;
        }
        catch (Exception localException)
        {
          t.a("AvastGeneric", "Can not read IMSI", localException);
          localObject = null;
        }
    }
  }

  public static int c(Context paramContext)
  {
    TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
    if (localTelephonyManager == null)
      t.a("AvastGeneric", paramContext, "StateProvider: could not get telephony manager");
    for (int i = 0; ; i = localTelephonyManager.getSimState())
      return i;
  }

  public static int d(Context paramContext)
  {
    TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
    int i;
    if (localTelephonyManager == null)
    {
      t.a("AvastGeneric", paramContext, "StateProvider: could not get telephony manager");
      i = 0;
    }
    while (true)
    {
      return i;
      String str1 = localTelephonyManager.getNetworkOperator();
      if (str1 != null)
        try
        {
          int k = Integer.parseInt(str1.substring(0, 3));
          if (k > 0)
            i = k;
        }
        catch (Exception localException2)
        {
        }
      String str2 = localTelephonyManager.getSimOperator();
      if (str2 != null);
      try
      {
        int j = Integer.parseInt(str2.substring(0, 3));
        i = j;
        if (i > 0)
          continue;
        label91: i = 0;
      }
      catch (Exception localException1)
      {
        break label91;
      }
    }
  }

  public static int e(Context paramContext)
  {
    TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
    int i;
    if (localTelephonyManager == null)
    {
      t.a("AvastGeneric", paramContext, "StateProvider: could not get telephony manager");
      i = 0;
    }
    while (true)
    {
      return i;
      String str1 = localTelephonyManager.getNetworkOperator();
      if (str1 != null)
        try
        {
          int k = Integer.parseInt(str1.substring(3));
          if (k > 0)
            i = k;
        }
        catch (Exception localException2)
        {
        }
      String str2 = localTelephonyManager.getSimOperator();
      if (str2 != null);
      try
      {
        int j = Integer.parseInt(str2.substring(3));
        i = j;
        if (i > 0)
          continue;
        label89: i = 0;
      }
      catch (Exception localException1)
      {
        break label89;
      }
    }
  }

  // ERROR //
  public static String f(Context paramContext)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: aload_0
    //   3: ldc 27
    //   5: invokevirtual 33	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   8: checkcast 35	android/telephony/TelephonyManager
    //   11: astore_2
    //   12: aload_2
    //   13: ifnonnull +13 -> 26
    //   16: ldc 37
    //   18: aload_0
    //   19: ldc 39
    //   21: invokestatic 44	com/avast/android/generic/util/t:a	(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    //   24: aload_1
    //   25: areturn
    //   26: aload_2
    //   27: invokevirtual 193	android/telephony/TelephonyManager:getDeviceId	()Ljava/lang/String;
    //   30: astore 4
    //   32: aload 4
    //   34: ifnull +20 -> 54
    //   37: aload 4
    //   39: ldc 50
    //   41: invokevirtual 56	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   44: istore 8
    //   46: iload 8
    //   48: ifeq +6 -> 54
    //   51: aconst_null
    //   52: astore 4
    //   54: aload 4
    //   56: ifnonnull +81 -> 137
    //   59: getstatic 198	android/os/Build$VERSION:SDK_INT	I
    //   62: bipush 9
    //   64: if_icmplt +94 -> 158
    //   67: invokestatic 203	com/avast/android/generic/e/a:a	()Lcom/avast/android/generic/e/a;
    //   70: invokevirtual 205	com/avast/android/generic/e/a:b	()Ljava/lang/String;
    //   73: astore 7
    //   75: aload 7
    //   77: astore 4
    //   79: aload 4
    //   81: ifnull +16 -> 97
    //   84: aload 4
    //   86: ldc 50
    //   88: invokevirtual 56	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   91: ifeq +6 -> 97
    //   94: aconst_null
    //   95: astore 4
    //   97: aload 4
    //   99: ifnonnull +38 -> 137
    //   102: aload_0
    //   103: ldc 207
    //   105: invokestatic 212	com/avast/android/generic/ad:a	(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;
    //   108: checkcast 207	com/avast/android/generic/ae
    //   111: invokevirtual 215	com/avast/android/generic/ae:r	()Ljava/lang/String;
    //   114: astore 4
    //   116: aload 4
    //   118: ifnull +19 -> 137
    //   121: aload 4
    //   123: ldc 50
    //   125: invokevirtual 56	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   128: istore 6
    //   130: aconst_null
    //   131: astore_1
    //   132: iload 6
    //   134: ifne -110 -> 24
    //   137: aload 4
    //   139: astore_1
    //   140: goto -116 -> 24
    //   143: astore_3
    //   144: ldc 37
    //   146: ldc 217
    //   148: aload_3
    //   149: invokestatic 170	com/avast/android/generic/util/t:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    //   152: aconst_null
    //   153: astore 4
    //   155: goto -101 -> 54
    //   158: aload_0
    //   159: ldc 207
    //   161: invokestatic 212	com/avast/android/generic/ad:a	(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;
    //   164: checkcast 207	com/avast/android/generic/ae
    //   167: invokevirtual 215	com/avast/android/generic/ae:r	()Ljava/lang/String;
    //   170: astore 4
    //   172: aload 4
    //   174: ifnull -37 -> 137
    //   177: aload 4
    //   179: ldc 50
    //   181: invokevirtual 56	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   184: ifeq -47 -> 137
    //   187: aconst_null
    //   188: astore_1
    //   189: goto -165 -> 24
    //   192: astore 5
    //   194: goto -115 -> 79
    //
    // Exception table:
    //   from	to	target	type
    //   26	46	143	java/lang/Exception
    //   67	75	192	java/lang/Exception
  }

  @SuppressLint({"NewApi"})
  public static boolean g(Context paramContext)
  {
    boolean bool1 = false;
    if (paramContext == null);
    while (true)
    {
      return bool1;
      try
      {
        boolean bool2 = paramContext.getPackageManager().hasSystemFeature("android.hardware.telephony");
        bool1 = bool2;
      }
      catch (Exception localException)
      {
        t.a("AvastGeneric", "Error while checking for call feature", localException);
        bool1 = false;
      }
    }
  }

  public static boolean h(Context paramContext)
  {
    if (b(paramContext) == null);
    for (boolean bool = false; ; bool = true)
      return bool;
  }

  public static String i(Context paramContext)
  {
    if ((g) || (paramContext == null));
    for (String str = f; ; str = f)
    {
      return str;
      a((ConnectivityManager)paramContext.getSystemService("connectivity"), true);
    }
  }

  public abstract void a(int paramInt, String paramString);

  public abstract void a(b paramb);

  public void onCallStateChanged(int paramInt, String paramString)
  {
    a(paramInt, paramString);
  }

  public void onCellLocationChanged(CellLocation paramCellLocation)
  {
    this.b = paramCellLocation;
    a();
  }

  public void onServiceStateChanged(ServiceState paramServiceState)
  {
    this.d = paramServiceState;
    a();
  }

  public void onSignalStrengthChanged(int paramInt)
  {
    this.c = paramInt;
    a();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.f.b.a
 * JD-Core Version:    0.6.2
 */