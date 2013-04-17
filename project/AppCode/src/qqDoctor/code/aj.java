import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.telephony.TelephonyManager;
import com.android.internal.telephony.ISms;
import com.android.internal.telephony.ISms.Stub;
import com.android.internal.telephony.ITelephony;
import java.lang.reflect.Method;

public final class aj extends q
{
  public final ITelephony a(Context paramContext)
  {
    TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
    try
    {
      Class localClass = localTelephonyManager.getClass();
      Class[] arrayOfClass = new Class[1];
      arrayOfClass[0] = Integer.TYPE;
      Method localMethod = localClass.getDeclaredMethod("getITelephonyExtend", arrayOfClass);
      if (localMethod != null)
      {
        localMethod.setAccessible(true);
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Integer.valueOf(2);
        localITelephony = (ITelephony)localMethod.invoke(localTelephonyManager, arrayOfObject);
        return localITelephony;
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.printStackTrace();
        ITelephony localITelephony = null;
      }
    }
  }

  public final String a(int paramInt)
  {
    String str;
    if (paramInt == 0)
      str = this.f;
    while (true)
    {
      return str;
      if (paramInt == 1)
        str = this.e;
      else
        str = "UNKNOWN";
    }
  }

  public final String a(Intent paramIntent)
  {
    String str;
    if (paramIntent.getAction().equals("android.provider.Telephony.SMS_RECEIVED"))
      str = "1";
    while (true)
    {
      return str;
      boolean bool = paramIntent.getAction().equals("android.provider.Telephony.SMS_RECEIVED2");
      str = null;
      if (bool)
        str = "2";
    }
  }

  protected final void a()
  {
    this.a = "mode_id";
    this.b = "mode";
    this.c = "2";
    this.d = "1";
    this.f = "1";
    this.e = "2";
  }

  public final String b(int paramInt)
  {
    String str;
    if (paramInt == 0)
      str = "enableMMS-CDMA";
    while (true)
    {
      return str;
      if (paramInt == 1)
        str = "enableMMS-GSM";
      else
        str = "enableMMS";
    }
  }

  public final v[] d()
  {
    v[] arrayOfv = new v[2];
    arrayOfv[0] = new v(this, 0);
    arrayOfv[1] = new v(new ak(), 0);
    return arrayOfv;
  }

  public final ISms g()
  {
    try
    {
      ISms localISms2 = ISms.Stub.asInterface((IBinder)Class.forName("android.os.ServiceManager").getMethod("getService", new Class[] { String.class }).invoke(null, new Object[] { "isms2" }));
      localISms1 = localISms2;
      return localISms1;
    }
    catch (Throwable localThrowable)
    {
      while (true)
      {
        localThrowable.printStackTrace();
        ISms localISms1 = null;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aj
 * JD-Core Version:    0.6.2
 */