import android.os.IBinder;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public final class aak
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

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aak
 * JD-Core Version:    0.6.2
 */