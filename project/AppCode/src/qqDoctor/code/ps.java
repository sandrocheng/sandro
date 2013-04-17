import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

final class ps
  implements Runnable
{
  ps(po.c paramc)
  {
  }

  public final void run()
  {
    po.c localc = this.a;
    long l = System.currentTimeMillis();
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator1 = localc.m.b.entrySet().iterator();
    label116: 
    while (localIterator1.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator1.next();
      if (l - ((Long)localEntry.getValue()).longValue() > 180000L);
      for (int i = 1; ; i = 0)
      {
        if (i == 0)
          break label116;
        localArrayList.add(localEntry.getKey());
        break;
      }
    }
    Iterator localIterator2 = localArrayList.iterator();
    while (localIterator2.hasNext())
    {
      String str = (String)localIterator2.next();
      localc.m.b.remove(str);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ps
 * JD-Core Version:    0.6.2
 */