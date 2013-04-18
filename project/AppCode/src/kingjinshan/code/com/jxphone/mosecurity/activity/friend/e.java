package com.jxphone.mosecurity.activity.friend;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListAdapter;
import android.widget.ListView;
import com.jxphone.mosecurity.c.b;

final class e
  implements AdapterView.OnItemClickListener
{
  e(FriendActivity paramFriendActivity)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    FriendActivity.a(this.a, (b)FriendActivity.b(this.a).getAdapter().getItem(paramInt));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.activity.friend.e
 * JD-Core Version:    0.6.2
 */