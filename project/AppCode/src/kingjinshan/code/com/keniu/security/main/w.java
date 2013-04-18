package com.keniu.security.main;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.Toast;
import com.keniu.security.util.at;

final class w
  implements DialogInterface.OnClickListener
{
  w(MainActivity paramMainActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.a.removeDialog(13);
    if (!at.c(this.a))
      Toast.makeText(this.a, "当前无网络，请检查网络连接。", 1).show();
    while (true)
    {
      return;
      if (!com.keniu.security.f.f.d())
        Toast.makeText(this.a, "SD卡不存在或不可用", 1);
      else
        new f(this.a);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.main.w
 * JD-Core Version:    0.6.2
 */