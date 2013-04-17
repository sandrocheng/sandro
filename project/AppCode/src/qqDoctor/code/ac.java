import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.telephony.TelephonyManager;
import com.android.internal.telephony.ISms;
import com.android.internal.telephony.ISms.Stub;
import com.android.internal.telephony.ITelephony;
import com.tencent.qqpimsecure.service.QQPimApplication;
import java.lang.reflect.Method;

public final class ac extends q
{
  private String g = "enableMMS-GSM";
  private String h = "enableMMS-CDMA";

  public ac(String paramString)
  {
    if (paramString.indexOf("xt928") >= 0)
    {
      this.g = "enableMMS";
      this.h = "enableMMS";
    }
  }

  public final ITelephony a(Context paramContext)
  {
    try
    {
      Object localObject = paramContext.getSystemService("phone2");
      if (localObject != null)
      {
        Method localMethod = localObject.getClass().getDeclaredMethod("getITelephony", null);
        if (localMethod != null)
        {
          localMethod.setAccessible(true);
          localITelephony = (ITelephony)localMethod.invoke(localObject, null);
          return localITelephony;
        }
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
    String str1 = null;
    if (paramIntent != null)
    {
      str1 = paramIntent.getStringExtra("from");
      if (str1 != null)
      {
        if (!str1.equals("GSM"))
          break label44;
        str1 = "1";
      }
    }
    String str2;
    if (str1 == null)
    {
      str2 = paramIntent.getAction();
      if (str2 != null)
        break label59;
    }
    while (true)
    {
      return str1;
      label44: if (!str1.equals("CDMA"))
        break;
      str1 = "2";
      break;
      label59: if ("android.provider.Telephony.SMS_RECEIVED".equals(str2))
        str1 = "2";
      else if ("android.provider.Telephony.SMS_RECEIVED_2".equals(str2))
        str1 = "1";
    }
  }

  protected final void a()
  {
    this.a = "network";
    this.b = "mode";
    this.c = "2";
    this.d = "1";
    this.e = "1";
    this.f = "2";
  }

  public final String b(int paramInt)
  {
    String str;
    if (paramInt == 0)
      str = this.h;
    while (true)
    {
      return str;
      if (paramInt == 1)
        str = this.g;
      else
        str = "enableMMS";
    }
  }

  public final ISms g()
  {
    TelephonyManager localTelephonyManager = (TelephonyManager)QQPimApplication.a().getSystemService("phone");
    String str;
    if ((localTelephonyManager.getSimState() == 5) && (localTelephonyManager.getPhoneType() == 1))
      str = "isms";
    try
    {
      while (true)
      {
        Method localMethod = Class.forName("android.os.ServiceManager").getMethod("getService", new Class[] { String.class });
        if (localMethod == null)
          break;
        ISms localISms2 = ISms.Stub.asInterface((IBinder)localMethod.invoke(null, new Object[] { str }));
        localISms1 = localISms2;
        return localISms1;
        str = "isms2";
      }
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
 * Qualified Name:     ac
 * JD-Core Version:    0.6.2
 */