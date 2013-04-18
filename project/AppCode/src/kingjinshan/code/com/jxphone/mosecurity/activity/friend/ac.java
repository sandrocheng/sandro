package com.jxphone.mosecurity.activity.friend;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ImageView;

final class ac
  implements AdapterView.OnItemClickListener
{
  ac(FriendNameAndIconActivity paramFriendNameAndIconActivity, ad paramad)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    Integer localInteger = this.a.a(paramInt);
    FriendNameAndIconActivity.a(this.b).setImageResource(localInteger.intValue());
    FriendNameAndIconActivity.a(this.b, paramInt);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.activity.friend.ac
 * JD-Core Version:    0.6.2
 */