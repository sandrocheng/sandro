package com.antivirus.ui.protection;

import android.view.View;
import android.widget.ProgressBar;

class y
  implements Runnable
{
  y(x paramx, int paramInt)
  {
  }

  public void run()
  {
    ProgressBar localProgressBar;
    if (r.a(this.b.b.a) != null)
    {
      localProgressBar = (ProgressBar)r.j(this.b.b.a).findViewById(2131230970);
      if (localProgressBar.getProgress() + this.a < localProgressBar.getMax())
        break label63;
      localProgressBar.setProgress(localProgressBar.getMax());
    }
    while (true)
    {
      return;
      label63: localProgressBar.incrementProgressBy(this.a);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.protection.y
 * JD-Core Version:    0.6.2
 */