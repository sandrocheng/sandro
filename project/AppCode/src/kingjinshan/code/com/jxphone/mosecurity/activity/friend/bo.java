package com.jxphone.mosecurity.activity.friend;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.jxphone.mosecurity.c.b;
import com.jxphone.mosecurity.c.c;
import com.jxphone.mosecurity.logic.a.j;

final class bo
  implements DialogInterface.OnClickListener
{
  bo(PeopleSmsLogActivity paramPeopleSmsLogActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    PeopleSmsLogActivity.b(this.a).b(PeopleSmsLogActivity.p().c(), c.b);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.activity.friend.bo
 * JD-Core Version:    0.6.2
 */