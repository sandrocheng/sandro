package com.avast.android.generic.app.account;

import android.os.Bundle;
import android.os.Message;
import android.view.View;
import com.avast.android.generic.ad;
import com.avast.android.generic.ae;
import com.avast.android.generic.t;
import com.avast.android.generic.ui.widget.NextRow;
import com.avast.android.generic.z;

public abstract class AccountSettingsFragment extends DisconnectFragment
{
  private NextRow a;
  private NextRow b;

  protected int c()
  {
    return t.be;
  }

  protected void d()
  {
    String str = ((ae)ad.a(getActivity(), ae.class)).w();
    if ((str != null) && (!"".equals(str)))
    {
      this.a.d(getString(z.bf, new Object[] { str }));
      this.b.setEnabled(true);
    }
    while (true)
    {
      return;
      this.a.d(getString(z.cJ));
      this.b.setEnabled(false);
    }
  }

  protected NextRow e()
  {
    return this.b;
  }

  public abstract int f();

  public abstract int g();

  public boolean handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    if ((!isAdded()) || (isDetached()));
    for (boolean bool = false; ; bool = true)
    {
      return bool;
      if (paramMessage.what == t.q)
        d();
    }
  }

  public void onResume()
  {
    super.onResume();
    d();
  }

  public void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    b(paramView);
    this.a = ((NextRow)paramView.findViewById(f()));
    this.b = ((NextRow)paramView.findViewById(g()));
    this.a.setOnClickListener(new s(this));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.app.account.AccountSettingsFragment
 * JD-Core Version:    0.6.2
 */