package com.avast.android.generic.ui;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.EditText;

class r
  implements CompoundButton.OnCheckedChangeListener
{
  r(CustomNumberDialog paramCustomNumberDialog)
  {
  }

  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    CustomNumberDialog.a(this.a, paramBoolean);
    CustomNumberDialog.a(this.a, CustomNumberDialog.a(this.a).getText());
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.ui.r
 * JD-Core Version:    0.6.2
 */