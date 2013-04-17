package com.tencent.qqpimsecure.service;

import ach;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.WindowManager;
import com.tencent.qqpimsecure.uilib.view.ButtonView;
import kg;

public class UssdBlockedReceiver extends BroadcastReceiver
{
  public static String a = "com.tencent.tmsecure.ACTION_USSD_BLOCKED";
  private WindowManager b;
  private View c;
  private boolean d;

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    this.b = ((WindowManager)paramContext.getSystemService("window"));
    if (this.c == null)
      this.c = LayoutInflater.from(paramContext).inflate(2130903273, null);
    if (this.d);
    try
    {
      this.b.removeView(this.c);
      label54: ((ButtonView)this.c.findViewById(2131231472)).setOnClickListener(new ach(this));
      this.b.addView(this.c, kg.e);
      this.d = true;
      return;
    }
    catch (Exception localException)
    {
      break label54;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.service.UssdBlockedReceiver
 * JD-Core Version:    0.6.2
 */