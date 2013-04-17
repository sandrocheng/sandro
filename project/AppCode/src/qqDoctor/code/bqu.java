import android.os.Handler;
import android.os.Message;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class bqu
  implements Runnable
{
  bqu(bqs parambqs)
  {
  }

  public final void run()
  {
    List localList1 = ((aly)this.a.getAdapter()).c();
    nd localnd = nd.a();
    if (localList1.size() == bqs.k(this.a).size())
      localnd.a(26451);
    ArrayList localArrayList;
    long l;
    while (true)
    {
      localArrayList = new ArrayList();
      Iterator localIterator1 = bqs.l(this.a).iterator();
      for (l = 0L; localIterator1.hasNext(); l = l)
      {
        kw localkw2 = (kw)localIterator1.next();
        if (localList1.contains(Integer.valueOf(((aly)this.a.getAdapter()).b(localkw2))))
        {
          l += localkw2.S();
          localArrayList.add(localkw2);
          List localList2 = ((aly)this.a.getAdapter()).c();
          localList2.remove(Integer.valueOf(((aly)this.a.getAdapter()).b(localkw2)));
          ((aly)this.a.getAdapter()).a(localList2);
        }
      }
      localnd.a(26452);
    }
    Iterator localIterator2 = localArrayList.iterator();
    while (localIterator2.hasNext())
    {
      kw localkw1 = (kw)localIterator2.next();
      bqs.m(this.a).remove(localkw1);
    }
    Message localMessage = bqs.j(this.a).obtainMessage(0);
    localMessage.obj = Long.valueOf(l);
    bqs.j(this.a).sendMessage(localMessage);
    Iterator localIterator3 = localArrayList.iterator();
    while (localIterator3.hasNext())
    {
      Iterator localIterator4 = ((kw)localIterator3.next()).T().iterator();
      while (localIterator4.hasNext())
        ((File)localIterator4.next()).delete();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bqu
 * JD-Core Version:    0.6.2
 */