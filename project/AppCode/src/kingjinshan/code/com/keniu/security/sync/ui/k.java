package com.keniu.security.sync.ui;

import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;

final class k
  implements View.OnClickListener
{
  k(RegisterAct paramRegisterAct)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setData(Uri.parse("http://www.duba.net/protocol/serverUse.shtml"));
    this.a.startActivity(localIntent);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.ui.k
 * JD-Core Version:    0.6.2
 */