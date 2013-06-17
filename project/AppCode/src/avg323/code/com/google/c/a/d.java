package com.google.c.a;

import android.content.Context;
import android.telephony.TelephonyManager;

public class d
{
  public static void a(Context paramContext)
  {
    try
    {
      e.a().a("/com/google/i18n/phonenumbers/data/PhoneNumberMetadataProto", ((TelephonyManager)paramContext.getSystemService("phone")).getNetworkCountryIso().toUpperCase(), 0);
      label24: return;
    }
    catch (Exception localException)
    {
      break label24;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.c.a.d
 * JD-Core Version:    0.6.2
 */