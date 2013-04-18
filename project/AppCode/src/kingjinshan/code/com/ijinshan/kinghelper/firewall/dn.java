package com.ijinshan.kinghelper.firewall;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.view.View;
import android.widget.EditText;
import android.widget.Toast;
import com.ijinshan.kinghelper.a.j;
import com.ijinshan.kinghelper.firewall.core.i;

final class dn
  implements DialogInterface.OnClickListener
{
  dn(ServiceSmsGroupActivity paramServiceSmsGroupActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    ej localej = (ej)ServiceSmsGroupActivity.a(this.a).getItem(ServiceSmsGroupActivity.f(this.a));
    EditText localEditText1 = (EditText)ServiceSmsGroupActivity.i(this.a).findViewById(2131230993);
    EditText localEditText2 = (EditText)ServiceSmsGroupActivity.i(this.a).findViewById(2131231557);
    String str1 = localEditText1.getText().toString();
    String str2 = localEditText2.getText().toString();
    if (str1.length() <= 0)
      Toast.makeText(this.a, 2131427827, 1).show();
    while (true)
    {
      return;
      if (j.c(this.a))
      {
        i.a(this.a, localej.b, str1, 10, str2);
        Toast.makeText(this.a, 2131427632, 0).show();
      }
      else
      {
        Toast.makeText(this.a, 2131427633, 0).show();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.dn
 * JD-Core Version:    0.6.2
 */