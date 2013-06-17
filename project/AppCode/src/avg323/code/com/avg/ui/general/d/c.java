package com.avg.ui.general.d;

import android.app.ProgressDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;

class c extends BroadcastReceiver
{
  c(b paramb)
  {
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent.getAction().equals("inAppIntentFilterScreen"))
    {
      boolean bool = paramIntent.getBooleanExtra("result", false);
      b.a(this.a).dismiss();
      b.b(this.a);
      if (!bool)
        break label86;
      Uri localUri = Uri.parse(paramIntent.getStringExtra("url"));
      Intent localIntent = new Intent("android.intent.action.VIEW");
      localIntent.setData(localUri);
      localIntent.setAction("android.intent.action.VIEW");
      paramContext.startActivity(localIntent);
    }
    while (true)
    {
      return;
      label86: b.c(this.a);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.ui.general.d.c
 * JD-Core Version:    0.6.2
 */