package com.a.a;

import android.util.Log;
import com.a.b.c;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import java.util.concurrent.locks.ReentrantReadWriteLock.WriteLock;

public class ag
  implements Cloneable
{
  private static final aj i = new m();
  private static final aj j = new k();
  private static Class[] k;
  private static Class[] l;
  private static Class[] m = arrayOfClass3;
  private static final HashMap n = new HashMap();
  private static final HashMap o = new HashMap();
  String a;
  protected c b;
  Method c = null;
  Class d;
  p e = null;
  final ReentrantReadWriteLock f = new ReentrantReadWriteLock();
  final Object[] g = new Object[1];
  private Method h = null;
  private aj p;
  private Object q;

  static
  {
    Class[] arrayOfClass1 = new Class[6];
    arrayOfClass1[0] = Float.TYPE;
    arrayOfClass1[1] = Float.class;
    arrayOfClass1[2] = Double.TYPE;
    arrayOfClass1[3] = Integer.TYPE;
    arrayOfClass1[4] = Double.class;
    arrayOfClass1[5] = Integer.class;
    k = arrayOfClass1;
    Class[] arrayOfClass2 = new Class[6];
    arrayOfClass2[0] = Integer.TYPE;
    arrayOfClass2[1] = Integer.class;
    arrayOfClass2[2] = Float.TYPE;
    arrayOfClass2[3] = Double.TYPE;
    arrayOfClass2[4] = Float.class;
    arrayOfClass2[5] = Double.class;
    l = arrayOfClass2;
    Class[] arrayOfClass3 = new Class[6];
    arrayOfClass3[0] = Double.TYPE;
    arrayOfClass3[1] = Double.class;
    arrayOfClass3[2] = Float.TYPE;
    arrayOfClass3[3] = Integer.TYPE;
    arrayOfClass3[4] = Float.class;
    arrayOfClass3[5] = Integer.class;
  }

  private ag(c paramc)
  {
    this.b = paramc;
    if (paramc != null)
      this.a = paramc.a();
  }

  private ag(String paramString)
  {
    this.a = paramString;
  }

  public static ag a(c paramc, float[] paramArrayOfFloat)
  {
    return new ai(paramc, paramArrayOfFloat);
  }

  public static ag a(String paramString, float[] paramArrayOfFloat)
  {
    return new ai(paramString, paramArrayOfFloat);
  }

  static String a(String paramString1, String paramString2)
  {
    if ((paramString2 == null) || (paramString2.length() == 0));
    while (true)
    {
      return paramString1;
      char c1 = Character.toUpperCase(paramString2.charAt(0));
      String str = paramString2.substring(1);
      paramString1 = paramString1 + c1 + str;
    }
  }

  private Method a(Class paramClass1, String paramString, Class paramClass2)
  {
    Method localMethod1 = null;
    String str = a(paramString, this.a);
    if (paramClass2 == null);
    while (true)
    {
      Object localObject;
      try
      {
        Method localMethod3 = paramClass1.getMethod(str, null);
        localObject = localMethod3;
        return localObject;
      }
      catch (NoSuchMethodException localNoSuchMethodException3)
      {
      }
      try
      {
        Method localMethod2 = paramClass1.getDeclaredMethod(str, null);
        localObject = localMethod2;
        try
        {
          ((Method)localObject).setAccessible(true);
        }
        catch (NoSuchMethodException localNoSuchMethodException5)
        {
        }
        Log.e("PropertyValuesHolder", "Couldn't find no-arg method for property " + this.a + ": " + localNoSuchMethodException3);
        continue;
        Class[] arrayOfClass1 = new Class[1];
        Class[] arrayOfClass2;
        label123: int i1;
        int i2;
        if (this.d.equals(Float.class))
        {
          arrayOfClass2 = k;
          i1 = arrayOfClass2.length;
          i2 = 0;
        }
        while (true)
          while (true)
          {
            if (i2 >= i1)
              break label270;
            Class localClass = arrayOfClass2[i2];
            arrayOfClass1[0] = localClass;
            try
            {
              localMethod1 = paramClass1.getMethod(str, arrayOfClass1);
              this.d = localClass;
              localObject = localMethod1;
              break;
              if (this.d.equals(Integer.class))
              {
                arrayOfClass2 = l;
                break label123;
              }
              if (this.d.equals(Double.class))
              {
                arrayOfClass2 = m;
                break label123;
              }
              arrayOfClass2 = new Class[1];
              arrayOfClass2[0] = this.d;
            }
            catch (NoSuchMethodException localNoSuchMethodException1)
            {
              try
              {
                localMethod1 = paramClass1.getDeclaredMethod(str, arrayOfClass1);
                localMethod1.setAccessible(true);
                this.d = localClass;
                localObject = localMethod1;
              }
              catch (NoSuchMethodException localNoSuchMethodException2)
              {
                i2++;
              }
            }
          }
        label270: Log.e("PropertyValuesHolder", "Couldn't find setter/getter for property " + this.a + " with value type " + this.d);
        localObject = localMethod1;
      }
      catch (NoSuchMethodException localNoSuchMethodException4)
      {
        while (true)
          localObject = null;
      }
    }
  }

  private Method a(Class paramClass1, HashMap paramHashMap, String paramString, Class paramClass2)
  {
    try
    {
      this.f.writeLock().lock();
      HashMap localHashMap = (HashMap)paramHashMap.get(paramClass1);
      Method localMethod1 = null;
      if (localHashMap != null)
        localMethod1 = (Method)localHashMap.get(this.a);
      if (localMethod1 == null)
      {
        localMethod1 = a(paramClass1, paramString, paramClass2);
        if (localHashMap == null)
        {
          localHashMap = new HashMap();
          paramHashMap.put(paramClass1, localHashMap);
        }
        localHashMap.put(this.a, localMethod1);
      }
      Method localMethod2 = localMethod1;
      return localMethod2;
    }
    finally
    {
      this.f.writeLock().unlock();
    }
  }

  private void b(Class paramClass)
  {
    this.h = a(paramClass, o, "get", null);
  }

  public ag a()
  {
    try
    {
      localag = (ag)super.clone();
      localag.a = this.a;
      localag.b = this.b;
      localag.e = this.e.b();
      localag.p = this.p;
      return localag;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
      while (true)
        ag localag = null;
    }
  }

  void a(float paramFloat)
  {
    this.q = this.e.a(paramFloat);
  }

  public void a(c paramc)
  {
    this.b = paramc;
  }

  void a(Class paramClass)
  {
    this.c = a(paramClass, n, "set", this.d);
  }

  void a(Object paramObject)
  {
    if (this.b != null)
    {
      try
      {
        this.b.a(paramObject);
        Iterator localIterator2 = this.e.e.iterator();
        while (localIterator2.hasNext())
        {
          n localn2 = (n)localIterator2.next();
          if (!localn2.a())
            localn2.a(this.b.a(paramObject));
        }
      }
      catch (ClassCastException localClassCastException)
      {
        Log.e("PropertyValuesHolder", "No such property (" + this.b.a() + ") on target object " + paramObject + ". Trying reflection instead");
        this.b = null;
      }
    }
    else
    {
      Class localClass = paramObject.getClass();
      if (this.c == null)
        a(localClass);
      Iterator localIterator1 = this.e.e.iterator();
      while (localIterator1.hasNext())
      {
        n localn1 = (n)localIterator1.next();
        if (!localn1.a())
        {
          if (this.h == null)
            b(localClass);
          try
          {
            localn1.a(this.h.invoke(paramObject, new Object[0]));
          }
          catch (InvocationTargetException localInvocationTargetException)
          {
            Log.e("PropertyValuesHolder", localInvocationTargetException.toString());
          }
          catch (IllegalAccessException localIllegalAccessException)
          {
            Log.e("PropertyValuesHolder", localIllegalAccessException.toString());
          }
        }
      }
    }
  }

  public void a(String paramString)
  {
    this.a = paramString;
  }

  public void a(float[] paramArrayOfFloat)
  {
    this.d = Float.TYPE;
    this.e = p.a(paramArrayOfFloat);
  }

  void b()
  {
    aj localaj;
    if (this.p == null)
    {
      if (this.d != Integer.class)
        break label44;
      localaj = i;
    }
    while (true)
    {
      this.p = localaj;
      if (this.p != null)
        this.e.a(this.p);
      return;
      label44: if (this.d == Float.class)
        localaj = j;
      else
        localaj = null;
    }
  }

  void b(Object paramObject)
  {
    if (this.b != null)
      this.b.a(paramObject, d());
    if (this.c != null);
    try
    {
      this.g[0] = d();
      this.c.invoke(paramObject, this.g);
      return;
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      while (true)
        Log.e("PropertyValuesHolder", localInvocationTargetException.toString());
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      while (true)
        Log.e("PropertyValuesHolder", localIllegalAccessException.toString());
    }
  }

  public String c()
  {
    return this.a;
  }

  Object d()
  {
    return this.q;
  }

  public String toString()
  {
    return this.a + ": " + this.e.toString();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.a.a.ag
 * JD-Core Version:    0.6.2
 */