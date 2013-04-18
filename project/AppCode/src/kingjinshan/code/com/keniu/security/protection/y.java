package com.keniu.security.protection;

import android.content.Context;
import android.os.IBinder;
import android.os.Parcel;
import java.lang.reflect.Field;

public final class y
{
  private static final String b = "IMountService";
  private IBinder a;

  public y(Context paramContext)
  {
    Object localObject1 = paramContext.getSystemService("storage");
    if (localObject1 != null);
    try
    {
      Field localField1 = localObject1.getClass().getDeclaredField("mMountService");
      if (localField1 != null)
      {
        localField1.setAccessible(true);
        Object localObject2 = localField1.get(localObject1);
        if (localObject2 != null)
        {
          Field localField2 = localObject2.getClass().getDeclaredField("mRemote");
          if (localField2 != null)
          {
            localField2.setAccessible(true);
            this.a = ((IBinder)localField2.get(localObject2));
          }
        }
      }
      return;
    }
    catch (SecurityException localSecurityException)
    {
      while (true)
        localSecurityException.printStackTrace();
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

  private int a(String paramString)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("IMountService");
      localParcel1.writeString(paramString);
      this.a.transact(6, localParcel1, localParcel2, 0);
      localParcel2.readException();
      int i = localParcel2.readInt();
      return i;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  private int a(String paramString1, int paramInt1, String paramString2, String paramString3, int paramInt2)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("IMountService");
      localParcel1.writeString(paramString1);
      localParcel1.writeInt(paramInt1);
      localParcel1.writeString(paramString2);
      localParcel1.writeString(paramString3);
      localParcel1.writeInt(paramInt2);
      this.a.transact(11, localParcel1, localParcel2, 0);
      localParcel2.readException();
      int i = localParcel2.readInt();
      return i;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  private int a(String paramString1, String paramString2)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("IMountService");
      localParcel1.writeString(paramString1);
      localParcel1.writeString(paramString2);
      this.a.transact(17, localParcel1, localParcel2, 0);
      localParcel2.readException();
      int i = localParcel2.readInt();
      return i;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  private int a(String paramString1, String paramString2, int paramInt)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("IMountService");
      localParcel1.writeString(paramString1);
      localParcel1.writeString(paramString2);
      localParcel1.writeInt(paramInt);
      this.a.transact(14, localParcel1, localParcel2, 0);
      localParcel2.readException();
      int i = localParcel2.readInt();
      return i;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  private void a(Context paramContext)
  {
    Object localObject1 = paramContext.getSystemService("storage");
    if (localObject1 != null);
    try
    {
      Field localField1 = localObject1.getClass().getDeclaredField("mMountService");
      if (localField1 != null)
      {
        localField1.setAccessible(true);
        Object localObject2 = localField1.get(localObject1);
        if (localObject2 != null)
        {
          Field localField2 = localObject2.getClass().getDeclaredField("mRemote");
          if (localField2 != null)
          {
            localField2.setAccessible(true);
            this.a = ((IBinder)localField2.get(localObject2));
          }
        }
      }
      return;
    }
    catch (SecurityException localSecurityException)
    {
      while (true)
        localSecurityException.printStackTrace();
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

  private void a(String paramString, boolean paramBoolean)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("IMountService");
      localParcel1.writeString(paramString);
      if (paramBoolean)
      {
        i = 1;
        localParcel1.writeInt(i);
        this.a.transact(7, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
      }
      int i = 0;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  private int b(String paramString)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("IMountService");
      localParcel1.writeString(paramString);
      this.a.transact(8, localParcel1, localParcel2, 0);
      localParcel2.readException();
      int i = localParcel2.readInt();
      return i;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  private int b(String paramString, boolean paramBoolean)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("IMountService");
      localParcel1.writeString(paramString);
      if (paramBoolean)
      {
        i = 1;
        localParcel1.writeInt(i);
        this.a.transact(13, localParcel1, localParcel2, 0);
        localParcel2.readException();
        int j = localParcel2.readInt();
        return j;
      }
      int i = 0;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  private void b(boolean paramBoolean)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("IMountService");
      if (paramBoolean)
      {
        i = 1;
        localParcel1.writeInt(i);
        this.a.transact(4, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
      }
      int i = 0;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  private boolean b()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("IMountService");
      this.a.transact(3, localParcel1, localParcel2, 0);
      localParcel2.readException();
      int i = localParcel2.readInt();
      if (i != 0)
      {
        bool = true;
        return bool;
      }
      boolean bool = false;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  private int c(String paramString, boolean paramBoolean)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("IMountService");
      localParcel1.writeString(paramString);
      if (paramBoolean)
      {
        i = 1;
        localParcel1.writeInt(i);
        this.a.transact(15, localParcel1, localParcel2, 0);
        localParcel2.readException();
        int j = localParcel2.readInt();
        return j;
      }
      int i = 0;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  private void c(boolean paramBoolean)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("android.os.storage.IMountService");
      if (paramBoolean)
      {
        i = 1;
        localParcel1.writeInt(i);
        this.a.transact(4, localParcel1, localParcel2, 0);
        localParcel2.readException();
        return;
      }
      int i = 0;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  private boolean c()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("IMountService");
      this.a.transact(5, localParcel1, localParcel2, 0);
      localParcel2.readException();
      int i = localParcel2.readInt();
      if (i != 0)
      {
        bool = true;
        return bool;
      }
      boolean bool = false;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  private int[] c(String paramString)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("IMountService");
      localParcel1.writeString(paramString);
      this.a.transact(9, localParcel1, localParcel2, 0);
      localParcel2.readException();
      int[] arrayOfInt = localParcel2.createIntArray();
      return arrayOfInt;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  private String d(String paramString)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("IMountService");
      localParcel1.writeString(paramString);
      this.a.transact(10, localParcel1, localParcel2, 0);
      localParcel2.readException();
      String str = localParcel2.readString();
      return str;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  private String[] d()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("IMountService");
      this.a.transact(19, localParcel1, localParcel2, 0);
      localParcel2.readException();
      String[] arrayOfString = localParcel2.createStringArray();
      return arrayOfString;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  private int e(String paramString)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("IMountService");
      localParcel1.writeString(paramString);
      this.a.transact(12, localParcel1, localParcel2, 0);
      localParcel2.readException();
      int i = localParcel2.readInt();
      return i;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  private void e()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("IMountService");
      this.a.transact(21, localParcel1, localParcel2, 0);
      localParcel2.readException();
      return;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  private boolean f(String paramString)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("IMountService");
      localParcel1.writeString(paramString);
      this.a.transact(16, localParcel1, localParcel2, 0);
      localParcel2.readException();
      int i = localParcel2.readInt();
      if (i != 0)
      {
        bool = true;
        return bool;
      }
      boolean bool = false;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  private String g(String paramString)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("IMountService");
      localParcel1.writeString(paramString);
      this.a.transact(18, localParcel1, localParcel2, 0);
      localParcel2.readException();
      String str = localParcel2.readString();
      return str;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  private boolean h(String paramString)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("IMountService");
      localParcel1.writeString(paramString);
      this.a.transact(24, localParcel1, localParcel2, 0);
      localParcel2.readException();
      int i = localParcel2.readInt();
      if (i != 0)
      {
        bool = true;
        return bool;
      }
      boolean bool = false;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  private String i(String paramString)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("IMountService");
      localParcel1.writeString(paramString);
      this.a.transact(25, localParcel1, localParcel2, 0);
      localParcel2.readException();
      String str = localParcel2.readString();
      return str;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  // ERROR //
  public final void a(boolean paramBoolean)
  {
    // Byte code:
    //   0: invokestatic 72	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   3: astore 9
    //   5: invokestatic 72	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   8: astore 10
    //   10: aload 9
    //   12: ldc 8
    //   14: invokevirtual 76	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   17: iload_1
    //   18: ifeq +144 -> 162
    //   21: iconst_1
    //   22: istore 12
    //   24: aload 9
    //   26: iload 12
    //   28: invokevirtual 98	android/os/Parcel:writeInt	(I)V
    //   31: aload_0
    //   32: getfield 59	com/keniu/security/protection/y:a	Landroid/os/IBinder;
    //   35: iconst_4
    //   36: aload 9
    //   38: aload 10
    //   40: iconst_0
    //   41: invokeinterface 83 5 0
    //   46: pop
    //   47: aload 10
    //   49: invokevirtual 86	android/os/Parcel:readException	()V
    //   52: aload 10
    //   54: invokevirtual 93	android/os/Parcel:recycle	()V
    //   57: aload 9
    //   59: invokevirtual 93	android/os/Parcel:recycle	()V
    //   62: goto +99 -> 161
    //   65: astore 11
    //   67: aload 10
    //   69: invokevirtual 93	android/os/Parcel:recycle	()V
    //   72: aload 9
    //   74: invokevirtual 93	android/os/Parcel:recycle	()V
    //   77: aload 11
    //   79: athrow
    //   80: astore_2
    //   81: invokestatic 72	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   84: astore 4
    //   86: invokestatic 72	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   89: astore 5
    //   91: aload 4
    //   93: ldc 106
    //   95: invokevirtual 76	android/os/Parcel:writeInterfaceToken	(Ljava/lang/String;)V
    //   98: iload_1
    //   99: ifeq +73 -> 172
    //   102: iconst_1
    //   103: istore 7
    //   105: aload 4
    //   107: iload 7
    //   109: invokevirtual 98	android/os/Parcel:writeInt	(I)V
    //   112: aload_0
    //   113: getfield 59	com/keniu/security/protection/y:a	Landroid/os/IBinder;
    //   116: iconst_4
    //   117: aload 4
    //   119: aload 5
    //   121: iconst_0
    //   122: invokeinterface 83 5 0
    //   127: pop
    //   128: aload 5
    //   130: invokevirtual 86	android/os/Parcel:readException	()V
    //   133: aload 5
    //   135: invokevirtual 93	android/os/Parcel:recycle	()V
    //   138: aload 4
    //   140: invokevirtual 93	android/os/Parcel:recycle	()V
    //   143: goto +18 -> 161
    //   146: astore 6
    //   148: aload 5
    //   150: invokevirtual 93	android/os/Parcel:recycle	()V
    //   153: aload 4
    //   155: invokevirtual 93	android/os/Parcel:recycle	()V
    //   158: aload 6
    //   160: athrow
    //   161: return
    //   162: iconst_0
    //   163: istore 12
    //   165: goto -141 -> 24
    //   168: astore_3
    //   169: goto -8 -> 161
    //   172: iconst_0
    //   173: istore 7
    //   175: goto -70 -> 105
    //
    // Exception table:
    //   from	to	target	type
    //   10	52	65	finally
    //   0	10	80	java/lang/Exception
    //   52	80	80	java/lang/Exception
    //   91	133	146	finally
    //   81	91	168	java/lang/Exception
    //   133	161	168	java/lang/Exception
  }

  public final boolean a()
  {
    if (this.a != null);
    for (boolean bool = true; ; bool = false)
      return bool;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.protection.y
 * JD-Core Version:    0.6.2
 */