package com.jxphone.mosecurity.activity.friend;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import com.jxphone.mosecurity.c.b;
import com.keniu.security.util.af;

final class h
  implements DialogInterface.OnClickListener
{
  h(FriendActivity paramFriendActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    switch (paramInt)
    {
    default:
    case 0:
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      return;
      af.b(this.a, FriendActivity.m().c());
      continue;
      Bundle localBundle = new Bundle();
      localBundle.putSerializable("id", Integer.valueOf(FriendActivity.n().a()));
      localBundle.putString("address", FriendActivity.o().c());
      af.a(this.a, PeopleSmsLogActivity.class, localBundle);
      continue;
      this.a.a(FriendActivity.p().b(), FriendActivity.q().c(), FriendActivity.r().e(), new i(this));
      continue;
      FriendActivity.b(this.a, FriendActivity.v());
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.activity.friend.h
 * JD-Core Version:    0.6.2
 */