import android.content.Context;
import android.os.Handler;
import android.os.Process;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class tr extends Thread
{
  tr(tq paramtq, String paramString)
  {
    super(paramString);
  }

  public final void run()
  {
    Process.setThreadPriority(10);
    int i = 0;
    int j = 0;
    int k = 0;
    ArrayList localArrayList;
    List localList;
    int m;
    int n;
    try
    {
      this.a.c.k = ((int)(5.0D * Math.random()));
      localArrayList = new ArrayList();
      localArrayList.add(Integer.valueOf(1));
      boolean bool1 = this.a.c.b;
      i = 0;
      k = 0;
      if (bool1)
        localArrayList.add(Integer.valueOf(2));
      localList = this.a.c.e.a(this.a.a, localArrayList);
      int i1 = localList.size();
      i = 0;
      k = 0;
      if (i1 <= 0)
        break label794;
      mk localmk1 = (mk)localList.get(0);
      String str2 = oo.a.a(localmk1, localmk1.g);
      i = 0;
      k = 0;
      if (str2 == null)
        break label366;
      boolean bool3 = str2.equals("");
      i = 0;
      k = 0;
      if (bool3)
        break label366;
      Iterator localIterator2 = localList.iterator();
      while (true)
      {
        boolean bool4 = localIterator2.hasNext();
        i = 0;
        k = 0;
        if (!bool4)
          break;
        ((mk)localIterator2.next()).name = str2;
      }
    }
    catch (Exception localException1)
    {
      m = i;
      n = 1;
      if (k != 0)
        this.a.c.l.sendEmptyMessage(2);
      localException1.printStackTrace();
    }
    Context localContext = this.a.c.a;
    String str1;
    if ((n == 0) || (m > 0))
    {
      str1 = this.a.c.a.getString(2131428676) + m + this.a.c.a.getString(2131428682);
      ha.a(localContext, str1);
      if (((n == 0) || (m > 0)) && (this.a.b != null))
        this.a.b.a(null);
      return;
      label366: int i2 = localList.size();
      i = 0;
      if (i2 <= 0)
        break label828;
      k = 1;
      label384: new StringBuilder("smslogs.size()").append(localList.size()).toString();
      i = 0;
      if (k != 0)
      {
        this.a.c.i = false;
        boolean bool2 = this.a.c.j;
        i = 0;
        if (bool2 == true)
          this.a.c.j = false;
      }
    }
    while (true)
    {
      while (true)
      {
        long l3;
        try
        {
          Thread.sleep(1200L);
          this.a.c.j = true;
          this.a.c.l.sendEmptyMessage(0);
          l1 = System.currentTimeMillis();
          this.a.c.k = (5 + (int)(10.0D * Math.random()));
          int i4 = this.a.c.k;
          int i5 = 100 - this.a.c.k;
          int i6 = localList.size();
          Iterator localIterator1 = localList.iterator();
          int i7 = 0;
          if (localIterator1.hasNext())
          {
            mk localmk2 = (mk)localIterator1.next();
            if (this.a.c.j)
            {
              i7++;
              if (this.a.c.d.a(localmk2, false) <= 0L)
                break label833;
              this.a.c.e.remove(localmk2);
              i++;
              this.a.c.k = ((int)(i4 + i5 * (i7 / i6)));
              continue;
            }
          }
        }
        catch (InterruptedException localInterruptedException)
        {
          long l1;
          localInterruptedException.printStackTrace();
          i = 0;
          continue;
          long l2 = System.currentTimeMillis();
          if (l2 - l1 < 1000L)
            l3 = l1 + 1000L - l2;
        }
        try
        {
          Thread.sleep(l3);
          label712: this.a.c.l.sendEmptyMessage(2);
          n = j;
          m = i;
          break;
          this.a.c.d.a(localList);
          this.a.c.e.b(this.a.a, localArrayList);
          int i3 = localList.size();
          m = i3;
          n = 0;
          break;
          label794: n = 0;
          m = 0;
          break;
          str1 = this.a.c.a.getString(2131428678);
        }
        catch (Exception localException2)
        {
          break label712;
        }
      }
      label828: k = 0;
      break label384;
      label833: j = 1;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     tr
 * JD-Core Version:    0.6.2
 */