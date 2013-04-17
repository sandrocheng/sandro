package com.tencent.feedback.common.b;

import com.tencent.feedback.upload.UploadHandler;
import com.tencent.feedback.upload.a;

final class c extends Thread
{
  c(b paramb)
  {
  }

  public final void run()
  {
    com.tencent.feedback.common.c.a("empty query start");
    UploadHandler localUploadHandler = b.a();
    if (localUploadHandler != null)
      com.tencent.feedback.common.c.a("do empty query");
    try
    {
      localUploadHandler.doUpload(new a());
      com.tencent.feedback.common.c.a("empty query end");
      com.tencent.feedback.common.c.a("start notify");
    }
    catch (Throwable localThrowable2)
    {
      try
      {
        e[] arrayOfe = this.a.b();
        this.a.a(true);
        if ((arrayOfe != null) && (arrayOfe.length > 0))
        {
          int i = 0;
          while (i < arrayOfe.length)
          {
            arrayOfe[i].onInitByQuery();
            i++;
            continue;
            localThrowable2 = localThrowable2;
            localThrowable2.printStackTrace();
          }
        }
      }
      catch (Throwable localThrowable1)
      {
        localThrowable1.printStackTrace();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.feedback.common.b.c
 * JD-Core Version:    0.6.2
 */