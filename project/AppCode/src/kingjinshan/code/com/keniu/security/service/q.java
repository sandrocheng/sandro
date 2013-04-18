package com.keniu.security.service;

import android.content.Context;
import com.keniu.security.MoSecurityApplication;
import com.keniu.security.sync.k;
import com.keniu.security.util.av;

final class q extends Thread
{
  private Context b;

  private q(StartupReceiver paramStartupReceiver, Context paramContext)
  {
    this.b = paramContext;
  }

  public final void run()
  {
    Object localObject = av.c(this.b);
    int i = 0;
    while (((localObject == null) || (((String)localObject).equals("-1"))) && (i < 100))
      try
      {
        Thread.sleep(1000L);
        String str2 = av.c(this.b);
        localObject = str2;
        i++;
      }
      catch (InterruptedException localInterruptedException)
      {
        localInterruptedException.printStackTrace();
      }
    String str1;
    if ((localObject != null) && (!"-1".equals(localObject)))
    {
      k localk = k.a();
      localk.a(MoSecurityApplication.a());
      str1 = localk.c("last_imsi_for_sim_change");
      if (!str1.equals("null"))
        break label113;
      localk.a("last_imsi_for_sim_change", (String)localObject);
    }
    while (true)
    {
      return;
      label113: if (!str1.equals(localObject))
        StartupReceiver.a();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.service.q
 * JD-Core Version:    0.6.2
 */