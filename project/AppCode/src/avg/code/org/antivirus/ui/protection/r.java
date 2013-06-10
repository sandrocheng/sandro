package org.antivirus.ui.protection;

import android.view.View;
import android.widget.ProgressBar;
import org.antivirus.widget.a.k;

final class r
  implements Runnable
{
  r(q paramq, String paramString)
  {
  }

  public final void run()
  {
    ProgressBar localProgressBar = (ProgressBar)ProtectionActivity.d(this.b.a).findViewById(2131230911);
    int i = localProgressBar.getMax();
    int j = localProgressBar.getProgress();
    int m;
    if (ProtectionActivity.a(this.b.a) != null)
    {
      int k = 5 + (int)(4.0D * Math.random());
      m = (int)(0.05D * i / k);
      if (m <= 0)
        m = i;
    }
    while (true)
    {
      if (j < i)
        this.b.a.runOnUiThread(new s(this, m));
      try
      {
        Thread.sleep(50L);
        label106: j += m;
        continue;
        this.b.a.runOnUiThread(new t(this));
        k.a(this.b.a).d();
        return;
      }
      catch (InterruptedException localInterruptedException)
      {
        break label106;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.protection.r
 * JD-Core Version:    0.6.2
 */