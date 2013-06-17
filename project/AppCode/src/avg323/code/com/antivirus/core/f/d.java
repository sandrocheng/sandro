package com.antivirus.core.f;

import android.content.Context;
import android.telephony.TelephonyManager;
import android.telephony.cdma.CdmaCellLocation;

public class d
{
  private String a;
  private String b;
  private String c;

  public static String b(Context paramContext)
  {
    TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
    CdmaCellLocation localCdmaCellLocation = (CdmaCellLocation)localTelephonyManager.getCellLocation();
    String str5;
    if (localCdmaCellLocation == null)
    {
      com.avg.toolkit.f.a.a("No CDMA loaction");
      str5 = "";
      return str5;
    }
    int i = localCdmaCellLocation.getSystemId();
    if (i == -1)
      i = 0;
    String str1 = localTelephonyManager.getSimOperator();
    String str2 = "0";
    String str3 = "-1";
    if ((str1 != null) && (str1.length() >= 3))
    {
      str2 = str1.substring(0, 2);
      if (str1.length() > 3)
      {
        str3 = str1.substring(3);
        int k = str3.lastIndexOf('0');
        int m = str3.length();
        if ((m - 1 == k) && (m > 2))
          str3 = str3.substring(0, m - 1);
      }
    }
    for (String str4 = str2; ; str4 = str2)
    {
      int j = localCdmaCellLocation.getBaseStationId();
      str5 = "" + i + ":" + str4 + ":" + str3 + ":" + j + ":" + "cdma";
      break;
    }
  }

  public String a()
  {
    return this.b;
  }

  public boolean a(Context paramContext)
  {
    com.avg.toolkit.UID.a locala = new com.avg.toolkit.UID.a(paramContext);
    TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
    if (localTelephonyManager != null);
    while (true)
    {
      try
      {
        String str4 = localTelephonyManager.getLine1Number();
        str1 = str4;
        if (str1 == null)
          str1 = localTelephonyManager.getSubscriberId();
        if (str1 == null)
          str1 = "";
      }
      catch (Exception localException1)
      {
        try
        {
          String str3 = localTelephonyManager.getSimSerialNumber();
          str2 = str3;
          if (str2 == null)
            str2 = "unknown";
          this.a = locala.a();
          if ((this.a != null) && (this.a.matches("^0+$")))
            this.a = (str1 + "_" + str2);
          this.b = str1;
          this.c = str2;
          bool = true;
          return bool;
          localException1 = localException1;
          com.avg.toolkit.f.a.a(localException1);
          String str1 = null;
        }
        catch (Exception localException2)
        {
          com.avg.toolkit.f.a.a(localException2);
          String str2 = "unknown";
          continue;
        }
      }
      boolean bool = false;
    }
  }

  public String b()
  {
    return this.c;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.core.f.d
 * JD-Core Version:    0.6.2
 */