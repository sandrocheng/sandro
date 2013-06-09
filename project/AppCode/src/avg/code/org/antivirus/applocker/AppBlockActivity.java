package org.antivirus.applocker;

import android.content.Intent;
import android.view.KeyEvent;
import android.view.Menu;
import android.widget.EditText;
import android.widget.Toast;
import org.antivirus.AVSettings;
import org.antivirus.Strings;
import org.antivirus.core.Logger;
import org.antivirus.core.telephony.TelephonyInfo;

public class AppBlockActivity extends i
{
  private void c()
  {
    Intent localIntent = new Intent(this, AppBlockService.class);
    localIntent.putExtra("__SAC", 201);
    startService(localIntent);
  }

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
        Toast localToast = Toast.makeText(this, Strings.getString(2131296329), 0);
        localToast.setGravity(1, 0, 0);
        localToast.show();
        c();
      }
    }
    catch (Exception localException)
    {
      Logger.log(localException);
    }
  }

  protected final void onBack()
  {
    Intent localIntent = new Intent("android.intent.action.MAIN");
    localIntent.addCategory("android.intent.category.HOME");
    localIntent.setFlags(268435456);
    c();
    startActivity(localIntent);
    super.onBack();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    boolean bool = true;
    if (4 == paramInt)
    {
      onBack();
      bool = false;
    }
    while (true)
    {
      return bool;
      if (5 != paramInt)
        if (84 != paramInt)
          break;
    }
  }

  public boolean onPrepareOptionsMenu(Menu paramMenu)
  {
    return false;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.applocker.AppBlockActivity
 * JD-Core Version:    0.6.2
 */