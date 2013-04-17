import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import com.android.internal.telephony.ISms;
import com.android.internal.telephony.ISms.Stub;
import com.android.internal.telephony.ITelephony;
import com.android.internal.telephony.ITelephony.Stub;
import java.lang.reflect.Method;

public final class ak extends q
{
  public final ITelephony a(Context paramContext)
  {
    return ITelephony.Stub.asInterface(aak.a("phone"));
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
    int i = 0;
    if (paramIntent != null)
      i = paramIntent.getIntExtra("sub_id", 0);
    return String.valueOf(i);
  }

  public final y a(Context paramContext, boolean paramBoolean)
    throws s
  {
    int i = 1;
    ITelephony localITelephony = a(paramContext);
    int j = 0;
    if (localITelephony != null);
    try
    {
      Class localClass = localITelephony.getClass();
      Class[] arrayOfClass = new Class[1];
      arrayOfClass[0] = Integer.TYPE;
      Method localMethod = localClass.getDeclaredMethod("getNetworkTypeOnSubscription", arrayOfClass);
      if (localMethod != null)
      {
        j = i;
        if (j != 0)
          return this;
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.printStackTrace();
        j = 0;
        continue;
        this = null;
        continue;
        i = 0;
      }
    }
  }

  protected final void a()
  {
    this.a = "mode_id";
    this.b = "sub_id";
    this.c = "2";
    this.d = "1";
    this.f = "0";
    this.e = "1";
  }

  public final String b(int paramInt)
  {
    return "enableMMS";
  }

  public final String e()
  {
    return "sub_id";
  }

  public final ISms g()
  {
    try
    {
      ISms localISms2 = ISms.Stub.asInterface((IBinder)Class.forName("android.os.ServiceManager").getMethod("getService", new Class[] { String.class }).invoke(null, new Object[] { "isms" }));
      localISms1 = localISms2;
      return localISms1;
    }
    catch (Throwable localThrowable)
    {
      while (true)
        ISms localISms1 = null;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ak
 * JD-Core Version:    0.6.2
 */