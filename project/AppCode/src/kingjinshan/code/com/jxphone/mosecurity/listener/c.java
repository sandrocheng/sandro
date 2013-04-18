package com.jxphone.mosecurity.listener;

import android.view.View;
import android.view.View.OnClickListener;
import com.ijinshan.kinghelper.a.i;
import com.jxphone.mosecurity.a.a;
import com.keniu.security.commui.b;
import com.keniu.security.util.af;

final class c
  implements View.OnClickListener
{
  c(FirewallCallTipDialog paramFirewallCallTipDialog)
  {
  }

  public final void onClick(View paramView)
  {
    a.c(FirewallCallTipDialog.a(this.a), true);
    e.a(i.a(FirewallCallTipDialog.b(this.a)));
    af.c(FirewallCallTipDialog.a(this.a), FirewallCallTipDialog.b(this.a));
    FirewallCallTipDialog.a().c();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.listener.c
 * JD-Core Version:    0.6.2
 */