package com.antivirus.ui.antitheft;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.EditText;

class i
  implements DialogInterface.OnClickListener
{
  i(AntiTheftLockMessage paramAntiTheftLockMessage, EditText paramEditText)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    AntiTheftLockMessage.a(this.b)[0] = this.a.getText().toString();
    AntiTheftLockMessage.b(this.b);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.antitheft.i
 * JD-Core Version:    0.6.2
 */