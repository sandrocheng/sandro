package com.tencent.feedback.eup;

import android.content.Context;
import android.os.Environment;
import com.tencent.feedback.common.AppInfo;
import com.tencent.feedback.common.CommonInfo;
import com.tencent.feedback.common.Constants;
import com.tencent.feedback.common.DeviceInfo;
import com.tencent.feedback.common.ELog;
import com.tencent.feedback.common.a.b;
import com.tencent.feedback.common.f;
import com.tencent.feedback.common.f.a;
import com.tencent.feedback.common.f.b;
import java.io.File;
import java.io.FileOutputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Timer;

public final class g
  implements Thread.UncaughtExceptionHandler
{
  private static String b = "";
  private static int c = 100;
  private static Thread.UncaughtExceptionHandler d = null;
  private static IEupUserConfirmer e = null;
  private static boolean f = false;
  private static String g = "";
  private static g l = null;
  private Context a = null;
  private boolean h = false;
  private boolean i = false;
  private Thread.UncaughtExceptionHandler j = null;
  private boolean k = false;

  private g(Context paramContext)
  {
    this.a = paramContext;
  }

  public static g a(Context paramContext)
  {
    try
    {
      if ((l == null) && (paramContext != null))
        l = new g(paramContext);
      g localg = l;
      return localg;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  // ERROR //
  private static k a(Context paramContext, Thread paramThread, Throwable paramThrowable)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_3
    //   2: aload_0
    //   3: ifnull +11 -> 14
    //   6: aload_1
    //   7: ifnull +7 -> 14
    //   10: aload_2
    //   11: ifnonnull +14 -> 25
    //   14: ldc 66
    //   16: invokestatic 72	com/tencent/feedback/common/ELog:error	(Ljava/lang/String;)V
    //   19: aconst_null
    //   20: astore 4
    //   22: aload 4
    //   24: areturn
    //   25: new 74	com/tencent/feedback/eup/k
    //   28: dup
    //   29: invokespecial 75	com/tencent/feedback/eup/k:<init>	()V
    //   32: astore 4
    //   34: aload 4
    //   36: aload_2
    //   37: invokevirtual 79	java/lang/Throwable:toString	()Ljava/lang/String;
    //   40: invokevirtual 81	com/tencent/feedback/eup/k:b	(Ljava/lang/String;)V
    //   43: aload 4
    //   45: aload_1
    //   46: invokevirtual 86	java/lang/Thread:getName	()Ljava/lang/String;
    //   49: invokevirtual 88	com/tencent/feedback/eup/k:c	(Ljava/lang/String;)V
    //   52: aload 4
    //   54: aload_2
    //   55: invokevirtual 92	java/lang/Object:getClass	()Ljava/lang/Class;
    //   58: invokevirtual 95	java/lang/Class:getName	()Ljava/lang/String;
    //   61: invokevirtual 97	com/tencent/feedback/eup/k:a	(Ljava/lang/String;)V
    //   64: invokestatic 103	com/tencent/feedback/common/CommonInfo:getCommonInfo	()Lcom/tencent/feedback/common/CommonInfo;
    //   67: astore 6
    //   69: aload 6
    //   71: monitorenter
    //   72: aload 4
    //   74: aload 6
    //   76: invokevirtual 107	com/tencent/feedback/common/CommonInfo:getServerTimeGap	()J
    //   79: invokestatic 112	com/tencent/feedback/common/g:a	(J)J
    //   82: invokevirtual 115	com/tencent/feedback/eup/k:a	(J)V
    //   85: aload 6
    //   87: monitorexit
    //   88: aload_2
    //   89: invokevirtual 119	java/lang/Throwable:getStackTrace	()[Ljava/lang/StackTraceElement;
    //   92: astore 8
    //   94: aload 8
    //   96: ifnull +145 -> 241
    //   99: aload 4
    //   101: aload 8
    //   103: iconst_0
    //   104: aaload
    //   105: invokevirtual 122	java/lang/StackTraceElement:toString	()Ljava/lang/String;
    //   108: invokevirtual 124	com/tencent/feedback/eup/k:d	(Ljava/lang/String;)V
    //   111: new 126	java/lang/StringBuffer
    //   114: dup
    //   115: invokespecial 127	java/lang/StringBuffer:<init>	()V
    //   118: astore 24
    //   120: aload 24
    //   122: new 129	java/lang/StringBuilder
    //   125: dup
    //   126: invokespecial 130	java/lang/StringBuilder:<init>	()V
    //   129: aload_2
    //   130: invokevirtual 79	java/lang/Throwable:toString	()Ljava/lang/String;
    //   133: invokevirtual 134	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   136: ldc 136
    //   138: invokevirtual 134	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   141: invokevirtual 137	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   144: invokevirtual 140	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   147: pop
    //   148: aload 8
    //   150: arraylength
    //   151: istore 26
    //   153: iconst_0
    //   154: istore 27
    //   156: iload 27
    //   158: iload 26
    //   160: if_icmpge +65 -> 225
    //   163: aload 24
    //   165: aload 8
    //   167: iload 27
    //   169: aaload
    //   170: invokevirtual 122	java/lang/StackTraceElement:toString	()Ljava/lang/String;
    //   173: invokevirtual 140	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   176: pop
    //   177: aload 24
    //   179: ldc 136
    //   181: invokevirtual 140	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   184: pop
    //   185: iinc 27 1
    //   188: goto -32 -> 156
    //   191: astore 7
    //   193: aload 6
    //   195: monitorexit
    //   196: aload 7
    //   198: athrow
    //   199: astore 5
    //   201: ldc 142
    //   203: invokestatic 72	com/tencent/feedback/common/ELog:error	(Ljava/lang/String;)V
    //   206: aload 5
    //   208: invokevirtual 145	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   211: invokestatic 72	com/tencent/feedback/common/ELog:error	(Ljava/lang/String;)V
    //   214: aload 5
    //   216: invokevirtual 148	java/lang/Throwable:printStackTrace	()V
    //   219: aconst_null
    //   220: astore 4
    //   222: goto -200 -> 22
    //   225: aload 4
    //   227: aload 24
    //   229: invokevirtual 149	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   232: invokevirtual 151	com/tencent/feedback/eup/k:g	(Ljava/lang/String;)V
    //   235: aload 24
    //   237: iconst_0
    //   238: invokevirtual 155	java/lang/StringBuffer:setLength	(I)V
    //   241: aload_2
    //   242: invokevirtual 159	java/lang/Throwable:getCause	()Ljava/lang/Throwable;
    //   245: astore 9
    //   247: aload 9
    //   249: ifnull +112 -> 361
    //   252: new 126	java/lang/StringBuffer
    //   255: dup
    //   256: invokespecial 127	java/lang/StringBuffer:<init>	()V
    //   259: astore 10
    //   261: aload 10
    //   263: new 129	java/lang/StringBuilder
    //   266: dup
    //   267: invokespecial 130	java/lang/StringBuilder:<init>	()V
    //   270: ldc 161
    //   272: invokevirtual 134	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   275: aload 9
    //   277: invokevirtual 79	java/lang/Throwable:toString	()Ljava/lang/String;
    //   280: invokevirtual 134	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   283: ldc 136
    //   285: invokevirtual 134	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   288: invokevirtual 137	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   291: invokevirtual 140	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   294: pop
    //   295: aload 9
    //   297: invokevirtual 119	java/lang/Throwable:getStackTrace	()[Ljava/lang/StackTraceElement;
    //   300: astore 12
    //   302: aload 12
    //   304: ifnull +41 -> 345
    //   307: aload 12
    //   309: arraylength
    //   310: istore 21
    //   312: iload_3
    //   313: iload 21
    //   315: if_icmpge +30 -> 345
    //   318: aload 10
    //   320: aload 12
    //   322: iload_3
    //   323: aaload
    //   324: invokevirtual 122	java/lang/StackTraceElement:toString	()Ljava/lang/String;
    //   327: invokevirtual 140	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   330: pop
    //   331: aload 10
    //   333: ldc 136
    //   335: invokevirtual 140	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   338: pop
    //   339: iinc 3 1
    //   342: goto -30 -> 312
    //   345: aload 4
    //   347: aload 10
    //   349: invokevirtual 149	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   352: invokevirtual 163	com/tencent/feedback/eup/k:i	(Ljava/lang/String;)V
    //   355: aload 10
    //   357: iconst_0
    //   358: invokevirtual 155	java/lang/StringBuffer:setLength	(I)V
    //   361: new 129	java/lang/StringBuilder
    //   364: dup
    //   365: invokespecial 130	java/lang/StringBuilder:<init>	()V
    //   368: ldc 165
    //   370: invokevirtual 134	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   373: aload 4
    //   375: invokevirtual 167	com/tencent/feedback/eup/k:j	()Ljava/lang/String;
    //   378: invokevirtual 134	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   381: invokevirtual 137	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   384: invokestatic 170	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   387: new 129	java/lang/StringBuilder
    //   390: dup
    //   391: invokespecial 130	java/lang/StringBuilder:<init>	()V
    //   394: ldc 172
    //   396: invokevirtual 134	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   399: aload 4
    //   401: invokevirtual 174	com/tencent/feedback/eup/k:k	()Ljava/lang/String;
    //   404: invokevirtual 134	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   407: invokevirtual 137	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   410: invokestatic 170	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   413: new 176	com/tencent/feedback/common/a/b
    //   416: dup
    //   417: aload_0
    //   418: invokespecial 177	com/tencent/feedback/common/a/b:<init>	(Landroid/content/Context;)V
    //   421: pop
    //   422: aload 4
    //   424: ldc 179
    //   426: invokevirtual 181	com/tencent/feedback/eup/k:e	(Ljava/lang/String;)V
    //   429: aload 4
    //   431: new 183	com/tencent/feedback/eup/f
    //   434: dup
    //   435: invokespecial 184	com/tencent/feedback/eup/f:<init>	()V
    //   438: invokevirtual 186	com/tencent/feedback/eup/f:a	()Ljava/lang/String;
    //   441: invokevirtual 188	com/tencent/feedback/eup/k:f	(Ljava/lang/String;)V
    //   444: invokestatic 194	com/tencent/feedback/common/DeviceInfo:checkIsHaveCard	()Z
    //   447: ifne +98 -> 545
    //   450: lconst_0
    //   451: lstore 17
    //   453: aload 4
    //   455: lload 17
    //   457: invokevirtual 196	com/tencent/feedback/eup/k:c	(J)V
    //   460: new 198	android/os/StatFs
    //   463: dup
    //   464: ldc 200
    //   466: invokespecial 202	android/os/StatFs:<init>	(Ljava/lang/String;)V
    //   469: astore 19
    //   471: aload 19
    //   473: invokevirtual 206	android/os/StatFs:getBlockSize	()I
    //   476: istore 20
    //   478: aload 4
    //   480: aload 19
    //   482: invokevirtual 209	android/os/StatFs:getAvailableBlocks	()I
    //   485: i2l
    //   486: iload 20
    //   488: i2l
    //   489: lmul
    //   490: invokevirtual 211	com/tencent/feedback/eup/k:b	(J)V
    //   493: aload 4
    //   495: invokestatic 214	com/tencent/feedback/common/DeviceInfo:getPlatform	()Ljava/lang/String;
    //   498: invokevirtual 216	com/tencent/feedback/eup/k:h	(Ljava/lang/String;)V
    //   501: aload 4
    //   503: aload 4
    //   505: invokevirtual 167	com/tencent/feedback/eup/k:j	()Ljava/lang/String;
    //   508: invokestatic 219	com/tencent/feedback/common/g:a	(Ljava/lang/String;)Ljava/lang/String;
    //   511: invokevirtual 221	com/tencent/feedback/eup/k:l	(Ljava/lang/String;)V
    //   514: aload 4
    //   516: new 129	java/lang/StringBuilder
    //   519: dup
    //   520: invokespecial 130	java/lang/StringBuilder:<init>	()V
    //   523: aload 4
    //   525: invokevirtual 223	com/tencent/feedback/eup/k:d	()J
    //   528: invokevirtual 226	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   531: ldc 136
    //   533: invokevirtual 134	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   536: invokevirtual 137	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   539: invokevirtual 229	com/tencent/feedback/eup/k:m	(Ljava/lang/String;)V
    //   542: goto -520 -> 22
    //   545: new 198	android/os/StatFs
    //   548: dup
    //   549: ldc 231
    //   551: invokespecial 202	android/os/StatFs:<init>	(Ljava/lang/String;)V
    //   554: astore 14
    //   556: aload 14
    //   558: invokevirtual 206	android/os/StatFs:getBlockSize	()I
    //   561: istore 15
    //   563: aload 14
    //   565: invokevirtual 209	android/os/StatFs:getAvailableBlocks	()I
    //   568: istore 16
    //   570: iload 16
    //   572: i2l
    //   573: iload 15
    //   575: i2l
    //   576: lmul
    //   577: lstore 17
    //   579: goto -126 -> 453
    //
    // Exception table:
    //   from	to	target	type
    //   72	88	191	finally
    //   25	72	199	java/lang/Throwable
    //   88	199	199	java/lang/Throwable
    //   225	570	199	java/lang/Throwable
  }

  public static Thread.UncaughtExceptionHandler a()
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

  public static boolean b()
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

  public static IEupUserConfirmer d()
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

  public static String e()
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

  private boolean g()
  {
    try
    {
      boolean bool = this.k;
      return bool;
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
      ELog.debug("CrashHandler.register() start");
      Thread.UncaughtExceptionHandler localUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
      if (this.j == null)
        this.j = localUncaughtExceptionHandler;
      if (!(localUncaughtExceptionHandler instanceof g))
        Thread.setDefaultUncaughtExceptionHandler(l);
      ELog.debug("CrashHandler.register() end");
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
      ELog.debug("CrashHandler.unRegister() start");
      if (this.j != null)
        Thread.setDefaultUncaughtExceptionHandler(this.j);
      ELog.debug("CrashHandler.unRegister() end");
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
      int i1;
      k localk1;
      k localk2;
      Context localContext1;
      try
      {
        ELog.debug("CrashHandler.handleException() start");
        boolean bool1 = c();
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
          ELog.info("crash happen , do not record more eup!");
          bool2 = false;
          continue;
        }
        int m = f.a().a;
        if (f.a.a(this.a) >= m)
        {
          ELog.warn("reach the max num of eup , do clean!");
          List localList2 = f.a.a(this.a, m, "asc", -1, null, -1, -1, -1L, -1L);
          if (localList2 != null)
          {
            i1 = 0;
            if (i1 >= localList2.size())
              break label1241;
            if (((k)localList2.get(i1)).l() != 2)
              break label1247;
            localk3 = (k)localList2.get(i1);
            if ((localk3 == null) && (paramBoolean))
              localk3 = (k)localList2.get(0);
            if (localk3 != null)
            {
              localList2.clear();
              localList2.add(localk3);
              Context localContext2 = this.a;
              ELog.debug("EUPDAO.deleteEupList() start");
              if (localContext2 == null)
              {
                ELog.warn("deleteEupList() have null args!");
                i2 = -1;
                if (i2 > 0)
                  continue;
                ELog.error("can't remove eup datas for insert a new one!");
                bool2 = false;
                continue;
              }
              if (localList2.size() <= 0)
                break label1253;
              Long[] arrayOfLong = new Long[localList2.size()];
              int i3 = 0;
              if (i3 < localList2.size())
              {
                arrayOfLong[i3] = Long.valueOf(((k)localList2.get(i3)).m());
                i3++;
                continue;
              }
              i2 = b.a(localContext2, arrayOfLong);
              continue;
            }
            ELog.info("max size with crash ,can't do insert a catch type");
            bool2 = false;
            continue;
          }
        }
        localk1 = a(this.a, paramThread, paramThrowable);
        if (localk1 == null)
        {
          ELog.error("collect eup data fail!");
          bool2 = false;
          continue;
        }
        if ((!g()) || (localk1.q() == null))
          break label610;
        ELog.info("do merge eup!");
        localk1.b(0);
        List localList1 = f.a.a(this.a, 2, "desc", -1, localk1.q(), -1, -1, -1L, -1L);
        if ((localList1 == null) || (localList1.size() <= 0))
          break label598;
        ELog.info("existed record ,do update!");
        localk2 = (k)localList1.get(0);
        localk2.b(1 + localk2.s());
        localk2.m(localk2.r() + localk1.d() + "\n");
        localContext1 = this.a;
        ELog.debug("EUPDAO.insertOrUpdateEUP() start");
        if ((localContext1 == null) || (localk2 == null))
        {
          ELog.warn("context == null || bean == null,pls check");
          bool2 = false;
          ELog.info("result:" + bool2);
          continue;
        }
      }
      finally
      {
      }
      ArrayList localArrayList = new ArrayList();
      localArrayList.add(localk2);
      boolean bool2 = f.a.a(localContext1, localArrayList);
      continue;
      label598: ELog.info("new exception!");
      localk1.b(0);
      label610: ELog.info("do normal insert! ");
      if ((Constants.isStoreEupLogSdcard) && (AppInfo.isContainWriteSdcardPermission(this.a)))
        ELog.info("save eup message sdcard");
      while (true)
      {
        CommonInfo localCommonInfo;
        try
        {
          String str2 = "\n----------------\n" + com.tencent.feedback.common.g.a(new Date(localk1.d()));
          str3 = str2 + "\n----------------\n" + localk1.j() + "\n" + localk1.k();
          ELog.debug("CrashHandler.saveOutside() start");
          if (str3 != null)
          {
            int n = str3.trim().length();
            if (n > 0);
          }
          else
          {
            if (!AppInfo.isContainReadLogPermission(this.a))
              break label1165;
            ELog.info("read log permission");
            localk1.a(f.b.a(b, c));
            if (!paramBoolean)
              break label1218;
            localk1.a(1);
            localCommonInfo = CommonInfo.getCommonInfo();
            if (localCommonInfo != null)
              break label1227;
            localObject2 = "";
            localk1.j("contract:" + ExceptionUpload.getDefaultContract() + " userId:" + (String)localObject2);
            localk1.k((String)localObject2);
            ELog.info("to insert eup info");
            bool2 = f.a.a(this.a, localk1);
            ELog.info("result:" + bool2);
            ELog.debug("CrashHandler.handleException() end");
            break;
          }
          if (Environment.getExternalStorageState().equals("mounted"))
          {
            localFile = new File(Environment.getExternalStorageDirectory(), "/" + AppInfo.getPackageName(this.a) + "/euplog.txt");
            ELog.info("file path:" + localFile.getPath());
          }
        }
        catch (Throwable localThrowable1)
        {
          try
          {
            if (!localFile.exists())
            {
              if (localFile.getParentFile() != null)
                localFile.getParentFile().mkdirs();
              localFile.createNewFile();
            }
            localObject3 = null;
          }
          catch (Throwable localThrowable1)
          {
            try
            {
              String str3;
              File localFile;
              boolean bool3 = localFile.length() < 5000L;
              localObject3 = null;
              if (!bool3)
              {
                localObject3 = new FileOutputStream(localFile, false);
                ((FileOutputStream)localObject3).write(str3.getBytes("UTF-8"));
                ((FileOutputStream)localObject3).flush();
                ((FileOutputStream)localObject3).close();
                ELog.debug("CrashHandler.saveOutside() end");
                continue;
                localThrowable1 = localThrowable1;
                ELog.debug("save eup message sdcard fail");
                localThrowable1.printStackTrace();
                continue;
              }
              FileOutputStream localFileOutputStream = new FileOutputStream(localFile, true);
              localObject3 = localFileOutputStream;
              continue;
            }
            catch (Throwable localThrowable3)
            {
              ELog.error("euplog.txt can't write!");
              localThrowable3.printStackTrace();
              if (localObject3 == null)
                continue;
              ((FileOutputStream)localObject3).close();
              continue;
              localThrowable2 = localThrowable2;
              ELog.error("create euplog.txt in sdcard fail!");
              localThrowable2.printStackTrace();
              continue;
            }
            finally
            {
              Object localObject3;
              if (localObject3 != null)
                ((FileOutputStream)localObject3).close();
            }
          }
        }
        label1165: ELog.info("cancel read log");
        try
        {
          localk1.a("no permission".getBytes("UTF-8"));
        }
        catch (UnsupportedEncodingException localUnsupportedEncodingException)
        {
          localk1.a(new byte[] { 0, 1 });
          localUnsupportedEncodingException.printStackTrace();
        }
        continue;
        label1218: localk1.a(2);
        continue;
        label1227: String str1 = localCommonInfo.getUserid();
        Object localObject2 = str1;
      }
      label1241: k localk3 = null;
      continue;
      label1247: i1++;
      continue;
      label1253: int i2 = 0;
    }
  }

  public final void b(boolean paramBoolean)
  {
    try
    {
      ELog.debug("CrashHandler.setEnable() start");
      this.h = paramBoolean;
      if (paramBoolean)
        h();
      while (true)
      {
        ELog.debug("CrashHandler.setEnable() end");
        return;
        i();
      }
    }
    finally
    {
    }
  }

  public final void c(boolean paramBoolean)
  {
    try
    {
      this.k = paramBoolean;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final boolean c()
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

  public final void f()
  {
    int n;
    while (true)
    {
      try
      {
        ELog.debug("CrashHandler.handleLocalEup() start");
        if (!c())
        {
          ELog.warn("disable!");
          return;
        }
        if (this.a == null)
        {
          ELog.error("context == null!,pls to check!");
          continue;
        }
      }
      finally
      {
      }
      if (this.i)
      {
        ELog.warn("crash happen ,should not handle old eup!");
      }
      else
      {
        long l1 = com.tencent.feedback.common.g.a(CommonInfo.getCommonInfo().getServerTimeGap()) - 1000 * (3600 * (24 * f.a().d));
        int m = f.a.a(this.a, -1L, l1);
        ELog.debug("del old sum: " + m);
        n = f.a.a(this.a);
        if (n > 0)
          break;
        ELog.info("no eup data!");
      }
    }
    long l2;
    int i2;
    if (g())
    {
      l2 = com.tencent.feedback.common.g.b();
      if (l2 < 0L)
      {
        ELog.error("get today Time failed! pls check! re size it current - 12h ");
        l2 = new Date().getTime() - 43200000L;
      }
      List localList1 = f.a.a(this.a, 1, "desc", -1, null, 0, 0, l2, -1L);
      if ((localList1 != null) && (localList1.size() > 0))
        i2 = 1;
    }
    while (true)
    {
      if (i2 == 0)
      {
        ELog.info("no merge eup data to upload!");
        break;
        List localList2 = f.a.a(this.a, 1, "desc", -1, null, 2, -1, -1L, l2);
        if ((localList2 == null) || (localList2.size() <= 0))
          break label458;
        i2 = 1;
        continue;
      }
      ELog.info("has eup data in local! " + n);
      h localh;
      if (!b())
      {
        ELog.info("start activity for use select!");
        localh = new h(this);
        int i1 = Integer.parseInt(DeviceInfo.getApiLevel());
        if (i1 < 5)
        {
          new Timer().schedule(new i(this, localh), 5000L);
          ELog.info("sdk:" + i1 + " delay post!");
        }
      }
      while (true)
      {
        ELog.debug("CrashHandler.handleLocalEup() end");
        break;
        localh.run();
        continue;
        ELog.debug("CrashHandler.startEupUpload() start!");
        j localj = new j(this);
        localj.setName("RQD_EUPThread");
        localj.start();
        ELog.debug("CrashHandler.startEupUpload() end!");
      }
      label458: i2 = 0;
    }
  }

  // ERROR //
  public final void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: ldc_w 620
    //   5: invokestatic 170	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   8: aload_0
    //   9: invokevirtual 257	com/tencent/feedback/eup/g:c	()Z
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
    //   26: invokevirtual 622	com/tencent/feedback/eup/g:a	(Ljava/lang/Thread;Ljava/lang/Throwable;Z)Z
    //   29: pop
    //   30: invokestatic 624	com/tencent/feedback/eup/g:a	()Ljava/lang/Thread$UncaughtExceptionHandler;
    //   33: astore 7
    //   35: aload 7
    //   37: ifnull +18 -> 55
    //   40: ldc_w 626
    //   43: invokestatic 262	com/tencent/feedback/common/ELog:info	(Ljava/lang/String;)V
    //   46: aload 7
    //   48: aload_1
    //   49: aload_2
    //   50: invokeinterface 628 3 0
    //   55: ldc_w 630
    //   58: invokestatic 170	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   61: aload_0
    //   62: iconst_1
    //   63: putfield 53	com/tencent/feedback/eup/g:i	Z
    //   66: aload_0
    //   67: getfield 55	com/tencent/feedback/eup/g:j	Ljava/lang/Thread$UncaughtExceptionHandler;
    //   70: ifnull +38 -> 108
    //   73: ldc_w 632
    //   76: invokestatic 262	com/tencent/feedback/common/ELog:info	(Ljava/lang/String;)V
    //   79: aload_0
    //   80: getfield 55	com/tencent/feedback/eup/g:j	Ljava/lang/Thread$UncaughtExceptionHandler;
    //   83: aload_1
    //   84: aload_2
    //   85: invokeinterface 628 3 0
    //   90: goto -71 -> 19
    //   93: astore_3
    //   94: aload_0
    //   95: monitorexit
    //   96: aload_3
    //   97: athrow
    //   98: astore 5
    //   100: aload 5
    //   102: invokevirtual 148	java/lang/Throwable:printStackTrace	()V
    //   105: goto -50 -> 55
    //   108: ldc_w 634
    //   111: invokestatic 262	com/tencent/feedback/common/ELog:info	(Ljava/lang/String;)V
    //   114: invokestatic 639	android/os/Process:myPid	()I
    //   117: invokestatic 642	android/os/Process:killProcess	(I)V
    //   120: iconst_1
    //   121: invokestatic 647	java/lang/System:exit	(I)V
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

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.feedback.eup.g
 * JD-Core Version:    0.6.2
 */