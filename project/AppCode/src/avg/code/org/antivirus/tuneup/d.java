package org.antivirus.tuneup;

import android.view.View;
import android.view.View.OnClickListener;
import org.antivirus.ganalytics.a;
import org.antivirus.ui.InstalledApp;

final class d
  implements View.OnClickListener
{
  d(b paramb, InstalledApp paramInstalledApp, int paramInt)
  {
  }

  public final void onClick(View paramView)
  {
    b.a(this.c, this.a.mPackageName);
    ((StorageActivity)b.a(this.c)).a = this.b;
    a.a(b.a(this.c), "storage_usage", "uninstall_app", null);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.tuneup.d
 * JD-Core Version:    0.6.2
 */