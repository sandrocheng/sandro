package com.tencent.feedback.eup;

import android.view.View;
import android.view.View.OnClickListener;

final class d
  implements View.OnClickListener
{
  d(ConfirmDialog paramConfirmDialog)
  {
  }

  public final void onClick(View paramView)
  {
    new Thread(new e(this)).start();
    this.a.finish();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.feedback.eup.d
 * JD-Core Version:    0.6.2
 */