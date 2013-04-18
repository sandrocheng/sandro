package com.jxphone.mosecurity.activity.friend;

import android.app.Dialog;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemLongClickListener;

final class al
  implements AdapterView.OnItemLongClickListener
{
  al(FriendSmsActivity paramFriendSmsActivity)
  {
  }

  public final boolean onItemLongClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    b localb = FriendSmsActivity.b(this.a).c(paramInt);
    FriendSmsActivity.a(this.a, localb).show();
    return false;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.activity.friend.al
 * JD-Core Version:    0.6.2
 */