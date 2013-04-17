package com.tencent.feedback.eup;

import com.tencent.feedback.common.ELog;
import java.util.TimerTask;

final class i extends TimerTask
{
  i(g paramg, Runnable paramRunnable)
  {
  }

  public final void run()
  {
    ELog.info("timertask wake up!");
    this.a.run();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.feedback.eup.i
 * JD-Core Version:    0.6.2
 */