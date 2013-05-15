package com.avast.android.generic.ui.widget;

import android.os.Handler;
import android.os.Message;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

class n extends Handler
{
  private n(PasswordTextView paramPasswordTextView)
  {
  }

  private String a(String paramString, int paramInt1, int paramInt2)
  {
    char[] arrayOfChar = paramString.toCharArray();
    for (int i = 0; i < paramString.length(); i++)
      if ((i < paramInt1) || (i >= paramInt2))
        arrayOfChar[i] = '*';
    return String.valueOf(arrayOfChar);
  }

  public void handleMessage(Message paramMessage)
  {
    String str1 = this.a.getText().toString();
    if ((str1.length() > 0) && (PasswordTextView.b().matcher(str1).matches()))
    {
      int i = this.a.getSelectionStart();
      String str2 = a(str1, paramMessage.arg1, paramMessage.arg2);
      this.a.setText(str2);
      this.a.setSelection(i);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.ui.widget.n
 * JD-Core Version:    0.6.2
 */