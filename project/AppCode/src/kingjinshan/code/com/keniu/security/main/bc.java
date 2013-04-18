package com.keniu.security.main;

import android.widget.TextView;
import com.keniu.security.main.a.k;
import com.keniu.security.main.a.m;

final class bc
  implements Runnable
{
  bc(MainActivity paramMainActivity, m paramm)
  {
  }

  public final void run()
  {
    String str1 = this.a.a(k.o) + "\n";
    String str2 = str1 + MainActivity.K(this.b).getText();
    MainActivity.K(this.b).setText(str2);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.main.bc
 * JD-Core Version:    0.6.2
 */