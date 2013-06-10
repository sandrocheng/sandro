package org.antivirus.wipe;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CheckBox;
import java.util.ArrayList;
import java.util.HashMap;

final class e
  implements View.OnClickListener
{
  e(WipeByApp paramWipeByApp, CheckBox paramCheckBox, String paramString)
  {
  }

  public final void onClick(View paramView)
  {
    if (this.a.isChecked())
    {
      this.c.a.remove(WipeByApp.e.get(this.b));
      WipeByApp.f(this.c);
      if (WipeByApp.g(this.c) == -1 + WipeByApp.e(this.c).size())
      {
        WipeByApp.a(this.c, false);
        WipeByApp.h(this.c).setChecked(false);
      }
      this.a.setChecked(false);
    }
    while (true)
    {
      WipeByApp.c(this.c);
      return;
      this.c.a.add(WipeByApp.e.get(this.b));
      this.a.setChecked(true);
      WipeByApp.i(this.c);
      if (WipeByApp.g(this.c) == WipeByApp.e(this.c).size())
      {
        WipeByApp.a(this.c, false);
        WipeByApp.h(this.c).setChecked(true);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.wipe.e
 * JD-Core Version:    0.6.2
 */