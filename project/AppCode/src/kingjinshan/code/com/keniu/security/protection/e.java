package com.keniu.security.protection;

import android.hardware.Camera;
import android.hardware.Camera.Parameters;
import android.os.Build;
import android.os.Build.VERSION;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public final class e
{
  private static Camera a;
  private static int b;
  private static final double[] c = { 1.0D, 1.25D, 1.5D, 1.75D, 2.0D, 2.25D, 2.5D, 2.75D, 3.0D, 3.25D, 3.5D, 3.75D, 4.0D };

  private static double a(Camera.Parameters paramParameters, boolean paramBoolean)
  {
    double d;
    if (a == null)
      d = 0.0D;
    while (true)
    {
      return d;
      String str = null;
      if (paramBoolean)
        str = paramParameters.get("taking-picture-zoom-min");
      if (str == null)
      {
        str = paramParameters.get("min-zoom");
        if (str == null)
        {
          str = paramParameters.get("mot-min-picture-continuous-zoom");
          if (str == null)
          {
            str = paramParameters.get("digi-zoom");
            if (str == null)
              d = 1.0D;
          }
        }
      }
      else
      {
        d = Double.valueOf(str).doubleValue();
      }
    }
  }

  private static int a(Object paramObject, String paramString)
  {
    try
    {
      int j = paramObject.getClass().getDeclaredField(paramString).getInt(paramObject);
      i = j;
      return i;
    }
    catch (SecurityException localSecurityException)
    {
      while (true)
      {
        localSecurityException.printStackTrace();
        int i = 0;
      }
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

  public static Camera a()
  {
    return a;
  }

  private static Camera a(int paramInt)
  {
    Camera localCamera = Camera.open();
    if (localCamera != null)
    {
      Camera.Parameters localParameters = localCamera.getParameters();
      if ((localParameters != null) && (localParameters.get("channel-values") != null))
      {
        localParameters.set("channel", paramInt);
        localCamera.setParameters(localParameters);
      }
    }
    return localCamera;
  }

  private static double b(Camera.Parameters paramParameters, boolean paramBoolean)
  {
    double d;
    if (a == null)
      d = 0.0D;
    while (true)
    {
      return d;
      String str = null;
      if (paramBoolean)
        str = paramParameters.get("taking-picture-zoom-max");
      if (str == null)
      {
        str = paramParameters.get("max-zoom");
        if (str == null)
        {
          str = paramParameters.get("mot-max-picture-continuous-zoom");
          if (str == null)
          {
            str = paramParameters.get("digi-zoom");
            if (str == null)
              d = 0.0D;
          }
        }
      }
      else
      {
        d = Double.valueOf(str).doubleValue();
      }
    }
  }

  public static Camera b()
  {
    try
    {
      Camera localCamera2;
      if (a != null)
      {
        localCamera2 = a;
        return localCamera2;
      }
      Camera localCamera1 = f();
      a = localCamera1;
      if (localCamera1 == null)
      {
        b = 0;
        a = Camera.open();
      }
      while (true)
      {
        localCamera2 = a;
        break;
        b = 1;
      }
    }
    finally
    {
    }
  }

  private static Object b(int paramInt)
  {
    int i = 0;
    try
    {
      Class[] arrayOfClass1 = Camera.class.getClasses();
      int j = arrayOfClass1.length;
      while (i < j)
      {
        Class localClass = arrayOfClass1[i];
        if (localClass.getName().equals("android.hardware.Camera$CameraInfo"))
        {
          Class[] arrayOfClass2 = new Class[2];
          arrayOfClass2[0] = Integer.TYPE;
          arrayOfClass2[1] = localClass;
          Method localMethod = Camera.class.getMethod("getCameraInfo", arrayOfClass2);
          Object localObject2 = localClass.newInstance();
          Object[] arrayOfObject = new Object[2];
          arrayOfObject[0] = Integer.valueOf(paramInt);
          arrayOfObject[1] = localObject2;
          localMethod.invoke(null, arrayOfObject);
          localObject1 = localObject2;
          return localObject1;
        }
        i++;
      }
    }
    catch (SecurityException localSecurityException)
    {
      while (true)
      {
        localSecurityException.printStackTrace();
        Object localObject1 = null;
      }
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
    catch (InstantiationException localInstantiationException)
    {
      while (true)
        localInstantiationException.printStackTrace();
    }
  }

  private static int c(int paramInt)
  {
    return 90 * ((paramInt + 45) / 90) % 360;
  }

  public static void c()
  {
    try
    {
      Camera localCamera = a;
      if (localCamera != null);
      try
      {
        a.release();
        a = null;
        return;
      }
      catch (Exception localException)
      {
        while (true)
          localException.printStackTrace();
      }
    }
    finally
    {
    }
  }

  private static double[] c(Camera.Parameters paramParameters, boolean paramBoolean)
  {
    double d1;
    double d2;
    double[] arrayOfDouble2;
    if (a == null)
    {
      d1 = 0.0D;
      if (a == null)
      {
        d2 = 0.0D;
        if (d2 <= d1)
          break label247;
        double d3 = Math.floor(d2 / 12.0D);
        if (d3 == 0.0D)
          d3 = 0.5D;
        arrayOfDouble2 = new double[13];
        arrayOfDouble2[0] = d1;
        arrayOfDouble2[12] = d2;
        double d4 = d1 + d3;
        for (int i = 1; i < 12; i++)
        {
          arrayOfDouble2[i] = d4;
          d4 += d3;
        }
      }
    }
    else
    {
      if (!paramBoolean)
        break label259;
    }
    label259: for (String str1 = paramParameters.get("taking-picture-zoom-min"); ; str1 = null)
    {
      if (str1 == null)
      {
        str1 = paramParameters.get("min-zoom");
        if (str1 == null)
        {
          str1 = paramParameters.get("mot-min-picture-continuous-zoom");
          if (str1 == null)
          {
            str1 = paramParameters.get("digi-zoom");
            if (str1 == null)
            {
              d1 = 1.0D;
              break;
            }
          }
        }
      }
      d1 = Double.valueOf(str1).doubleValue();
      break;
      if (paramBoolean);
      for (String str2 = paramParameters.get("taking-picture-zoom-max"); ; str2 = null)
      {
        if (str2 == null)
        {
          str2 = paramParameters.get("max-zoom");
          if (str2 == null)
          {
            str2 = paramParameters.get("mot-max-picture-continuous-zoom");
            if (str2 == null)
            {
              str2 = paramParameters.get("digi-zoom");
              if (str2 == null)
              {
                d2 = 0.0D;
                break;
              }
            }
          }
        }
        d2 = Double.valueOf(str2).doubleValue();
        break;
        label247: for (double[] arrayOfDouble1 = arrayOfDouble2; ; arrayOfDouble1 = null)
          return arrayOfDouble1;
      }
    }
  }

  public static int d()
  {
    if (Build.VERSION.SDK_INT > 8);
    label153: 
    while (true)
    {
      int j;
      try
      {
        Method localMethod = Camera.class.getMethod("getNumberOfCameras", new Class[0]);
        if (localMethod != null)
        {
          Object localObject = localMethod.invoke(null, new Object[0]);
          if ((localObject != null) && ((localObject instanceof Integer)))
          {
            int k = ((Integer)localObject).intValue();
            j = k;
            return j;
          }
        }
      }
      catch (SecurityException localSecurityException)
      {
        localSecurityException.printStackTrace();
        j = 1;
        continue;
      }
      catch (NoSuchMethodException localNoSuchMethodException)
      {
        localNoSuchMethodException.printStackTrace();
        continue;
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        localIllegalArgumentException.printStackTrace();
        continue;
      }
      catch (IllegalAccessException localIllegalAccessException)
      {
        localIllegalAccessException.printStackTrace();
        continue;
      }
      catch (InvocationTargetException localInvocationTargetException)
      {
        localInvocationTargetException.printStackTrace();
        continue;
      }
      if (a != null)
      {
        String str = Build.MODEL;
        if ((str != null) && (str.equals("HTC Incredible S")));
        for (int i = 1; ; i = 0)
        {
          if (i == 0)
            break label153;
          j = 2;
          break;
        }
      }
    }
  }

  private static void d(int paramInt)
  {
    if (a == null);
    while (true)
    {
      return;
      Camera.Parameters localParameters = a.getParameters();
      double[] arrayOfDouble1 = c(localParameters, false);
      if (arrayOfDouble1 != null)
      {
        if (localParameters.get("zoom") != null)
          localParameters.set("zoom", String.valueOf(arrayOfDouble1[paramInt]));
        if (localParameters.get("digi-zoom") != null)
          localParameters.set("digi-zoom", String.valueOf(arrayOfDouble1[paramInt]));
      }
      double[] arrayOfDouble2 = c(localParameters, true);
      if ((arrayOfDouble2 != null) && (localParameters.get("taking-picture-zoom") != null))
        localParameters.set("taking-picture-zoom", String.valueOf(arrayOfDouble2[paramInt]));
      try
      {
        a.setParameters(localParameters);
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
    }
  }

  // ERROR //
  public static void e()
  {
    // Byte code:
    //   0: getstatic 44	com/keniu/security/protection/e:a	Landroid/hardware/Camera;
    //   3: ifnonnull +4 -> 7
    //   6: return
    //   7: getstatic 133	com/keniu/security/protection/e:b	I
    //   10: invokestatic 240	com/keniu/security/protection/e:b	(I)Ljava/lang/Object;
    //   13: astore_1
    //   14: aload_1
    //   15: ifnull +172 -> 187
    //   18: aload_1
    //   19: ldc 242
    //   21: invokestatic 244	com/keniu/security/protection/e:a	(Ljava/lang/Object;Ljava/lang/String;)I
    //   24: istore 9
    //   26: aload_1
    //   27: ldc 246
    //   29: invokestatic 244	com/keniu/security/protection/e:a	(Ljava/lang/Object;Ljava/lang/String;)I
    //   32: istore 10
    //   34: iload 9
    //   36: iconst_1
    //   37: if_icmpne +135 -> 172
    //   40: getstatic 220	android/os/Build:MODEL	Ljava/lang/String;
    //   43: astore 11
    //   45: aload 11
    //   47: ifnull +119 -> 166
    //   50: aload 11
    //   52: ldc 248
    //   54: invokevirtual 252	java/lang/String:equalsIgnoreCase	(Ljava/lang/String;)Z
    //   57: ifeq +109 -> 166
    //   60: iconst_1
    //   61: istore 12
    //   63: iload 12
    //   65: ifne +141 -> 206
    //   68: sipush 360
    //   71: iload 10
    //   73: iconst_0
    //   74: invokestatic 254	com/keniu/security/protection/e:c	(I)I
    //   77: isub
    //   78: iadd
    //   79: sipush 360
    //   82: irem
    //   83: istore_2
    //   84: getstatic 209	android/os/Build$VERSION:SDK_INT	I
    //   87: iconst_4
    //   88: if_icmple -82 -> 6
    //   91: getstatic 44	com/keniu/security/protection/e:a	Landroid/hardware/Camera;
    //   94: invokevirtual 110	android/hardware/Camera:getParameters	()Landroid/hardware/Camera$Parameters;
    //   97: astore_3
    //   98: iconst_1
    //   99: anewarray 83	java/lang/Class
    //   102: astore 5
    //   104: aload 5
    //   106: iconst_0
    //   107: getstatic 162	java/lang/Integer:TYPE	Ljava/lang/Class;
    //   110: aastore
    //   111: aload_3
    //   112: invokevirtual 81	java/lang/Object:getClass	()Ljava/lang/Class;
    //   115: ldc_w 256
    //   118: aload 5
    //   120: invokevirtual 168	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   123: astore 6
    //   125: iconst_1
    //   126: anewarray 4	java/lang/Object
    //   129: astore 7
    //   131: aload 7
    //   133: iconst_0
    //   134: iload_2
    //   135: invokestatic 175	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   138: aastore
    //   139: aload 6
    //   141: aload_3
    //   142: aload 7
    //   144: invokevirtual 181	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   147: pop
    //   148: getstatic 44	com/keniu/security/protection/e:a	Landroid/hardware/Camera;
    //   151: aload_3
    //   152: invokevirtual 122	android/hardware/Camera:setParameters	(Landroid/hardware/Camera$Parameters;)V
    //   155: goto -149 -> 6
    //   158: astore_0
    //   159: aload_0
    //   160: invokevirtual 257	java/lang/RuntimeException:printStackTrace	()V
    //   163: goto -157 -> 6
    //   166: iconst_0
    //   167: istore 12
    //   169: goto -106 -> 63
    //   172: iload 10
    //   174: iconst_0
    //   175: invokestatic 254	com/keniu/security/protection/e:c	(I)I
    //   178: iadd
    //   179: sipush 360
    //   182: irem
    //   183: istore_2
    //   184: goto -100 -> 84
    //   187: bipush 90
    //   189: invokestatic 254	com/keniu/security/protection/e:c	(I)I
    //   192: istore_2
    //   193: goto -109 -> 84
    //   196: astore 4
    //   198: aload 4
    //   200: invokevirtual 191	java/lang/Exception:printStackTrace	()V
    //   203: goto -55 -> 148
    //   206: iconst_0
    //   207: istore_2
    //   208: goto -124 -> 84
    //
    // Exception table:
    //   from	to	target	type
    //   7	98	158	java/lang/RuntimeException
    //   98	148	158	java/lang/RuntimeException
    //   148	155	158	java/lang/RuntimeException
    //   172	203	158	java/lang/RuntimeException
    //   98	148	196	java/lang/Exception
  }

  private static Camera f()
  {
    if (Build.VERSION.SDK_INT > 8);
    while (true)
    {
      try
      {
        Class[] arrayOfClass = new Class[1];
        arrayOfClass[0] = Integer.TYPE;
        Method localMethod = Camera.class.getMethod("open", arrayOfClass);
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = new Integer(1);
        localCamera = (Camera)localMethod.invoke(null, arrayOfObject);
        return localCamera;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        localCamera = null;
        continue;
      }
      Camera localCamera = g();
    }
  }

  private static Camera g()
  {
    try
    {
      localCamera = (Camera)Class.forName("android.hardware.HtcFrontFacingCamera").getMethod("getCamera", new Class[0]).invoke(null, new Object[0]);
      return localCamera;
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.printStackTrace();
        Camera localCamera = null;
      }
    }
  }

  private static int h()
  {
    return b;
  }

  private static boolean i()
  {
    boolean bool2;
    if (a == null)
      bool2 = false;
    while (true)
    {
      return bool2;
      Camera.Parameters localParameters = a.getParameters();
      if (localParameters.get("mot-max-picture-continuous-zoom") != null)
      {
        bool2 = true;
      }
      else
      {
        if (localParameters.get("digi-zoom") != null)
        {
          if ((Build.DEVICE.contains("SPH-M900")) && (Build.VERSION.RELEASE.contains("1.5")));
          for (int i = 1; ; i = 0)
          {
            if (i != 0)
              break label83;
            bool2 = true;
            break;
          }
        }
        try
        {
          label83: Method localMethod = localParameters.getClass().getMethod("isZoomSupported", new Class[0]);
          Object localObject = localMethod.invoke(localMethod, new Object[0]);
          if (localObject != null)
          {
            boolean bool3 = ((Boolean)localObject).booleanValue();
            bool1 = bool3;
            if ((!bool1) || (localParameters.get("zoom") == null))
              break label158;
            bool2 = true;
          }
        }
        catch (Exception localException)
        {
          while (true)
          {
            localException.printStackTrace();
            boolean bool1 = false;
          }
          label158: bool2 = false;
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.protection.e
 * JD-Core Version:    0.6.2
 */