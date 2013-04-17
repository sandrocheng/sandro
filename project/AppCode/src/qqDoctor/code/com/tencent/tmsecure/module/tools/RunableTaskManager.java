package com.tencent.tmsecure.module.tools;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import byz;
import com.tencent.tmsecure.common.BaseManager;

public final class RunableTaskManager extends BaseManager
{
  private byz a;

  public final boolean addTask(Runnable paramRunnable, long paramLong)
  {
    byz localbyz = this.a;
    Message localMessage;
    if (paramRunnable != null)
    {
      localMessage = localbyz.a.obtainMessage();
      localMessage.obj = paramRunnable;
    }
    for (boolean bool = localbyz.a.sendMessageDelayed(localMessage, paramLong); ; bool = false)
      return bool;
  }

  public final void onCreate(Context paramContext)
  {
    this.a = new byz();
    this.a.onCreate(paramContext);
    setImpl(this.a);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.tools.RunableTaskManager
 * JD-Core Version:    0.6.2
 */