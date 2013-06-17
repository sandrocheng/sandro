package com.antivirus.ui.help;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.webkit.WebView;

class d extends BroadcastReceiver
{
  d(HelpTabletActivity paramHelpTabletActivity)
  {
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent.getAction().equals("inAppIntentFilterScreen"))
    {
      if (!paramIntent.getBooleanExtra("result", false))
        break label41;
      String str = paramIntent.getStringExtra("url");
      HelpTabletActivity.a(this.a).loadUrl(str);
    }
    while (true)
    {
      return;
      label41: this.a.m();
      HelpTabletActivity.g(this.a);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.help.d
 * JD-Core Version:    0.6.2
 */