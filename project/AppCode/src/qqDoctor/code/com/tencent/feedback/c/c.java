package com.tencent.feedback.c;

import com.tencent.feedback.UserActionRecord;

final class c
  implements Runnable
{
  c(a parama)
  {
  }

  public final void run()
  {
    UserActionRecord.doUploadRecentCommonData();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.feedback.c.c
 * JD-Core Version:    0.6.2
 */