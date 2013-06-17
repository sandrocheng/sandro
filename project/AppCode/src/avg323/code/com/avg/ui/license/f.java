package com.avg.ui.license;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.Button;
import android.widget.EditText;

class f
  implements TextWatcher
{
  f(a parama)
  {
  }

  public void afterTextChanged(Editable paramEditable)
  {
    a.k(this.a).setEnabled(false);
    if (a.l(this.a).getText().toString().length() != 0)
      a.k(this.a).setEnabled(true);
  }

  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.ui.license.f
 * JD-Core Version:    0.6.2
 */