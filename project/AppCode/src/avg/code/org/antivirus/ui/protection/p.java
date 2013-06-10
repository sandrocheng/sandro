package org.antivirus.ui.protection;

import android.app.AlertDialog;
import org.antivirus.Strings;

final class p
  implements Runnable
{
  p(ProtectionActivity paramProtectionActivity)
  {
  }

  public final void run()
  {
    if ((ProtectionActivity.f()) && (ProtectionActivity.a(this.a) != null))
    {
      ProtectionActivity.a(this.a).dismiss();
      ProtectionActivity.b(this.a);
      ProtectionActivity.c(this.a);
      this.a.a(Strings.getString(2131296403));
    }
    try
    {
      if (this.a.a != null)
        this.a.unregisterReceiver(this.a.a);
      label78: return;
    }
    catch (Exception localException)
    {
      break label78;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.protection.p
 * JD-Core Version:    0.6.2
 */