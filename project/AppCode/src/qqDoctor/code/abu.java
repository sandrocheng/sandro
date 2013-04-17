import android.os.Process;
import java.util.ArrayList;

public abstract class abu
{
  final ArrayList<mp> a = new ArrayList();
  boolean b = false;
  int c;
  private abu.b d = new abu.b((byte)0);
  private Thread e;

  public abu()
  {
    this.e = new Thread(this.d);
    this.e.start();
  }

  public abu(String paramString)
  {
    this.e = new Thread(this.d, paramString);
    this.e.start();
  }

  public void a()
  {
    synchronized (this.a)
    {
      this.a.clear();
      return;
    }
  }

  public abstract void a(mp parammp);

  protected void b()
  {
  }

  public final boolean b(mp parammp)
  {
    while (true)
    {
      synchronized (this.a)
      {
        if (!this.a.contains(parammp))
        {
          this.a.add(parammp);
          synchronized (this.e)
          {
            try
            {
              if (this.e.getState().equals(Thread.State.TERMINATED))
              {
                this.e = new Thread(this.d);
                this.e.start();
              }
              this.e.notify();
              bool = true;
              return bool;
            }
            catch (Exception localException)
            {
              localException.printStackTrace();
              continue;
            }
          }
        }
      }
      boolean bool = false;
    }
  }

  protected final void c()
  {
    while ((!this.e.isAlive()) || (!this.b))
      Thread.yield();
    try
    {
      Process.setThreadPriority(this.c, 10);
      label32: return;
    }
    catch (Exception localException)
    {
      break label32;
    }
  }

  final mp d()
  {
    synchronized (this.a)
    {
      int i = this.a.size();
      mp localmp = null;
      if (i > 0)
        localmp = (mp)this.a.remove(i - 1);
      return localmp;
    }
  }

  public final void e()
  {
    try
    {
      a();
      this.b = false;
      if (this.e.isAlive());
      synchronized (this.e)
      {
        this.e.notify();
        label35: return;
      }
    }
    catch (Exception localException)
    {
      break label35;
    }
  }

  final boolean f()
  {
    while (true)
    {
      boolean bool;
      synchronized (this.e)
      {
        if (!this.b)
        {
          bool = false;
          return bool;
        }
      }
      try
      {
        this.e.wait();
        label29: bool = true;
        continue;
        localObject = finally;
        throw localObject;
      }
      catch (InterruptedException localInterruptedException)
      {
        break label29;
      }
    }
  }

  public static abstract interface a
  {
    public abstract void onTaskFinish(mp parammp);
  }

  final class b
    implements Runnable
  {
    private b()
    {
    }

    public final void run()
    {
      while (true)
      {
        try
        {
          abu.this.c = Process.myTid();
          abu.this.b = true;
          if (!abu.this.b)
          {
            abu.this.b();
            return;
            mp localmp = abu.this.d();
            if (localmp != null)
              abu.this.a(localmp);
          }
          if (abu.this.a.size() > 0)
          {
            if (abu.this.b)
              continue;
            abu.this.b();
            continue;
          }
        }
        finally
        {
        }
        if (!abu.this.f())
          abu.this.b();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     abu
 * JD-Core Version:    0.6.2
 */