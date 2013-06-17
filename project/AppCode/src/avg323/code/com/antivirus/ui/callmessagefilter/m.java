package com.antivirus.ui.callmessagefilter;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.Button;

class m
  implements TextWatcher
{
  m(j paramj, Button paramButton)
  {
  }

  public void afterTextChanged(Editable paramEditable)
  {
    if ((paramEditable == null) || (paramEditable.length() == 0) || (paramEditable.length() > 70))
      this.a.setEnabled(false);
    while (true)
    {
      return;
      this.a.setEnabled(true);
    }
  }

  public void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.callmessagefilter.m
 * JD-Core Version:    0.6.2
 */