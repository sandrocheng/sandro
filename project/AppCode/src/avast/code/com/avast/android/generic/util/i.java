package com.avast.android.generic.util;

import java.util.TimerTask;

final class i extends TimerTask
{
  i(j paramj, Thread paramThread)
  {
  }

  public void run()
  {
    this.a.a = true;
    this.b.interrupt();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.util.i
 * JD-Core Version:    0.6.2
 */