package com.antivirus.core.f;

import android.content.Context;
import android.telephony.TelephonyManager;

public class a
{
  public static String a(Context paramContext)
  {
    Object localObject = paramContext.getSystemService("phone");
    int i;
    String str;
    if ((localObject != null) && ((localObject instanceof TelephonyManager)))
    {
      i = ((TelephonyManager)localObject).getPhoneType();
      if (1 == i)
        str = new c(paramContext).a();
    }
    while (true)
    {
      return str;
      if (2 == i)
        str = d.b(paramContext);
      else
        str = "";
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.core.f.a
 * JD-Core Version:    0.6.2
 */