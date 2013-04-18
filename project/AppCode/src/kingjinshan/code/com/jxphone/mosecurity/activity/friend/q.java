package com.jxphone.mosecurity.activity.friend;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.os.Bundle;
import com.jxphone.mosecurity.c.b;
import com.keniu.security.util.af;
import com.keniu.security.util.ap;
import com.keniu.security.util.aq;

final class q
  implements DialogInterface.OnClickListener
{
  q(FriendCallLogActivity paramFriendCallLogActivity, b paramb)
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
      Bundle localBundle = new Bundle();
      localBundle.putSerializable("id", Integer.valueOf(this.a.a()));
      localBundle.putString("address", this.a.c());
      af.a(this.b, PeopleSmsLogActivity.class, localBundle);
      continue;
      af.b(this.b, this.a.c());
      continue;
      FriendCallLogActivity.b(this.b, this.a);
      continue;
      aq localaq = new aq(this.b, (byte)0);
      localaq.a(2131428623);
      localaq.b(2131428980);
      localaq.a(17039370, new r(this));
      localaq.b(17039360, null);
      localaq.c().show();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.activity.friend.q
 * JD-Core Version:    0.6.2
 */