package com.antivirus.callmessagefilter.callblocker;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.NetworkInfo;
import android.os.Bundle;
import com.antivirus.AVService;
import java.io.PrintStream;

public class CellNetworkReceiver extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    System.out.println();
    Bundle localBundle = paramIntent.getExtras();
    if (localBundle != null)
    {
      NetworkInfo localNetworkInfo = (NetworkInfo)localBundle.get("networkInfo");
      if ((localNetworkInfo != null) && (localNetworkInfo.getType() == 0))
        AVService.a(paramContext, 12000, 4, localBundle);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.callmessagefilter.callblocker.CellNetworkReceiver
 * JD-Core Version:    0.6.2
 */