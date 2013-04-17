package com.tencent.feedback.eup;

import com.tencent.feedback.common.d;
import com.tencent.feedback.common.f;
import com.tencent.feedback.common.f.a;

final class c
  implements Runnable
{
  c(b paramb)
  {
  }

  public final void run()
  {
    String str = d.b(this.a.a);
    int i = f.a().c;
    if (str.toLowerCase().contains("wifi"))
      i = f.a().b;
    ExceptionUpload.doUploadExceptionDatas(i);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.feedback.eup.c
 * JD-Core Version:    0.6.2
 */