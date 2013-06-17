package com.avg.tuneup;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.avg.toolkit.f;

public class ConnectivityReceiver extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    Bundle localBundle1 = null;
    if (paramIntent != null)
    {
      Bundle localBundle2 = paramIntent.getExtras();
      localBundle1 = null;
      if (localBundle2 != null)
        localBundle1 = paramIntent.getExtras();
    }
    f.a(paramContext, 11000, 4, localBundle1);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.tuneup.ConnectivityReceiver
 * JD-Core Version:    0.6.2
 */