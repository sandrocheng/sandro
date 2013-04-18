package com.jxphone.mosecurity.activity.friend;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemLongClickListener;

final class bj
  implements AdapterView.OnItemLongClickListener
{
  bj(PeopleSmsLogActivity paramPeopleSmsLogActivity)
  {
  }

  public final boolean onItemLongClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    PeopleSmsLogActivity.a(this.a, paramInt);
    this.a.showDialog(2131165209);
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.activity.friend.bj
 * JD-Core Version:    0.6.2
 */