package com.jxphone.mosecurity.activity.friend;

import android.content.Context;
import android.content.Intent;
import android.widget.Toast;
import com.jxphone.mosecurity.activity.s;
import com.jxphone.mosecurity.c.b;
import com.jxphone.mosecurity.logic.a.d;

final class i extends s
{
  i(h paramh)
  {
  }

  public final void a(Context paramContext, String paramString1, String paramString2)
  {
    FriendActivity.s().a(paramString1);
    FriendActivity.t().b(paramString2);
    if (com.jxphone.mosecurity.logic.h.c(paramContext, FriendActivity.d(this.a.a)).b(FriendActivity.u()))
    {
      Toast.makeText(paramContext, 2131428855, 1).show();
      Intent localIntent = new Intent("com.conew.mosecurity.ACTION_PRIVATE_SPACE_CONTACTS_CHANGE");
      this.a.a.sendBroadcast(localIntent);
    }
    while (true)
    {
      return;
      Toast.makeText(paramContext, 2131428857, 1).show();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.activity.friend.i
 * JD-Core Version:    0.6.2
 */