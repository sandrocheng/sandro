package org.antivirus.ui.license;

import android.view.View;
import android.view.View.OnClickListener;
import org.antivirus.license.qrreader.general.CaptureActivity;

final class c
  implements View.OnClickListener
{
  c(LicenseEnteringActivity paramLicenseEnteringActivity)
  {
  }

  public final void onClick(View paramView)
  {
    LicenseEnteringActivity.a(this.a, CaptureActivity.QR_CODE_TYPES);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.license.c
 * JD-Core Version:    0.6.2
 */