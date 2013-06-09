package org.antivirus.core.telephony;

import android.os.Bundle;
import android.telephony.CellLocation;

public class CdmaCellLocation extends CellLocation
{
  private int a = -1;
  private int b = -1;
  private int c = -1;

  public CdmaCellLocation()
  {
    this.a = -1;
    this.b = -1;
    this.c = -1;
  }

  public CdmaCellLocation(Bundle paramBundle)
  {
    this.a = paramBundle.getInt("baseStationId");
    this.b = paramBundle.getInt("baseStationLatitude");
    this.c = paramBundle.getInt("baseStationLongitude");
  }

  private static boolean a(Object paramObject1, Object paramObject2)
  {
    boolean bool;
    if (paramObject1 == null)
      if (paramObject2 == null)
        bool = true;
    while (true)
    {
      return bool;
      bool = false;
      continue;
      bool = paramObject1.equals(paramObject2);
    }
  }

  public boolean equals(Object paramObject)
  {
    try
    {
      localCdmaCellLocation = (CdmaCellLocation)paramObject;
      if (paramObject == null)
      {
        bool = false;
        return bool;
      }
    }
    catch (ClassCastException localClassCastException)
    {
      while (true)
      {
        CdmaCellLocation localCdmaCellLocation;
        boolean bool = false;
        continue;
        if ((a(Integer.valueOf(this.a), Integer.valueOf(localCdmaCellLocation.a))) && (a(Integer.valueOf(this.b), Integer.valueOf(localCdmaCellLocation.b))) && (a(Integer.valueOf(this.c), Integer.valueOf(localCdmaCellLocation.c))))
          bool = true;
        else
          bool = false;
      }
    }
  }

  public void fillInNotifierBundle(Bundle paramBundle)
  {
    paramBundle.putInt("baseStationId", this.a);
    paramBundle.putInt("baseStationLatitude", this.b);
    paramBundle.putInt("baseStationLongitude", this.c);
  }

  public int getBaseStationId()
  {
    return this.a;
  }

  public int getBaseStationLatitude()
  {
    return this.b;
  }

  public int getBaseStationLongitude()
  {
    return this.c;
  }

  public void setCellLocationData(int paramInt1, int paramInt2, int paramInt3)
  {
    this.a = paramInt1;
    this.b = paramInt2;
    this.c = paramInt3;
  }

  public void setStateInvalid()
  {
    this.a = -1;
    this.b = -1;
    this.c = -1;
  }

  public String toString()
  {
    return "[" + this.a + "," + this.b + "," + this.c + "]";
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.core.telephony.CdmaCellLocation
 * JD-Core Version:    0.6.2
 */