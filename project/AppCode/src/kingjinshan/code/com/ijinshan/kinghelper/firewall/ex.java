package com.ijinshan.kinghelper.firewall;

import android.database.DataSetObserver;
import android.view.View;

final class ex extends DataSetObserver
{
  ex(UserWhiteBlackListActivity paramUserWhiteBlackListActivity)
  {
  }

  public final void onChanged()
  {
    View localView = this.a.findViewById(2131230878);
    if (UserWhiteBlackListActivity.a(this.a).getCount() > 0);
    for (boolean bool = true; ; bool = false)
    {
      localView.setEnabled(bool);
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.ex
 * JD-Core Version:    0.6.2
 */