package com.avast.android.generic.service;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.avast.android.generic.util.ae;
import com.avast.android.generic.util.ax;
import com.avast.android.generic.util.t;

public class C2DMHandler extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    Context localContext = paramContext.getApplicationContext();
    if (paramIntent.getAction().equals("com.avast.android.generic.action.C2DM_ENABLE_SUITE"))
    {
      t.b(localContext, paramIntent.getStringExtra("sourcePackage"), "C2DM enable command");
      ax.b(localContext);
      Intent localIntent2 = new Intent();
      localIntent2.setAction(paramIntent.getAction());
      ae.a(localContext, localIntent2, localContext.getPackageName());
      abortBroadcast();
    }
    while (true)
    {
      return;
      if (paramIntent.getAction().equals("com.avast.android.generic.action.C2DM_DISABLE_SUITE"))
      {
        t.b(localContext, paramIntent.getStringExtra("sourcePackage"), "C2DM disable command");
        ax.b(localContext);
        Intent localIntent1 = new Intent();
        localIntent1.setAction(paramIntent.getAction());
        ae.a(localContext, localIntent1, localContext.getPackageName());
        abortBroadcast();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.service.C2DMHandler
 * JD-Core Version:    0.6.2
 */