package com.keniu.security.main;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import com.keniu.security.main.a.h;

final class bb
  implements View.OnClickListener
{
  bb(MainActivity paramMainActivity)
  {
  }

  public final void onClick(View paramView)
  {
    if (MainActivity.J(this.a).d())
    {
      MainActivity.D(this.a).setEnabled(false);
      MainActivity.J(this.a).c();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.main.bb
 * JD-Core Version:    0.6.2
 */