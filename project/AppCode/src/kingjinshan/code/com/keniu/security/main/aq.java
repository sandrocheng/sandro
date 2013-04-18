package com.keniu.security.main;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.EditText;
import android.widget.Toast;
import com.keniu.security.protection.ui.ag;

final class aq
  implements DialogInterface.OnClickListener
{
  aq(MainActivity paramMainActivity, EditText paramEditText)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    String str = this.a.getText().toString();
    if ((str != null) && (!str.equals("")))
      if (!ag.e(this.b, str))
      {
        Toast.makeText(this.b, this.b.getString(2131428884), 0).show();
        this.a.clearComposingText();
        this.a.setText("");
        MainActivity.a(paramDialogInterface, false);
      }
    while (true)
    {
      return;
      paramDialogInterface.dismiss();
      MainActivity.v(this.b);
      MainActivity.a(paramDialogInterface, true);
      continue;
      Toast.makeText(this.b, this.b.getString(2131428885), 0).show();
      MainActivity.a(paramDialogInterface, false);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.main.aq
 * JD-Core Version:    0.6.2
 */