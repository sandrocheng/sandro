package org.antivirus.wipe;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.widget.CheckBox;
import java.util.ArrayList;
import org.antivirus.Strings;

final class l
  implements Runnable
{
  l(WipeByApp paramWipeByApp, boolean paramBoolean)
  {
  }

  public final void run()
  {
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this.b);
    localBuilder.setTitle(Strings.getString(2131296425));
    localBuilder.setIcon(2130837699);
    if (this.a)
      localBuilder.setMessage(Strings.getString(2131296427));
    while (true)
    {
      localBuilder.setPositiveButton(Strings.getString(2131296259), new m(this));
      WipeByApp.a(this.b, localBuilder.create());
      WipeByApp.a(this.b).setCanceledOnTouchOutside(false);
      WipeByApp.a(this.b).show();
      if (WipeByApp.h(this.b).isChecked())
        WipeByApp.h(this.b).setChecked(false);
      this.b.c();
      this.b.a.clear();
      return;
      localBuilder.setMessage(Strings.getString(2131296428));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.wipe.l
 * JD-Core Version:    0.6.2
 */