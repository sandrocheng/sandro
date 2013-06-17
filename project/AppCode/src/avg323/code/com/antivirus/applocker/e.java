package com.antivirus.applocker;

import android.content.Context;
import android.os.Bundle;
import android.os.Message;
import com.antivirus.AVService;
import com.antivirus.c;
import com.avg.toolkit.b.g;
import com.avg.toolkit.f.a;

public class e extends g
{
  String a;
  String b;
  String c;

  public static void a(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    try
    {
      Bundle localBundle = new Bundle();
      localBundle.putString("EmailAddress", paramString1);
      localBundle.putString("Language", paramString2);
      localBundle.putString("Password", paramString3);
      AVService.a(paramContext, 4000, 13001, localBundle);
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
    this.a = c.f("DeviceControl.sendEmail.email");
    if (this.a.equals("EMPTY"))
      this.a = null;
    for (boolean bool = false; ; bool = true)
    {
      return bool;
      this.b = c.f("DeviceControl.sendEmail.lang");
      this.c = c.f("DeviceControl.sendEmail.pass");
    }
  }

  public boolean a(Context paramContext, Message paramMessage)
  {
    this.a = ((Bundle)paramMessage.obj).getString("EmailAddress");
    this.b = ((Bundle)paramMessage.obj).getString("Language");
    this.c = ((Bundle)paramMessage.obj).getString("Password");
    c.a("DeviceControl.sendEmail.email", this.a);
    c.a("DeviceControl.sendEmail.lang", this.b);
    c.a("DeviceControl.sendEmail.pass", this.c);
    if ((this.a != null) && (this.b != null) && (this.c != null));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public boolean a(Context paramContext, Object paramObject)
  {
    c.g("DeviceControl.sendEmail.email");
    c.g("DeviceControl.sendEmail.lang");
    c.g("DeviceControl.sendEmail.pass");
    return true;
  }

  public boolean b(Context paramContext)
  {
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = this.b;
    arrayOfObject[1] = this.a;
    arrayOfObject[2] = "AppLockerPW";
    arrayOfObject[3] = this.c;
    this.f = arrayOfObject;
    return true;
  }

  public int b_()
  {
    return 13001;
  }

  public String c()
  {
    return "Device.sendMail";
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.applocker.e
 * JD-Core Version:    0.6.2
 */