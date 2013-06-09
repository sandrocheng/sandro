package org.antivirus.applocker;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import android.widget.Toast;
import org.antivirus.AVSettings;
import org.antivirus.Strings;
import org.antivirus.tools.MailUtils;

final class l
  implements View.OnClickListener
{
  l(PasswordConfirmation paramPasswordConfirmation)
  {
  }

  public final void onClick(View paramView)
  {
    PasswordConfirmation.a(this.a, (EditText)this.a.findViewById(2131230776));
    String str1 = PasswordConfirmation.a(this.a).getText().toString();
    PasswordConfirmation.b(this.a, (EditText)this.a.findViewById(2131230902));
    String str2 = PasswordConfirmation.b(this.a).getText().toString();
    if ((str1.length() == 0) && (str2.length() == 0))
    {
      this.a.setResult(1);
      Toast localToast4 = Toast.makeText(this.a, Strings.getString(2131296331), 1);
      localToast4.setGravity(17, 0, 0);
      localToast4.show();
    }
    String str3;
    while (true)
    {
      return;
      if ((str1.length() == 0) || (str2.length() == 0))
      {
        this.a.setResult(1);
        Toast localToast1 = Toast.makeText(this.a, Strings.getString(2131296330), 1);
        localToast1.setGravity(17, 0, 0);
        localToast1.show();
      }
      else if (!str1.equalsIgnoreCase(str2))
      {
        this.a.setResult(1);
        Toast localToast3 = Toast.makeText(this.a, Strings.getString(2131296328), 1);
        localToast3.setGravity(17, 0, 0);
        localToast3.show();
      }
      else
      {
        str3 = PasswordConfirmation.c(this.a).getText().toString();
        if (MailUtils.isValidMailAddress(str3, false))
          break;
        this.a.setResult(1);
        Toast localToast2 = Toast.makeText(this.a, Strings.getString(2131296339), 1);
        localToast2.setGravity(17, 0, 0);
        localToast2.show();
      }
    }
    if (str3.length() == 0)
    {
      AVSettings.setApplockerEmailEntered(false);
      AVSettings.commit();
    }
    while (true)
    {
      AVSettings.setApplockerUserPassword(str2);
      this.a.setResult(2);
      this.a.finish();
      break;
      AVSettings.setAppLockerPassRecoveryMailAddr(str3);
      AVSettings.setApplockerEmailEntered(true);
      AVSettings.commit();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.applocker.l
 * JD-Core Version:    0.6.2
 */