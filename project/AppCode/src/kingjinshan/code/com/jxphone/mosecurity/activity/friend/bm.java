package com.jxphone.mosecurity.activity.friend;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.ListView;
import android.widget.Toast;
import com.jxphone.mosecurity.c.l;
import com.keniu.security.util.af;
import com.keniu.security.util.aq;
import com.keniu.security.util.k;

final class bm
  implements DialogInterface.OnClickListener
{
  bm(PeopleSmsLogActivity paramPeopleSmsLogActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    l locall = (l)PeopleSmsLogActivity.i(this.a).getItemAtPosition(PeopleSmsLogActivity.h(this.a));
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
      this.a.a(locall);
      continue;
      af.f(this.a, locall.c());
      continue;
      af.g(this.a, locall.c());
      Toast.makeText(this.a, 2131427916, 0).show();
      continue;
      bn localbn = new bn(this, locall);
      k.a(this.a, 2131428981, localbn).d();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.activity.friend.bm
 * JD-Core Version:    0.6.2
 */