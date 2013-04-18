package com.keniu.security.util;

import android.content.Context;
import android.content.Intent;
import android.media.AudioManager;
import android.media.Ringtone;
import android.media.RingtoneManager;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.Vibrator;
import android.telephony.TelephonyManager;
import android.text.ClipboardManager;
import android.util.Log;
import android.widget.Toast;
import com.android.internal.telephony.ITelephony;
import com.android.internal.telephony.ITelephony.Stub;
import com.jxphone.mosecurity.d.l;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class af
{
  private static Method a;
  private static final long[] b;

  static
  {
    try
    {
      Method localMethod = TelephonyManager.class.getDeclaredMethod("getITelephony", new Class[0]);
      a = localMethod;
      localMethod.setAccessible(true);
      b = new long[] { 100L, 100L, 100L, 300L, 300L, 100L, 100L, 100L };
      return;
    }
    catch (SecurityException localSecurityException)
    {
      while (true)
        Log.e(af.class.getName(), localSecurityException.toString());
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      while (true)
        Log.e(af.class.getName(), localNoSuchMethodException.toString());
    }
  }

  public static void a()
  {
    try
    {
      ITelephony.Stub.asInterface(ServiceManager.getService("phone")).cancelMissedCallsNotification();
      Log.e(af.class.getName(), "cancelMissedCallsNotification sucess");
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      while (true)
        Log.e(af.class.getName(), "", localIllegalArgumentException);
    }
    catch (RemoteException localRemoteException)
    {
      while (true)
        Log.e(af.class.getName(), "", localRemoteException);
    }
    catch (Exception localException)
    {
      while (true)
        Log.e(af.class.getName(), "", localException);
    }
  }

  public static void a(Context paramContext)
  {
    TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
    try
    {
      ((ITelephony)a.invoke(localTelephonyManager, new Object[0])).endCall();
      Log.e(af.class.getName(), "endCall sucess");
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      while (true)
        Log.e(af.class.getName(), "", localIllegalArgumentException);
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      while (true)
        Log.e(af.class.getName(), "", localIllegalAccessException);
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      while (true)
        Log.e(af.class.getName(), "", localInvocationTargetException);
    }
    catch (SecurityException localSecurityException)
    {
      while (true)
        Log.e(af.class.getName(), "", localSecurityException);
    }
    catch (RemoteException localRemoteException)
    {
      while (true)
        Log.e(af.class.getName(), "", localRemoteException);
    }
  }

  private static void a(Context paramContext, int paramInt)
  {
    ((AudioManager)paramContext.getSystemService("audio")).setRingerMode(paramInt);
  }

  public static void a(Context paramContext, Class paramClass)
  {
    Intent localIntent = new Intent();
    localIntent.setClass(paramContext, paramClass);
    paramContext.startActivity(localIntent);
  }

  public static void a(Context paramContext, Class paramClass, Bundle paramBundle)
  {
    Intent localIntent = new Intent();
    localIntent.setClass(paramContext, paramClass);
    localIntent.putExtras(paramBundle);
    paramContext.startActivity(localIntent);
  }

  public static void a(Context paramContext, String paramString)
  {
    paramContext.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(paramString)));
  }

  public static void b(Context paramContext)
  {
    if ((l.a()) && (Build.VERSION.SDK_INT >= 14))
      paramContext.startActivity(new Intent("android.settings.SETTINGS"));
    while (true)
    {
      return;
      paramContext.startActivity(new Intent("android.settings.WIRELESS_SETTINGS"));
    }
  }

  private static void b(Context paramContext, Class paramClass)
  {
    paramContext.startActivity(new Intent(paramContext, paramClass));
  }

  private static void b(Context paramContext, Class paramClass, Bundle paramBundle)
  {
    Intent localIntent = new Intent(paramContext, paramClass);
    localIntent.putExtras(paramBundle);
    paramContext.startActivity(localIntent);
  }

  public static void b(Context paramContext, String paramString)
  {
    Intent localIntent = new Intent("android.intent.action.CALL", Uri.parse("tel:".concat(paramString)));
    try
    {
      paramContext.startActivity(localIntent);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        Toast.makeText(paramContext, paramContext.getString(2131427403), 0).show();
    }
  }

  private static int c(Context paramContext)
  {
    return ((AudioManager)paramContext.getSystemService("audio")).getRingerMode();
  }

  public static void c(Context paramContext, String paramString)
  {
    Intent localIntent = new Intent("android.intent.action.CALL", Uri.parse("tel:".concat(paramString)));
    localIntent.setFlags(268435456);
    try
    {
      paramContext.startActivity(localIntent);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        Toast.makeText(paramContext, paramContext.getString(2131427403), 0).show();
    }
  }

  private static void d(Context paramContext)
  {
    ((Vibrator)paramContext.getSystemService("vibrator")).vibrate(b, -1);
  }

  public static void d(Context paramContext, String paramString)
  {
    paramContext.startActivity(new Intent("android.intent.action.DIAL", Uri.parse("tel:".concat(paramString))));
  }

  private static void e(Context paramContext)
  {
    Ringtone localRingtone = RingtoneManager.getRingtone(paramContext, RingtoneManager.getDefaultUri(2));
    if (localRingtone != null)
      localRingtone.play();
  }

  public static void e(Context paramContext, String paramString)
  {
    paramContext.startActivity(new Intent("android.intent.action.SENDTO", Uri.parse("smsto:".concat(paramString))));
  }

  public static void f(Context paramContext, String paramString)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setType("vnd.android-dir/mms-sms");
    if (paramString != null)
      localIntent.putExtra("sms_body", paramString);
    paramContext.startActivity(localIntent);
  }

  public static void g(Context paramContext, String paramString)
  {
    ((ClipboardManager)paramContext.getSystemService("clipboard")).setText(paramString);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.util.af
 * JD-Core Version:    0.6.2
 */