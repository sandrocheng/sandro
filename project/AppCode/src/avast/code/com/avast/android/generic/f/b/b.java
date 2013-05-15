package com.avast.android.generic.f.b;

import android.content.Context;
import android.telephony.CellLocation;
import android.telephony.ServiceState;
import android.telephony.TelephonyManager;
import android.telephony.cdma.CdmaCellLocation;
import android.telephony.gsm.GsmCellLocation;

public final class b
{
  private int a = -1;
  private int b = -1;
  private int c = -1;
  private int d = -1;
  private int e = -1;
  private int f = 1;
  private String g;
  private String h;

  public b(Context paramContext, TelephonyManager paramTelephonyManager, CellLocation paramCellLocation, int paramInt, ServiceState paramServiceState)
  {
    if ((paramCellLocation instanceof GsmCellLocation))
    {
      GsmCellLocation localGsmCellLocation = (GsmCellLocation)paramCellLocation;
      a(localGsmCellLocation.getCid());
      b(localGsmCellLocation.getLac());
    }
    while (true)
    {
      c(paramInt);
      if (paramServiceState != null)
      {
        a(paramServiceState.getOperatorAlphaLong());
        f(paramServiceState.getState());
        a(paramContext, paramServiceState.getOperatorNumeric());
      }
      b(paramTelephonyManager.getSubscriberId());
      return;
      if ((paramCellLocation instanceof CdmaCellLocation))
      {
        CdmaCellLocation localCdmaCellLocation = (CdmaCellLocation)paramCellLocation;
        a(localCdmaCellLocation.getBaseStationId());
        b(localCdmaCellLocation.getNetworkId());
      }
    }
  }

  private void a(Context paramContext, String paramString)
  {
    if (paramString != null);
    try
    {
      d(Integer.parseInt(paramString.substring(0, 3)));
      e(Integer.parseInt(paramString.substring(3)));
      label29: return;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      break label29;
    }
    catch (IndexOutOfBoundsException localIndexOutOfBoundsException)
    {
      break label29;
    }
  }

  public int a()
  {
    return this.f;
  }

  public void a(int paramInt)
  {
    this.a = paramInt;
  }

  public void a(String paramString)
  {
    this.g = paramString;
  }

  public void b(int paramInt)
  {
    this.b = paramInt;
  }

  public void b(String paramString)
  {
    this.h = paramString;
  }

  public void c(int paramInt)
  {
    this.c = paramInt;
  }

  public void d(int paramInt)
  {
    this.d = paramInt;
  }

  public void e(int paramInt)
  {
    this.e = paramInt;
  }

  public void f(int paramInt)
  {
    this.f = paramInt;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.f.b.b
 * JD-Core Version:    0.6.2
 */