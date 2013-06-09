package org.antivirus.core.telephony;

import android.content.Context;
import android.telephony.TelephonyManager;
import org.antivirus.core.compatibility.AndroidVersionCompatibility;
import org.antivirus.core.compatibility.EclairTools;

public class AntennaInfo
{
  public static String getCellIdTower(Context paramContext)
  {
    Object localObject = paramContext.getSystemService("phone");
    int i;
    String str;
    if ((localObject != null) && ((localObject instanceof TelephonyManager)))
    {
      i = ((TelephonyManager)localObject).getPhoneType();
      if (1 == i)
        str = new GSMInfo(paramContext).getCellIdTower();
    }
    while (true)
    {
      return str;
      if ((AndroidVersionCompatibility.isEclairOrAbove()) && (2 == i))
        str = EclairTools.getCellIdTower(paramContext);
      else
        str = "";
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.core.telephony.AntennaInfo
 * JD-Core Version:    0.6.2
 */