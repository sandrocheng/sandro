package com.keniu.security.protection.ui;

import android.database.DataSetObserver;
import android.view.View;

final class aj extends DataSetObserver
{
  aj(PreventTheftWhiteListActivity paramPreventTheftWhiteListActivity)
  {
  }

  public final void onChanged()
  {
    View localView = this.a.findViewById(2131230878);
    if (PreventTheftWhiteListActivity.a(this.a).getCount() > 0);
    for (boolean bool = true; ; bool = false)
    {
      localView.setEnabled(bool);
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.protection.ui.aj
 * JD-Core Version:    0.6.2
 */