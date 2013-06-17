package com.antivirus.antitheft;

import android.content.Context;
import android.os.Bundle;
import android.os.Message;
import android.os.Messenger;
import com.antivirus.c;
import com.avg.toolkit.b.e;
import com.avg.toolkit.b.g;
import com.avg.toolkit.f.a;

public class h extends g
{
  Messenger a;

  private void a(boolean paramBoolean)
  {
    try
    {
      if (this.a != null)
      {
        Message localMessage = Message.obtain();
        localMessage.obj = Boolean.valueOf(paramBoolean);
        this.a.send(localMessage);
      }
      this.a = null;
      return;
    }
    catch (Exception localException)
    {
      while (true)
        a.a(localException);
    }
  }

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
    this.a = ((Messenger)((Bundle)paramMessage.obj).get("__SAH"));
    return true;
  }

  public boolean a(Context paramContext, Object paramObject)
  {
    boolean bool = true;
    try
    {
      if (paramObject.toString().equals("ok"))
      {
        a(true);
      }
      else
      {
        c.b(null);
        a(false);
      }
    }
    catch (Exception localException)
    {
      a.a(localException);
      bool = false;
    }
    return bool;
  }

  public boolean b(Context paramContext)
  {
    this.f = new Object[0];
    return true;
  }

  public boolean b(Context paramContext, Object paramObject)
  {
    a(false);
    return false;
  }

  public int b_()
  {
    return 9008;
  }

  public String c()
  {
    return "Device.removeATMail";
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.antitheft.h
 * JD-Core Version:    0.6.2
 */