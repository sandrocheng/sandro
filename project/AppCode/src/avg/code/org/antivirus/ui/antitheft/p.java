package org.antivirus.ui.antitheft;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.EditText;

final class p
  implements DialogInterface.OnClickListener
{
  p(AntiTheftLockMessage paramAntiTheftLockMessage, EditText paramEditText)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    AntiTheftLockMessage.a(this.b)[2] = this.a.getText().toString();
    AntiTheftLockMessage.b(this.b);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.antitheft.p
 * JD-Core Version:    0.6.2
 */