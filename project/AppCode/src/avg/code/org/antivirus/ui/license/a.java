package org.antivirus.ui.license;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.ProgressDialog;
import android.os.Handler;
import android.os.Message;
import org.antivirus.Strings;

final class a extends Handler
{
  a(LicenseEnteringActivity paramLicenseEnteringActivity)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    boolean bool = ((Boolean)paramMessage.obj).booleanValue();
    if (LicenseEnteringActivity.a(this.a) != null)
    {
      LicenseEnteringActivity.a(this.a).dismiss();
      LicenseEnteringActivity.a(this.a, null);
    }
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this.a);
    localBuilder.setTitle(Strings.getString(2131296382));
    localBuilder.setIcon(2130837689);
    if (bool);
    for (String str = Strings.getString(2131296381); ; str = Strings.getString(2131296574))
    {
      localBuilder.setMessage(str);
      localBuilder.setPositiveButton(Strings.getString(2131296259), new b(this, bool));
      LicenseEnteringActivity.a(this.a, localBuilder.create());
      LicenseEnteringActivity.b(this.a).setCanceledOnTouchOutside(false);
      LicenseEnteringActivity.b(this.a).show();
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.license.a
 * JD-Core Version:    0.6.2
 */