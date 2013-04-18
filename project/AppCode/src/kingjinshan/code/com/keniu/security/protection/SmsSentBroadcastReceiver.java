package com.keniu.security.protection;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.keniu.security.monitor.a;
import java.io.PrintStream;

public class SmsSentBroadcastReceiver extends BroadcastReceiver
{
  public static final String a = "com.keniu.security.protection.SmsSentBroadcastReceiver";

  private void a(Context paramContext, Intent paramIntent)
  {
    x localx = new x(this);
    localx.a = paramContext;
    localx.b = paramIntent;
    localx.h = this;
    localx.c = paramIntent.getStringExtra("address");
    localx.d = paramIntent.getStringExtra("body");
    localx.e = paramIntent.getIntExtra("cnt", -1);
    localx.f = paramIntent.getBooleanExtra("tip", false);
    localx.g = getResultCode();
    System.out.println("receive: cnt=" + localx.e + ",body=" + localx.d + ",address=" + localx.c + ",tip=" + localx.f + ",result=" + localx.g);
    a.a().a(a.w, localx, null);
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if ("com.keniu.security.protection.SmsSentBroadcastReceiver".equals(paramIntent.getAction()))
    {
      x localx = new x(this);
      localx.a = paramContext;
      localx.b = paramIntent;
      localx.h = this;
      localx.c = paramIntent.getStringExtra("address");
      localx.d = paramIntent.getStringExtra("body");
      localx.e = paramIntent.getIntExtra("cnt", -1);
      localx.f = paramIntent.getBooleanExtra("tip", false);
      localx.g = getResultCode();
      System.out.println("receive: cnt=" + localx.e + ",body=" + localx.d + ",address=" + localx.c + ",tip=" + localx.f + ",result=" + localx.g);
      a.a().a(a.w, localx, null);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.protection.SmsSentBroadcastReceiver
 * JD-Core Version:    0.6.2
 */