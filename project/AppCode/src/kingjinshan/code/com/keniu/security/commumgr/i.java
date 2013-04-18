package com.keniu.security.commumgr;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.Toast;
import com.ijinshan.kinghelper.a.j;

final class i
  implements DialogInterface.OnClickListener
{
  i(NumLocateQueryActivity paramNumLocateQueryActivity, String paramString)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    com.ijinshan.kinghelper.firewall.core.i.a(this.b, this.a, NumLocateQueryActivity.c(this.b), 20, "");
    if (j.c(this.b))
      Toast.makeText(this.b, this.b.getString(2131428641), 1).show();
    while (true)
    {
      return;
      Toast.makeText(this.b, this.b.getString(2131428642), 1).show();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.commumgr.i
 * JD-Core Version:    0.6.2
 */