package com.ijinshan.kinghelper.firewall.core;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.text.TextUtils;
import com.ijinshan.kinghelper.a.i;
import com.ijinshan.kinghelper.firewall.a.e;
import com.jxphone.mosecurity.d.a;

final class t
  implements Runnable
{
  t(r paramr, String paramString1, String paramString2, Handler paramHandler)
  {
  }

  public final void run()
  {
    String str = e.d(i.a(this.a));
    if (TextUtils.isEmpty(str))
      str = a.a(r.a(this.d)).a(i.a(this.a), r.a(this.d).getString(2131427718));
    if (!TextUtils.isEmpty(str))
    {
      String[] arrayOfString = new String[2];
      arrayOfString[0] = str;
      arrayOfString[1] = this.b;
      Message localMessage = this.c.obtainMessage(0, arrayOfString);
      this.c.sendMessage(localMessage);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.core.t
 * JD-Core Version:    0.6.2
 */