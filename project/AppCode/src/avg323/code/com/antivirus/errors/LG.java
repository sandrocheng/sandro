package com.antivirus.errors;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;

public class LG extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    try
    {
      if (paramIntent.getAction().compareTo("com.antivirus.LG") == 0)
      {
        Bundle localBundle = new Bundle();
        localBundle.putString("__SAD", paramIntent.getStringExtra("__SAD"));
        com.antivirus.core.a.a(paramContext, 17000, 17001, localBundle);
      }
      return;
    }
    catch (Exception localException)
    {
      while (true)
        com.avg.toolkit.f.a.a(localException);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.errors.LG
 * JD-Core Version:    0.6.2
 */