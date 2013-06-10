package org.antivirus.wipe;

import android.app.ProgressDialog;
import org.antivirus.Strings;

final class n
  implements Runnable
{
  n(WipeByApp paramWipeByApp)
  {
  }

  public final void run()
  {
    WipeByApp.a(this.a, new ProgressDialog(this.a));
    WipeByApp.l(this.a).setTitle(Strings.getString(2131296425));
    WipeByApp.l(this.a).setMessage(Strings.getString(2131296425));
    WipeByApp.l(this.a).setIcon(2130837699);
    WipeByApp.l(this.a).setCanceledOnTouchOutside(false);
    WipeByApp.l(this.a).show();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.wipe.n
 * JD-Core Version:    0.6.2
 */