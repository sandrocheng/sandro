import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Uri;
import android.net.wifi.WifiManager;
import android.os.Build.VERSION;
import android.telephony.TelephonyManager;
import com.tencent.powermanager.PowerManagerApplication;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public final class ap
{
  private static ap e = null;
  private Context a;
  private TelephonyManager b;
  private WifiManager c;
  private ConnectivityManager d;

  private ap()
  {
    Uri.parse("content://telephony/carriers");
    Uri.parse("content://telephony/carriers/current");
    Uri.parse("content://telephony/carriers/preferapn");
    new String[] { "_id", "apn", "type" };
    this.a = PowerManagerApplication.a();
    this.a.getContentResolver();
    this.b = ((TelephonyManager)this.a.getSystemService("phone"));
    this.c = ((WifiManager)this.a.getSystemService("wifi"));
    this.d = ((ConnectivityManager)this.a.getSystemService("connectivity"));
  }

  public static ap a()
  {
    try
    {
      if (e == null)
        e = new ap();
      ap localap = e;
      return localap;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private boolean c(boolean paramBoolean)
  {
    boolean bool1 = true;
    if (this.b.getDataState() == 2);
    for (boolean bool2 = bool1; bool2 == paramBoolean; bool2 = false)
      return bool1;
    while (true)
    {
      Class localClass;
      try
      {
        Method localMethod1 = Class.forName(this.b.getClass().getName()).getDeclaredMethod("getITelephony", new Class[0]);
        localMethod1.setAccessible(true);
        Object localObject1 = localMethod1.invoke(this.b, new Object[0]);
        localClass = Class.forName(localObject1.getClass().getName());
        if (!paramBoolean)
          break label135;
        localObject2 = localClass.getDeclaredMethod("enableDataConnectivity", new Class[0]);
        ((Method)localObject2).setAccessible(true);
        ((Method)localObject2).invoke(localObject1, new Object[0]);
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        bool1 = false;
      }
      break;
      label135: Method localMethod2 = localClass.getDeclaredMethod("disableDataConnectivity", new Class[0]);
      Object localObject2 = localMethod2;
    }
  }

  private boolean d()
  {
    try
    {
      Method localMethod = this.d.getClass().getDeclaredMethod("getMobileDataEnabled", new Class[0]);
      localMethod.setAccessible(true);
      boolean bool2 = ((Boolean)localMethod.invoke(this.d, new Object[0])).booleanValue();
      bool1 = bool2;
      return bool1;
    }
    catch (SecurityException localSecurityException)
    {
      while (true)
      {
        localSecurityException.printStackTrace();
        boolean bool1 = false;
      }
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      while (true)
        localNoSuchMethodException.printStackTrace();
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      while (true)
        localIllegalAccessException.printStackTrace();
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      while (true)
        localInvocationTargetException.printStackTrace();
    }
  }

  private boolean d(boolean paramBoolean)
  {
    boolean bool = true;
    try
    {
      Class localClass = this.d.getClass();
      Class[] arrayOfClass = new Class[1];
      arrayOfClass[0] = Boolean.TYPE;
      Method localMethod = localClass.getDeclaredMethod("setMobileDataEnabled", arrayOfClass);
      localMethod.setAccessible(true);
      ConnectivityManager localConnectivityManager = this.d;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = new Boolean(paramBoolean);
      localMethod.invoke(localConnectivityManager, arrayOfObject);
      return bool;
    }
    catch (SecurityException localSecurityException)
    {
      while (true)
      {
        localSecurityException.printStackTrace();
        bool = false;
      }
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      while (true)
        localNoSuchMethodException.printStackTrace();
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      while (true)
        localIllegalAccessException.printStackTrace();
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      while (true)
        localInvocationTargetException.printStackTrace();
    }
  }

  public final boolean a(boolean paramBoolean)
  {
    if (this.c == null);
    for (boolean bool = false; ; bool = this.c.setWifiEnabled(paramBoolean))
      return bool;
  }

  public final boolean b()
  {
    if (this.c == null);
    for (boolean bool = false; ; bool = this.c.isWifiEnabled())
      return bool;
  }

  public final boolean b(boolean paramBoolean)
  {
    if (new Integer(Build.VERSION.SDK).intValue() > 8);
    for (boolean bool = d(paramBoolean); ; bool = c(paramBoolean))
      return bool;
  }

  public final boolean c()
  {
    boolean bool;
    if (new Integer(Build.VERSION.SDK).intValue() > 8)
      bool = d();
    while (true)
    {
      return bool;
      if (this.b.getDataState() == 2)
        bool = true;
      else
        bool = false;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     ap
 * JD-Core Version:    0.6.2
 */