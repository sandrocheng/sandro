package com.ijinshan.software.recommand;

import android.os.Handler;
import android.os.Message;
import java.io.File;

final class b extends Thread
{
  c a;
  Message b = FileDownloadService.e(this.c).obtainMessage();

  public b(FileDownloadService paramFileDownloadService, c paramc)
  {
    this.a = paramc;
  }

  public final void run()
  {
    try
    {
      if (!this.a.f.exists())
        this.a.f.mkdirs();
      if (!this.a.g.exists())
        this.a.g.createNewFile();
      if ((FileDownloadService.a(this.c, this.a.g.toString()) >= this.a.d) || (this.a.g.length() == this.a.e))
      {
        this.b.what = 0;
        this.b.obj = this.a;
        FileDownloadService.e(this.c).sendMessage(this.b);
      }
      else if (this.c.a(this.a.a, this.a.h, this.a.b, this.a.c, this.a.g, this.a.e) > 0L)
      {
        this.b.what = 0;
        this.b.obj = this.a;
        FileDownloadService.e(this.c).sendMessage(this.b);
      }
    }
    catch (Exception localException)
    {
      this.b.what = 1;
      this.b.obj = this.a;
      FileDownloadService.e(this.c).sendMessage(this.b);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.software.recommand.b
 * JD-Core Version:    0.6.2
 */