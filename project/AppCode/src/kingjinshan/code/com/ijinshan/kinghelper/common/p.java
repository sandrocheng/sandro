package com.ijinshan.kinghelper.common;

import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.TextView;

final class p
  implements AbsListView.OnScrollListener
{
  private p(PickListActivity paramPickListActivity, byte paramByte)
  {
  }

  public final void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    if (PickListActivity.k(this.a))
      PickListActivity.a(this.a, paramInt1);
  }

  public final void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    if (paramInt == 0)
    {
      if (PickListActivity.j(this.a) != null)
        PickListActivity.j(this.a).setVisibility(8);
      PickListActivity.a(this.a, false);
    }
    while (true)
    {
      return;
      PickListActivity.a(this.a, true);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.common.p
 * JD-Core Version:    0.6.2
 */