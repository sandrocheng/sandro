package com.avast.android.generic.ui.widget;

import android.text.InputFilter;
import android.text.Spanned;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

class p
  implements InputFilter
{
  StringBuilder a = new StringBuilder();

  public CharSequence filter(CharSequence paramCharSequence, int paramInt1, int paramInt2, Spanned paramSpanned, int paramInt3, int paramInt4)
  {
    if (paramCharSequence.length() == 0)
      this.a.replace(paramInt3, paramInt4, "");
    while (true)
    {
      return null;
      if (!PasswordTextView.c().matcher(paramCharSequence.toString()).matches())
        this.a.replace(paramInt3, paramInt4, paramCharSequence.toString());
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.ui.widget.p
 * JD-Core Version:    0.6.2
 */