package com.keniu.security.protection.ui;

import android.view.View;
import android.view.View.OnClickListener;
import com.keniu.security.util.ap;
import com.keniu.security.util.aq;

final class b
  implements View.OnClickListener
{
  b(PreventTheftCommandActivity paramPreventTheftCommandActivity)
  {
  }

  public final void onClick(View paramView)
  {
    aq localaq = new aq(this.a, (byte)0);
    localaq.a(this.a.getString(2131429314));
    localaq.b(this.a.getString(2131429361));
    localaq.a(this.a.getString(2131428298), null);
    localaq.c().show();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.protection.ui.b
 * JD-Core Version:    0.6.2
 */