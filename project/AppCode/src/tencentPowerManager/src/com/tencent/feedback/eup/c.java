package com.tencent.feedback.eup;

import com.tencent.feedback.a.a;
import com.tencent.feedback.common.d;

final class c extends Thread
{
  c(b paramb)
  {
  }

  public final void run()
  {
    String str = a.a(this.a.a);
    int i = d.a().c;
    if (str.toLowerCase().contains("wifi"))
      i = d.a().b;
    ExceptionUpload.doUploadExceptionDatas(i);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.feedback.eup.c
 * JD-Core Version:    0.6.2
 */