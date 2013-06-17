package com.antivirus.wipe;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import java.util.ArrayList;

class r
  implements CompoundButton.OnCheckedChangeListener
{
  r(b paramb)
  {
  }

  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    if (b.m(this.a))
      if ((paramBoolean) && (b.n(this.a) != null))
      {
        b.o(this.a);
        new Thread(new s(this)).start();
      }
    while (true)
    {
      return;
      if (b.n(this.a) != null)
        b.s(this.a);
      b.d(this.a).clear();
      continue;
      b.a(this.a, true);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.wipe.r
 * JD-Core Version:    0.6.2
 */