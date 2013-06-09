package org.antivirus.applocker;

import android.content.Context;
import android.text.style.ClickableSpan;
import android.view.View;
import android.widget.Toast;
import org.antivirus.AVSettings;
import org.antivirus.Strings;
import org.antivirus.core.a.n;
import org.antivirus.ganalytics.a;

final class j extends ClickableSpan
{
  j(i parami, Context paramContext)
  {
  }

  public final void onClick(View paramView)
  {
    if (n.a(this.b))
    {
      Toast.makeText(this.a, Strings.getString(2131296340), 1).show();
      String str1 = AVSettings.getAppLockerPassRecoveryMailAddr(this.b.getApplicationContext());
      String str2 = Strings.getLanguage();
      String str3 = AVSettings.getApplockerUserPassword(this.b.getApplicationContext());
      h.a(this.a, str1, str2, str3);
    }
    while (true)
    {
      a.a(this.b, "app_locker", "recover_password", null);
      return;
      Toast.makeText(this.a, Strings.getString(2131296341), 1).show();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.applocker.j
 * JD-Core Version:    0.6.2
 */