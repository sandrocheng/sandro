package com.avast.android.generic.ui;

import android.text.Editable;
import android.text.TextWatcher;

class s
  implements TextWatcher
{
  s(CustomNumberDialog paramCustomNumberDialog)
  {
  }

  public void afterTextChanged(Editable paramEditable)
  {
  }

  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    CustomNumberDialog.a(this.a, paramCharSequence);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.ui.s
 * JD-Core Version:    0.6.2
 */