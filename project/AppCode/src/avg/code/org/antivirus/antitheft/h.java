package org.antivirus.antitheft;

import android.content.Context;
import android.os.Bundle;
import android.os.Message;
import org.antivirus.AVSettings;
import org.antivirus.core.a.q;
import org.antivirus.core.a.v;

public class h extends v
{
  public final boolean a()
  {
    return false;
  }

  public final boolean a(Context paramContext)
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = AVSettings.getC2dmToken();
    this.f = arrayOfObject;
    return true;
  }

  public final boolean a(Context paramContext, Message paramMessage)
  {
    AVSettings.setC2dmToken(((Bundle)paramMessage.obj).getString("registration_id"));
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
    return 1035;
  }

  public final String d()
  {
    return "Device.updateGCM";
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.antitheft.h
 * JD-Core Version:    0.6.2
 */