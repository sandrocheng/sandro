package com.antivirus.antitheft;

import android.content.Context;
import android.os.Message;
import com.antivirus.core.f.d;
import com.avg.toolkit.b.e;
import com.avg.toolkit.b.g;

public class j extends g
{
  public e a()
  {
    return e.c;
  }

  public boolean a(Context paramContext)
  {
    return false;
  }

  public boolean a(Context paramContext, Message paramMessage)
  {
    return true;
  }

  public boolean a(Context paramContext, Object paramObject)
  {
    return true;
  }

  public boolean b(Context paramContext)
  {
    d locald = new d();
    locald.a(paramContext);
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = com.avg.toolkit.b.j.a(locald.b());
    this.f = arrayOfObject;
    return true;
  }

  public int b_()
  {
    return 9007;
  }

  public String c()
  {
    return "Device.updateSIM";
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.antitheft.j
 * JD-Core Version:    0.6.2
 */