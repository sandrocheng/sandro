package com.jxphone.mosecurity.activity.friend;

import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.jxphone.mosecurity.activity.BaseActivity;

final class o
  implements AdapterView.OnItemClickListener
{
  o(FriendCallLogActivity paramFriendCallLogActivity)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    b localb = FriendCallLogActivity.b(this.a).c(paramInt);
    Bundle localBundle = new Bundle();
    localBundle.putSerializable("id", Integer.valueOf(localb.a()));
    localBundle.putString("address", localb.c());
    BaseActivity.a(this.a, PeopleCallLogActivity.class, localBundle);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.activity.friend.o
 * JD-Core Version:    0.6.2
 */