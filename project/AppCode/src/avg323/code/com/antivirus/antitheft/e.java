package com.antivirus.antitheft;

import android.content.Context;
import android.os.Bundle;
import android.os.Message;
import android.os.Messenger;
import com.antivirus.c;
import com.avg.toolkit.b.g;
import com.avg.toolkit.f.a;

public class e extends g
{
  protected String a;
  Messenger b;

  private void a(boolean paramBoolean)
  {
    try
    {
      if (this.b != null)
      {
        Message localMessage = Message.obtain();
        localMessage.obj = Boolean.valueOf(paramBoolean);
        this.b.send(localMessage);
      }
      this.b = null;
      return;
    }
    catch (Exception localException)
    {
      while (true)
        a.a(localException);
    }
  }

  public com.avg.toolkit.b.e a()
  {
    return com.avg.toolkit.b.e.c;
  }

  public boolean a(Context paramContext)
  {
    return false;
  }

  public boolean a(Context paramContext, Message paramMessage)
  {
    this.a = ((Bundle)paramMessage.obj).getString("adminEmail");
    this.b = ((Messenger)((Bundle)paramMessage.obj).get("__SAH"));
    return true;
  }

  public boolean a(Context paramContext, Object paramObject)
  {
    boolean bool = true;
    try
    {
      if (paramObject.toString().equals("ok"))
      {
        c.b(this.a);
        a(true);
        this.a = null;
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
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = this.a;
    this.f = arrayOfObject;
    return true;
  }

  public boolean b(Context paramContext, Object paramObject)
  {
    this.a = null;
    a(false);
    return false;
  }

  public int b_()
  {
    return 9001;
  }

  public String c()
  {
    return "Device.updateATMail";
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.antitheft.e
 * JD-Core Version:    0.6.2
 */