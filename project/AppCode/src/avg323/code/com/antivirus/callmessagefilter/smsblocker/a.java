package com.antivirus.callmessagefilter.smsblocker;

import android.content.Context;
import android.os.Bundle;
import android.os.Message;
import android.telephony.TelephonyManager;
import com.antivirus.AVService;
import com.antivirus.c;
import com.avg.toolkit.b.e;
import com.avg.toolkit.b.g;
import java.util.Map;

public class a extends g
{
  private byte[] a;
  private int b;
  private String c;

  public static void a(Context paramContext, String paramString, int paramInt)
  {
    float f = c.A();
    if (f == 0.0D);
    while (true)
    {
      return;
      if ((f == 1.0D) || (a(f)))
      {
        Bundle localBundle = new Bundle();
        localBundle.putString("sms_body_key", paramString);
        localBundle.putInt("sms_user_action", paramInt);
        AVService.a(paramContext, 4000, 12001, localBundle);
      }
    }
  }

  private static boolean a(float paramFloat)
  {
    if (Math.random() < paramFloat);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  private byte[] a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    byte[] arrayOfByte = new byte[paramArrayOfByte1.length];
    for (int i = 0; i < paramArrayOfByte1.length; i++)
      arrayOfByte[i] = ((byte)(paramArrayOfByte1[i] ^ paramArrayOfByte2[(i % paramArrayOfByte2.length)]));
    return arrayOfByte;
  }

  private String c(Context paramContext)
  {
    TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
    if (localTelephonyManager != null)
    {
      str = localTelephonyManager.getSimCountryIso();
      if (str != null);
    }
    for (String str = ""; ; str = "")
      return str;
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
    Bundle localBundle = (Bundle)paramMessage.obj;
    if (localBundle != null)
    {
      this.a = a(localBundle.getString("sms_body_key").getBytes(), "AVG".getBytes());
      this.b = localBundle.getInt("sms_user_action");
      this.c = c(paramContext);
    }
    return true;
  }

  public boolean a(Context paramContext, Object paramObject)
  {
    Map localMap = (Map)paramObject;
    String str = (String)localMap.get("Status");
    c.a(Float.parseFloat((String)localMap.get("Ratio")));
    return "OK".equals(str);
  }

  public boolean b(Context paramContext)
  {
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = this.a;
    arrayOfObject[1] = this.c;
    arrayOfObject[2] = Integer.valueOf(this.b);
    this.f = arrayOfObject;
    return true;
  }

  public int b_()
  {
    return 12001;
  }

  public String c()
  {
    return "Report.spam";
  }

  public boolean d()
  {
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.callmessagefilter.smsblocker.a
 * JD-Core Version:    0.6.2
 */