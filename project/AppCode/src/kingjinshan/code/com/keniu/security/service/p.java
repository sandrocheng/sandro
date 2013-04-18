package com.keniu.security.service;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import com.jxphone.mosecurity.a.a;
import com.keniu.security.protection.ui.ag;
import com.keniu.security.util.av;
import java.io.PrintStream;

final class p extends Thread
{
  private Context b;

  public p(StartupReceiver paramStartupReceiver, Context paramContext)
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
    System.out.println("presentIMSI=" + (String)localObject);
    if ((localObject == null) || (((String)localObject).equals("-1")))
      return;
    PrintStream localPrintStream1 = System.out;
    StringBuilder localStringBuilder1 = new StringBuilder().append("isChange=");
    localPrintStream1.println(StartupReceiver.a(this.b, (String)localObject));
    if (StartupReceiver.a(this.b, (String)localObject))
    {
      String str1 = ag.a(this.b);
      System.out.println("address=" + str1);
      StartupReceiver.b(this.a).obtainMessage(0, str1).sendToTarget();
      a.a(this.b, "pto", "11", "");
    }
    ag.h(this.b, (String)localObject);
    PrintStream localPrintStream2 = System.out;
    StringBuilder localStringBuilder2 = new StringBuilder().append("getChangeLock=");
    if ((ag.j(this.b)) && (ag.q(this.b)));
    for (boolean bool = true; ; bool = false)
    {
      localPrintStream2.println(bool);
      if ((!ag.j(this.b)) || (!ag.q(this.b)))
        break;
      a.a(this.b, "pto", "10", "");
      StartupReceiver.a(this.b);
      break;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.service.p
 * JD-Core Version:    0.6.2
 */