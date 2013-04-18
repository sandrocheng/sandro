package com.keniu.security.main;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.EditText;
import android.widget.Toast;
import com.jxphone.mosecurity.d.k;
import com.keniu.security.a;

final class ak
  implements DialogInterface.OnClickListener
{
  ak(MainActivity paramMainActivity, EditText paramEditText)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    k localk = k.a(this.b);
    String str = this.a.getText().toString();
    if ((str != null) && (!"".equals(str)));
    for (int i = localk.a(str); ; i = 0)
    {
      a locala = a.a(this.b);
      switch (i)
      {
      default:
      case 0:
      case 1:
      case 2:
      }
      while (true)
      {
        return;
        Toast.makeText(this.b, this.b.getString(2131428884), 0).show();
        this.a.clearComposingText();
        this.a.setText("");
        MainActivity.a(paramDialogInterface, false);
        this.b.g = false;
        continue;
        locala.c(false);
        paramDialogInterface.dismiss();
        MainActivity.r(this.b);
        MainActivity.a(paramDialogInterface, true);
        this.b.g = true;
        continue;
        locala.c(true);
        paramDialogInterface.dismiss();
        MainActivity.a(paramDialogInterface, true);
        this.b.g = true;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.main.ak
 * JD-Core Version:    0.6.2
 */