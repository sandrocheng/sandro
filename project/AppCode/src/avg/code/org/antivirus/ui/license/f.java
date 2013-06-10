package org.antivirus.ui.license;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class f
  implements DialogInterface.OnClickListener
{
  f(LicenseEnteringActivity paramLicenseEnteringActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    LicenseEnteringActivity.a(this.a, null);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.license.f
 * JD-Core Version:    0.6.2
 */