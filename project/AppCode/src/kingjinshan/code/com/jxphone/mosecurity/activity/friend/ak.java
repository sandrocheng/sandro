package com.jxphone.mosecurity.activity.friend;

import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.keniu.security.util.af;

final class ak
  implements AdapterView.OnItemClickListener
{
  ak(FriendSmsActivity paramFriendSmsActivity)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    b localb = FriendSmsActivity.b(this.a).c(paramInt);
    Bundle localBundle = new Bundle();
    localBundle.putSerializable("id", Integer.valueOf(localb.a()));
    localBundle.putString("address", localb.c());
    af.a(this.a, PeopleSmsLogActivity.class, localBundle);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.activity.friend.ak
 * JD-Core Version:    0.6.2
 */