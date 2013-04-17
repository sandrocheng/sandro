import QQPIM.SoftListType;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import com.tencent.tmsecure.module.applist.AppListManager;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Queue;
import java.util.concurrent.LinkedBlockingQueue;

final class bmw
  implements Runnable
{
  bmw(bmp parambmp)
  {
  }

  public final void run()
  {
    int i;
    List localList1;
    if (!Environment.getExternalStorageState().equals("mounted"))
    {
      bmp.a(this.a, 90);
      i = 0;
      Message localMessage1 = bmp.i(this.a).obtainMessage();
      localMessage1.what = 0;
      localMessage1.arg1 = 2131429653;
      bmp.j(this.a).sendMessage(localMessage1);
      bmp.k(this.a).sendEmptyMessage(8);
      localList1 = bmp.l(this.a).c.a(0);
      bmp.l(this.a).e(localList1);
      bmp.b(this.a, localList1.size());
      if (bmp.m(this.a))
        break label139;
    }
    label139: label163: label966: label993: label997: 
    while (true)
    {
      return;
      bmp.a(this.a, 40);
      i = 1;
      break;
      int j;
      List localList3;
      if ((System.currentTimeMillis() - ho.a().ca()) / 1000L < 1296000L)
      {
        j = 1;
        if ((!bmp.n(this.a)) || (j == 0) || (!bmp.m(this.a)))
          break label993;
        localList3 = bmp.l(this.a).c.a(1);
        bmp.l(this.a).e(localList3);
        bmp.c(this.a, localList3.size());
      }
      for (List localList2 = localList3; ; localList2 = null)
      {
        while (true)
        {
          if (!bmp.m(this.a))
            break label997;
          bmp.l(this.a);
          Iterator localIterator1 = localList1.iterator();
          if (localIterator1.hasNext())
          {
            kw localkw2 = (kw)localIterator1.next();
            if (!bmp.m(this.a))
              break;
            int k;
            if (bmp.l(this.a).b.contains(localkw2.getPackageName(), SoftListType.BLACKLIST_WITHPLUGIN))
            {
              localkw2.h(3);
              k = 1;
              if ((k == 0) && (!localkw2.getPackageName().equals("com.qq.AppService")))
                this.a.a(localkw2);
            }
            try
            {
              Thread.sleep(10L);
              Message localMessage7 = bmp.o(this.a).obtainMessage();
              localMessage7.what = 1;
              localMessage7.obj = localkw2;
              bmp.p(this.a).sendMessage(localMessage7);
              break label262;
              j = 0;
              break label163;
              k = 0;
            }
            catch (InterruptedException localInterruptedException2)
            {
              while (true)
                localInterruptedException2.printStackTrace();
            }
          }
        }
        if ((bmp.n(this.a)) && (j != 0) && (bmp.m(this.a)))
        {
          Message localMessage5 = bmp.q(this.a).obtainMessage();
          localMessage5.what = 0;
          localMessage5.arg1 = 2131429651;
          bmp.r(this.a).sendMessage(localMessage5);
          Iterator localIterator3 = localList2.iterator();
          while (true)
            if (localIterator3.hasNext())
            {
              kw localkw1 = (kw)localIterator3.next();
              if (!bmp.m(this.a))
                break;
              if (bmp.l(this.a).b.contains(localkw1.getPackageName(), SoftListType.BLACKLIST_ROM))
                localkw1.h(4);
              try
              {
                Thread.sleep(10L);
                Message localMessage6 = bmp.s(this.a).obtainMessage();
                localMessage6.what = 1;
                localMessage6.obj = localkw1;
                bmp.t(this.a).sendMessage(localMessage6);
              }
              catch (InterruptedException localInterruptedException1)
              {
                while (true)
                  localInterruptedException1.printStackTrace();
              }
            }
        }
        if (!bmp.m(this.a))
          break;
        if (i != 0)
        {
          Message localMessage2 = bmp.u(this.a).obtainMessage();
          localMessage2.what = 0;
          localMessage2.arg1 = 2131429652;
          bmp.v(this.a).sendMessage(localMessage2);
          ArrayList localArrayList;
          try
          {
            Message localMessage3 = bmp.w(this.a).obtainMessage();
            localMessage3.what = 9;
            bmp.x(this.a).sendMessage(localMessage3);
            localArrayList = new ArrayList();
            bmx localbmx = new bmx(localArrayList);
            LinkedBlockingQueue localLinkedBlockingQueue = new LinkedBlockingQueue();
            File[] arrayOfFile1 = Environment.getExternalStorageDirectory().listFiles(localbmx);
            if (arrayOfFile1 != null)
              localLinkedBlockingQueue.addAll(Arrays.asList(arrayOfFile1));
            while ((localLinkedBlockingQueue.size() != 0) && (bmp.m(this.a)))
            {
              File[] arrayOfFile2 = ((File)localLinkedBlockingQueue.poll()).listFiles(localbmx);
              if (arrayOfFile2 != null)
                localLinkedBlockingQueue.addAll(Arrays.asList(arrayOfFile2));
            }
          }
          catch (Exception localException)
          {
            localException.printStackTrace();
          }
          break;
          if (!bmp.m(this.a))
            break;
          bmp.d(this.a, localArrayList.size());
          if ((bmp.y(this.a) == 0) && (bmp.m(this.a)))
          {
            Message localMessage4 = bmp.z(this.a).obtainMessage();
            localMessage4.what = 2;
            bmp.A(this.a).sendMessage(localMessage4);
            bmp.B(this.a).sendEmptyMessage(3);
            break;
          }
          Iterator localIterator2 = localArrayList.iterator();
          while (true)
          {
            if (!localIterator2.hasNext())
              break label966;
            String str = (String)localIterator2.next();
            if (!bmp.m(this.a))
              break;
            bmp.a(this.a, str);
          }
          break;
        }
        if (!bmp.m(this.a))
          break;
        bmp.C(this.a).sendEmptyMessage(3);
        break;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bmw
 * JD-Core Version:    0.6.2
 */