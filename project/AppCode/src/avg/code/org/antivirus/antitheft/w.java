package org.antivirus.antitheft;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import android.widget.Toast;
import java.util.Timer;
import org.antivirus.AVService;
import org.antivirus.AVSettings;
import org.antivirus.Strings;
import org.antivirus.core.Logger;
import org.antivirus.ganalytics.a;

final class w
  implements View.OnClickListener
{
  w(LockScreen paramLockScreen)
  {
  }

  public final void onClick(View paramView)
  {
    if (LockScreen.b())
    {
      LockScreen.a(false);
      LockScreen.c.purge();
    }
    while (true)
    {
      return;
      if ((AVSettings.getPermLock()) && (this.a.a != null) && (!TextUtils.isEmpty(this.a.a.getText().toString())) && (this.a.a.getText().toString().equals(AVSettings.getPremPass(this.a))))
      {
        AVSettings.setPermLock(false);
        if (LockScreen.c != null)
          LockScreen.c.cancel();
        LockScreen localLockScreen = this.a;
        try
        {
          Intent localIntent = new Intent(localLockScreen, AVService.class);
          localIntent.putExtra("__SAC", 7);
          localIntent.putExtra("__SAD", 1033);
          localLockScreen.startService(localIntent);
          this.a.finish();
          a.a(this.a, "anti_theft", "unlock", "success");
        }
        catch (Exception localException)
        {
          while (true)
            Logger.log(localException);
        }
      }
      else
      {
        Toast.makeText(this.a, Strings.getString(2131296342), 0).show();
        LockScreen.a(this.a);
        a.a(this.a, "anti_theft", "unlock", "failure");
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.antitheft.w
 * JD-Core Version:    0.6.2
 */