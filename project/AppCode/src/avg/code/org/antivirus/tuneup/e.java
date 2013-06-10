package org.antivirus.tuneup;

import android.view.View;
import android.view.View.OnClickListener;
import org.antivirus.ganalytics.a;
import org.antivirus.ui.InstalledApp;

final class e
  implements View.OnClickListener
{
  e(b paramb, InstalledApp paramInstalledApp, int paramInt)
  {
  }

  public final void onClick(View paramView)
  {
    this.c.a(this.a.mPackageName);
    ((StorageActivity)b.a(this.c)).b = this.b;
    a.a(b.a(this.c), "storage_usage", "show_app_details", null);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.tuneup.e
 * JD-Core Version:    0.6.2
 */