package com.avast.android.mobilesecurity.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.telephony.TelephonyManager;
import com.avast.android.generic.ad;
import com.avast.android.mobilesecurity.app.trafficinfo.NetworkStatsService;
import com.avast.android.mobilesecurity.app.trafficinfo.e;

public class NetworkInfoReceiver extends BroadcastReceiver
{
  private static e a = e.a;
  private static TelephonyManager b = null;

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    String str = paramIntent.getAction();
    if (str == null)
      break label9;
    label9: 
    do
    {
      return;
      if ((!((com.avast.android.mobilesecurity.t)ad.a(paramContext, com.avast.android.mobilesecurity.t.class)).aK()) || (!NetworkStatsService.c()))
        break label171;
      if (!str.equals("android.intent.action.SERVICE_STATE"))
        break;
      if (b == null)
        b = (TelephonyManager)paramContext.getSystemService("phone");
      if (!b.isNetworkRoaming())
        break label173;
    }
    while (a == e.b);
    for (a = e.b; ; a = e.c)
    {
      try
      {
        Intent localIntent = new Intent(str);
        if (paramIntent.getExtras() != null)
          localIntent.putExtras(paramIntent.getExtras());
        NetworkStatsService.a(paramContext, localIntent);
        com.avast.android.generic.util.t.a("AvastMobileSecurity", "Started network info service on " + str);
      }
      catch (Exception localException)
      {
        com.avast.android.generic.util.t.a("AvastMobileSecurity", "Can not start network info service on " + str, localException);
      }
      break label9;
      label171: break label9;
      label173: if (a == e.c)
        break;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.receiver.NetworkInfoReceiver
 * JD-Core Version:    0.6.2
 */