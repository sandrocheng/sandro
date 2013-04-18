package com.keniu.security.sync.ui;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;

final class d
  implements View.OnClickListener
{
  d(DialogAct paramDialogAct)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent("android.intent.action.MAIN");
    localIntent.setType("vnd.android-dir/mms-sms");
    this.a.startActivity(localIntent);
    this.a.finish();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.ui.d
 * JD-Core Version:    0.6.2
 */