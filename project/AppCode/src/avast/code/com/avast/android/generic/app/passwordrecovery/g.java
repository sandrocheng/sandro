package com.avast.android.generic.app.passwordrecovery;

import android.view.View;
import android.view.View.OnClickListener;

class g
  implements View.OnClickListener
{
  g(f paramf)
  {
  }

  public void onClick(View paramView)
  {
    PasswordRecoveryDialog.a(this.a.b, this.a.b.getActivity());
    boolean bool = a.a(this.a.b.getActivity(), new h(this), null);
    if (!bool)
      PasswordRecoveryDialog.a(this.a.b, bool);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.app.passwordrecovery.g
 * JD-Core Version:    0.6.2
 */