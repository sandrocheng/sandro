package org.antivirus.core.a;

import android.content.Context;
import android.os.Bundle;
import android.os.Message;
import java.util.Iterator;
import java.util.LinkedList;
import org.antivirus.core.Engine;
import org.antivirus.core.Logger;

public final class z extends v
{
  private final String a = "droid.cloud.avg.com";
  private final int b = 3;
  private LinkedList c = new LinkedList();

  // ERROR //
  private int a(Context paramContext, aa paramaa)
  {
    // Byte code:
    //   0: aload_1
    //   1: aload_0
    //   2: getfield 32	org/antivirus/core/a/z:i	Lorg/antivirus/core/EngineSettings;
    //   5: invokestatic 38	org/antivirus/core/telephony/TelephonyInfo:getUniqueId	(Landroid/content/Context;Lorg/antivirus/core/EngineSettings;)Ljava/lang/String;
    //   8: astore 6
    //   10: iconst_3
    //   11: anewarray 40	java/lang/Object
    //   14: astore 7
    //   16: aload 7
    //   18: iconst_0
    //   19: aload 6
    //   21: aastore
    //   22: aload 7
    //   24: iconst_1
    //   25: aload_2
    //   26: getfield 43	org/antivirus/core/a/aa:a	Ljava/lang/String;
    //   29: aastore
    //   30: aload 7
    //   32: iconst_2
    //   33: aload_2
    //   34: getfield 45	org/antivirus/core/a/aa:b	Ljava/lang/String;
    //   37: aastore
    //   38: aconst_null
    //   39: ldc 47
    //   41: aload 7
    //   43: invokestatic 53	java/lang/String:format	(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   46: astore 8
    //   48: new 55	java/lang/StringBuilder
    //   51: dup
    //   52: invokespecial 56	java/lang/StringBuilder:<init>	()V
    //   55: aload 8
    //   57: invokevirtual 60	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   60: ldc 62
    //   62: invokevirtual 60	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   65: invokevirtual 66	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   68: invokevirtual 70	java/lang/String:getBytes	()[B
    //   71: invokestatic 75	org/a/a/a/b/a:a	([B)Ljava/lang/String;
    //   74: astore 9
    //   76: new 77	java/net/URL
    //   79: dup
    //   80: new 55	java/lang/StringBuilder
    //   83: dup
    //   84: invokespecial 56	java/lang/StringBuilder:<init>	()V
    //   87: ldc 79
    //   89: invokevirtual 60	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   92: aload 8
    //   94: invokevirtual 60	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   97: ldc 81
    //   99: invokevirtual 60	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   102: aload 9
    //   104: invokevirtual 60	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   107: invokevirtual 66	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   110: invokespecial 84	java/net/URL:<init>	(Ljava/lang/String;)V
    //   113: invokevirtual 88	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   116: checkcast 90	java/net/HttpURLConnection
    //   119: astore 10
    //   121: aload 10
    //   123: iconst_0
    //   124: invokevirtual 94	java/net/HttpURLConnection:setUseCaches	(Z)V
    //   127: aload 10
    //   129: ldc 96
    //   131: ldc 98
    //   133: invokevirtual 102	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   136: aload 10
    //   138: ldc 104
    //   140: ldc 98
    //   142: invokevirtual 102	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   145: aload 10
    //   147: ldc 106
    //   149: invokevirtual 109	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   152: aload 10
    //   154: ldc 111
    //   156: ldc 16
    //   158: invokevirtual 102	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   161: aload 10
    //   163: invokevirtual 114	java/net/HttpURLConnection:connect	()V
    //   166: aload 10
    //   168: invokevirtual 118	java/net/HttpURLConnection:getResponseCode	()I
    //   171: istore 12
    //   173: aload 10
    //   175: invokevirtual 121	java/net/HttpURLConnection:getContentLength	()I
    //   178: pop
    //   179: iload 12
    //   181: sipush 200
    //   184: if_icmpeq +33 -> 217
    //   187: iconst_2
    //   188: istore 5
    //   190: iload 5
    //   192: ireturn
    //   193: astore_3
    //   194: aconst_null
    //   195: astore 4
    //   197: aload 4
    //   199: ifnull +8 -> 207
    //   202: aload 4
    //   204: invokevirtual 124	java/net/HttpURLConnection:disconnect	()V
    //   207: aload_3
    //   208: invokestatic 130	org/antivirus/core/Logger:log	(Ljava/lang/Exception;)V
    //   211: iconst_1
    //   212: istore 5
    //   214: goto -24 -> 190
    //   217: iconst_0
    //   218: istore 5
    //   220: goto -30 -> 190
    //   223: astore 11
    //   225: aload 10
    //   227: astore 4
    //   229: aload 11
    //   231: astore_3
    //   232: goto -35 -> 197
    //
    // Exception table:
    //   from	to	target	type
    //   0	121	193	java/lang/Exception
    //   121	179	223	java/lang/Exception
  }

  public static void a(Engine paramEngine, String paramString1, String paramString2)
  {
    try
    {
      Bundle localBundle = new Bundle();
      localBundle.putString("pkg", paramString1);
      localBundle.putString("action", paramString2);
      paramEngine.sendCommMessage(1131, localBundle);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        Logger.log(localException);
    }
  }

  public final boolean a()
  {
    return false;
  }

  public final boolean a(Context paramContext)
  {
    Iterator localIterator = this.c.iterator();
    boolean bool1 = true;
    aa localaa;
    int i;
    boolean bool2;
    if (localIterator.hasNext())
    {
      localaa = (aa)localIterator.next();
      i = a(paramContext, localaa);
      bool2 = false;
      if (i != 1);
    }
    while (true)
    {
      return bool2;
      if (i == 2)
      {
        localaa.c = (1 + localaa.c);
        if (localaa.c < 3)
        {
          bool1 = false;
          break;
        }
      }
      localIterator.remove();
      break;
      bool2 = bool1;
    }
  }

  public final boolean a(Context paramContext, Message paramMessage)
  {
    Bundle localBundle = (Bundle)paramMessage.obj;
    aa localaa = new aa((byte)0);
    localaa.a = localBundle.getString("pkg");
    localaa.b = localBundle.getString("action");
    localaa.c = 0;
    this.c.add(localaa);
    return true;
  }

  public final boolean a(Context paramContext, Object paramObject)
  {
    return true;
  }

  public final q b()
  {
    return q.b;
  }

  public final int c()
  {
    return 1131;
  }

  public final String d()
  {
    return null;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.core.a.z
 * JD-Core Version:    0.6.2
 */