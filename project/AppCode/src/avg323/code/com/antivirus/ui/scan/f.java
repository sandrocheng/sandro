package com.antivirus.ui.scan;

import android.os.Handler;
import android.os.Message;
import com.avg.toolkit.f.a;

class f extends Handler
{
  f(ScanBeforeInstallActivity paramScanBeforeInstallActivity)
  {
  }

  public void handleMessage(Message paramMessage)
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
        a.a(localException);
      }
    label51: switch (i)
    {
    case -3:
    case 4:
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.scan.f
 * JD-Core Version:    0.6.2
 */