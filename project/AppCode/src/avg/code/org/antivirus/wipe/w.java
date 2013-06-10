package org.antivirus.wipe;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import java.util.ArrayList;

final class w
  implements CompoundButton.OnCheckedChangeListener
{
  w(WipeByApp paramWipeByApp)
  {
  }

  public final void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    if (WipeByApp.d(this.a))
      if ((paramBoolean) && (WipeByApp.e(this.a) != null))
      {
        this.a.d();
        new Thread(new x(this)).start();
      }
    while (true)
    {
      return;
      if (WipeByApp.e(this.a) != null)
        this.a.c();
      this.a.a.clear();
      continue;
      WipeByApp.a(this.a, true);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.wipe.w
 * JD-Core Version:    0.6.2
 */