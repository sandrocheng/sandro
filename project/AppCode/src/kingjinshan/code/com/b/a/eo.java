package com.b.a;

import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

final class eo
  implements Serializable
{
  private static final long a;
  private String b;
  private byte[] c;

  eo(ex paramex)
  {
    this.b = paramex.getClass().getName();
    this.c = paramex.d();
  }

  private Object a()
  {
    try
    {
      ey localey = (ey)Class.forName(this.b).getMethod("newBuilder", new Class[0]).invoke(null, new Object[0]);
      localey.c(this.c);
      ex localex = localey.L();
      return localex;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      throw new RuntimeException("Unable to find proto buffer class", localClassNotFoundException);
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      throw new RuntimeException("Unable to find newBuilder method", localNoSuchMethodException);
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      throw new RuntimeException("Unable to call newBuilder method", localIllegalAccessException);
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      throw new RuntimeException("Error calling newBuilder", localInvocationTargetException.getCause());
    }
    catch (es locales)
    {
      throw new RuntimeException("Unable to understand proto buffer", locales);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.eo
 * JD-Core Version:    0.6.2
 */