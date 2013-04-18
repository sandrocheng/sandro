package com.keniu.security.main;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.EditText;

final class an
  implements CompoundButton.OnCheckedChangeListener
{
  an(MainActivity paramMainActivity, EditText paramEditText)
  {
  }

  public final void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    int i = this.a.getSelectionStart();
    if (paramBoolean)
      this.a.setInputType(145);
    while (true)
    {
      this.a.setSelection(i);
      return;
      this.a.setInputType(129);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.main.an
 * JD-Core Version:    0.6.2
 */