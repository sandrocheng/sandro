import android.content.Context;
import android.os.Handler;
import android.os.Process;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class ti extends Thread
{
  ti(th paramth)
  {
  }

  public final void run()
  {
    Process.setThreadPriority(10);
    int i = 0;
    int j = 0;
    ArrayList localArrayList1;
    ArrayList localArrayList2;
    int k;
    try
    {
      this.a.b.k = ((int)(5.0D * Math.random()));
      localArrayList1 = new ArrayList();
      localArrayList2 = new ArrayList();
      Iterator localIterator1 = this.a.a.iterator();
      while (true)
      {
        boolean bool1 = localIterator1.hasNext();
        j = 0;
        i = 0;
        if (!bool1)
          break;
        String str2 = (String)localIterator1.next();
        localArrayList1.addAll(this.a.b.c.a(str2));
        localArrayList2.addAll(this.a.b.d.a(str2));
      }
    }
    catch (Exception localException1)
    {
      if (j != 0)
        this.a.b.l.sendEmptyMessage(2);
      localException1.printStackTrace();
      k = 1;
    }
    String str1;
    label195: long l1;
    label258: label396: int i6;
    if ((k == 0) || (i > 0))
      if (i == 0)
      {
        str1 = this.a.b.a.getString(2131427395);
        ha.c(this.a.b.a, str1 + i + this.a.b.a.getString(2131428669));
        return;
        if (localArrayList2.size() <= 0)
          break label813;
        j = 1;
        i = 0;
        if (j != 0)
        {
          this.a.b.i = true;
          boolean bool3 = this.a.b.j;
          i = 0;
          if (bool3 == true)
            this.a.b.j = false;
          try
          {
            Thread.sleep(1200L);
            this.a.b.j = true;
            this.a.b.l.sendEmptyMessage(0);
            l1 = System.currentTimeMillis();
            int i1 = localArrayList1.size();
            i = 0;
            if (i1 > 0)
            {
              boolean bool4 = this.a.b.c.c(localArrayList1);
              i = 0;
              if (!bool4)
                break label818;
              i = 0 + localArrayList1.size();
              k = 0;
              this.a.b.k = (5 + (int)(10.0D * Math.random()));
              if (localArrayList2.size() > 0)
              {
                int i2 = this.a.b.k;
                int i3 = 100 - this.a.b.k;
                int i4 = localArrayList2.size();
                Iterator localIterator2 = localArrayList2.iterator();
                int i5 = 0;
                i6 = k;
                while (true)
                {
                  label478: if (!localIterator2.hasNext())
                    break label832;
                  mk localmk = (mk)localIterator2.next();
                  if (!this.a.b.j)
                    break label832;
                  i5++;
                  if (!this.a.b.d.a(localmk))
                    break;
                  i++;
                  this.a.b.k = ((int)(i2 + i3 * (i5 / i4)));
                }
              }
            }
          }
          catch (InterruptedException localInterruptedException)
          {
            while (true)
            {
              localInterruptedException.printStackTrace();
              i = 0;
            }
          }
        }
      }
    while (true)
    {
      while (true)
      {
        long l2 = System.currentTimeMillis();
        long l3;
        if (l2 - l1 < 1000L)
          l3 = l1 + 1000L - l2;
        try
        {
          Thread.sleep(l3);
          this.a.b.l.sendEmptyMessage(2);
          break;
          int m = localArrayList1.size();
          i = 0;
          if (m > 0)
          {
            boolean bool2 = this.a.b.c.c(localArrayList1);
            i = 0;
            if (bool2)
            {
              i = 0 + localArrayList1.size();
              k = 0;
            }
            while (localArrayList2.size() > 0)
            {
              if (!this.a.b.d.b(localArrayList2))
                break label735;
              int n = localArrayList2.size();
              i += n;
              break;
              k = 1;
              i = 0;
            }
            label735: k = 1;
            break;
            str1 = this.a.b.a.getString(2131428668);
            break label195;
            ha.c(this.a.b.a, this.a.b.a.getString(2131428670));
          }
        }
        catch (Exception localException2)
        {
          while (true)
          {
            continue;
            k = 0;
            i = 0;
          }
        }
      }
      k = 0;
      i = 0;
      break label396;
      label813: j = 0;
      break label258;
      label818: k = 1;
      i = 0;
      break label396;
      i6 = 1;
      break label478;
      label832: k = i6;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ti
 * JD-Core Version:    0.6.2
 */