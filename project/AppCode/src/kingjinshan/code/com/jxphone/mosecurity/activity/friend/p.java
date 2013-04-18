package com.jxphone.mosecurity.activity.friend;

import android.app.Dialog;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemLongClickListener;

final class p
  implements AdapterView.OnItemLongClickListener
{
  p(FriendCallLogActivity paramFriendCallLogActivity)
  {
  }

  public final boolean onItemLongClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    b localb = FriendCallLogActivity.b(this.a).c(paramInt);
    FriendCallLogActivity.a(this.a, localb).show();
    return false;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.activity.friend.p
 * JD-Core Version:    0.6.2
 */