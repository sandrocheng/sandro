package com.avast.android.generic.app.account;

import android.view.View;
import android.view.View.OnClickListener;

class f
  implements View.OnClickListener
{
  f(AccountFragment paramAccountFragment)
  {
  }

  public void onClick(View paramView)
  {
    if (AccountFragment.v(this.a))
      this.a.a("ms-Wizard", "Avast! Account setup", "cancel", 0L);
    AccountFragment.y(this.a);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.app.account.f
 * JD-Core Version:    0.6.2
 */