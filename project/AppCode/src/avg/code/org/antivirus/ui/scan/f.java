package org.antivirus.ui.scan;

import android.os.Handler;
import android.os.Message;
import org.antivirus.core.Logger;

final class f extends Handler
{
  f(ScanBeforeInstallActivity paramScanBeforeInstallActivity)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    int i = 0;
    if (paramMessage != null)
      try
      {
        Object localObject = paramMessage.obj;
        i = 0;
        if (localObject != null)
        {
          i = ((Integer)paramMessage.obj).intValue();
          break label51;
          ScanBeforeInstallActivity.a(this.a);
        }
      }
      catch (Exception localException)
      {
        Logger.log(localException);
      }
    label51: switch (i)
    {
    case -1:
    case 4:
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.scan.f
 * JD-Core Version:    0.6.2
 */