package com.keniu.security.sync.ui;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CheckBox;

final class x
  implements View.OnClickListener
{
  x(w paramw, int paramInt)
  {
  }

  public final void onClick(View paramView)
  {
    SyncBackupActivity.b(this.b.a)[this.a] = ((CheckBox)paramView).isChecked();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.ui.x
 * JD-Core Version:    0.6.2
 */