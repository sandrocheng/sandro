package com.jxphone.mosecurity.logic;

import com.keniu.security.a;
import com.keniu.security.g;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

final class f extends Thread
{
  f(e parame)
  {
  }

  public final void run()
  {
    try
    {
      File[] arrayOfFile = g.a().c();
      if (arrayOfFile != null)
      {
        int i = a.a(e.a(this.a)).az();
        long l1 = a.a(e.a(this.a)).ay();
        long l2 = System.currentTimeMillis();
        if (i >= 3)
        {
          if (l2 - l1 >= 86400000L)
            a.a(e.a(this.a)).c(0);
        }
        else
          for (j = 1; ; j = 1)
          {
            if (j == 0)
              return;
            a.a(e.a(this.a)).f(l2);
            File localFile = new File("/sdcard/mosecurity/crash.zip");
            localFile.delete();
            if (e.a(arrayOfFile, localFile))
            {
              String str = new SimpleDateFormat("yyyyMMdd_HHmmss").format(new Date());
              if (e.a("mosec_crash", str, "http://report.sj.ijinshan.com/report/debug/upload", localFile))
                g.a().a(true);
            }
            localFile.delete();
            return;
            if (l2 - l1 < 1800000L)
              break;
            a.a(e.a(this.a)).c(i + 1);
          }
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        break;
        int j = 0;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.logic.f
 * JD-Core Version:    0.6.2
 */