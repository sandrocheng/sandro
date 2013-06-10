package org.antivirus.applocker;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Message;
import org.antivirus.AVService;
import org.antivirus.AVSettings;
import org.antivirus.core.Logger;
import org.antivirus.core.a.q;
import org.antivirus.core.a.v;

public class h extends v
{
  String a;
  String b;
  String c;

  public static void a(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    try
    {
      Intent localIntent = new Intent(paramContext, AVService.class);
      localIntent.putExtra("__SAC", 7);
      localIntent.putExtra("__SAD", 1050);
      localIntent.putExtra("EmailAddress", paramString1);
      localIntent.putExtra("Language", paramString2);
      localIntent.putExtra("Password", paramString3);
      paramContext.startService(localIntent);
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
    this.a = AVSettings.commGetValue("DeviceControl.sendEmail.email");
    if (this.a.equals("EMPTY"))
      this.a = null;
    for (boolean bool = false; ; bool = true)
    {
      return bool;
      this.b = AVSettings.commGetValue("DeviceControl.sendEmail.lang");
      this.c = AVSettings.commGetValue("DeviceControl.sendEmail.pass");
    }
  }

  public final boolean a(Context paramContext)
  {
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = this.b;
    arrayOfObject[1] = this.a;
    arrayOfObject[2] = "AppLockerPW";
    arrayOfObject[3] = this.c;
    this.f = arrayOfObject;
    return true;
  }

  public final boolean a(Context paramContext, Message paramMessage)
  {
    this.a = ((Bundle)paramMessage.obj).getString("EmailAddress");
    this.b = ((Bundle)paramMessage.obj).getString("Language");
    this.c = ((Bundle)paramMessage.obj).getString("Password");
    AVSettings.commSetValue("DeviceControl.sendEmail.email", this.a);
    AVSettings.commSetValue("DeviceControl.sendEmail.lang", this.b);
    AVSettings.commSetValue("DeviceControl.sendEmail.pass", this.c);
    if ((this.a != null) && (this.b != null) && (this.c != null));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final boolean a(Context paramContext, Object paramObject)
  {
    AVSettings.commRmValue("DeviceControl.sendEmail.email");
    AVSettings.commRmValue("DeviceControl.sendEmail.lang");
    AVSettings.commRmValue("DeviceControl.sendEmail.pass");
    return true;
  }

  public final q b()
  {
    return q.c;
  }

  public final int c()
  {
    return 1050;
  }

  public final String d()
  {
    return "Device.sendMail";
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.applocker.h
 * JD-Core Version:    0.6.2
 */