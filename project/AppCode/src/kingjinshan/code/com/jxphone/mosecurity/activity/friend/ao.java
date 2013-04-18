package com.jxphone.mosecurity.activity.friend;

import android.app.ProgressDialog;
import com.jxphone.mosecurity.c.l;
import com.jxphone.mosecurity.logic.a.j;
import java.util.List;

final class ao extends Thread
{
  ao(FriendSmsActivity paramFriendSmsActivity, List paramList, ProgressDialog paramProgressDialog)
  {
  }

  public final void run()
  {
    for (int i = 0; i < this.a.size(); i++)
    {
      FriendSmsActivity.d(this.c).d((l)this.a.get(i));
      this.b.setProgress(i);
    }
    this.b.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.activity.friend.ao
 * JD-Core Version:    0.6.2
 */