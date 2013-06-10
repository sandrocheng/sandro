package org.antivirus.ui.protection;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import org.antivirus.AvApplication;
import org.antivirus.Strings;
import org.antivirus.core.b.a;

final class t
  implements Runnable
{
  t(r paramr)
  {
  }

  public final void run()
  {
    if (ProtectionActivity.a(this.a.b.a) != null)
    {
      ProtectionActivity.a(this.a.b.a).dismiss();
      ProtectionActivity.b(this.a.b.a);
      ProtectionActivity.c(this.a.b.a);
      if ((this.a.a != null) && (!"NOCHANGE".equals(this.a.a)))
        break label217;
      String str1 = Strings.getString(2131296562);
      if ((AvApplication.mAvgFeatures != null) && (AvApplication.mAvgFeatures.b()))
        str1 = Strings.getString(2131296561);
      String str2 = Strings.getString(2131296279).replace("[appname]", str1);
      AlertDialog.Builder localBuilder = new AlertDialog.Builder(this.a.b.a);
      localBuilder.setTitle(str2);
      localBuilder.setMessage(Strings.getString(2131296318));
      localBuilder.setIcon(2130837812);
      localBuilder.setPositiveButton(Strings.getString(2131296259), new u(this));
      localBuilder.setCancelable(false);
      ProtectionActivity.a(this.a.b.a, localBuilder.show());
    }
    while (true)
    {
      return;
      label217: this.a.b.a.e();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.ui.protection.t
 * JD-Core Version:    0.6.2
 */