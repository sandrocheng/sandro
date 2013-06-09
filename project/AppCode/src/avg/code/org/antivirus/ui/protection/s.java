package org.antivirus.ui.protection;

import android.view.View;
import android.widget.ProgressBar;

final class s
  implements Runnable
{
  s(r paramr, int paramInt)
  {
  }

  public final void run()
  {
    ProgressBar localProgressBar;
    if (ProtectionActivity.a(this.b.b.a) != null)
    {
      localProgressBar = (ProgressBar)ProtectionActivity.d(this.b.b.a).findViewById(2131230911);
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
 * Qualified Name:     org.antivirus.ui.protection.s
 * JD-Core Version:    0.6.2
 */