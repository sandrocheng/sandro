import android.content.Context;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.netsetting.NetSettingManager;
import com.tencent.tmsecure.module.powersaving.IBatteryInfoHelper;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

final class byb
  implements IBatteryInfoHelper
{
  private Object a;
  private Method b;
  private Context c;

  byb(Context paramContext)
  {
    try
    {
      this.c = paramContext;
      Class localClass = Class.forName("com.android.internal.os.PowerProfile");
      this.b = localClass.getDeclaredMethod("getAveragePower", new Class[] { String.class });
      this.a = localClass.getConstructor(new Class[] { Context.class }).newInstance(new Object[] { paramContext });
      return;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      while (true)
        localClassNotFoundException.printStackTrace();
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      while (true)
        localNoSuchMethodException.printStackTrace();
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      while (true)
        localIllegalArgumentException.printStackTrace();
    }
    catch (InstantiationException localInstantiationException)
    {
      while (true)
        localInstantiationException.printStackTrace();
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
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  private double a()
  {
    double d = 0.0D;
    NetSettingManager localNetSettingManager = (NetSettingManager)ManagerCreator.getManager(NetSettingManager.class);
    if (localNetSettingManager.isWifiEnabled())
      d += a("POWER_WIFI_ACTIVE") / 4.0D;
    if (localNetSettingManager.isBluetoothEnabled())
      d += a("POWER_BLUETOOTH_ACTIVE");
    return d;
  }

  private double a(String paramString)
  {
    try
    {
      Method localMethod = this.b;
      Object localObject = this.a;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = di.a("com.android.internal.os.PowerProfile", paramString);
      double d2 = ((Double)localMethod.invoke(localObject, arrayOfObject)).doubleValue();
      d1 = d2;
      return d1;
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.printStackTrace();
        double d1 = 0.0D;
      }
    }
  }

  public final double getCallRemainHours()
  {
    double d = a("POWER_NONE") + a("POWER_RADIO_ACTIVE") + a("POWER_CPU_ACTIVE") + a();
    return a("POWER_BATTERY_CAPACITY") / d;
  }

  public final double getContinueRemainHours()
  {
    double d = a("POWER_NONE") + a("POWER_CPU_ACTIVE") / 3.0D + a("POWER_SCREEN_FULL") * a.a(this.c.getContentResolver()) + a();
    return a("POWER_BATTERY_CAPACITY") / d;
  }

  public final double getMaxPowerUseHours()
  {
    double d = a("POWER_NONE") + a("POWER_CPU_ACTIVE") / 3.0D + a("POWER_SCREEN_FULL") * a.a(this.c.getContentResolver()) + a("POWER_WIFI_ACTIVE") / 4.0D + a("POWER_BLUETOOTH_ACTIVE") + a("POWER_GPS_ON");
    return a("POWER_BATTERY_CAPACITY") / d;
  }

  public final double getStayRemainHours()
  {
    double d = a("POWER_NONE") + a("POWER_CPU_ACTIVE") / 3.0D;
    return a("POWER_BATTERY_CAPACITY") / d;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     byb
 * JD-Core Version:    0.6.2
 */