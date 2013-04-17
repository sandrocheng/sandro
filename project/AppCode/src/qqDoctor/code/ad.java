import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import com.android.internal.telephony.ISms;
import com.android.internal.telephony.ISms.Stub;
import com.android.internal.telephony.ITelephony;
import java.lang.reflect.Method;

public class ad extends q
{
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
        str = "";
    }
  }

  public final String a(Intent paramIntent)
  {
    if (paramIntent.getAction().equals("android.provider.Telephony.GSM_SMS_RECEIVED"));
    for (String str = "1"; ; str = "0")
      return str;
  }

  public y a(Context paramContext, boolean paramBoolean)
    throws s
  {
    String str = ft.a();
    if ((str != null) && (str.indexOf("i889") >= 0));
    for (y localy = null; ; localy = super.a(paramContext, paramBoolean))
      return localy;
  }

  protected void a()
  {
    this.a = "simnum";
    this.b = "band";
    this.d = "1";
    this.c = "2";
    this.f = "0";
    this.e = "1";
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
    v[] arrayOfv = new v[1];
    arrayOfv[0] = new v(new ah(), 0);
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
 * Qualified Name:     ad
 * JD-Core Version:    0.6.2
 */