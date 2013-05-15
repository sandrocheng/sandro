package com.avast.android.generic.ui.widget;

import android.text.InputFilter;
import android.text.Spanned;

class m
  implements InputFilter
{
  String a;

  public m(PasswordTextView paramPasswordTextView, l paraml)
  {
    switch (k.a[paraml.ordinal()])
    {
    default:
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      return;
      this.a = "0-9";
      continue;
      this.a = "a-zA-Z";
      continue;
      this.a = "0-9a-zA-Z";
    }
  }

  public CharSequence filter(CharSequence paramCharSequence, int paramInt1, int paramInt2, Spanned paramSpanned, int paramInt3, int paramInt4)
  {
    if ((paramSpanned.length() == 0) && (PasswordTextView.b(this.b).a.length() > 0));
    for (String str = paramCharSequence.toString().replaceAll("[^" + this.a + "\\*]", ""); ; str = paramCharSequence.toString().replaceAll("[^" + this.a + "]", ""))
      return str;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.ui.widget.m
 * JD-Core Version:    0.6.2
 */