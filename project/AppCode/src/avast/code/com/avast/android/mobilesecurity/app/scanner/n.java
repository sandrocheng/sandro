package com.avast.android.mobilesecurity.app.scanner;

import com.avast.android.generic.notification.j;

class n
  implements Runnable
{
  n(ReportService paramReportService, long paramLong1, long paramLong2)
  {
  }

  public void run()
  {
    ReportService.b(this.c).b = this.a;
    ReportService.b(this.c).c = this.b;
    ReportService.a(this.c).a(ReportService.b(this.c));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.scanner.n
 * JD-Core Version:    0.6.2
 */