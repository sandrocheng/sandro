import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.android.internal.telephony.ISms;
import com.android.internal.telephony.ITelephony;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;

public final class r extends q
{
  public r()
  {
    Uri.parse("content://mms-sms/itemInfo");
  }

  public final ITelephony a(Context paramContext)
  {
    try
    {
      Class localClass = Class.forName("com.yulong.android.telephony.CPTelephonyManager");
      if (localClass != null)
      {
        Constructor localConstructor = localClass.getConstructor(new Class[] { Context.class });
        if (localConstructor != null)
        {
          Object localObject = localConstructor.newInstance(new Object[] { paramContext });
          Method localMethod = localClass.getDeclaredMethod("getITelephony", null);
          if (localMethod != null)
          {
            localMethod.setAccessible(true);
            localITelephony = (ITelephony)localMethod.invoke(localObject, new Object[0]);
            return localITelephony;
          }
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
    String str = null;
    if (paramIntent != null)
      str = paramIntent.getStringExtra("from");
    return str;
  }

  protected final void a()
  {
    this.a = "moduletype";
    this.b = "itemInfoid";
    this.e = "2";
    this.f = "1";
    this.c = "2";
    this.d = "1";
  }

  public final String b(int paramInt)
  {
    String str;
    if (paramInt == 0)
      str = "enableCDMAMMS";
    while (true)
    {
      return str;
      if (paramInt == 1)
        str = "enableGSMMMS";
      else
        str = "enableMMS";
    }
  }

  public final ISms g()
  {
    return null;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     r
 * JD-Core Version:    0.6.2
 */