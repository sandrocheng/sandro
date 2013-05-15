package com.avast.android.mobilesecurity.app.firewall;

import android.text.InputFilter;
import android.text.Spanned;

class i
  implements InputFilter
{
  i(CustomRuleDetailFragment paramCustomRuleDetailFragment)
  {
  }

  public CharSequence filter(CharSequence paramCharSequence, int paramInt1, int paramInt2, Spanned paramSpanned, int paramInt3, int paramInt4)
  {
    if (paramInt2 > paramInt1)
    {
      String str2 = paramSpanned.toString();
      String str3 = str2.substring(0, paramInt3) + paramCharSequence.subSequence(paramInt1, paramInt2) + str2.substring(paramInt4);
      if (CustomRuleDetailFragment.a(this.a, str3));
    }
    for (String str1 = ""; ; str1 = null)
      return str1;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.firewall.i
 * JD-Core Version:    0.6.2
 */