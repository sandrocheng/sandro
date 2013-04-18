package com.jxphone.mosecurity.activity.friend;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import com.jxphone.mosecurity.d.n;

final class l extends n
{
  l(j paramj, Context paramContext, Handler paramHandler)
  {
    super(paramContext, 2131428967, paramHandler);
  }

  public final void a()
  {
    Intent localIntent = new Intent("com.conew.mosecurity.ACTION_PRIVATE_SPACE_CONTACTS_CHANGE");
    this.a.a.sendBroadcast(localIntent);
    super.a();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.activity.friend.l
 * JD-Core Version:    0.6.2
 */