package com.tencent.feedback.eup;

import android.content.Context;
import com.tencent.feedback.common.AppInfo;
import com.tencent.feedback.common.a.b;
import com.tencent.feedback.common.c;
import com.tencent.feedback.common.d;
import java.io.UnsupportedEncodingException;
import java.util.List;

public final class h
  implements Thread.UncaughtExceptionHandler
{
  private static String b = "";
  private static int c = 100;
  private static Thread.UncaughtExceptionHandler d = null;
  private static IEupUserConfirmer e = null;
  private static boolean f = false;
  private static String g = "";
  private static h k = null;
  private Context a = null;
  private boolean h = false;
  private boolean i = false;
  private Thread.UncaughtExceptionHandler j = null;

  private h(Context paramContext)
  {
    this.a = paramContext;
  }

  // ERROR //
  private static com.tencent.feedback.common.a.e a(Context paramContext, Thread paramThread, Throwable paramThrowable)
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnull +11 -> 12
    //   4: aload_1
    //   5: ifnull +7 -> 12
    //   8: aload_2
    //   9: ifnonnull +12 -> 21
    //   12: ldc 60
    //   14: invokestatic 65	com/tencent/feedback/common/c:b	(Ljava/lang/String;)V
    //   17: aconst_null
    //   18: astore_3
    //   19: aload_3
    //   20: areturn
    //   21: new 67	com/tencent/feedback/common/a/e
    //   24: dup
    //   25: invokespecial 68	com/tencent/feedback/common/a/e:<init>	()V
    //   28: astore_3
    //   29: aload_3
    //   30: aload_2
    //   31: invokevirtual 72	java/lang/Throwable:toString	()Ljava/lang/String;
    //   34: invokevirtual 73	com/tencent/feedback/common/a/e:b	(Ljava/lang/String;)V
    //   37: aload_3
    //   38: aload_1
    //   39: invokevirtual 78	java/lang/Thread:getName	()Ljava/lang/String;
    //   42: invokevirtual 80	com/tencent/feedback/common/a/e:c	(Ljava/lang/String;)V
    //   45: aload_3
    //   46: aload_2
    //   47: invokevirtual 84	java/lang/Object:getClass	()Ljava/lang/Class;
    //   50: invokevirtual 87	java/lang/Class:getName	()Ljava/lang/String;
    //   53: invokevirtual 89	com/tencent/feedback/common/a/e:a	(Ljava/lang/String;)V
    //   56: invokestatic 95	com/tencent/feedback/common/CommonInfo:getCommonInfo	()Lcom/tencent/feedback/common/CommonInfo;
    //   59: astore 5
    //   61: aload 5
    //   63: monitorenter
    //   64: aload_3
    //   65: aload 5
    //   67: invokevirtual 99	com/tencent/feedback/common/CommonInfo:getServerTimeGap	()J
    //   70: invokestatic 104	com/tencent/feedback/common/f:a	(J)J
    //   73: invokevirtual 107	com/tencent/feedback/common/a/e:a	(J)V
    //   76: aload 5
    //   78: monitorexit
    //   79: aload_2
    //   80: invokevirtual 111	java/lang/Throwable:getStackTrace	()[Ljava/lang/StackTraceElement;
    //   83: astore 7
    //   85: aload 7
    //   87: ifnull +142 -> 229
    //   90: aload_3
    //   91: aload 7
    //   93: iconst_0
    //   94: aaload
    //   95: invokevirtual 114	java/lang/StackTraceElement:toString	()Ljava/lang/String;
    //   98: invokevirtual 116	com/tencent/feedback/common/a/e:d	(Ljava/lang/String;)V
    //   101: new 118	java/lang/StringBuffer
    //   104: dup
    //   105: invokespecial 119	java/lang/StringBuffer:<init>	()V
    //   108: astore 26
    //   110: aload 26
    //   112: new 121	java/lang/StringBuilder
    //   115: dup
    //   116: invokespecial 122	java/lang/StringBuilder:<init>	()V
    //   119: aload_2
    //   120: invokevirtual 72	java/lang/Throwable:toString	()Ljava/lang/String;
    //   123: invokevirtual 126	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   126: ldc 128
    //   128: invokevirtual 126	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   131: invokevirtual 129	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   134: invokevirtual 132	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   137: pop
    //   138: aload 7
    //   140: arraylength
    //   141: istore 28
    //   143: iconst_0
    //   144: istore 29
    //   146: iload 29
    //   148: iload 28
    //   150: if_icmpge +64 -> 214
    //   153: aload 26
    //   155: aload 7
    //   157: iload 29
    //   159: aaload
    //   160: invokevirtual 114	java/lang/StackTraceElement:toString	()Ljava/lang/String;
    //   163: invokevirtual 132	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   166: pop
    //   167: aload 26
    //   169: ldc 128
    //   171: invokevirtual 132	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   174: pop
    //   175: iinc 29 1
    //   178: goto -32 -> 146
    //   181: astore 6
    //   183: aload 5
    //   185: monitorexit
    //   186: aload 6
    //   188: athrow
    //   189: astore 4
    //   191: ldc 134
    //   193: invokestatic 65	com/tencent/feedback/common/c:b	(Ljava/lang/String;)V
    //   196: aload 4
    //   198: invokevirtual 137	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   201: invokestatic 65	com/tencent/feedback/common/c:b	(Ljava/lang/String;)V
    //   204: aload 4
    //   206: invokevirtual 140	java/lang/Throwable:printStackTrace	()V
    //   209: aconst_null
    //   210: astore_3
    //   211: goto -192 -> 19
    //   214: aload_3
    //   215: aload 26
    //   217: invokevirtual 141	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   220: invokevirtual 143	com/tencent/feedback/common/a/e:g	(Ljava/lang/String;)V
    //   223: aload 26
    //   225: iconst_0
    //   226: invokevirtual 147	java/lang/StringBuffer:setLength	(I)V
    //   229: aload_2
    //   230: invokevirtual 151	java/lang/Throwable:getCause	()Ljava/lang/Throwable;
    //   233: astore 8
    //   235: aload 8
    //   237: ifnull +116 -> 353
    //   240: new 118	java/lang/StringBuffer
    //   243: dup
    //   244: invokespecial 119	java/lang/StringBuffer:<init>	()V
    //   247: astore 9
    //   249: aload 9
    //   251: new 121	java/lang/StringBuilder
    //   254: dup
    //   255: invokespecial 122	java/lang/StringBuilder:<init>	()V
    //   258: ldc 153
    //   260: invokevirtual 126	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   263: aload 8
    //   265: invokevirtual 72	java/lang/Throwable:toString	()Ljava/lang/String;
    //   268: invokevirtual 126	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   271: ldc 128
    //   273: invokevirtual 126	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   276: invokevirtual 129	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   279: invokevirtual 132	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   282: pop
    //   283: aload 8
    //   285: invokevirtual 111	java/lang/Throwable:getStackTrace	()[Ljava/lang/StackTraceElement;
    //   288: astore 11
    //   290: aload 11
    //   292: ifnull +46 -> 338
    //   295: aload 11
    //   297: arraylength
    //   298: istore 22
    //   300: iconst_0
    //   301: istore 23
    //   303: iload 23
    //   305: iload 22
    //   307: if_icmpge +31 -> 338
    //   310: aload 9
    //   312: aload 11
    //   314: iload 23
    //   316: aaload
    //   317: invokevirtual 114	java/lang/StackTraceElement:toString	()Ljava/lang/String;
    //   320: invokevirtual 132	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   323: pop
    //   324: aload 9
    //   326: ldc 128
    //   328: invokevirtual 132	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   331: pop
    //   332: iinc 23 1
    //   335: goto -32 -> 303
    //   338: aload_3
    //   339: aload 9
    //   341: invokevirtual 141	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   344: invokevirtual 155	com/tencent/feedback/common/a/e:i	(Ljava/lang/String;)V
    //   347: aload 9
    //   349: iconst_0
    //   350: invokevirtual 147	java/lang/StringBuffer:setLength	(I)V
    //   353: new 121	java/lang/StringBuilder
    //   356: dup
    //   357: invokespecial 122	java/lang/StringBuilder:<init>	()V
    //   360: ldc 157
    //   362: invokevirtual 126	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   365: aload_3
    //   366: invokevirtual 159	com/tencent/feedback/common/a/e:j	()Ljava/lang/String;
    //   369: invokevirtual 126	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   372: invokevirtual 129	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   375: invokestatic 160	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   378: new 121	java/lang/StringBuilder
    //   381: dup
    //   382: invokespecial 122	java/lang/StringBuilder:<init>	()V
    //   385: ldc 162
    //   387: invokevirtual 126	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   390: aload_3
    //   391: invokevirtual 164	com/tencent/feedback/common/a/e:k	()Ljava/lang/String;
    //   394: invokevirtual 126	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   397: invokevirtual 129	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   400: invokestatic 160	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   403: new 166	com/tencent/feedback/common/a/b
    //   406: dup
    //   407: aload_0
    //   408: invokespecial 168	com/tencent/feedback/common/a/b:<init>	(Landroid/content/Context;)V
    //   411: pop
    //   412: aload_3
    //   413: ldc 170
    //   415: invokevirtual 172	com/tencent/feedback/common/a/e:e	(Ljava/lang/String;)V
    //   418: aload_3
    //   419: new 174	com/tencent/feedback/eup/g
    //   422: dup
    //   423: invokespecial 175	com/tencent/feedback/eup/g:<init>	()V
    //   426: invokevirtual 177	com/tencent/feedback/eup/g:a	()Ljava/lang/String;
    //   429: invokevirtual 179	com/tencent/feedback/common/a/e:f	(Ljava/lang/String;)V
    //   432: invokestatic 184	android/os/Environment:getExternalStorageState	()Ljava/lang/String;
    //   435: ldc 186
    //   437: invokevirtual 192	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   440: istore 13
    //   442: iconst_0
    //   443: istore 14
    //   445: iload 13
    //   447: ifeq +94 -> 541
    //   450: iconst_1
    //   451: istore 14
    //   453: goto +88 -> 541
    //   456: aload_3
    //   457: lload 18
    //   459: invokevirtual 194	com/tencent/feedback/common/a/e:c	(J)V
    //   462: new 196	android/os/StatFs
    //   465: dup
    //   466: ldc 198
    //   468: invokespecial 200	android/os/StatFs:<init>	(Ljava/lang/String;)V
    //   471: astore 20
    //   473: aload 20
    //   475: invokevirtual 204	android/os/StatFs:getBlockSize	()I
    //   478: istore 21
    //   480: aload_3
    //   481: aload 20
    //   483: invokevirtual 207	android/os/StatFs:getAvailableBlocks	()I
    //   486: i2l
    //   487: iload 21
    //   489: i2l
    //   490: lmul
    //   491: invokevirtual 209	com/tencent/feedback/common/a/e:b	(J)V
    //   494: aload_3
    //   495: invokestatic 212	com/tencent/feedback/common/b:a	()Ljava/lang/String;
    //   498: invokevirtual 214	com/tencent/feedback/common/a/e:h	(Ljava/lang/String;)V
    //   501: goto -482 -> 19
    //   504: new 196	android/os/StatFs
    //   507: dup
    //   508: ldc 216
    //   510: invokespecial 200	android/os/StatFs:<init>	(Ljava/lang/String;)V
    //   513: astore 15
    //   515: aload 15
    //   517: invokevirtual 204	android/os/StatFs:getBlockSize	()I
    //   520: istore 16
    //   522: aload 15
    //   524: invokevirtual 207	android/os/StatFs:getAvailableBlocks	()I
    //   527: istore 17
    //   529: iload 17
    //   531: i2l
    //   532: iload 16
    //   534: i2l
    //   535: lmul
    //   536: lstore 18
    //   538: goto -82 -> 456
    //   541: iload 14
    //   543: ifne -39 -> 504
    //   546: lconst_0
    //   547: lstore 18
    //   549: goto -93 -> 456
    //
    // Exception table:
    //   from	to	target	type
    //   64	79	181	finally
    //   21	64	189	java/lang/Throwable
    //   79	189	189	java/lang/Throwable
    //   214	529	189	java/lang/Throwable
  }

  public static h a()
  {
    try
    {
      h localh = k;
      return localh;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static void a(int paramInt)
  {
    int m;
    if (paramInt > 0)
      m = paramInt;
    try
    {
      while (true)
      {
        c = m;
        if (paramInt >= 300)
          break;
        c = paramInt;
        return;
        m = 50;
      }
      paramInt = 300;
    }
    finally
    {
    }
  }

  public static void a(Context paramContext)
  {
    try
    {
      if (k == null)
        k = new h(paramContext);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static void a(IEupUserConfirmer paramIEupUserConfirmer)
  {
    try
    {
      e = paramIEupUserConfirmer;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static void a(String paramString)
  {
    try
    {
      b = paramString;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static void a(Thread.UncaughtExceptionHandler paramUncaughtExceptionHandler)
  {
    try
    {
      d = paramUncaughtExceptionHandler;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static void a(boolean paramBoolean)
  {
    try
    {
      f = paramBoolean;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static Thread.UncaughtExceptionHandler b()
  {
    try
    {
      Thread.UncaughtExceptionHandler localUncaughtExceptionHandler = d;
      return localUncaughtExceptionHandler;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static void b(String paramString)
  {
    try
    {
      g = paramString;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static boolean c()
  {
    try
    {
      boolean bool = f;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static IEupUserConfirmer e()
  {
    try
    {
      IEupUserConfirmer localIEupUserConfirmer = e;
      return localIEupUserConfirmer;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static String f()
  {
    try
    {
      String str = g;
      return str;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private void h()
  {
    try
    {
      c.c("CrashHandler.register() start");
      Thread.UncaughtExceptionHandler localUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
      if (this.j == null)
        this.j = localUncaughtExceptionHandler;
      if (!(localUncaughtExceptionHandler instanceof h))
        Thread.setDefaultUncaughtExceptionHandler(k);
      c.c("CrashHandler.register() end");
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private void i()
  {
    try
    {
      c.c("CrashHandler.unRegister() start");
      if (this.j != null)
        Thread.setDefaultUncaughtExceptionHandler(this.j);
      c.c("CrashHandler.unRegister() end");
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final boolean a(Thread paramThread, Throwable paramThrowable, boolean paramBoolean)
  {
    while (true)
    {
      int n;
      com.tencent.feedback.common.a.e locale1;
      try
      {
        c.c("CrashHandler.handleException() start");
        boolean bool1 = d();
        boolean bool2;
        if (!bool1)
        {
          bool2 = false;
          return bool2;
        }
        if (this.a == null)
        {
          bool2 = false;
          continue;
        }
        if (this.i)
        {
          c.a("crash happen , do not record more eup!");
          bool2 = false;
          continue;
        }
        int m = d.a().a;
        List localList = com.tencent.feedback.common.e.a(this.a, m, "asc", -1);
        if ((localList != null) && (localList.size() >= m))
        {
          n = 0;
          if (n >= localList.size())
            break label509;
          if (((com.tencent.feedback.common.a.e)localList.get(n)).l() != 2)
            break label515;
          locale2 = (com.tencent.feedback.common.a.e)localList.get(n);
          if ((locale2 == null) && (paramBoolean))
            locale2 = (com.tencent.feedback.common.a.e)localList.get(0);
          if (locale2 != null)
          {
            localList.clear();
            localList.add(locale2);
            Context localContext = this.a;
            c.a("EUPDAO.deleteEupList() start");
            if (localContext == null)
            {
              c.b("deleteEupList() have null args!");
              i1 = -1;
              if (i1 > 0)
                continue;
              c.b("can't remove eup datas for insert a new one!");
              bool2 = false;
              continue;
            }
            if (localList.size() <= 0)
              break label521;
            Long[] arrayOfLong = new Long[localList.size()];
            int i2 = 0;
            if (i2 < localList.size())
            {
              arrayOfLong[i2] = Long.valueOf(((com.tencent.feedback.common.a.e)localList.get(i2)).m());
              i2++;
              continue;
            }
            i1 = b.a(localContext, arrayOfLong);
            continue;
          }
          c.a("max size with crash ,can't do insert a catch type");
          bool2 = false;
          continue;
        }
        locale1 = a(this.a, paramThread, paramThrowable);
        if (locale1 == null)
        {
          c.b("collect eup data fail!");
          bool2 = false;
          continue;
        }
        if (AppInfo.isContainReadLogPermission(this.a))
        {
          c.a("read log permission");
          locale1.a(m.a(b, c));
          if (!paramBoolean)
            break label500;
          locale1.a(1);
          c.a("to insert eup info");
          bool2 = com.tencent.feedback.common.e.a(this.a, locale1);
          c.a("result:" + bool2);
          c.c("CrashHandler.handleException() end");
          continue;
        }
      }
      finally
      {
      }
      c.a("cancel read log");
      try
      {
        locale1.a("no permission".getBytes("UTF-8"));
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        locale1.a(new byte[] { 0, 1 });
        localUnsupportedEncodingException.printStackTrace();
      }
      continue;
      label500: locale1.a(2);
      continue;
      label509: com.tencent.feedback.common.a.e locale2 = null;
      continue;
      label515: n++;
      continue;
      label521: int i1 = 0;
    }
  }

  public final void b(boolean paramBoolean)
  {
    try
    {
      c.c("CrashHandler.setEnable() start");
      this.h = paramBoolean;
      if (paramBoolean)
        h();
      while (true)
      {
        c.c("CrashHandler.setEnable() end");
        return;
        i();
      }
    }
    finally
    {
    }
  }

  public final boolean d()
  {
    try
    {
      boolean bool = this.h;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  // ERROR //
  public final void g()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: ldc_w 357
    //   5: invokestatic 160	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   8: aload_0
    //   9: invokevirtual 245	com/tencent/feedback/eup/h:d	()Z
    //   12: istore_2
    //   13: iload_2
    //   14: ifne +6 -> 20
    //   17: aload_0
    //   18: monitorexit
    //   19: return
    //   20: aload_0
    //   21: getfield 48	com/tencent/feedback/eup/h:a	Landroid/content/Context;
    //   24: ifnull -7 -> 17
    //   27: aload_0
    //   28: getfield 52	com/tencent/feedback/eup/h:i	Z
    //   31: ifeq +17 -> 48
    //   34: ldc_w 359
    //   37: invokestatic 248	com/tencent/feedback/common/c:a	(Ljava/lang/String;)V
    //   40: goto -23 -> 17
    //   43: astore_1
    //   44: aload_0
    //   45: monitorexit
    //   46: aload_1
    //   47: athrow
    //   48: invokestatic 95	com/tencent/feedback/common/CommonInfo:getCommonInfo	()Lcom/tencent/feedback/common/CommonInfo;
    //   51: astore_3
    //   52: aload_3
    //   53: monitorenter
    //   54: aload_3
    //   55: invokevirtual 99	com/tencent/feedback/common/CommonInfo:getServerTimeGap	()J
    //   58: invokestatic 104	com/tencent/feedback/common/f:a	(J)J
    //   61: ldc2_w 360
    //   64: lsub
    //   65: lstore 5
    //   67: aload_3
    //   68: monitorexit
    //   69: aload_0
    //   70: getfield 48	com/tencent/feedback/eup/h:a	Landroid/content/Context;
    //   73: ldc2_w 362
    //   76: lload 5
    //   78: invokestatic 366	com/tencent/feedback/common/e:a	(Landroid/content/Context;JJ)I
    //   81: istore 7
    //   83: new 121	java/lang/StringBuilder
    //   86: dup
    //   87: invokespecial 122	java/lang/StringBuilder:<init>	()V
    //   90: ldc_w 368
    //   93: invokevirtual 126	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   96: iload 7
    //   98: invokevirtual 371	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   101: invokevirtual 129	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   104: invokestatic 160	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   107: aload_0
    //   108: getfield 48	com/tencent/feedback/eup/h:a	Landroid/content/Context;
    //   111: astore 8
    //   113: ldc_w 373
    //   116: invokestatic 248	com/tencent/feedback/common/c:a	(Ljava/lang/String;)V
    //   119: aload 8
    //   121: ifnonnull +33 -> 154
    //   124: ldc_w 375
    //   127: invokestatic 248	com/tencent/feedback/common/c:a	(Ljava/lang/String;)V
    //   130: iconst_m1
    //   131: istore 9
    //   133: iload 9
    //   135: ifgt +46 -> 181
    //   138: ldc_w 377
    //   141: invokestatic 248	com/tencent/feedback/common/c:a	(Ljava/lang/String;)V
    //   144: goto -127 -> 17
    //   147: astore 4
    //   149: aload_3
    //   150: monitorexit
    //   151: aload 4
    //   153: athrow
    //   154: aload 8
    //   156: iconst_2
    //   157: newarray int
    //   159: dup
    //   160: iconst_0
    //   161: iconst_2
    //   162: iastore
    //   163: dup
    //   164: iconst_1
    //   165: iconst_1
    //   166: iastore
    //   167: ldc2_w 362
    //   170: ldc2_w 378
    //   173: invokestatic 382	com/tencent/feedback/common/a/b:b	(Landroid/content/Context;[IJJ)I
    //   176: istore 9
    //   178: goto -45 -> 133
    //   181: new 121	java/lang/StringBuilder
    //   184: dup
    //   185: invokespecial 122	java/lang/StringBuilder:<init>	()V
    //   188: ldc_w 384
    //   191: invokevirtual 126	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   194: iload 9
    //   196: invokevirtual 371	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   199: invokevirtual 129	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   202: invokestatic 248	com/tencent/feedback/common/c:a	(Ljava/lang/String;)V
    //   205: invokestatic 386	com/tencent/feedback/eup/h:c	()Z
    //   208: ifne +105 -> 313
    //   211: ldc_w 388
    //   214: invokestatic 248	com/tencent/feedback/common/c:a	(Ljava/lang/String;)V
    //   217: new 390	com/tencent/feedback/eup/i
    //   220: dup
    //   221: aload_0
    //   222: invokespecial 393	com/tencent/feedback/eup/i:<init>	(Lcom/tencent/feedback/eup/h;)V
    //   225: astore 11
    //   227: getstatic 398	android/os/Build$VERSION:SDK	Ljava/lang/String;
    //   230: invokestatic 404	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   233: istore 12
    //   235: iload 12
    //   237: iconst_5
    //   238: if_icmpge +65 -> 303
    //   241: new 406	java/util/Timer
    //   244: dup
    //   245: invokespecial 407	java/util/Timer:<init>	()V
    //   248: new 409	com/tencent/feedback/eup/j
    //   251: dup
    //   252: aload_0
    //   253: aload 11
    //   255: invokespecial 412	com/tencent/feedback/eup/j:<init>	(Lcom/tencent/feedback/eup/h;Ljava/lang/Runnable;)V
    //   258: ldc2_w 413
    //   261: invokevirtual 418	java/util/Timer:schedule	(Ljava/util/TimerTask;J)V
    //   264: new 121	java/lang/StringBuilder
    //   267: dup
    //   268: invokespecial 122	java/lang/StringBuilder:<init>	()V
    //   271: ldc_w 420
    //   274: invokevirtual 126	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   277: iload 12
    //   279: invokevirtual 371	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   282: ldc_w 422
    //   285: invokevirtual 126	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   288: invokevirtual 129	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   291: invokestatic 248	com/tencent/feedback/common/c:a	(Ljava/lang/String;)V
    //   294: ldc_w 424
    //   297: invokestatic 160	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   300: goto -283 -> 17
    //   303: aload 11
    //   305: invokeinterface 429 1 0
    //   310: goto -16 -> 294
    //   313: ldc_w 431
    //   316: invokestatic 160	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   319: new 433	com/tencent/feedback/eup/k
    //   322: dup
    //   323: aload_0
    //   324: invokespecial 434	com/tencent/feedback/eup/k:<init>	(Lcom/tencent/feedback/eup/h;)V
    //   327: astore 10
    //   329: aload 10
    //   331: ldc_w 436
    //   334: invokevirtual 439	java/lang/Thread:setName	(Ljava/lang/String;)V
    //   337: aload 10
    //   339: invokevirtual 442	java/lang/Thread:start	()V
    //   342: ldc_w 444
    //   345: invokestatic 160	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   348: goto -54 -> 294
    //
    // Exception table:
    //   from	to	target	type
    //   2	13	43	finally
    //   20	40	43	finally
    //   48	54	43	finally
    //   69	348	43	finally
    //   54	69	147	finally
  }

  // ERROR //
  public final void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: ldc_w 448
    //   5: invokestatic 160	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   8: aload_0
    //   9: invokevirtual 245	com/tencent/feedback/eup/h:d	()Z
    //   12: istore 4
    //   14: iload 4
    //   16: ifne +6 -> 22
    //   19: aload_0
    //   20: monitorexit
    //   21: return
    //   22: aload_0
    //   23: aload_1
    //   24: aload_2
    //   25: iconst_1
    //   26: invokevirtual 450	com/tencent/feedback/eup/h:a	(Ljava/lang/Thread;Ljava/lang/Throwable;Z)Z
    //   29: pop
    //   30: invokestatic 452	com/tencent/feedback/eup/h:b	()Ljava/lang/Thread$UncaughtExceptionHandler;
    //   33: astore 7
    //   35: aload 7
    //   37: ifnull +18 -> 55
    //   40: ldc_w 454
    //   43: invokestatic 248	com/tencent/feedback/common/c:a	(Ljava/lang/String;)V
    //   46: aload 7
    //   48: aload_1
    //   49: aload_2
    //   50: invokeinterface 456 3 0
    //   55: ldc_w 458
    //   58: invokestatic 160	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   61: aload_0
    //   62: iconst_1
    //   63: putfield 52	com/tencent/feedback/eup/h:i	Z
    //   66: aload_0
    //   67: getfield 54	com/tencent/feedback/eup/h:j	Ljava/lang/Thread$UncaughtExceptionHandler;
    //   70: ifnull +38 -> 108
    //   73: ldc_w 460
    //   76: invokestatic 248	com/tencent/feedback/common/c:a	(Ljava/lang/String;)V
    //   79: aload_0
    //   80: getfield 54	com/tencent/feedback/eup/h:j	Ljava/lang/Thread$UncaughtExceptionHandler;
    //   83: aload_1
    //   84: aload_2
    //   85: invokeinterface 456 3 0
    //   90: goto -71 -> 19
    //   93: astore_3
    //   94: aload_0
    //   95: monitorexit
    //   96: aload_3
    //   97: athrow
    //   98: astore 5
    //   100: aload 5
    //   102: invokevirtual 140	java/lang/Throwable:printStackTrace	()V
    //   105: goto -50 -> 55
    //   108: ldc_w 462
    //   111: invokestatic 248	com/tencent/feedback/common/c:a	(Ljava/lang/String;)V
    //   114: invokestatic 467	android/os/Process:myPid	()I
    //   117: invokestatic 470	android/os/Process:killProcess	(I)V
    //   120: iconst_1
    //   121: invokestatic 475	java/lang/System:exit	(I)V
    //   124: goto -105 -> 19
    //
    // Exception table:
    //   from	to	target	type
    //   2	14	93	finally
    //   22	55	93	finally
    //   55	90	93	finally
    //   100	124	93	finally
    //   22	55	98	java/lang/Throwable
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.feedback.eup.h
 * JD-Core Version:    0.6.2
 */