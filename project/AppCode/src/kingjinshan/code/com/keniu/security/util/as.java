package com.keniu.security.util;

import android.os.Handler;
import android.os.Message;
import android.text.SpannableString;
import android.text.style.StyleSpan;
import android.widget.ProgressBar;
import android.widget.TextView;
import java.text.NumberFormat;

final class as extends Handler
{
  as(ar paramar)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    int i = ar.a(this.a).getProgress();
    int j = ar.a(this.a).getMax();
    double d = i / j;
    String str = ar.b(this.a);
    TextView localTextView = ar.c(this.a);
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(i);
    arrayOfObject[1] = Integer.valueOf(j);
    localTextView.setText(String.format(str, arrayOfObject));
    SpannableString localSpannableString = new SpannableString(ar.d(this.a).format(d));
    localSpannableString.setSpan(new StyleSpan(1), 0, localSpannableString.length(), 33);
    ar.e(this.a).setText(localSpannableString);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.util.as
 * JD-Core Version:    0.6.2
 */