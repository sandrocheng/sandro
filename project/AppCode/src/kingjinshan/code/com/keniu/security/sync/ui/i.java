package com.keniu.security.sync.ui;

import android.os.Handler;
import android.os.Message;
import android.widget.ProgressBar;
import android.widget.TextView;

final class i extends Handler
{
  i(h paramh)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    int i = h.a(this.a).getProgress();
    int j = h.a(this.a).getMax();
    String str = h.b(this.a);
    TextView localTextView = h.c(this.a);
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(i);
    arrayOfObject[1] = Integer.valueOf(j);
    localTextView.setText(String.format(str, arrayOfObject));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.ui.i
 * JD-Core Version:    0.6.2
 */