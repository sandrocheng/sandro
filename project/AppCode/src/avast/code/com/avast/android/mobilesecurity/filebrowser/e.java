package com.avast.android.mobilesecurity.filebrowser;

import java.util.Iterator;
import java.util.List;

class e
  implements Runnable
{
  e(d paramd, List paramList, long paramLong)
  {
  }

  public void run()
  {
    Iterator localIterator = this.a.iterator();
    while (localIterator.hasNext())
    {
      f localf = (f)localIterator.next();
      a.b(this.c.b, localf, Long.valueOf(this.b));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.filebrowser.e
 * JD-Core Version:    0.6.2
 */