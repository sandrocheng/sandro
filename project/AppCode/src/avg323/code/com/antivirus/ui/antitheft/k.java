package com.antivirus.ui.antitheft;

import android.app.AlertDialog;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;

class k
  implements View.OnClickListener
{
  k(AntiTheftLockMessage paramAntiTheftLockMessage, EditText paramEditText, AlertDialog paramAlertDialog)
  {
  }

  public void onClick(View paramView)
  {
    this.a.setText(AntiTheftLockMessage.a(this.c)[0]);
    this.b.show();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.antitheft.k
 * JD-Core Version:    0.6.2
 */