package com.keniu.security.main.a;

import java.util.Iterator;
import java.util.List;

final class c extends Thread
{
  c(a parama)
  {
  }

  public final void run()
  {
    Iterator localIterator = a.a(this.a).iterator();
    while (localIterator.hasNext())
    {
      com.ijinshan.bootmanager.b.a locala = (com.ijinshan.bootmanager.b.a)localIterator.next();
      a.a(locala);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.main.a.c
 * JD-Core Version:    0.6.2
 */