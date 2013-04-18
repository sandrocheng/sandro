package com.ijinshan.bootmanager.activity;

import com.keniu.security.f.ab;
import java.io.File;

final class d extends Thread
{
  d(AutoBootMangerActivity paramAutoBootMangerActivity)
  {
  }

  public final void run()
  {
    try
    {
      AutoBootMangerActivity.a(this.a, false);
      AutoBootMangerActivity.j(this.a);
      if (!AutoBootMangerActivity.k(this.a))
        AutoBootMangerActivity.l(this.a);
      if (AutoBootMangerActivity.m(this.a) >= 14)
      {
        ab.a();
        ab.a(new File(AutoBootMangerActivity.n(this.a)), this.a);
      }
      return;
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.printStackTrace();
        AutoBootMangerActivity.a(1, AutoBootMangerActivity.o(this.a));
      }
    }
    finally
    {
      AutoBootMangerActivity.a(1, AutoBootMangerActivity.o(this.a));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.bootmanager.activity.d
 * JD-Core Version:    0.6.2
 */