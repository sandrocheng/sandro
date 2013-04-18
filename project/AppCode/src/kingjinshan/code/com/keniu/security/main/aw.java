package com.keniu.security.main;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.keniu.security.util.ap;
import com.keniu.security.util.aq;
import com.keniu.security.util.at;

final class aw
  implements DialogInterface.OnClickListener
{
  aw(MainActivity paramMainActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (!at.c(this.a))
    {
      aq localaq = new aq(this.a, (byte)0);
      localaq.a(this.a.getString(2131427865));
      localaq.b(this.a.getString(2131429431));
      localaq.a(this.a.getString(2131428402), new ax(this));
      localaq.b(this.a.getString(2131428398), null);
      localaq.c().show();
    }
    while (true)
    {
      return;
      MainActivity.a(this.a).c();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.main.aw
 * JD-Core Version:    0.6.2
 */