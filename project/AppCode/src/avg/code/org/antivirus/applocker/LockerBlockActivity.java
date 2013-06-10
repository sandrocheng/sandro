package org.antivirus.applocker;

import android.content.Intent;
import android.widget.EditText;
import android.widget.Toast;
import org.antivirus.AVSettings;
import org.antivirus.Strings;
import org.antivirus.core.Logger;
import org.antivirus.core.telephony.TelephonyInfo;

public class LockerBlockActivity extends i
{
  protected final void a()
  {
    try
    {
      String str1 = AVSettings.getApplockerUserPassword(getApplicationContext());
      String str2 = this.a.getText().toString();
      String str3 = TelephonyInfo.getUniqueId(getApplicationContext(), a(getApplicationContext()));
      int i = str3.length();
      String str4 = str3.substring(i - 4, i);
      if ((str2.equalsIgnoreCase(str1)) || (str2.equalsIgnoreCase(str4)))
      {
        setResult(2);
        String str5 = getIntent().getStringExtra("blocked_app");
        Intent localIntent = new Intent(this, AppBlockService.class);
        localIntent.putExtra("__SAC", 104);
        localIntent.putExtra("__SAD", str5);
        startService(localIntent);
        finish();
      }
      else
      {
        setResult(1);
        Toast.makeText(this, Strings.getString(2131296329), 0).show();
      }
    }
    catch (Exception localException)
    {
      Logger.log(localException);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.applocker.LockerBlockActivity
 * JD-Core Version:    0.6.2
 */