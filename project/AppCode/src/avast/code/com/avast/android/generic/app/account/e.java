package com.avast.android.generic.app.account;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import com.avast.android.generic.ui.widget.CheckBoxRow;
import com.avast.android.generic.util.aa;

class e
  implements View.OnClickListener
{
  e(AccountFragment paramAccountFragment)
  {
  }

  public void onClick(View paramView)
  {
    if (AccountFragment.v(this.a))
      this.a.a("ms-Wizard", "Avast! Account setup", "connect", 0L);
    String str;
    if (((AccountFragment.j(this.a)) && (AccountFragment.k(this.a))) || (AccountFragment.l(this.a).c()))
    {
      str = aa.c(AccountFragment.o(this.a).getText().toString());
      if ((AccountFragment.h(this.a)) && ((!AccountFragment.c(this.a)) || (AccountFragment.w(this.a))) && (aa.b(str)) && (AccountFragment.p(this.a)));
    }
    while (true)
    {
      return;
      AccountFragment.a(this.a, AccountFragment.x(this.a).getText().toString(), AccountFragment.a(this.a).getText().toString(), str);
      continue;
      if ((AccountFragment.h(this.a)) && ((!AccountFragment.c(this.a)) || (AccountFragment.w(this.a))))
        AccountFragment.a(this.a, AccountFragment.x(this.a).getText().toString(), AccountFragment.a(this.a).getText().toString(), null);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.app.account.e
 * JD-Core Version:    0.6.2
 */