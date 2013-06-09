package org.antivirus.ui.license;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class b
  implements DialogInterface.OnClickListener
{
  b(a parama, boolean paramBoolean)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    LicenseEnteringActivity.b(this.b.a).dismiss();
    LicenseEnteringActivity.a(this.b.a, null);
    if (this.a)
      this.b.a.finish();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.license.b
 * JD-Core Version:    0.6.2
 */