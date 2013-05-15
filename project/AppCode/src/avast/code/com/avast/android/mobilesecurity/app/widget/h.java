package com.avast.android.mobilesecurity.app.widget;

import android.app.ActivityManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.avast.android.mobilesecurity.app.manager.a.i;

class h extends Handler
{
  ActivityManager a;
  boolean b;

  public h(WidgetControlBigActivity paramWidgetControlBigActivity, Looper paramLooper, ActivityManager paramActivityManager)
  {
    super(paramLooper);
    this.a = paramActivityManager;
    this.b = true;
  }

  public void handleMessage(Message paramMessage)
  {
    int i = 1;
    com.avast.android.generic.util.m.b("SummaryInfoWorkerHandler", "Got message: " + paramMessage.what);
    if (paramMessage.what == 5)
      if (!this.b)
      {
        this.b = i;
        com.avast.android.generic.util.m.b("SummaryInfoWorkerHandler", "Pausing: " + this.b);
      }
    while (true)
    {
      return;
      i = 0;
      break;
      if (!this.b)
      {
        WidgetControlBigActivity.l(this.c).b();
        switch (paramMessage.what)
        {
        default:
          break;
        case 1:
          com.avast.android.mobilesecurity.app.manager.a.m localm2 = WidgetControlBigActivity.l(this.c).c();
          int n = (int)Math.ceil(100.0F * localm2.a());
          int i1 = (int)localm2.b();
          Message localMessage4 = WidgetControlBigActivity.m(this.c).obtainMessage(i);
          localMessage4.arg1 = n;
          localMessage4.arg2 = i1;
          localMessage4.sendToTarget();
          break;
        case 2:
          com.avast.android.mobilesecurity.app.manager.a.m localm1 = WidgetControlBigActivity.l(this.c).d();
          int m = (int)Math.ceil(100.0F * localm1.a());
          long l = localm1.b();
          Message localMessage3 = WidgetControlBigActivity.m(this.c).obtainMessage(2);
          localMessage3.arg1 = m;
          Bundle localBundle = new Bundle();
          localBundle.putLong("free", l);
          localMessage3.setData(localBundle);
          localMessage3.sendToTarget();
          break;
        case 3:
          int k = (int)Math.ceil(100.0F * WidgetControlBigActivity.l(this.c).a());
          Message localMessage2 = WidgetControlBigActivity.m(this.c).obtainMessage(3);
          localMessage2.arg1 = k;
          localMessage2.sendToTarget();
          break;
        case 4:
          int j = WidgetControlBigActivity.l(this.c).a(this.a);
          Message localMessage1 = WidgetControlBigActivity.m(this.c).obtainMessage(4);
          localMessage1.arg1 = j;
          localMessage1.sendToTarget();
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.widget.h
 * JD-Core Version:    0.6.2
 */