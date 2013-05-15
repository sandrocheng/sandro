package com.avast.android.generic.ui;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.ImageView;

class ac
  implements TextWatcher
{
  ac(PasswordDialog paramPasswordDialog)
  {
  }

  public void afterTextChanged(Editable paramEditable)
  {
    PasswordDialog.f(this.a).setVisibility(8);
    if (paramEditable.length() >= 4)
      PasswordDialog.g(this.a).sendEmptyMessageDelayed(1, 500L);
  }

  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.ui.ac
 * JD-Core Version:    0.6.2
 */