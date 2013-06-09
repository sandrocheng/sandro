package org.antivirus.ui.antitheft;

import android.app.AlertDialog;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;

final class r
  implements View.OnClickListener
{
  r(AntiTheftLockMessage paramAntiTheftLockMessage, EditText paramEditText, AlertDialog paramAlertDialog)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.setText(AntiTheftLockMessage.a(this.c)[2]);
    this.b.show();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.antitheft.r
 * JD-Core Version:    0.6.2
 */