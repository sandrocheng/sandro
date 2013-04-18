package com.ijinshan.bootmanager.activity;

import com.ijinshan.bootmanager.b.a;
import java.util.List;

final class m extends Thread
{
  m(l paraml)
  {
  }

  public final void run()
  {
    if (AutoBootMangerActivity.a(this.a.a, l.a(this.a)))
    {
      l.a(this.a).a(false);
      AutoBootMangerActivity.p(this.a.a).add(l.a(this.a));
    }
    AutoBootMangerActivity.a(3, AutoBootMangerActivity.o(this.a.a));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.bootmanager.activity.m
 * JD-Core Version:    0.6.2
 */