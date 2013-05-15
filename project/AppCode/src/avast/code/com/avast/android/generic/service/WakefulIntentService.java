package com.avast.android.generic.service;

import android.annotation.SuppressLint;
import android.app.IntentService;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import com.avast.android.generic.util.m;

public abstract class WakefulIntentService extends IntentService
{
  private static PowerManager.WakeLock a;
  private static final Object b = WakefulIntentService.class;

  @SuppressLint({"HandlerLeak"})
  private Handler c = new f(this);

  protected WakefulIntentService()
  {
    super("WakefulIntentService");
  }

  public static void a(Context paramContext, Intent paramIntent, String paramString)
  {
    while (true)
    {
      synchronized (b)
      {
        if (a == null)
          a = ((PowerManager)paramContext.getSystemService("power")).newWakeLock(1, "avast! WFIS");
        m.c("Acquiring wakelock");
        a.acquire();
        StringBuilder localStringBuilder = new StringBuilder().append("Starting service (context ");
        if (paramContext != null)
        {
          str = paramContext.getPackageName();
          m.c(str + ", className " + paramString + ")");
          paramIntent.setClassName(paramContext, paramString);
          if (paramContext.startService(paramIntent) != null)
            break label132;
          m.c("Can not start service (NULL)");
          return;
        }
      }
      String str = "NULL";
      continue;
      label132: m.c("Service start initiated");
    }
  }

  protected void a(int paramInt1, int paramInt2)
  {
    Bundle localBundle = new Bundle();
    localBundle.putInt("res", paramInt1);
    localBundle.putInt("dur", paramInt2);
    Message localMessage = new Message();
    localMessage.obj = localBundle;
    this.c.sendMessage(localMessage);
  }

  protected abstract void a(Context paramContext, Intent paramIntent);

  // ERROR //
  public final void onHandleIntent(Intent paramIntent)
  {
    // Byte code:
    //   0: new 63	java/lang/StringBuilder
    //   3: dup
    //   4: invokespecial 65	java/lang/StringBuilder:<init>	()V
    //   7: ldc 127
    //   9: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   12: astore_2
    //   13: aload_1
    //   14: ifnull +66 -> 80
    //   17: aload_1
    //   18: invokevirtual 130	android/content/Intent:getAction	()Ljava/lang/String;
    //   21: ifnull +59 -> 80
    //   24: aload_1
    //   25: invokevirtual 130	android/content/Intent:getAction	()Ljava/lang/String;
    //   28: astore_3
    //   29: aload_2
    //   30: aload_3
    //   31: invokevirtual 71	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   34: invokevirtual 82	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   37: invokestatic 56	com/avast/android/generic/util/m:c	(Ljava/lang/String;)I
    //   40: pop
    //   41: aload_0
    //   42: aload_0
    //   43: invokevirtual 134	com/avast/android/generic/service/WakefulIntentService:getApplicationContext	()Landroid/content/Context;
    //   46: aload_1
    //   47: invokevirtual 136	com/avast/android/generic/service/WakefulIntentService:a	(Landroid/content/Context;Landroid/content/Intent;)V
    //   50: getstatic 17	com/avast/android/generic/service/WakefulIntentService:b	Ljava/lang/Object;
    //   53: astore 10
    //   55: aload 10
    //   57: monitorenter
    //   58: getstatic 33	com/avast/android/generic/service/WakefulIntentService:a	Landroid/os/PowerManager$WakeLock;
    //   61: ifnull +84 -> 145
    //   64: ldc 138
    //   66: invokestatic 56	com/avast/android/generic/util/m:c	(Ljava/lang/String;)I
    //   69: pop
    //   70: getstatic 33	com/avast/android/generic/service/WakefulIntentService:a	Landroid/os/PowerManager$WakeLock;
    //   73: invokevirtual 141	android/os/PowerManager$WakeLock:release	()V
    //   76: aload 10
    //   78: monitorexit
    //   79: return
    //   80: ldc 143
    //   82: astore_3
    //   83: goto -54 -> 29
    //   86: astore 5
    //   88: getstatic 17	com/avast/android/generic/service/WakefulIntentService:b	Ljava/lang/Object;
    //   91: astore 6
    //   93: aload 6
    //   95: monitorenter
    //   96: getstatic 33	com/avast/android/generic/service/WakefulIntentService:a	Landroid/os/PowerManager$WakeLock;
    //   99: ifnull +29 -> 128
    //   102: ldc 138
    //   104: invokestatic 56	com/avast/android/generic/util/m:c	(Ljava/lang/String;)I
    //   107: pop
    //   108: getstatic 33	com/avast/android/generic/service/WakefulIntentService:a	Landroid/os/PowerManager$WakeLock;
    //   111: invokevirtual 141	android/os/PowerManager$WakeLock:release	()V
    //   114: aload 6
    //   116: monitorexit
    //   117: aload 5
    //   119: athrow
    //   120: astore 7
    //   122: aload 6
    //   124: monitorexit
    //   125: aload 7
    //   127: athrow
    //   128: ldc 145
    //   130: invokestatic 148	com/avast/android/generic/util/m:f	(Ljava/lang/String;)I
    //   133: pop
    //   134: goto -20 -> 114
    //   137: astore 11
    //   139: aload 10
    //   141: monitorexit
    //   142: aload 11
    //   144: athrow
    //   145: ldc 145
    //   147: invokestatic 148	com/avast/android/generic/util/m:f	(Ljava/lang/String;)I
    //   150: pop
    //   151: goto -75 -> 76
    //
    // Exception table:
    //   from	to	target	type
    //   41	50	86	finally
    //   96	117	120	finally
    //   122	125	120	finally
    //   128	134	120	finally
    //   58	79	137	finally
    //   139	142	137	finally
    //   145	151	137	finally
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.service.WakefulIntentService
 * JD-Core Version:    0.6.2
 */