package org.antivirus.ui.license;

import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Messenger;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import org.antivirus.AVService;
import org.antivirus.Strings;
import org.antivirus.core.b.g;

final class d
  implements View.OnClickListener
{
  d(LicenseEnteringActivity paramLicenseEnteringActivity)
  {
  }

  public final void onClick(View paramView)
  {
    String str = "";
    if (LicenseEnteringActivity.c(this.a) != null)
      str = LicenseEnteringActivity.c(this.a).getText().toString();
    if (str.equals(new g(this.a.getApplicationContext()).c()))
      LicenseEnteringActivity.a(this.a, LicenseEnteringActivity.a(this.a, Strings.getString(2131296574), Strings.getString(2131296593)));
    while (true)
    {
      return;
      if (!"".equals(str))
      {
        LicenseEnteringActivity.a(this.a, ProgressDialog.show(this.a, Strings.getString(2131296380), Strings.getString(2131296271), false, false, null));
        Intent localIntent = new Intent(this.a.getApplicationContext(), AVService.class);
        localIntent.putExtra("__SAC", 5);
        localIntent.putExtra("__SAD", LicenseEnteringActivity.c(this.a).getText().toString());
        localIntent.putExtra("__SAH", new Messenger(LicenseEnteringActivity.d(this.a)));
        this.a.startService(localIntent);
      }
      else
      {
        LicenseEnteringActivity.a(this.a, LicenseEnteringActivity.a(this.a, Strings.getString(2131296574), Strings.getString(2131296575)));
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.license.d
 * JD-Core Version:    0.6.2
 */