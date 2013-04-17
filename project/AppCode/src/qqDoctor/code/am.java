import android.os.IBinder;
import com.android.internal.telephony.ISms;
import com.android.internal.telephony.ISms.Stub;
import java.lang.reflect.Method;

final class am
  implements an
{
  public final ISms a(int paramInt)
  {
    String str;
    if (paramInt == 0)
      str = "isms";
    try
    {
      ISms localISms2 = ISms.Stub.asInterface((IBinder)Class.forName("android.os.ServiceManager").getMethod("getService", new Class[] { String.class }).invoke(null, new Object[] { str }));
      for (localISms1 = localISms2; ; localISms1 = null)
      {
        return localISms1;
        if (paramInt == 1)
        {
          str = "isms2";
          break;
        }
      }
    }
    catch (Throwable localThrowable)
    {
      while (true)
      {
        localThrowable.toString();
        localThrowable.printStackTrace();
        ISms localISms1 = null;
      }
    }
  }

  // ERROR //
  public final com.android.internal.telephony.ITelephony a(android.content.Context paramContext, int paramInt)
  {
    // Byte code:
    //   0: iload_2
    //   1: ifne +10 -> 11
    //   4: aload_1
    //   5: invokestatic 70	a:a	(Landroid/content/Context;)Lcom/android/internal/telephony/ITelephony;
    //   8: astore_3
    //   9: aload_3
    //   10: areturn
    //   11: iload_2
    //   12: iconst_1
    //   13: if_icmpne +111 -> 124
    //   16: aload_1
    //   17: ldc 72
    //   19: invokevirtual 78	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   22: invokevirtual 82	java/lang/Object:getClass	()Ljava/lang/Class;
    //   25: ldc 84
    //   27: aconst_null
    //   28: invokevirtual 87	java/lang/Class:getDeclaredMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   31: astore 10
    //   33: aload 10
    //   35: astore 5
    //   37: aload 5
    //   39: iconst_1
    //   40: invokevirtual 91	java/lang/reflect/Method:setAccessible	(Z)V
    //   43: aload 5
    //   45: aload_1
    //   46: ldc 72
    //   48: invokevirtual 78	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   51: aconst_null
    //   52: invokevirtual 38	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   55: checkcast 93	com/android/internal/telephony/ITelephony
    //   58: astore_3
    //   59: goto -50 -> 9
    //   62: astore 9
    //   64: aconst_null
    //   65: astore 5
    //   67: aload 9
    //   69: invokevirtual 94	java/lang/SecurityException:printStackTrace	()V
    //   72: goto -29 -> 43
    //   75: astore 4
    //   77: aconst_null
    //   78: astore 5
    //   80: aload 4
    //   82: invokevirtual 95	java/lang/NoSuchMethodException:printStackTrace	()V
    //   85: goto -42 -> 43
    //   88: astore 8
    //   90: aload 8
    //   92: invokevirtual 96	java/lang/IllegalArgumentException:printStackTrace	()V
    //   95: aconst_null
    //   96: astore_3
    //   97: goto -88 -> 9
    //   100: astore 7
    //   102: aload 7
    //   104: invokevirtual 97	java/lang/IllegalAccessException:printStackTrace	()V
    //   107: aconst_null
    //   108: astore_3
    //   109: goto -100 -> 9
    //   112: astore 6
    //   114: aload 6
    //   116: invokevirtual 98	java/lang/reflect/InvocationTargetException:printStackTrace	()V
    //   119: aconst_null
    //   120: astore_3
    //   121: goto -112 -> 9
    //   124: aconst_null
    //   125: astore_3
    //   126: goto -117 -> 9
    //   129: astore 4
    //   131: goto -51 -> 80
    //   134: astore 9
    //   136: goto -69 -> 67
    //
    // Exception table:
    //   from	to	target	type
    //   16	33	62	java/lang/SecurityException
    //   16	33	75	java/lang/NoSuchMethodException
    //   43	59	88	java/lang/IllegalArgumentException
    //   43	59	100	java/lang/IllegalAccessException
    //   43	59	112	java/lang/reflect/InvocationTargetException
    //   37	43	129	java/lang/NoSuchMethodException
    //   37	43	134	java/lang/SecurityException
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     am
 * JD-Core Version:    0.6.2
 */