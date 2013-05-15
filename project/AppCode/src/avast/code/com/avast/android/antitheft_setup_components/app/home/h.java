package com.avast.android.antitheft_setup_components.app.home;

import android.widget.ProgressBar;
import android.widget.TextView;

class h
  implements Runnable
{
  h(f paramf, int paramInt1, int paramInt2)
  {
  }

  public void run()
  {
    if (!this.c.a.isAdded());
    while (true)
    {
      return;
      int i = Math.round(100.0F * this.a / this.b);
      DownloadFragment.a(this.c.a).setText(i + "%");
      DownloadFragment.c(this.c.a).setProgress(i);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.antitheft_setup_components.app.home.h
 * JD-Core Version:    0.6.2
 */