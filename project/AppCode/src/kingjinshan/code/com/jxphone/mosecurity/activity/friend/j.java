package com.jxphone.mosecurity.activity.friend;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import com.jxphone.mosecurity.activity.t;
import com.jxphone.mosecurity.c.b;
import com.jxphone.mosecurity.d.n;
import com.jxphone.mosecurity.logic.a.d;
import com.jxphone.mosecurity.logic.h;
import com.keniu.security.util.af;
import com.keniu.security.util.ap;
import java.util.ArrayList;

final class j
  implements DialogInterface.OnClickListener
{
  j(FriendActivity paramFriendActivity)
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
    case 4:
    case 5:
    }
    while (true)
    {
      return;
      af.b(this.a, FriendActivity.w().c());
      continue;
      Bundle localBundle = new Bundle();
      localBundle.putSerializable("id", Integer.valueOf(FriendActivity.x().a()));
      localBundle.putString("address", FriendActivity.y().c());
      af.a(this.a, PeopleSmsLogActivity.class, localBundle);
      continue;
      k localk = new k(this, ((ap)paramDialogInterface).getContext(), new t(this.a));
      FriendActivity.e(this.a).add(localk.d());
      h.c(this.a, FriendActivity.f(this.a)).d(FriendActivity.z(), localk);
      continue;
      l locall = new l(this, ((ap)paramDialogInterface).getContext(), new t(this.a));
      FriendActivity.e(this.a).add(locall.d());
      h.c(this.a, FriendActivity.g(this.a)).b(FriendActivity.A(), locall);
      continue;
      this.a.a(FriendActivity.B().b(), FriendActivity.C().c(), FriendActivity.D().e(), new m(this));
      continue;
      FriendActivity.c(this.a, FriendActivity.H());
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.activity.friend.j
 * JD-Core Version:    0.6.2
 */