package org.antivirus.antitheft;

import android.text.InputFilter;
import android.text.Spanned;

public final class t
  implements InputFilter
{
  String a;

  public t(String paramString)
  {
    this.a = paramString;
  }

  public final CharSequence filter(CharSequence paramCharSequence, int paramInt1, int paramInt2, Spanned paramSpanned, int paramInt3, int paramInt4)
  {
    return paramCharSequence.toString().replaceAll(this.a, "");
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.antitheft.t
 * JD-Core Version:    0.6.2
 */