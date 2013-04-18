package com.jxphone.mosecurity.activity.friend;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemLongClickListener;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.jxphone.mosecurity.c.b;

final class f
  implements AdapterView.OnItemLongClickListener
{
  f(FriendActivity paramFriendActivity)
  {
  }

  public final boolean onItemLongClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    FriendActivity.a(this.a, (b)FriendActivity.b(this.a).getAdapter().getItem(paramInt));
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.activity.friend.f
 * JD-Core Version:    0.6.2
 */