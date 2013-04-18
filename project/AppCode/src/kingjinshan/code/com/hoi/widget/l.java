package com.hoi.widget;

import android.text.Spanned;
import android.text.method.NumberKeyListener;

final class l extends NumberKeyListener
{
  private l(HorizontalNumberPicker paramHorizontalNumberPicker, byte paramByte)
  {
  }

  public final CharSequence filter(CharSequence paramCharSequence, int paramInt1, int paramInt2, Spanned paramSpanned, int paramInt3, int paramInt4)
  {
    Object localObject = super.filter(paramCharSequence, paramInt1, paramInt2, paramSpanned, paramInt3, paramInt4);
    if (localObject == null)
      localObject = paramCharSequence.subSequence(paramInt1, paramInt2);
    String str = String.valueOf(paramSpanned.subSequence(0, paramInt3)) + localObject + paramSpanned.subSequence(paramInt4, paramSpanned.length());
    if ("".equals(str))
      localObject = str;
    while (true)
    {
      return localObject;
      if (HorizontalNumberPicker.a(this.a, str) > HorizontalNumberPicker.h(this.a))
        localObject = "";
    }
  }

  protected final char[] getAcceptedChars()
  {
    return HorizontalNumberPicker.e();
  }

  public final int getInputType()
  {
    return 2;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.hoi.widget.l
 * JD-Core Version:    0.6.2
 */