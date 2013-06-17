package com.antivirus.c;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;

public class a
{
  @Deprecated
  public static boolean a(Context paramContext)
  {
    Intent localIntent = paramContext.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
    boolean bool = false;
    if (localIntent != null)
    {
      int i = localIntent.getIntExtra("plugged", 0);
      bool = false;
      if (i != 0)
        bool = true;
    }
    return bool;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.c.a
 * JD-Core Version:    0.6.2
 */