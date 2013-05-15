package com.avast.android.mobilesecurity.service;

import a.a.a.a.a.a;
import android.content.Context;
import com.avast.android.generic.util.m;
import com.avast.android.mobilesecurity.engine.af;
import com.avast.android.mobilesecurity.engine.al;
import com.avast.android.mobilesecurity.engine.i;
import com.avast.android.mobilesecurity.receiver.ConnectivityChangeReceiver;

class b
  implements Runnable
{
  b(UpdateService paramUpdateService, Context paramContext)
  {
  }

  public void run()
  {
    al localal = i.a(this.b, Integer.valueOf(0));
    m.d("UpdateService: calling engine update based on connectivity changed failsafe");
    try
    {
      UpdateService.a(this.b, i.a(this.b.getApplicationContext(), null));
      ConnectivityChangeReceiver.a(this.a);
      m.d("UpdateService: on connectivity changed failsafe update finished with result " + UpdateService.b(this.b).a);
      UpdateService.a(this.b, localal);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        a.a().a("UpdateService: VPS Update fail", localException);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.service.b
 * JD-Core Version:    0.6.2
 */