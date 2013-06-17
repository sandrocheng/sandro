package com.avg.toolkit.Marketing;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.avg.toolkit.f;
import com.avg.toolkit.f.a;

public class MarketReferrerReceiver extends BroadcastReceiver
{
  private final String a = "referrer";

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent.getAction().compareTo("com.android.vending.INSTALL_REFERRER") == 0)
      try
      {
        Bundle localBundle1 = paramIntent.getExtras();
        if (localBundle1 != null)
        {
          Bundle localBundle2 = new Bundle();
          localBundle2.putString("__SAD", localBundle1.getString("referrer"));
          f.a(paramContext, 7000, 7001, localBundle2);
        }
      }
      catch (Exception localException)
      {
        a.a(localException);
      }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.toolkit.Marketing.MarketReferrerReceiver
 * JD-Core Version:    0.6.2
 */