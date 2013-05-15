package com.avast.android.mobilesecurity.app.filter.core;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.media.AudioManager;
import android.os.Handler;
import android.telephony.TelephonyManager;
import com.avast.android.generic.util.m;
import com.avast.android.mobilesecurity.app.globalactivitylog.u;
import com.google.analytics.tracking.android.bo;
import java.lang.reflect.Method;

public class PhoneStateChangeReceiver extends BroadcastReceiver
{
  private static Method b;
  private static Method c;
  private static Method d;
  private static Object e;
  private static AudioManager f;
  Handler a = new Handler();
  private boolean g = false;

  // ERROR //
  private void a(Context paramContext, String paramString)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokevirtual 39	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   4: astore 4
    //   6: aload_2
    //   7: ifnull +168 -> 175
    //   10: aload 4
    //   12: getstatic 45	android/provider/CallLog$Calls:CONTENT_URI	Landroid/net/Uri;
    //   15: iconst_1
    //   16: anewarray 47	java/lang/String
    //   19: dup
    //   20: iconst_0
    //   21: ldc 49
    //   23: aastore
    //   24: ldc 51
    //   26: iconst_1
    //   27: anewarray 47	java/lang/String
    //   30: dup
    //   31: iconst_0
    //   32: aload_2
    //   33: aastore
    //   34: ldc 53
    //   36: invokevirtual 59	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   39: astore 5
    //   41: aload 5
    //   43: ifnull +189 -> 232
    //   46: new 61	java/lang/StringBuilder
    //   49: dup
    //   50: invokespecial 62	java/lang/StringBuilder:<init>	()V
    //   53: ldc 64
    //   55: invokevirtual 68	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   58: aload_2
    //   59: invokevirtual 68	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   62: ldc 70
    //   64: invokevirtual 68	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   67: aload 5
    //   69: invokeinterface 76 1 0
    //   74: invokevirtual 79	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   77: invokevirtual 83	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   80: invokestatic 88	com/avast/android/generic/util/m:c	(Ljava/lang/String;)I
    //   83: pop
    //   84: aload 5
    //   86: invokeinterface 92 1 0
    //   91: ifeq +69 -> 160
    //   94: aload 5
    //   96: iconst_0
    //   97: invokeinterface 96 2 0
    //   102: lstore 9
    //   104: new 61	java/lang/StringBuilder
    //   107: dup
    //   108: invokespecial 62	java/lang/StringBuilder:<init>	()V
    //   111: ldc 98
    //   113: invokevirtual 68	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   116: lload 9
    //   118: invokevirtual 101	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   121: invokevirtual 83	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   124: invokestatic 88	com/avast/android/generic/util/m:c	(Ljava/lang/String;)I
    //   127: pop
    //   128: getstatic 45	android/provider/CallLog$Calls:CONTENT_URI	Landroid/net/Uri;
    //   131: astore 12
    //   133: iconst_1
    //   134: anewarray 47	java/lang/String
    //   137: astore 13
    //   139: aload 13
    //   141: iconst_0
    //   142: lload 9
    //   144: invokestatic 105	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   147: aastore
    //   148: aload 4
    //   150: aload 12
    //   152: ldc 107
    //   154: aload 13
    //   156: invokevirtual 111	android/content/ContentResolver:delete	(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    //   159: pop
    //   160: aload 5
    //   162: ifnull +98 -> 260
    //   165: aload 5
    //   167: invokeinterface 114 1 0
    //   172: goto +88 -> 260
    //   175: aload 4
    //   177: getstatic 45	android/provider/CallLog$Calls:CONTENT_URI	Landroid/net/Uri;
    //   180: iconst_1
    //   181: anewarray 47	java/lang/String
    //   184: dup
    //   185: iconst_0
    //   186: ldc 49
    //   188: aastore
    //   189: ldc 116
    //   191: aconst_null
    //   192: ldc 53
    //   194: invokevirtual 59	android/content/ContentResolver:query	(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   197: astore 5
    //   199: goto -158 -> 41
    //   202: astore 8
    //   204: aload 5
    //   206: ifnull +10 -> 216
    //   209: aload 5
    //   211: invokeinterface 114 1 0
    //   216: aload 8
    //   218: athrow
    //   219: astore_3
    //   220: invokestatic 121	a/a/a/a/a/a:a	()La/a/a/a/a/a;
    //   223: ldc 123
    //   225: aload_3
    //   226: invokevirtual 126	a/a/a/a/a/a:a	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   229: goto +31 -> 260
    //   232: new 61	java/lang/StringBuilder
    //   235: dup
    //   236: invokespecial 62	java/lang/StringBuilder:<init>	()V
    //   239: ldc 64
    //   241: invokevirtual 68	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   244: aload_2
    //   245: invokevirtual 68	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   248: ldc 128
    //   250: invokevirtual 68	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   253: invokevirtual 83	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   256: invokestatic 88	com/avast/android/generic/util/m:c	(Ljava/lang/String;)I
    //   259: pop
    //   260: return
    //
    // Exception table:
    //   from	to	target	type
    //   84	160	202	finally
    //   0	84	219	java/lang/Exception
    //   165	219	219	java/lang/Exception
    //   232	260	219	java/lang/Exception
  }

  public static boolean a(Context paramContext)
  {
    try
    {
      boolean bool;
      if ((b != null) && (e != null) && (c != null) && (d != null))
      {
        AudioManager localAudioManager = f;
        if (localAudioManager != null)
          bool = true;
      }
      while (true)
      {
        return bool;
        TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getApplicationContext().getSystemService("phone");
        f = (AudioManager)paramContext.getSystemService("audio");
        try
        {
          Method localMethod = Class.forName(localTelephonyManager.getClass().getName()).getDeclaredMethod("getITelephony", new Class[0]);
          localMethod.setAccessible(true);
          e = localMethod.invoke(localTelephonyManager, new Object[0]);
          Class localClass = Class.forName(e.getClass().getName());
          b = localClass.getMethod("endCall", new Class[0]);
          Class[] arrayOfClass = new Class[1];
          arrayOfClass[0] = Boolean.TYPE;
          c = localClass.getMethod("setRadio", arrayOfClass);
          d = localClass.getMethod("isRadioOn", new Class[0]);
          bool = true;
        }
        catch (Exception localException)
        {
          b = null;
          c = null;
          d = null;
          e = null;
          f = null;
          bool = false;
        }
      }
    }
    finally
    {
    }
  }

  private void b(Context paramContext)
  {
    Boolean localBoolean1 = Boolean.valueOf(false);
    if (a(paramContext));
    while (true)
    {
      try
      {
        localBoolean2 = (Boolean)b.invoke(e, new Object[0]);
        if (!localBoolean2.booleanValue())
        {
          m.c("PhoneCallBlocker: endCall() doesn't work");
          e();
        }
        return;
      }
      catch (Exception localException)
      {
        localBoolean2 = localBoolean1;
        continue;
      }
      Boolean localBoolean2 = localBoolean1;
    }
  }

  private void e()
  {
    try
    {
      Method localMethod = c;
      Object localObject = e;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Boolean.FALSE;
      Boolean localBoolean = (Boolean)localMethod.invoke(localObject, arrayOfObject);
      m.c("PhoneCallBlocker: setRadio(false) result: " + localBoolean);
      p localp = new p(this);
      this.a.postDelayed(localp, 100L);
      return;
    }
    catch (Exception localException)
    {
      while (true)
      {
        m.a("PhoneCallBlocker: failed", localException);
        com.avast.android.generic.util.ga.a.a().a("error", "LG alternative endCall failed", localException.getLocalizedMessage(), Long.valueOf(0L));
      }
    }
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    try
    {
      String str1 = paramIntent.getStringExtra("state");
      if (TelephonyManager.EXTRA_STATE_IDLE.equals(str1))
        m.c("PhoneStateChangeReceiver: call state changed to IDLE");
      else if (TelephonyManager.EXTRA_STATE_OFFHOOK.equals(str1))
        m.c("PhoneStateChangeReceiver: call state changed to OFFHOOK");
    }
    catch (Exception localException)
    {
      a.a.a.a.a.a.a().a(localException);
    }
    m.c("PhoneStateChangeReceiver: call state changed to RING");
    String str2 = paramIntent.getStringExtra("incoming_number");
    n localn = new n(this, paramContext, u.a(paramContext));
    if ((str2 != null) && (str2.length() > 0))
      localn.a(str2);
    else
      localn.a();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.filter.core.PhoneStateChangeReceiver
 * JD-Core Version:    0.6.2
 */