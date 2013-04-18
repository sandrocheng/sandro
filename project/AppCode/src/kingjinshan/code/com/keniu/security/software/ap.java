package com.keniu.security.software;

import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.view.View.OnClickListener;

final class ap
  implements View.OnClickListener
{
  ap(aj paramaj, int paramInt)
  {
  }

  public final void onClick(View paramView)
  {
    Message localMessage = Message.obtain();
    localMessage.what = 259;
    localMessage.arg1 = this.a;
    this.b.c.a.sendMessage(localMessage);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.software.ap
 * JD-Core Version:    0.6.2
 */