package org.antivirus.core.telephony;

import android.content.Context;
import android.telephony.TelephonyManager;
import android.telephony.gsm.GsmCellLocation;
import android.text.TextUtils;
import org.antivirus.core.Logger;

public class GSMInfo
{
  private int a;
  private String b;
  private String c;
  private String d;
  private String e;

  public GSMInfo(Context paramContext)
  {
    try
    {
      localTelephonyManager = (TelephonyManager)paramContext.getSystemService("phone");
    }
    catch (Exception localException2)
    {
      try
      {
        localGsmCellLocation = (GsmCellLocation)localTelephonyManager.getCellLocation();
        if (localGsmCellLocation == null)
        {
          this.a = -1;
          this.b = "-1";
          this.c = "0";
          this.d = "0";
          String str2 = localTelephonyManager.getNetworkOperator();
          if ((str2 != null) && (str2.length() >= 3))
          {
            this.d = str2.substring(0, 3);
            if (str2.length() > 3)
              this.c = str2.substring(3);
          }
          this.e = (this.c + ":" + this.d + ":" + this.b + ":" + this.a + ":gsm");
          label163: if (!TextUtils.isEmpty(this.e));
        }
      }
      catch (Exception localException2)
      {
        try
        {
          TelephonyManager localTelephonyManager;
          GsmCellLocation localGsmCellLocation;
          CdmaCellLocation localCdmaCellLocation = (CdmaCellLocation)localTelephonyManager.getCellLocation();
          if (localCdmaCellLocation == null)
            this.a = -1;
          for (this.b = ""; ; this.b = (localCdmaCellLocation.getBaseStationLatitude() + "-" + localCdmaCellLocation.getBaseStationLongitude()))
          {
            this.c = "0";
            this.d = "0";
            String str1 = localTelephonyManager.getNetworkOperator();
            if ((str1 != null) && (str1.length() >= 3))
            {
              this.d = str1.substring(0, 2);
              if (str1.length() > 3)
                this.c = str1.substring(3);
            }
            this.e = (this.c + ":" + this.d + ":" + this.b + ":" + this.a + ":gsm");
            while (true)
            {
              return;
              localException1 = localException1;
              Logger.log(localException1);
            }
            this.a = localGsmCellLocation.getCid();
            this.b = localGsmCellLocation.getLac();
            break;
            localException2 = localException2;
            Logger.log(localException2);
            break label163;
            this.a = localCdmaCellLocation.getBaseStationId();
          }
        }
        catch (Exception localException3)
        {
          while (true)
            Logger.log(localException3);
        }
      }
    }
  }

  public int getCellId()
  {
    return this.a;
  }

  public String getCellIdTower()
  {
    return this.e;
  }

  public String getLac()
  {
    return this.b;
  }

  public String getMMC()
  {
    return this.c;
  }

  public String getMNC()
  {
    return this.d;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.core.telephony.GSMInfo
 * JD-Core Version:    0.6.2
 */