package org.antivirus.antitheft;

import android.content.Context;
import android.os.Message;
import org.antivirus.core.a.ab;
import org.antivirus.core.a.q;
import org.antivirus.core.a.v;
import org.antivirus.core.telephony.TelephonyInfo;

public class i extends v
{
  public final boolean a()
  {
    return false;
  }

  public final boolean a(Context paramContext)
  {
    TelephonyInfo localTelephonyInfo = new TelephonyInfo(paramContext);
    localTelephonyInfo.grabLineAndSimNumbers(paramContext);
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = ab.a(localTelephonyInfo.getSimNumber());
    this.f = arrayOfObject;
    return true;
  }

  public final boolean a(Context paramContext, Message paramMessage)
  {
    return true;
  }

  public final boolean a(Context paramContext, Object paramObject)
  {
    return true;
  }

  public final q b()
  {
    return q.c;
  }

  public final int c()
  {
    return 1036;
  }

  public final String d()
  {
    return "Device.updateSIM";
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.antitheft.i
 * JD-Core Version:    0.6.2
 */