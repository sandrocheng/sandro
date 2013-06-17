package com.antivirus.antitheft;

import android.text.InputFilter;
import android.text.Spanned;

public class v
  implements InputFilter
{
  String a;

  public v(String paramString)
  {
    this.a = paramString;
  }

  public CharSequence filter(CharSequence paramCharSequence, int paramInt1, int paramInt2, Spanned paramSpanned, int paramInt3, int paramInt4)
  {
    return paramCharSequence.toString().replaceAll(this.a, "");
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.antitheft.v
 * JD-Core Version:    0.6.2
 */