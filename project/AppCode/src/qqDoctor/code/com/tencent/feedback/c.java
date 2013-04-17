package com.tencent.feedback;

import android.content.Context;
import com.tencent.feedback.c.a;
import com.tencent.feedback.c.i;
import com.tencent.feedback.common.ELog;

final class c
  implements Runnable
{
  c(UserActionRecord paramUserActionRecord, Context paramContext, i parami)
  {
  }

  public final void run()
  {
    if (this.c.isEnableModule())
    {
      ELog.info("UserActionRecord insert launched event");
      a.a(this.a, this.b);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.feedback.c
 * JD-Core Version:    0.6.2
 */