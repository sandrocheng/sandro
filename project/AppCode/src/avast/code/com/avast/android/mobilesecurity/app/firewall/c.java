package com.avast.android.mobilesecurity.app.firewall;

import android.text.Editable;
import android.text.TextWatcher;
import com.avast.android.generic.d.a;

class c
  implements TextWatcher
{
  c(CustomRuleDetailFragment paramCustomRuleDetailFragment, a parama)
  {
  }

  public void afterTextChanged(Editable paramEditable)
  {
    this.a.a("name", paramEditable.toString());
  }

  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.firewall.c
 * JD-Core Version:    0.6.2
 */