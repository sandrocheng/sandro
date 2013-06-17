package com.antivirus.antitheft;

import android.content.Context;
import android.os.Message;
import com.avg.toolkit.b.e;
import com.avg.toolkit.b.g;
import com.google.android.a.c;

public class i extends g
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
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = ("GCM:" + c.e(paramContext));
    this.f = arrayOfObject;
    return true;
  }

  public int b_()
  {
    return 9006;
  }

  public String c()
  {
    return "Device.updateGCM";
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.antitheft.i
 * JD-Core Version:    0.6.2
 */