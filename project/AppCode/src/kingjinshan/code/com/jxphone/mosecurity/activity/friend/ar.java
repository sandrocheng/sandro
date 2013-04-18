package com.jxphone.mosecurity.activity.friend;

import android.app.ProgressDialog;
import com.jxphone.mosecurity.c.l;
import com.jxphone.mosecurity.logic.a.j;
import java.util.List;

final class ar extends Thread
{
  ar(ap paramap, List paramList, ProgressDialog paramProgressDialog)
  {
  }

  public final void run()
  {
    for (int i = 0; i < this.a.size(); i++)
    {
      FriendSmsActivity.d(this.c.a).b(((l)this.a.get(i)).a());
      this.b.setProgress(i);
    }
    this.b.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.activity.friend.ar
 * JD-Core Version:    0.6.2
 */