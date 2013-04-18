package com.ijinshan.cleaner;

import android.os.Looper;
import java.util.List;

final class x extends Thread
{
  x(HistoryCleanerActivity paramHistoryCleanerActivity)
  {
  }

  public final void run()
  {
    HistoryCleanerActivity.a(this.a, 6, -1);
    Looper.prepare();
    int i = 0;
    while (true)
      if (i < HistoryCleanerActivity.c(this.a).size())
        try
        {
          int j = ((Integer)HistoryCleanerActivity.c(this.a).get(i)).intValue();
          Thread.sleep(300L);
          HistoryCleanerActivity.a(this.a, 7, j);
          this.a.a(j);
          i++;
        }
        catch (Exception localException)
        {
          while (true)
            if (i == HistoryCleanerActivity.c(this.a).size() - 1)
              HistoryCleanerActivity.a(this.a, 8, -1);
        }
    HistoryCleanerActivity.a(this.a, 8, -1);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.cleaner.x
 * JD-Core Version:    0.6.2
 */