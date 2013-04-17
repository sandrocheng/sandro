import android.os.Handler;
import android.os.Message;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class brc
  implements Runnable
{
  brc(bra parambra)
  {
  }

  public final void run()
  {
    List localList1 = ((amb)this.a.getAdapter()).c();
    nd localnd = nd.a();
    if (localList1.size() == bra.h(this.a).size())
      localnd.a(26453);
    ArrayList localArrayList;
    long l;
    while (true)
    {
      localArrayList = new ArrayList();
      Iterator localIterator1 = bra.i(this.a).iterator();
      for (l = 0L; localIterator1.hasNext(); l = l)
      {
        kw localkw = (kw)localIterator1.next();
        if (localList1.contains(Integer.valueOf(((amb)this.a.getAdapter()).b(localkw))))
        {
          l += localkw.S();
          localArrayList.addAll(localkw.T());
          localkw.n(0);
          localkw.a(null);
          List localList2 = ((amb)this.a.getAdapter()).c();
          localList2.remove(Integer.valueOf(((amb)this.a.getAdapter()).b(localkw)));
          ((amb)this.a.getAdapter()).a(localList2);
        }
      }
      localnd.a(26454);
    }
    Message localMessage = bra.g(this.a).obtainMessage(1);
    localMessage.obj = Long.valueOf(l);
    bra.g(this.a).sendMessage(localMessage);
    Iterator localIterator2 = localArrayList.iterator();
    while (localIterator2.hasNext())
      ((File)localIterator2.next()).delete();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     brc
 * JD-Core Version:    0.6.2
 */