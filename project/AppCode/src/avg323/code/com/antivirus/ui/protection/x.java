package com.antivirus.ui.protection;

import android.view.View;
import android.widget.ProgressBar;
import com.antivirus.AVService;
import com.antivirus.widget.protection.ProtectionWidgetPlugin;
import com.avg.ui.general.a.a;

class x
  implements Runnable
{
  x(w paramw, String paramString)
  {
  }

  public void run()
  {
    ProgressBar localProgressBar = (ProgressBar)r.j(this.b.a).findViewById(2131230970);
    int i = localProgressBar.getMax();
    int j = localProgressBar.getProgress();
    int m;
    if (r.a(this.b.a) != null)
    {
      int k = 5 + (int)(4.0D * Math.random());
      m = (int)(0.05D * i / k);
      if (m <= 0)
        m = i;
    }
    while (true)
    {
      if (j < i)
        r.k(this.b.a).runOnUiThread(new y(this, m));
      try
      {
        Thread.sleep(50L);
        label109: j += m;
        continue;
        r.u(this.b.a).runOnUiThread(new z(this));
        AVService.a(r.v(this.b.a), 25000, 8, ProtectionWidgetPlugin.k());
        return;
      }
      catch (InterruptedException localInterruptedException)
      {
        break label109;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.protection.x
 * JD-Core Version:    0.6.2
 */