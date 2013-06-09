package org.antivirus.ui.protection;

import android.view.View;
import android.view.View.OnClickListener;
import org.antivirus.ganalytics.a;

final class e
  implements View.OnClickListener
{
  e(FileScannerActivity paramFileScannerActivity)
  {
  }

  public final void onClick(View paramView)
  {
    FileScannerActivity.b(this.a);
    a.a(this.a, "file_scanner", "scan", null);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.protection.e
 * JD-Core Version:    0.6.2
 */