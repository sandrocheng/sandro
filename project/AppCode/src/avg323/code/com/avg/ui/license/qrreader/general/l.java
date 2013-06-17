package com.avg.ui.license.qrreader.general;

import java.util.concurrent.ThreadFactory;

final class l
  implements ThreadFactory
{
  public Thread newThread(Runnable paramRunnable)
  {
    Thread localThread = new Thread(paramRunnable);
    localThread.setDaemon(true);
    return localThread;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.ui.license.qrreader.general.l
 * JD-Core Version:    0.6.2
 */