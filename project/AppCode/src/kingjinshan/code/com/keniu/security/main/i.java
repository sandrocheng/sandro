package com.keniu.security.main;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Handler;
import com.hoi.widget.q;

final class i
  implements DialogInterface.OnClickListener
{
  i(f paramf)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    f.g(this.a).sendEmptyMessage(4);
    f.b(this.a).dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.main.i
 * JD-Core Version:    0.6.2
 */