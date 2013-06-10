package org.antivirus.ui.antitheft;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.EditText;

final class m
  implements DialogInterface.OnClickListener
{
  m(AntiTheftLockMessage paramAntiTheftLockMessage, EditText paramEditText)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    AntiTheftLockMessage.a(this.b)[0] = this.a.getText().toString();
    AntiTheftLockMessage.b(this.b);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.antitheft.m
 * JD-Core Version:    0.6.2
 */