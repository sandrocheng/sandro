package org.antivirus.ui.antitheft;

import android.content.DialogInterface;
import android.widget.EditText;
import com.android.vending.licensing.ObfuscatedSharedPreferences;
import org.antivirus.AVSettings;
import org.antivirus.Strings;
import org.antivirus.ganalytics.a;
import org.antivirus.tools.MailUtils;

final class e extends l
{
  e(AntiTheftActivity paramAntiTheftActivity, ObfuscatedSharedPreferences paramObfuscatedSharedPreferences, EditText paramEditText)
  {
    super(paramAntiTheftActivity, paramObfuscatedSharedPreferences);
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    String str1 = this.a.getText().toString();
    a.a(this.b, "anti_theft", "registered_account", null);
    if (MailUtils.isValidMailAddress(str1, true))
    {
      String str2 = AVSettings.getFindRUser(this.b);
      if ((AntiTheftActivity.d(this.b) != null) && (str2 != null) && (str2.equals(str1)))
        AntiTheftActivity.a(this.b, Strings.getString(2131296306), Strings.getString(2131296718));
    }
    while (true)
    {
      return;
      AntiTheftActivity.a(this.b, str1, this.c);
      continue;
      AntiTheftActivity.a(this.b, Strings.getString(2131296269), Strings.getString(2131296261));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.antitheft.e
 * JD-Core Version:    0.6.2
 */