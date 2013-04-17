package com.tencent.feedback.common.strategy;

import com.tencent.feedback.common.ELog;

final class b
  implements Runnable
{
  b(a parama, a.b paramb)
  {
  }

  public final void run()
  {
    ELog.info("new listener async init query called!");
    if (this.b.c())
      this.a.onLocalVersionChanged(a.b(this.b), a.c(this.b));
    this.a.onInitByQuery();
    ELog.info("new listener async init query called! end!");
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.feedback.common.strategy.b
 * JD-Core Version:    0.6.2
 */