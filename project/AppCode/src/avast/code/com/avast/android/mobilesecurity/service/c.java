package com.avast.android.mobilesecurity.service;

import a.a.a.a.a.a;
import android.os.Handler;
import com.avast.android.generic.util.m;
import com.avast.android.mobilesecurity.engine.al;
import com.avast.android.mobilesecurity.engine.i;

class c
  implements Runnable
{
  c(UpdateService paramUpdateService)
  {
  }

  public void run()
  {
    al localal = i.a(this.a, Integer.valueOf(0));
    m.d("UpdateService: calling engine update");
    try
    {
      UpdateService.a(this.a, i.a(this.a.getApplicationContext(), null));
      m.d("UpdateService: end of engine update, going to handle result now");
      UpdateService.c(this.a).sendEmptyMessage(1);
      UpdateService.a(this.a, localal);
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
 * Qualified Name:     com.avast.android.mobilesecurity.service.c
 * JD-Core Version:    0.6.2
 */