package com.hoi.widget;

import android.os.Handler;
import android.os.Message;
import android.text.SpannableString;
import android.text.style.StyleSpan;
import android.widget.ProgressBar;
import android.widget.TextView;
import java.text.NumberFormat;

final class p extends Handler
{
  p(o paramo)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    int i = o.a(this.a).getProgress();
    int j = o.a(this.a).getMax();
    double d = i / j;
    String str = o.b(this.a);
    TextView localTextView = o.c(this.a);
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(i);
    arrayOfObject[1] = Integer.valueOf(j);
    localTextView.setText(String.format(str, arrayOfObject));
    SpannableString localSpannableString = new SpannableString(o.d(this.a).format(d));
    localSpannableString.setSpan(new StyleSpan(1), 0, localSpannableString.length(), 33);
    o.e(this.a).setText(localSpannableString);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.hoi.widget.p
 * JD-Core Version:    0.6.2
 */