package com.tencent.feedback.eup;

import com.tencent.feedback.a.a;
import com.tencent.feedback.common.c;
import com.tencent.feedback.common.d;

final class k extends Thread
{
  k(h paramh)
  {
  }

  public final void run()
  {
    String str = a.a(h.a(this.a));
    int i = d.a().c;
    if (str.toLowerCase().contains("wifi"))
      i = d.a().b;
    ExceptionUpload.doUploadExceptionDatas(i);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.feedback.eup.k
 * JD-Core Version:    0.6.2
 */