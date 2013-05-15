package com.avast.android.generic.app.about;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.widget.ScrollView;
import android.widget.Scroller;

class e extends Handler
{
  ScrollView a;
  Scroller b;
  int c;

  public e(Context paramContext, ScrollView paramScrollView)
  {
    this.a = paramScrollView;
    this.b = new Scroller(paramContext);
  }

  public void handleMessage(Message paramMessage)
  {
    if (paramMessage.what == 1)
    {
      this.c = 0;
      int i = paramMessage.arg1;
      int j = paramMessage.arg2;
      this.b.startScroll(0, 0, 0, i, j);
      sendEmptyMessage(2);
    }
    while (true)
    {
      return;
      if (paramMessage.what == 2)
      {
        boolean bool = this.b.computeScrollOffset();
        this.a.scrollBy(0, this.b.getCurrY() - this.c);
        this.c = this.b.getCurrY();
        if (bool)
          sendEmptyMessageDelayed(2, 20L);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.app.about.e
 * JD-Core Version:    0.6.2
 */