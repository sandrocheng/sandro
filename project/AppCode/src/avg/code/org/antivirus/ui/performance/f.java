package org.antivirus.ui.performance;

import android.text.format.Formatter;
import org.antivirus.Strings;

final class f
  implements Runnable
{
  f(PerformanceActivity paramPerformanceActivity)
  {
  }

  public final void run()
  {
    int i = PerformanceActivity.b(this.a);
    long l = PerformanceActivity.c(this.a);
    PerformanceActivity.a(this.a, Strings.getString(2131296686) + " " + i + "\n");
    PerformanceActivity.a(this.a, Strings.getString(2131296687) + " " + Formatter.formatFileSize(this.a, l));
    this.a.runOnUiThread(new g(this));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.performance.f
 * JD-Core Version:    0.6.2
 */