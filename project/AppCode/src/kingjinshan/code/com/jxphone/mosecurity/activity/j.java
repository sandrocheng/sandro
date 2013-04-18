package com.jxphone.mosecurity.activity;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import com.jxphone.mosecurity.d.n;

final class j extends n
{
  j(i parami, Context paramContext, Handler paramHandler)
  {
    super(paramContext, 2131428968, paramHandler);
  }

  public final void a()
  {
    Intent localIntent = new Intent("com.conew.mosecurity.ACTION_PRIVATE_SPACE_CONTACTS_CHANGE");
    this.a.c.sendBroadcast(localIntent);
    super.a();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.activity.j
 * JD-Core Version:    0.6.2
 */