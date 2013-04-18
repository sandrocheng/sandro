package com.hoi.widget;

import android.text.InputFilter;
import android.text.Spanned;

final class y
  implements InputFilter
{
  private y(NumberPicker paramNumberPicker, byte paramByte)
  {
  }

  public final CharSequence filter(CharSequence paramCharSequence, int paramInt1, int paramInt2, Spanned paramSpanned, int paramInt3, int paramInt4)
  {
    int i = 0;
    Object localObject;
    if (NumberPicker.f(this.a) == null)
      localObject = NumberPicker.g(this.a).filter(paramCharSequence, paramInt1, paramInt2, paramSpanned, paramInt3, paramInt4);
    while (true)
    {
      return localObject;
      localObject = String.valueOf(paramCharSequence.subSequence(paramInt1, paramInt2));
      String str = String.valueOf(String.valueOf(paramSpanned.subSequence(0, paramInt3)) + localObject + paramSpanned.subSequence(paramInt4, paramSpanned.length())).toLowerCase();
      String[] arrayOfString = NumberPicker.f(this.a);
      int j = arrayOfString.length;
      while (true)
      {
        if (i >= j)
          break label153;
        if (arrayOfString[i].toLowerCase().startsWith(str))
          break;
        i++;
      }
      label153: localObject = "";
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.hoi.widget.y
 * JD-Core Version:    0.6.2
 */