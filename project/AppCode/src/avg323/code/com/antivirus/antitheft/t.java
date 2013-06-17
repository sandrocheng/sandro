package com.antivirus.antitheft;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.antivirus.AVService;
import com.antivirus.c;

class t extends BroadcastReceiver
{
  t(s params)
  {
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if ((c.p()) && (paramIntent != null) && (paramIntent.getAction() != null) && (paramIntent.getAction().equalsIgnoreCase("android.intent.action.SCREEN_ON")))
      AVService.a(paramContext, 9000, 9002, null);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.antitheft.t
 * JD-Core Version:    0.6.2
 */