package com.ijinshan.bootmanager.activity;

import com.ijinshan.bootmanager.b.a;
import java.util.List;

final class g extends Thread
{
  g(AutoBootMangerActivity paramAutoBootMangerActivity, a parama)
  {
  }

  public final void run()
  {
    if (AutoBootMangerActivity.a(this.b, this.a))
    {
      this.a.a(false);
      AutoBootMangerActivity.p(this.b).add(this.a);
    }
    AutoBootMangerActivity.a(3, AutoBootMangerActivity.o(this.b));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.bootmanager.activity.g
 * JD-Core Version:    0.6.2
 */