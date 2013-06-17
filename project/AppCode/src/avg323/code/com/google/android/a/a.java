package com.google.android.a;

import android.app.AlarmManager;
import android.app.IntentService;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import android.os.SystemClock;
import android.util.Log;
import java.util.Random;
import java.util.concurrent.TimeUnit;

public abstract class a extends IntentService
{
  private static PowerManager.WakeLock a;
  private static final Object b = a.class;
  private static int d = 0;
  private static final Random e = new Random();
  private static final int f = (int)TimeUnit.SECONDS.toMillis(3600L);
  private static final String g = Long.toBinaryString(e.nextLong());
  private final String[] c;

  protected a()
  {
    this(a("DynamicSenderIds"), null);
  }

  private a(String paramString, String[] paramArrayOfString)
  {
    super(paramString);
    this.c = paramArrayOfString;
  }

  protected a(String[] paramArrayOfString)
  {
    this(a(paramArrayOfString), paramArrayOfString);
  }

  private static String a(String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder().append("GCMIntentService-").append(paramString).append("-");
    int i = 1 + d;
    d = i;
    String str = i;
    Log.v("GCMBaseIntentService", "Intent service name: " + str);
    return str;
  }

  private static String a(String[] paramArrayOfString)
  {
    return a(c.a(paramArrayOfString));
  }

  static void a(Context paramContext, Intent paramIntent, String paramString)
  {
    synchronized (b)
    {
      if (a == null)
        a = ((PowerManager)paramContext.getSystemService("power")).newWakeLock(1, "GCM_LIB");
      Log.v("GCMBaseIntentService", "Acquiring wakelock");
      a.acquire();
      paramIntent.setClassName(paramContext, paramString);
      paramContext.startService(paramIntent);
      return;
    }
  }

  private void b(Context paramContext, Intent paramIntent)
  {
    String str1 = paramIntent.getStringExtra("registration_id");
    String str2 = paramIntent.getStringExtra("error");
    String str3 = paramIntent.getStringExtra("unregistered");
    Log.d("GCMBaseIntentService", "handleRegistration: registrationId = " + str1 + ", error = " + str2 + ", unregistered = " + str3);
    if (str1 != null)
    {
      c.h(paramContext);
      c.a(paramContext, str1);
      b(paramContext, str1);
    }
    while (true)
    {
      return;
      if (str3 != null)
      {
        c.h(paramContext);
        c(paramContext, c.g(paramContext));
      }
      else
      {
        Log.d("GCMBaseIntentService", "Registration error: " + str2);
        if ("SERVICE_NOT_AVAILABLE".equals(str2))
        {
          if (d(paramContext, str2))
          {
            int i = c.i(paramContext);
            int j = i / 2 + e.nextInt(i);
            Log.d("GCMBaseIntentService", "Scheduling registration retry, backoff = " + j + " (" + i + ")");
            Intent localIntent = new Intent("com.google.android.gcm.intent.RETRY");
            localIntent.putExtra("token", g);
            PendingIntent localPendingIntent = PendingIntent.getBroadcast(paramContext, 0, localIntent, 0);
            ((AlarmManager)paramContext.getSystemService("alarm")).set(3, SystemClock.elapsedRealtime() + j, localPendingIntent);
            if (i < f)
              c.a(paramContext, i * 2);
          }
          else
          {
            Log.d("GCMBaseIntentService", "Not retrying failed operation");
          }
        }
        else
          a(paramContext, str2);
      }
    }
  }

  protected void a(Context paramContext, int paramInt)
  {
  }

  protected abstract void a(Context paramContext, Intent paramIntent);

  protected abstract void a(Context paramContext, String paramString);

  protected String[] a(Context paramContext)
  {
    if (this.c == null)
      throw new IllegalStateException("sender id not set on constructor");
    return this.c;
  }

  protected abstract void b(Context paramContext, String paramString);

  protected abstract void c(Context paramContext, String paramString);

  protected boolean d(Context paramContext, String paramString)
  {
    return true;
  }

  // ERROR //
  public final void onHandleIntent(Intent paramIntent)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokevirtual 249	com/google/android/a/a:getApplicationContext	()Landroid/content/Context;
    //   4: astore 7
    //   6: aload_1
    //   7: invokevirtual 252	android/content/Intent:getAction	()Ljava/lang/String;
    //   10: astore 8
    //   12: aload 8
    //   14: ldc 254
    //   16: invokevirtual 183	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   19: ifeq +48 -> 67
    //   22: aload 7
    //   24: invokestatic 256	com/google/android/a/c:d	(Landroid/content/Context;)V
    //   27: aload_0
    //   28: aload 7
    //   30: aload_1
    //   31: invokespecial 258	com/google/android/a/a:b	(Landroid/content/Context;Landroid/content/Intent;)V
    //   34: getstatic 21	com/google/android/a/a:b	Ljava/lang/Object;
    //   37: astore 10
    //   39: aload 10
    //   41: monitorenter
    //   42: getstatic 107	com/google/android/a/a:a	Landroid/os/PowerManager$WakeLock;
    //   45: ifnull +362 -> 407
    //   48: ldc 93
    //   50: ldc_w 260
    //   53: invokestatic 101	android/util/Log:v	(Ljava/lang/String;Ljava/lang/String;)I
    //   56: pop
    //   57: getstatic 107	com/google/android/a/a:a	Landroid/os/PowerManager$WakeLock;
    //   60: invokevirtual 263	android/os/PowerManager$WakeLock:release	()V
    //   63: aload 10
    //   65: monitorexit
    //   66: return
    //   67: aload 8
    //   69: ldc_w 265
    //   72: invokevirtual 183	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   75: ifeq +191 -> 266
    //   78: aload_1
    //   79: ldc_w 267
    //   82: invokevirtual 146	android/content/Intent:getStringExtra	(Ljava/lang/String;)Ljava/lang/String;
    //   85: astore 19
    //   87: aload 19
    //   89: ifnull +167 -> 256
    //   92: aload 19
    //   94: ldc_w 269
    //   97: invokevirtual 183	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   100: ifeq +126 -> 226
    //   103: aload_1
    //   104: ldc_w 271
    //   107: invokevirtual 146	android/content/Intent:getStringExtra	(Ljava/lang/String;)Ljava/lang/String;
    //   110: astore 21
    //   112: aload 21
    //   114: ifnull -80 -> 34
    //   117: aload 21
    //   119: invokestatic 277	java/lang/Integer:parseInt	(Ljava/lang/String;)I
    //   122: istore 24
    //   124: ldc 93
    //   126: new 75	java/lang/StringBuilder
    //   129: dup
    //   130: invokespecial 76	java/lang/StringBuilder:<init>	()V
    //   133: ldc_w 279
    //   136: invokevirtual 82	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   139: iload 24
    //   141: invokevirtual 87	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   144: invokevirtual 91	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   147: invokestatic 101	android/util/Log:v	(Ljava/lang/String;Ljava/lang/String;)I
    //   150: pop
    //   151: aload_0
    //   152: aload 7
    //   154: iload 24
    //   156: invokevirtual 280	com/google/android/a/a:a	(Landroid/content/Context;I)V
    //   159: goto -125 -> 34
    //   162: astore 22
    //   164: ldc 93
    //   166: new 75	java/lang/StringBuilder
    //   169: dup
    //   170: invokespecial 76	java/lang/StringBuilder:<init>	()V
    //   173: ldc_w 282
    //   176: invokevirtual 82	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   179: aload 21
    //   181: invokevirtual 82	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   184: invokevirtual 91	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   187: invokestatic 284	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   190: pop
    //   191: goto -157 -> 34
    //   194: astore_2
    //   195: getstatic 21	com/google/android/a/a:b	Ljava/lang/Object;
    //   198: astore_3
    //   199: aload_3
    //   200: monitorenter
    //   201: getstatic 107	com/google/android/a/a:a	Landroid/os/PowerManager$WakeLock;
    //   204: ifnull +223 -> 427
    //   207: ldc 93
    //   209: ldc_w 260
    //   212: invokestatic 101	android/util/Log:v	(Ljava/lang/String;Ljava/lang/String;)I
    //   215: pop
    //   216: getstatic 107	com/google/android/a/a:a	Landroid/os/PowerManager$WakeLock;
    //   219: invokevirtual 263	android/os/PowerManager$WakeLock:release	()V
    //   222: aload_3
    //   223: monitorexit
    //   224: aload_2
    //   225: athrow
    //   226: ldc 93
    //   228: new 75	java/lang/StringBuilder
    //   231: dup
    //   232: invokespecial 76	java/lang/StringBuilder:<init>	()V
    //   235: ldc_w 286
    //   238: invokevirtual 82	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   241: aload 19
    //   243: invokevirtual 82	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   246: invokevirtual 91	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   249: invokestatic 284	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   252: pop
    //   253: goto -219 -> 34
    //   256: aload_0
    //   257: aload 7
    //   259: aload_1
    //   260: invokevirtual 288	com/google/android/a/a:a	(Landroid/content/Context;Landroid/content/Intent;)V
    //   263: goto -229 -> 34
    //   266: aload 8
    //   268: ldc 202
    //   270: invokevirtual 183	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   273: ifeq -239 -> 34
    //   276: aload_1
    //   277: ldc 205
    //   279: invokevirtual 146	android/content/Intent:getStringExtra	(Ljava/lang/String;)Ljava/lang/String;
    //   282: astore 9
    //   284: getstatic 56	com/google/android/a/a:g	Ljava/lang/String;
    //   287: aload 9
    //   289: invokevirtual 183	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   292: ifne +85 -> 377
    //   295: ldc 93
    //   297: new 75	java/lang/StringBuilder
    //   300: dup
    //   301: invokespecial 76	java/lang/StringBuilder:<init>	()V
    //   304: ldc_w 290
    //   307: invokevirtual 82	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   310: aload 9
    //   312: invokevirtual 82	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   315: invokevirtual 91	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   318: invokestatic 284	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   321: pop
    //   322: getstatic 21	com/google/android/a/a:b	Ljava/lang/Object;
    //   325: astore 15
    //   327: aload 15
    //   329: monitorenter
    //   330: getstatic 107	com/google/android/a/a:a	Landroid/os/PowerManager$WakeLock;
    //   333: ifnull +32 -> 365
    //   336: ldc 93
    //   338: ldc_w 260
    //   341: invokestatic 101	android/util/Log:v	(Ljava/lang/String;Ljava/lang/String;)I
    //   344: pop
    //   345: getstatic 107	com/google/android/a/a:a	Landroid/os/PowerManager$WakeLock;
    //   348: invokevirtual 263	android/os/PowerManager$WakeLock:release	()V
    //   351: aload 15
    //   353: monitorexit
    //   354: goto -288 -> 66
    //   357: astore 16
    //   359: aload 15
    //   361: monitorexit
    //   362: aload 16
    //   364: athrow
    //   365: ldc 93
    //   367: ldc_w 292
    //   370: invokestatic 284	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   373: pop
    //   374: goto -23 -> 351
    //   377: aload 7
    //   379: invokestatic 295	com/google/android/a/c:f	(Landroid/content/Context;)Z
    //   382: ifeq +11 -> 393
    //   385: aload 7
    //   387: invokestatic 297	com/google/android/a/c:c	(Landroid/content/Context;)V
    //   390: goto -356 -> 34
    //   393: aload 7
    //   395: aload_0
    //   396: aload 7
    //   398: invokevirtual 299	com/google/android/a/a:a	(Landroid/content/Context;)[Ljava/lang/String;
    //   401: invokestatic 302	com/google/android/a/c:b	(Landroid/content/Context;[Ljava/lang/String;)V
    //   404: goto -370 -> 34
    //   407: ldc 93
    //   409: ldc_w 292
    //   412: invokestatic 284	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   415: pop
    //   416: goto -353 -> 63
    //   419: astore 11
    //   421: aload 10
    //   423: monitorexit
    //   424: aload 11
    //   426: athrow
    //   427: ldc 93
    //   429: ldc_w 292
    //   432: invokestatic 284	android/util/Log:e	(Ljava/lang/String;Ljava/lang/String;)I
    //   435: pop
    //   436: goto -214 -> 222
    //   439: astore 4
    //   441: aload_3
    //   442: monitorexit
    //   443: aload 4
    //   445: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   117	159	162	java/lang/NumberFormatException
    //   0	34	194	finally
    //   67	112	194	finally
    //   117	159	194	finally
    //   164	191	194	finally
    //   226	322	194	finally
    //   377	404	194	finally
    //   330	362	357	finally
    //   365	374	357	finally
    //   42	66	419	finally
    //   407	424	419	finally
    //   201	224	439	finally
    //   427	443	439	finally
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.android.a.a
 * JD-Core Version:    0.6.2
 */