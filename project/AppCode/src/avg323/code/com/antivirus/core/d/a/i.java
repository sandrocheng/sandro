package com.antivirus.core.d.a;

import android.content.Context;
import android.os.Bundle;
import android.os.Message;
import com.avg.toolkit.b.e;
import com.avg.toolkit.b.g;
import java.util.Iterator;
import java.util.LinkedList;

public class i extends g
{
  private final String a = "droid.cloud.avg.com";
  private final int b = 3;
  private com.avg.toolkit.UID.a c = null;
  private LinkedList d = new LinkedList();

  // ERROR //
  private int a(Context paramContext, k paramk)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aload_0
    //   3: getfield 24	com/antivirus/core/d/a/i:c	Lcom/avg/toolkit/UID/a;
    //   6: invokevirtual 37	com/avg/toolkit/UID/a:a	()Ljava/lang/String;
    //   9: astore 8
    //   11: aconst_null
    //   12: checkcast 39	java/util/Locale
    //   15: astore 9
    //   17: iconst_3
    //   18: anewarray 41	java/lang/Object
    //   21: astore 10
    //   23: aload 10
    //   25: iconst_0
    //   26: aload 8
    //   28: aastore
    //   29: aload 10
    //   31: iconst_1
    //   32: aload_2
    //   33: getfield 44	com/antivirus/core/d/a/k:a	Ljava/lang/String;
    //   36: aastore
    //   37: aload 10
    //   39: iconst_2
    //   40: aload_2
    //   41: getfield 46	com/antivirus/core/d/a/k:b	Ljava/lang/String;
    //   44: aastore
    //   45: aload 9
    //   47: ldc 48
    //   49: aload 10
    //   51: invokestatic 54	java/lang/String:format	(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   54: astore 11
    //   56: new 56	java/lang/StringBuilder
    //   59: dup
    //   60: invokespecial 57	java/lang/StringBuilder:<init>	()V
    //   63: aload 11
    //   65: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   68: ldc 63
    //   70: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   73: invokevirtual 66	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   76: invokevirtual 70	java/lang/String:getBytes	()[B
    //   79: invokestatic 75	a/a/a/a/b/a:b	([B)Ljava/lang/String;
    //   82: astore 12
    //   84: new 77	java/net/URL
    //   87: dup
    //   88: new 56	java/lang/StringBuilder
    //   91: dup
    //   92: invokespecial 57	java/lang/StringBuilder:<init>	()V
    //   95: ldc 79
    //   97: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   100: aload 11
    //   102: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   105: ldc 81
    //   107: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   110: aload 12
    //   112: invokevirtual 61	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   115: invokevirtual 66	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   118: invokespecial 84	java/net/URL:<init>	(Ljava/lang/String;)V
    //   121: invokevirtual 88	java/net/URL:openConnection	()Ljava/net/URLConnection;
    //   124: checkcast 90	java/net/HttpURLConnection
    //   127: astore 13
    //   129: aload 13
    //   131: iconst_0
    //   132: invokevirtual 94	java/net/HttpURLConnection:setUseCaches	(Z)V
    //   135: aload 13
    //   137: ldc 96
    //   139: ldc 98
    //   141: invokevirtual 102	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   144: aload 13
    //   146: ldc 104
    //   148: ldc 98
    //   150: invokevirtual 102	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   153: aload 13
    //   155: ldc 106
    //   157: invokevirtual 109	java/net/HttpURLConnection:setRequestMethod	(Ljava/lang/String;)V
    //   160: aload 13
    //   162: ldc 111
    //   164: ldc 18
    //   166: invokevirtual 102	java/net/HttpURLConnection:setRequestProperty	(Ljava/lang/String;Ljava/lang/String;)V
    //   169: aload 13
    //   171: invokevirtual 114	java/net/HttpURLConnection:connect	()V
    //   174: aload 13
    //   176: invokevirtual 118	java/net/HttpURLConnection:getResponseCode	()I
    //   179: istore 16
    //   181: aload 13
    //   183: invokevirtual 121	java/net/HttpURLConnection:getContentLength	()I
    //   186: pop
    //   187: iload 16
    //   189: sipush 200
    //   192: if_icmpeq +58 -> 250
    //   195: aload 13
    //   197: ifnull +8 -> 205
    //   200: aload 13
    //   202: invokevirtual 124	java/net/HttpURLConnection:disconnect	()V
    //   205: iconst_2
    //   206: istore 7
    //   208: iload 7
    //   210: ireturn
    //   211: astore 5
    //   213: aconst_null
    //   214: astore 6
    //   216: aload 5
    //   218: invokestatic 129	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   221: aload 6
    //   223: ifnull +8 -> 231
    //   226: aload 6
    //   228: invokevirtual 124	java/net/HttpURLConnection:disconnect	()V
    //   231: iconst_1
    //   232: istore 7
    //   234: goto -26 -> 208
    //   237: astore 4
    //   239: aload_3
    //   240: ifnull +7 -> 247
    //   243: aload_3
    //   244: invokevirtual 124	java/net/HttpURLConnection:disconnect	()V
    //   247: aload 4
    //   249: athrow
    //   250: aload 13
    //   252: ifnull +8 -> 260
    //   255: aload 13
    //   257: invokevirtual 124	java/net/HttpURLConnection:disconnect	()V
    //   260: iconst_0
    //   261: istore 7
    //   263: goto -55 -> 208
    //   266: astore 15
    //   268: aload 13
    //   270: astore_3
    //   271: aload 15
    //   273: astore 4
    //   275: goto -36 -> 239
    //   278: astore 4
    //   280: aload 6
    //   282: astore_3
    //   283: goto -44 -> 239
    //   286: astore 14
    //   288: aload 13
    //   290: astore 6
    //   292: aload 14
    //   294: astore 5
    //   296: goto -80 -> 216
    //
    // Exception table:
    //   from	to	target	type
    //   2	129	211	java/lang/Exception
    //   2	129	237	finally
    //   129	187	266	finally
    //   216	221	278	finally
    //   129	187	286	java/lang/Exception
  }

  public static void a(Context paramContext, String paramString1, String paramString2)
  {
    try
    {
      Bundle localBundle = new Bundle();
      localBundle.putString("pkg", paramString1);
      localBundle.putString("action", paramString2);
      com.antivirus.core.a.a(paramContext, 4000, 2007, localBundle);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        com.avg.toolkit.f.a.a(localException);
    }
  }

  public e a()
  {
    return e.b;
  }

  public boolean a(Context paramContext)
  {
    return false;
  }

  public boolean a(Context paramContext, Message paramMessage)
  {
    Bundle localBundle = (Bundle)paramMessage.obj;
    k localk = new k(null);
    localk.a = localBundle.getString("pkg");
    localk.b = localBundle.getString("action");
    localk.c = 0;
    this.d.add(localk);
    return true;
  }

  public boolean a(Context paramContext, Object paramObject)
  {
    return true;
  }

  public boolean b(Context paramContext)
  {
    if (this.c == null)
      this.c = new com.avg.toolkit.UID.a(paramContext);
    Iterator localIterator = this.d.iterator();
    boolean bool1 = true;
    boolean bool2;
    if (localIterator.hasNext())
    {
      String str = this.c.a();
      bool2 = false;
      if (str != null);
    }
    while (true)
    {
      return bool2;
      k localk = (k)localIterator.next();
      int i = a(paramContext, localk);
      bool2 = false;
      if (i != 1)
      {
        boolean bool3;
        if (i == 2)
        {
          localk.c = (1 + localk.c);
          if (localk.c >= 3)
          {
            localIterator.remove();
            bool3 = bool1;
          }
        }
        while (true)
        {
          bool1 = bool3;
          break;
          bool3 = false;
          continue;
          localIterator.remove();
          bool3 = bool1;
        }
        bool2 = bool1;
      }
    }
  }

  public int b_()
  {
    return 2007;
  }

  public String c()
  {
    return null;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.core.d.a.i
 * JD-Core Version:    0.6.2
 */