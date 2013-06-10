package org.antivirus.antitheft;

import android.content.Context;
import android.os.Bundle;
import android.os.Message;
import android.os.Messenger;
import org.antivirus.AVSettings;
import org.antivirus.core.Logger;
import org.antivirus.core.a.q;
import org.antivirus.core.a.v;

public class e extends v
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
        Logger.log(localException);
    }
  }

  public final boolean a()
  {
    return false;
  }

  public final boolean a(Context paramContext)
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = this.a;
    this.f = arrayOfObject;
    return true;
  }

  public final boolean a(Context paramContext, Message paramMessage)
  {
    this.a = ((Bundle)paramMessage.obj).getString("adminEmail");
    this.b = ((Messenger)((Bundle)paramMessage.obj).get("__SAH"));
    return true;
  }

  public final boolean a(Context paramContext, Object paramObject)
  {
    boolean bool = true;
    try
    {
      if (paramObject.toString().equals("ok"))
      {
        a(true);
        AVSettings.setFindRUser(this.a);
        this.a = null;
      }
      else
      {
        AVSettings.setFindRUser(null);
        a(false);
      }
    }
    catch (Exception localException)
    {
      Logger.log(localException);
      bool = false;
    }
    return bool;
  }

  public final q b()
  {
    return q.c;
  }

  public final boolean b(Context paramContext)
  {
    this.a = null;
    a(false);
    return false;
  }

  public final int c()
  {
    return 1030;
  }

  public final String d()
  {
    return "Device.updateATMail";
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.antitheft.e
 * JD-Core Version:    0.6.2
 */