package com.ijinshan.bootmanager.activity;

import com.ijinshan.bootmanager.b.a;
import java.util.Iterator;
import java.util.List;

final class k extends Thread
{
  k(j paramj)
  {
  }

  public final void run()
  {
    Iterator localIterator = AutoBootMangerActivity.b(this.a.a).iterator();
    while (localIterator.hasNext())
    {
      a locala = (a)localIterator.next();
      if ((!"com.ijinshan.mguard".equals(locala.c())) && (!locala.c().startsWith("com.ijinshan.kbatterydoctor")) && (!locala.c().startsWith("com.ijinshan.duba")) && (!locala.c().startsWith("com.ijinshan.mPrivacy")) && (AutoBootMangerActivity.a(this.a.a, locala)))
      {
        locala.a(false);
        AutoBootMangerActivity.p(this.a.a).add(locala);
      }
    }
    AutoBootMangerActivity.a(3, AutoBootMangerActivity.o(this.a.a));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.bootmanager.activity.k
 * JD-Core Version:    0.6.2
 */