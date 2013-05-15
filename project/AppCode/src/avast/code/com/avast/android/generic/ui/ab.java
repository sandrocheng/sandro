package com.avast.android.generic.ui;

import android.view.View;
import android.view.View.OnClickListener;
import com.avast.android.generic.app.passwordrecovery.PasswordRecoveryDialog;

class ab
  implements View.OnClickListener
{
  ab(PasswordDialog paramPasswordDialog)
  {
  }

  public void onClick(View paramView)
  {
    new PasswordRecoveryDialog().show(this.a.getFragmentManager(), "password_recovery_dialog");
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.ui.ab
 * JD-Core Version:    0.6.2
 */