package org.antivirus.ui.performance;

import android.content.Intent;
import android.os.Handler;
import android.os.Message;

final class e extends Handler
{
  e(PerformanceActivity paramPerformanceActivity)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    PerformanceActivity.a(this.a, (Intent)paramMessage.obj);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.performance.e
 * JD-Core Version:    0.6.2
 */