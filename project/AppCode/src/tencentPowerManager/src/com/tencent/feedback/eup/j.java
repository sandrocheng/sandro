package com.tencent.feedback.eup;

import com.tencent.feedback.common.c;
import java.util.TimerTask;

final class j extends TimerTask
{
  j(h paramh, Runnable paramRunnable)
  {
  }

  public final void run()
  {
    c.a("timertask wake up!");
    this.a.run();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.feedback.eup.j
 * JD-Core Version:    0.6.2
 */