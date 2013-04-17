import QQPIM.STNetLocal;
import android.os.Handler;
import android.os.Message;
import java.util.ArrayList;
import java.util.HashMap;

final class wl
  implements Runnable
{
  wl(wh paramwh, fl paramfl)
  {
  }

  public final void run()
  {
    long l = System.currentTimeMillis() + hashCode();
    this.b.d.put(Long.valueOf(l), Boolean.valueOf(true));
    int i = 10;
    STNetLocal localSTNetLocal = new STNetLocal();
    localSTNetLocal.nNetType = wh.a(this.a);
    localSTNetLocal.strbeginTime = System.currentTimeMillis();
    localSTNetLocal.vecData = new ArrayList();
    while (true)
    {
      int j;
      synchronized (this.b.e)
      {
        this.b.e.put(this.a, localSTNetLocal);
        new StringBuilder("^^***beginDetect:").append(this.a).append(" ").append(localSTNetLocal.strbeginTime).toString();
        j = i - 1;
        if (i > 0)
          synchronized (this.b.d)
          {
            if ((this.b.d.containsKey(Long.valueOf(l))) && (((Boolean)this.b.d.get(Long.valueOf(l))).booleanValue()))
            {
              String str = wh.c();
              new StringBuilder("^^").append(l).append(":").append(str).toString();
              localSTNetLocal.vecData.add(str);
            }
          }
      }
      try
      {
        Thread.currentThread();
        Thread.sleep(3000L);
        i = j;
        continue;
        localObject1 = finally;
        throw localObject1;
        wh.a(this.b, j);
        if (wh.a(this.b))
          this.b.h.obtainMessage(1).sendToTarget();
        return;
        localObject2 = finally;
        throw localObject2;
      }
      catch (InterruptedException localInterruptedException)
      {
        localInterruptedException.printStackTrace();
        i = j;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     wl
 * JD-Core Version:    0.6.2
 */