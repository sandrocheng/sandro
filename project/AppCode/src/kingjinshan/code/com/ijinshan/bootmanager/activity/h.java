package com.ijinshan.bootmanager.activity;

import com.ijinshan.bootmanager.b.a;
import java.util.List;

final class h extends Thread
{
  h(AutoBootMangerActivity paramAutoBootMangerActivity, a parama)
  {
  }

  public final void run()
  {
    if (AutoBootMangerActivity.b(this.b, this.a))
    {
      this.a.a(true);
      AutoBootMangerActivity.p(this.b).add(this.a);
    }
    AutoBootMangerActivity.a(5, AutoBootMangerActivity.o(this.b));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.bootmanager.activity.h
 * JD-Core Version:    0.6.2
 */