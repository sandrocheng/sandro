package org.antivirus.ui.versionUpdate;

import android.os.Handler;
import org.antivirus.AVService.LocalBinder;

final class e
  implements Runnable
{
  e(d paramd)
  {
  }

  public final void run()
  {
    if ((VersionUpdateProgressDialog.c(this.a.a)) && (VersionUpdateProgressDialog.b(this.a.a) != null) && (!VersionUpdateProgressDialog.b(this.a.a).setVersionUpdateUIHandler(VersionUpdateProgressDialog.a(this.a.a))))
      VersionUpdateProgressDialog.d(this.a.a).postDelayed(this, 1000L);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.versionUpdate.e
 * JD-Core Version:    0.6.2
 */