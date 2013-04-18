package com.jxphone.mosecurity.activity.friend;

import android.app.ProgressDialog;
import com.jxphone.mosecurity.c.j;
import com.jxphone.mosecurity.logic.a.g;
import java.util.List;

final class v extends Thread
{
  v(t paramt, List paramList, ProgressDialog paramProgressDialog)
  {
  }

  public final void run()
  {
    for (int i = 0; i < this.a.size(); i++)
    {
      FriendCallLogActivity.d(this.c.a).c(((j)this.a.get(i)).a());
      this.b.setProgress(i);
    }
    this.b.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.activity.friend.v
 * JD-Core Version:    0.6.2
 */