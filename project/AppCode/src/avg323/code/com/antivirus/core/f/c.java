package com.antivirus.core.f;

import android.content.Context;
import android.telephony.TelephonyManager;
import android.telephony.gsm.GsmCellLocation;
import android.text.TextUtils;
import com.avg.toolkit.f.a;

public class c
{
  private int a;
  private String b;
  private String c;
  private String d;
  private String e;

  public c(Context paramContext)
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
          b localb = (b)localTelephonyManager.getCellLocation();
          if (localb == null)
            this.a = -1;
          for (this.b = ""; ; this.b = (localb.b() + "-" + localb.c()))
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
              a.a(localException1);
            }
            this.a = localGsmCellLocation.getCid();
            this.b = ("" + localGsmCellLocation.getLac());
            break;
            localException2 = localException2;
            a.a(localException2);
            break label163;
            this.a = localb.a();
          }
        }
        catch (Exception localException3)
        {
          while (true)
            a.a(localException3);
        }
      }
    }
  }

  public String a()
  {
    return this.e;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.core.f.c
 * JD-Core Version:    0.6.2
 */