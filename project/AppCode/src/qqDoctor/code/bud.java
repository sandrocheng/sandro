import com.tencent.tmsecure.module.aresengine.ContactEntity;
import com.tencent.tmsecure.module.aresengine.DefaultSysDao;
import com.tencent.tmsecure.module.aresengine.DefaultSysDao.c;
import com.tencent.tmsecure.module.aresengine.DefaultSysDao.d;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public final class bud
  implements Runnable
{
  public bud(DefaultSysDao.c paramc)
  {
  }

  public final void run()
  {
    if (this.a.a());
    while (true)
    {
      return;
      DefaultSysDao.c localc1 = this.a;
      ArrayList localArrayList1;
      ArrayList localArrayList2;
      Iterator localIterator1;
      label69: Iterator localIterator2;
      int j;
      synchronized (localc1.a)
      {
        localc1.d = true;
        List localList = this.a.g.getAllContact();
        localArrayList1 = new ArrayList();
        localArrayList2 = new ArrayList();
        localIterator1 = localList.iterator();
        if (!localIterator1.hasNext())
          synchronized (this.a.a)
          {
            this.a.b = new DefaultSysDao.d[localArrayList1.size()];
            localIterator2 = localArrayList1.iterator();
            j = 0;
            label120: if (!localIterator2.hasNext())
            {
              DefaultSysDao.c localc2 = this.a;
              DefaultSysDao.d[] arrayOfd2 = this.a.b;
              if (arrayOfd2.length > 1)
                Arrays.sort(arrayOfd2, new bug());
              localc2.b = arrayOfd2;
            }
          }
      }
      try
      {
        Thread.currentThread();
        Thread.sleep(2000L);
        localc3 = this.a;
      }
      catch (InterruptedException localInterruptedException)
      {
        synchronized (localc3.a)
        {
          DefaultSysDao.c localc3;
          localc3.d = false;
          if (this.a.e <= 0)
            continue;
          this.a.e = 0;
          new Thread(this).start();
          continue;
          localObject1 = finally;
          throw localObject1;
          ContactEntity localContactEntity = (ContactEntity)localIterator1.next();
          int i = a.k(localContactEntity.phonenum);
          if (localArrayList2.contains(Integer.valueOf(i)))
            break label69;
          localArrayList1.add(localContactEntity);
          localArrayList2.add(Integer.valueOf(i));
          break label69;
          int k = a.k(((ContactEntity)localIterator2.next()).phonenum);
          DefaultSysDao.d locald = new DefaultSysDao.d((byte)0);
          locald.a = k;
          DefaultSysDao.d[] arrayOfd1 = this.a.b;
          int m = j + 1;
          arrayOfd1[j] = locald;
          j = m;
          break label120;
          localObject2 = finally;
          throw localObject2;
          localInterruptedException = localInterruptedException;
          localInterruptedException.printStackTrace();
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bud
 * JD-Core Version:    0.6.2
 */