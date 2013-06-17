package com.avg.tuneup.a;

import android.text.format.Formatter;
import com.avg.ui.general.a.a;

class f
  implements Runnable
{
  f(c paramc)
  {
  }

  public void run()
  {
    int i = c.a(this.a);
    long l = c.b(this.a);
    c.a(this.a, c.c(this.a).getString(com.avg.a.g.performance_running_tasks) + " " + i + "\n");
    c.a(this.a, c.d(this.a).getString(com.avg.a.g.performance_free_memory) + " " + Formatter.formatFileSize(c.e(this.a), l));
    c.g(this.a).runOnUiThread(new g(this));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.tuneup.a.f
 * JD-Core Version:    0.6.2
 */