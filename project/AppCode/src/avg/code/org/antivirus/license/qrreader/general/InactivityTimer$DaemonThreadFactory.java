package org.antivirus.license.qrreader.general;

import java.util.concurrent.ThreadFactory;

final class InactivityTimer$DaemonThreadFactory
  implements ThreadFactory
{
  public final Thread newThread(Runnable paramRunnable)
  {
    Thread localThread = new Thread(paramRunnable);
    localThread.setDaemon(true);
    return localThread;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.license.qrreader.general.InactivityTimer.DaemonThreadFactory
 * JD-Core Version:    0.6.2
 */