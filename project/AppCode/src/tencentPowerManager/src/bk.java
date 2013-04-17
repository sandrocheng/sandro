import QQPIM.ConnectType;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Proxy;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import com.tencent.tmsecure.common.TMSApplication;
import java.lang.reflect.Field;

public final class bk
{
  public static bk.g a;
  public static int b;
  public static String c;
  private static Class<?> d;

  public static int a(String paramString, int paramInt)
  {
    Field localField = b(paramString);
    if (localField != null);
    try
    {
      int i = localField.getInt(null);
      paramInt = i;
      return paramInt;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      while (true)
        localIllegalArgumentException.printStackTrace();
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      while (true)
        localIllegalAccessException.printStackTrace();
    }
  }

  public static ConnectType a()
  {
    NetworkInfo localNetworkInfo = ((ConnectivityManager)TMSApplication.getApplicaionContext().getSystemService("connectivity")).getActiveNetworkInfo();
    ConnectType localConnectType;
    if (localNetworkInfo == null)
      localConnectType = ConnectType.CT_NONE;
    while (true)
    {
      return localConnectType;
      if (localNetworkInfo.getType() == 1)
      {
        localConnectType = ConnectType.CT_WIFI;
      }
      else if (localNetworkInfo.getType() == 0)
      {
        String str = Proxy.getHost(TMSApplication.getApplicaionContext());
        if ((str == null) || (str.length() == 0))
          str = Proxy.getDefaultHost();
        if ((str != null) && (str.length() > 0))
        {
          int i = Proxy.getPort(TMSApplication.getApplicaionContext());
          if (i <= 0)
            i = Proxy.getDefaultPort();
          if (i > 0)
            localConnectType = ConnectType.CT_GPRS_WAP;
        }
        else
        {
          localConnectType = ConnectType.CT_GPRS_NET;
        }
      }
      else
      {
        localConnectType = ConnectType.CT_GPRS_NET;
      }
    }
  }

  public static boolean a(String paramString)
  {
    try
    {
      Class localClass2 = Class.forName(paramString);
      localClass1 = localClass2;
      d = localClass1;
      if (localClass1 != null)
      {
        bool = true;
        return bool;
      }
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      while (true)
      {
        localClassNotFoundException.printStackTrace();
        Class localClass1 = null;
        continue;
        boolean bool = false;
      }
    }
  }

  public static String b()
  {
    WifiManager localWifiManager = (WifiManager)TMSApplication.getApplicaionContext().getSystemService("wifi");
    WifiInfo localWifiInfo;
    if (localWifiManager != null)
    {
      localWifiInfo = localWifiManager.getConnectionInfo();
      if (localWifiInfo == null);
    }
    for (String str = localWifiInfo.getSSID(); ; str = "")
      return str;
  }

  // ERROR //
  private static Field b(String paramString)
  {
    // Byte code:
    //   0: getstatic 107	bk:d	Ljava/lang/Class;
    //   3: aload_0
    //   4: invokevirtual 130	java/lang/Class:getDeclaredField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   7: astore 6
    //   9: aload 6
    //   11: astore_2
    //   12: aload_2
    //   13: iconst_1
    //   14: invokevirtual 134	java/lang/reflect/Field:setAccessible	(Z)V
    //   17: aload_2
    //   18: areturn
    //   19: astore 4
    //   21: aconst_null
    //   22: astore_2
    //   23: aload 4
    //   25: astore 5
    //   27: aload 5
    //   29: invokevirtual 135	java/lang/SecurityException:printStackTrace	()V
    //   32: goto -15 -> 17
    //   35: astore_1
    //   36: aconst_null
    //   37: astore_2
    //   38: aload_1
    //   39: astore_3
    //   40: aload_3
    //   41: invokevirtual 136	java/lang/NoSuchFieldException:printStackTrace	()V
    //   44: goto -27 -> 17
    //   47: astore_3
    //   48: goto -8 -> 40
    //   51: astore 5
    //   53: goto -26 -> 27
    //
    // Exception table:
    //   from	to	target	type
    //   0	9	19	java/lang/SecurityException
    //   0	9	35	java/lang/NoSuchFieldException
    //   12	17	47	java/lang/NoSuchFieldException
    //   12	17	51	java/lang/SecurityException
  }

  public static int c()
  {
    NetworkInfo localNetworkInfo = ((ConnectivityManager)TMSApplication.getApplicaionContext().getSystemService("connectivity")).getActiveNetworkInfo();
    int i;
    if ((localNetworkInfo == null) || (localNetworkInfo.getType() != 1))
    {
      i = 0;
      if (i != 0)
        break label42;
    }
    label42: for (int j = -1; ; j = WifiManager.calculateSignalLevel(((WifiManager)TMSApplication.getApplicaionContext().getSystemService("wifi")).getConnectionInfo().getRssi(), 5))
    {
      return j;
      i = 1;
      break;
    }
  }

  public static final class a extends bk.g
  {
    private a()
    {
      super();
    }
  }

  public static final class b extends bk.g
  {
    private b()
    {
      super();
    }
  }

  public static final class c extends bk.g
  {
    private c()
    {
      super();
    }
  }

  public static final class d extends bk.g
  {
    private d()
    {
      super();
    }
  }

  public static final class e extends bk.g
  {
    private e()
    {
      super();
    }
  }

  public static final class f extends bk.h
  {
    private f()
    {
      super();
    }
  }

  public static class g
  {
    public String a()
    {
      return "su";
    }
  }

  public static class h extends bk.g
  {
    private h()
    {
      super();
    }
  }

  public static final class i extends bk.g
  {
    private i()
    {
      super();
    }

    public final String a()
    {
      return "xsu";
    }
  }

  public static final class j extends bk.g
  {
    private j()
    {
      super();
    }
  }

  public static final class k extends bk.g
  {
    private k()
    {
      super();
    }
  }

  public static final class l extends bk.g
  {
    private l()
    {
      super();
    }
  }

  public static final class m extends bk.g
  {
    private m()
    {
      super();
    }
  }

  public static final class n extends bk.g
  {
    private n()
    {
      super();
    }
  }

  public static final class o extends bk.g
  {
    private o()
    {
      super();
    }
  }

  public static final class p extends bk.g
  {
    private p()
    {
      super();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     bk
 * JD-Core Version:    0.6.2
 */