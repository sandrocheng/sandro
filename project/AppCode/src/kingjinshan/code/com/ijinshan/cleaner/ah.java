package com.ijinshan.cleaner;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.EditText;
import android.widget.Toast;
import com.keniu.security.protection.ui.ag;

final class ah
  implements DialogInterface.OnClickListener
{
  ah(MonitorUninstallActivity paramMonitorUninstallActivity, EditText paramEditText)
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
        MonitorUninstallActivity.a(paramDialogInterface, false);
      }
    while (true)
    {
      return;
      paramDialogInterface.dismiss();
      this.b.finish();
      MonitorUninstallActivity.a(paramDialogInterface, true);
      continue;
      Toast.makeText(this.b, this.b.getString(2131428885), 0).show();
      MonitorUninstallActivity.a(paramDialogInterface, false);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.cleaner.ah
 * JD-Core Version:    0.6.2
 */