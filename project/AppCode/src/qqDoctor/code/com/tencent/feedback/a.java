package com.tencent.feedback;

import com.tencent.feedback.common.ELog;
import com.tencent.feedback.common.d;
import com.tencent.feedback.common.f;

final class a
  implements Runnable
{
  a(UserActionRecord paramUserActionRecord)
  {
  }

  public final void run()
  {
    try
    {
      if (d.a(UserActionRecord.access$000(this.a)))
      {
        ELog.debug("RQD_UAInitUPThread on wifi double");
        UserActionRecord.doUploadRecentCommonDataOnSize(f.b().b);
      }
      else
      {
        ELog.debug("RQD_UAInitUPThread on notwifi");
        UserActionRecord.doUploadRecentCommonDataOnSize(f.b().c);
      }
    }
    catch (Throwable localThrowable)
    {
      ELog.error("RQD_UAInitUPThread error");
      localThrowable.printStackTrace();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.feedback.a
 * JD-Core Version:    0.6.2
 */