package org.antivirus.core.compatibility;

import android.content.Context;
import android.content.pm.PackageManager;
import android.telephony.TelephonyManager;
import android.telephony.cdma.CdmaCellLocation;
import org.antivirus.core.Logger;

public class EclairTools
{
  public static String getCellIdTower(Context paramContext)
  {
    TelephonyManager localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
    CdmaCellLocation localCdmaCellLocation = (CdmaCellLocation)localTelephonyManager.getCellLocation();
    String str5;
    if (localCdmaCellLocation == null)
    {
      Logger.error("No CDMA loaction");
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
      str5 = "" + i + ":" + str4 + ":" + str3 + ":" + j + ":cdma";
      break;
    }
  }

  public static boolean isGpsInDevice(Context paramContext)
  {
    boolean bool1 = AndroidVersionCompatibility.isEclairOrAbove();
    boolean bool2 = false;
    if (!bool1);
    while (true)
    {
      return bool2;
      PackageManager localPackageManager = paramContext.getPackageManager();
      if (localPackageManager == null)
      {
        Logger.error("Can't get the PackageManager");
        bool2 = false;
      }
      else
      {
        bool2 = localPackageManager.hasSystemFeature("android.hardware.location.gps");
      }
    }
  }

  public static boolean isTelephonyInDevice(Context paramContext)
  {
    boolean bool;
    if (!AndroidVersionCompatibility.isEclairOrAbove())
      bool = true;
    while (true)
    {
      return bool;
      PackageManager localPackageManager = paramContext.getPackageManager();
      if (localPackageManager == null)
      {
        Logger.error("Can't get the PackageManager");
        bool = false;
      }
      else
      {
        bool = localPackageManager.hasSystemFeature("android.hardware.telephony");
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.core.compatibility.EclairTools
 * JD-Core Version:    0.6.2
 */