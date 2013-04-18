package com.jxphone.mosecurity.listener;

import android.view.View;
import android.view.View.OnClickListener;
import com.jxphone.mosecurity.a.a;
import com.keniu.security.commui.b;

final class d
  implements View.OnClickListener
{
  d(FirewallCallTipDialog paramFirewallCallTipDialog)
  {
  }

  public final void onClick(View paramView)
  {
    a.c(FirewallCallTipDialog.a(this.a), false);
    FirewallCallTipDialog.a().c();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.listener.d
 * JD-Core Version:    0.6.2
 */