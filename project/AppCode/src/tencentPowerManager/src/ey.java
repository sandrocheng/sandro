import android.os.IBinder;
import android.os.IInterface;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public final class ey
{
  private static Class<?> a;
  private static Method b;

  static
  {
    try
    {
      Class localClass = Class.forName("android.os.ServiceManager");
      a = localClass;
      b = localClass.getDeclaredMethod("getService", new Class[] { String.class });
      a.getDeclaredMethod("addService", new Class[] { String.class, IBinder.class });
      a.getDeclaredMethod("checkService", new Class[] { String.class });
      a.getDeclaredMethod("listServices", new Class[0]);
      Field localField1 = a.getDeclaredField("sCache");
      localField1.setAccessible(true);
      localField1.get(null);
      Field localField2 = a.getDeclaredField("sServiceManager");
      localField2.setAccessible(true);
      ((IInterface)localField2.get(null)).asBinder();
      return;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      while (true)
        localClassNotFoundException.printStackTrace();
    }
    catch (SecurityException localSecurityException)
    {
      while (true)
        localSecurityException.printStackTrace();
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      while (true)
        localNoSuchMethodException.printStackTrace();
    }
    catch (NoSuchFieldException localNoSuchFieldException)
    {
      while (true)
        localNoSuchFieldException.printStackTrace();
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

  public static IBinder a(String paramString)
  {
    return (IBinder)a(b, new Object[] { paramString });
  }

  private static Object a(Method paramMethod, Object[] paramArrayOfObject)
  {
    try
    {
      Object localObject2 = paramMethod.invoke(null, paramArrayOfObject);
      localObject1 = localObject2;
      return localObject1;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      while (true)
      {
        localIllegalArgumentException.printStackTrace();
        localObject1 = null;
      }
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      while (true)
      {
        localIllegalAccessException.printStackTrace();
        localObject1 = null;
      }
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      while (true)
      {
        localInvocationTargetException.printStackTrace();
        Object localObject1 = null;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     ey
 * JD-Core Version:    0.6.2
 */