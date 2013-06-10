package org.antivirus.ui.license;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.Button;
import android.widget.EditText;

final class e
  implements TextWatcher
{
  e(LicenseEnteringActivity paramLicenseEnteringActivity)
  {
  }

  public final void afterTextChanged(Editable paramEditable)
  {
    LicenseEnteringActivity.e(this.a).setEnabled(false);
    if (LicenseEnteringActivity.c(this.a).getText().toString().length() != 0)
      LicenseEnteringActivity.e(this.a).setEnabled(true);
  }

  public final void beforeTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }

  public final void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.license.e
 * JD-Core Version:    0.6.2
 */