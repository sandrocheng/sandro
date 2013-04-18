package com.jxphone.mosecurity.activity.friend;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;

final class az
  implements DialogInterface.OnClickListener
{
  az(FriendTabActivity paramFriendTabActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    Intent localIntent = new Intent(this.a, FriendNameAndIconActivity.class);
    this.a.startActivity(localIntent);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.activity.friend.az
 * JD-Core Version:    0.6.2
 */