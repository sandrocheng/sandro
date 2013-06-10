package org.antivirus.ui.versionUpdate;

import android.widget.ProgressBar;
import android.widget.TextView;

final class g
  implements Runnable
{
  g(f paramf, int paramInt1, int paramInt2)
  {
  }

  public final void run()
  {
    VersionUpdateProgressDialog.f(this.c.a).setMax(this.a);
    VersionUpdateProgressDialog.f(this.c.a).setProgress(this.b);
    int i = (int)(100.0D * (this.b / this.a));
    VersionUpdateProgressDialog.g(this.c.a).setText(i + "%");
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.versionUpdate.g
 * JD-Core Version:    0.6.2
 */