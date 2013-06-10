package org.antivirus.wipe;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.view.View;
import android.view.View.OnClickListener;
import java.util.ArrayList;
import org.antivirus.Strings;
import org.antivirus.ganalytics.a;

final class s
  implements View.OnClickListener
{
  s(WipeByApp paramWipeByApp)
  {
  }

  public final void onClick(View paramView)
  {
    a.a(this.a, "wipe_data", "wipe", null);
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this.a);
    localBuilder.setTitle(Strings.getString(2131296425));
    localBuilder.setIcon(2130837699);
    if ((this.a.a == null) || (this.a.a.size() == 0))
    {
      localBuilder.setMessage(Strings.getString(2131296429));
      localBuilder.setPositiveButton(Strings.getString(2131296259), new t(this));
    }
    while (true)
    {
      WipeByApp.a(this.a, localBuilder.create());
      WipeByApp.a(this.a).setCanceledOnTouchOutside(false);
      WipeByApp.a(this.a).show();
      WipeByApp.c(this.a);
      return;
      localBuilder.setMessage(Strings.getString(2131296426));
      localBuilder.setPositiveButton(Strings.getString(2131296259), new u(this));
      localBuilder.setNegativeButton(Strings.getString(2131296260), new v(this));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.wipe.s
 * JD-Core Version:    0.6.2
 */