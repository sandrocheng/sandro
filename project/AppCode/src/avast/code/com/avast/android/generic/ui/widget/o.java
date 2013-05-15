package com.avast.android.generic.ui.widget;

import android.os.Message;
import android.text.Editable;
import android.text.TextWatcher;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

class o
  implements TextWatcher
{
  private o(PasswordTextView paramPasswordTextView)
  {
  }

  public void afterTextChanged(Editable paramEditable)
  {
    if (PasswordTextView.b().matcher(paramEditable.toString()).matches())
      PasswordTextView.a(this.a).sendMessageDelayed(PasswordTextView.a(this.a).obtainMessage(0, 0, 0), 1000L);
  }

  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    if ((paramInt3 > paramInt2) && (paramCharSequence.length() > 0) && (PasswordTextView.b().matcher(paramCharSequence.toString()).matches()))
    {
      PasswordTextView.a(this.a).removeMessages(0);
      PasswordTextView.a(this.a).obtainMessage(0, paramInt1, paramInt1 + paramInt3).sendToTarget();
    }
  }

  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.ui.widget.o
 * JD-Core Version:    0.6.2
 */