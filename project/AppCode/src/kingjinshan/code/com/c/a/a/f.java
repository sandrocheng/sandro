package com.c.a.a;

import android.content.Context;
import android.telephony.CellLocation;
import android.telephony.PhoneStateListener;
import android.telephony.ServiceState;
import android.telephony.TelephonyManager;

final class f extends PhoneStateListener
{
  f(e parame)
  {
  }

  public final void onCellLocationChanged(CellLocation paramCellLocation)
  {
    if ((s.k == null) || ("".equals(s.k)))
    {
      d.a(this.a.b, (TelephonyManager)d.b(this.a.b).getSystemService("phone"));
      s.k = d.c(this.a.b).getSimOperator();
      s.a = d.c(this.a.b).getDeviceId();
      s.b = d.c(this.a.b).getSimSerialNumber();
      new StringBuilder().append("MPATAG_IMEI = ").append(s.a).toString();
      p.a();
      new StringBuilder().append("MapTags.MPATAG_IMSI = ").append(s.b).toString();
      p.a();
    }
    d.a(paramCellLocation);
    d.a(d.c(this.a.b));
    r.a(d.b(this.a.b)).c();
  }

  public final void onServiceStateChanged(ServiceState paramServiceState)
  {
    s.k = paramServiceState.getOperatorNumeric();
  }

  public final void onSignalStrengthChanged(int paramInt)
  {
    s.m = paramInt;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.c.a.a.f
 * JD-Core Version:    0.6.2
 */