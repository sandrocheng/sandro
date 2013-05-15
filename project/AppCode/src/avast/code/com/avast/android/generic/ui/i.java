package com.avast.android.generic.ui;

import android.view.View;
import android.view.View.OnClickListener;

class i
  implements View.OnClickListener
{
  i(CheckerFragment paramCheckerFragment)
  {
  }

  public void onClick(View paramView)
  {
    if (!CheckerFragment.a(this.a))
    {
      this.a.a("checker", "hide ignored", 0);
      CheckerFragment.a(this.a, true);
    }
    while (true)
    {
      this.a.h();
      return;
      this.a.a("checker", "show ignored", 0);
      CheckerFragment.a(this.a, false);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.ui.i
 * JD-Core Version:    0.6.2
 */