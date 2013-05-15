package com.avast.android.mobilesecurity.app.widget;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.widget.ProgressBar;
import android.widget.TextView;
import java.text.NumberFormat;

class g extends Handler
{
  private g(WidgetControlBigActivity paramWidgetControlBigActivity)
  {
  }

  private void a(int paramInt1, int paramInt2)
  {
    if (WidgetControlBigActivity.k(this.a).getLooper().getThread().isAlive())
      WidgetControlBigActivity.k(this.a).sendEmptyMessageDelayed(paramInt1, paramInt2);
  }

  public void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
    case 1:
    case 2:
    case 3:
    case 4:
    }
    while (true)
    {
      return;
      int m = paramMessage.arg1;
      int n = paramMessage.arg2;
      WidgetControlBigActivity.a(this.a).setProgress(m);
      WidgetControlBigActivity.b(this.a).setText(m + " %");
      TextView localTextView2 = WidgetControlBigActivity.d(this.a);
      WidgetControlBigActivity localWidgetControlBigActivity2 = this.a;
      Object[] arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = WidgetControlBigActivity.c(this.a).format(n / 1024);
      arrayOfObject2[1] = this.a.getString(2131493074);
      localTextView2.setText(localWidgetControlBigActivity2.getString(2131493874, arrayOfObject2));
      a(1, 2000);
      continue;
      int k = paramMessage.arg1;
      long l = paramMessage.getData().getLong("free");
      if (k < 0)
      {
        WidgetControlBigActivity.e(this.a).setProgress(0);
        WidgetControlBigActivity.f(this.a).setText(this.a.getString(2131493868));
        WidgetControlBigActivity.g(this.a).setText(this.a.getString(2131493875));
      }
      while (true)
      {
        a(2, 10000);
        break;
        WidgetControlBigActivity.e(this.a).setProgress(k);
        WidgetControlBigActivity.f(this.a).setText(k + " %");
        TextView localTextView1 = WidgetControlBigActivity.g(this.a);
        WidgetControlBigActivity localWidgetControlBigActivity1 = this.a;
        Object[] arrayOfObject1 = new Object[2];
        arrayOfObject1[0] = WidgetControlBigActivity.c(this.a).format(l / 1024L);
        arrayOfObject1[1] = this.a.getString(2131493074);
        localTextView1.setText(localWidgetControlBigActivity1.getString(2131493874, arrayOfObject1));
      }
      int j = paramMessage.arg1;
      WidgetControlBigActivity.h(this.a).setProgress(j);
      WidgetControlBigActivity.i(this.a).setText(j + " %");
      a(3, 2000);
      continue;
      int i = paramMessage.arg1;
      WidgetControlBigActivity.j(this.a).setText(WidgetControlBigActivity.c(this.a).format(i));
      a(4, 3000);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.widget.g
 * JD-Core Version:    0.6.2
 */