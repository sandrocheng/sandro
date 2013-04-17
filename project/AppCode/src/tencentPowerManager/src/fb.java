import android.os.Binder;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

abstract class fb<T extends fh> extends Binder
{
  private List<T> a;
  private List<T> b;
  private List<T> c;
  private List<T> d;
  private List<T> e;
  private byte f = 3;
  private List<WeakReference<fi<T>>> g = new ArrayList(this.f);
  private fg<T> h;
  private byte[] i = new byte[0];

  private void a(List<T> paramList)
  {
    byte[] arrayOfByte = this.i;
    if (paramList != null);
    while (true)
    {
      Iterator localIterator1;
      ArrayList localArrayList;
      Iterator localIterator2;
      try
      {
        if (paramList.size() == 0)
          break;
        localIterator1 = paramList.iterator();
        if (!localIterator1.hasNext())
        {
          e();
          localArrayList = new ArrayList();
          localIterator2 = paramList.iterator();
          if (localIterator2.hasNext())
            break label203;
          if (localArrayList.size() > 0)
            c(localArrayList);
        }
      }
      finally
      {
      }
      fh localfh1 = (fh)localIterator1.next();
      f(localfh1);
      if (!this.c.remove(localfh1))
        this.d.remove(localfh1);
      if ((!this.b.contains(localfh1)) && (!this.a.contains(localfh1)))
      {
        this.b.add(localfh1);
        localfh1.d = -1;
        continue;
        label203: fh localfh2 = (fh)localIterator2.next();
        if ((localfh2.d == -1) && (!this.a.contains(localfh2)))
          localArrayList.add(localfh2);
      }
    }
  }

  private void b(List<T> paramList)
  {
    byte[] arrayOfByte = this.i;
    if (paramList != null);
    while (true)
    {
      Iterator localIterator1;
      ArrayList localArrayList;
      Iterator localIterator2;
      try
      {
        if (paramList.size() == 0)
          break;
        localIterator1 = paramList.iterator();
        if (!localIterator1.hasNext())
        {
          e();
          localArrayList = new ArrayList();
          localIterator2 = paramList.iterator();
          if (localIterator2.hasNext())
            break label211;
          if (localArrayList.size() > 0)
            c(localArrayList);
        }
      }
      finally
      {
      }
      fh localfh1 = (fh)localIterator1.next();
      g(localfh1);
      if (!this.c.remove(localfh1))
        this.d.remove(localfh1);
      if (this.b.contains(localfh1))
      {
        localfh1.d = -1;
      }
      else if (this.a.contains(localfh1))
      {
        localfh1.d = 0;
      }
      else
      {
        this.b.add(localfh1);
        localfh1.d = -1;
        continue;
        label211: fh localfh2 = (fh)localIterator2.next();
        if ((localfh2.d == -1) && (!this.a.contains(localfh2)))
          localArrayList.add(localfh2);
      }
    }
  }

  private void c(List<T> paramList)
  {
    int j;
    if (paramList.size() > 1)
    {
      j = 1;
      if ((this.g != null) && (this.g.size() != 0))
        break label37;
    }
    while (true)
    {
      return;
      j = 0;
      break;
      label37: ArrayList localArrayList = new ArrayList(this.g);
      switch (((fh)paramList.get(0)).d)
      {
      default:
        break;
      case -1:
        Iterator localIterator6 = localArrayList.iterator();
        while (localIterator6.hasNext())
          if (((fi)((WeakReference)localIterator6.next()).get() != null) && (j == 0))
            paramList.get(0);
      case 0:
        fg localfg4 = this.h;
        paramList.get(0);
        localfg4.a();
        Iterator localIterator5 = localArrayList.iterator();
        while (localIterator5.hasNext())
        {
          fi localfi5 = (fi)((WeakReference)localIterator5.next()).get();
          if (localfi5 != null)
            localfi5.f((fh)paramList.get(0));
        }
      case 1:
        Iterator localIterator4;
        if (j != 0)
          localIterator4 = localArrayList.iterator();
        while (localIterator4.hasNext())
        {
          fi localfi4 = (fi)((WeakReference)localIterator4.next()).get();
          if (localfi4 != null)
          {
            if (j != 0)
            {
              localfi4.a(paramList);
              continue;
              fg localfg3 = this.h;
              paramList.get(0);
              localfg3.a();
              break label243;
            }
            localfi4.c((fh)paramList.get(0));
          }
        }
      case 3:
        fg localfg2 = this.h;
        paramList.get(0);
        localfg2.a();
        h((fh)paramList.get(0));
        Iterator localIterator3 = localArrayList.iterator();
        while (true)
        {
          if (!localIterator3.hasNext())
          {
            e();
            break;
          }
          fi localfi3 = (fi)((WeakReference)localIterator3.next()).get();
          if (localfi3 != null)
            localfi3.a((fh)paramList.get(0));
        }
      case 2:
        fg localfg1 = this.h;
        paramList.get(0);
        localfg1.a();
        Iterator localIterator2 = localArrayList.iterator();
        while (true)
        {
          if (!localIterator2.hasNext())
          {
            e();
            break;
          }
          fi localfi2 = (fi)((WeakReference)localIterator2.next()).get();
          if (localfi2 != null)
            localfi2.d((fh)paramList.get(0));
        }
      case 4:
        label243: Iterator localIterator1 = localArrayList.iterator();
        while (localIterator1.hasNext())
        {
          fi localfi1 = (fi)((WeakReference)localIterator1.next()).get();
          if (localfi1 != null)
            if (j != 0)
              localfi1.b(paramList);
            else
              localfi1.b((fh)paramList.get(0));
        }
      }
    }
  }

  private void e()
  {
    int j = 0;
    while (true)
    {
      fh localfh1;
      try
      {
        if (j >= this.a.size())
        {
          if (this.a.size() < this.f)
          {
            int k = this.b.size();
            if (k > 0)
              break label163;
          }
          return;
        }
        localfh1 = (fh)this.a.get(j);
        if (localfh1.d == 3)
        {
          if (!this.e.contains(localfh1))
            this.e.add(localfh1);
          this.a.remove(j);
          continue;
        }
      }
      finally
      {
      }
      if (localfh1.d == 2)
      {
        if (!this.d.contains(localfh1))
          this.d.add(localfh1);
        this.a.remove(j);
        continue;
        label163: fh localfh2 = (fh)this.b.get(0);
        this.b.remove(0);
        if (!this.a.contains(localfh2))
        {
          this.a.add(localfh2);
          if (localfh2.k != null)
          {
            localfh2.d = 0;
            ArrayList localArrayList = new ArrayList(1);
            localArrayList.add(localfh2);
            c(localArrayList);
            localfh2.k.start();
          }
        }
      }
      else
      {
        j++;
      }
    }
  }

  public List<T> a()
  {
    ArrayList localArrayList = new ArrayList(this.a);
    localArrayList.addAll(this.b);
    localArrayList.addAll(this.c);
    localArrayList.addAll(this.e);
    localArrayList.addAll(this.d);
    return localArrayList;
  }

  public void a(byte paramByte)
  {
    try
    {
      this.f = paramByte;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void a(fg<T> paramfg)
  {
    this.h = paramfg;
    this.a = new ArrayList();
    this.b = new ArrayList();
    this.c = new ArrayList();
    this.e = new ArrayList();
    this.d = new ArrayList();
    List localList;
    if (this.h != null)
    {
      localList = this.h.b();
      if ((localList != null) && (localList.size() != 0))
        break label89;
    }
    while (true)
    {
      return;
      label89: Iterator localIterator = localList.iterator();
      while (localIterator.hasNext())
      {
        fh localfh = (fh)localIterator.next();
        switch (localfh.d)
        {
        default:
          localfh.d = 1;
          if (!this.c.contains(localfh))
            this.c.add(localfh);
          break;
        case 3:
          if (!this.e.contains(localfh))
            this.e.add(localfh);
          break;
        case 1:
          if (!this.c.contains(localfh))
            this.c.add(localfh);
          break;
        case 2:
          if (!this.d.contains(localfh))
            this.d.add(localfh);
          break;
        }
      }
    }
  }

  public final void a(T paramT)
  {
    synchronized (this.i)
    {
      ArrayList localArrayList = new ArrayList(1);
      localArrayList.add(paramT);
      a(localArrayList);
      return;
    }
  }

  public void a(fi<T> paramfi)
  {
    this.g.add(0, new WeakReference(paramfi));
  }

  public List<T> b()
  {
    return this.b;
  }

  public final void b(T paramT)
  {
    synchronized (this.i)
    {
      ArrayList localArrayList = new ArrayList(1);
      localArrayList.add(paramT);
      b(localArrayList);
      return;
    }
  }

  public void b(fi<T> paramfi)
  {
    if (paramfi == null);
    label60: 
    while (true)
    {
      return;
      for (int j = 0; ; j++)
      {
        if (j >= this.g.size())
          break label60;
        WeakReference localWeakReference = (WeakReference)this.g.get(j);
        if (localWeakReference.get() == paramfi)
        {
          this.g.remove(localWeakReference);
          break;
        }
      }
    }
  }

  public List<T> c()
  {
    return this.a;
  }

  public final void c(T paramT)
  {
    synchronized (this.i)
    {
      if ((!this.b.remove(paramT)) && (!this.a.remove(paramT)) && (!this.c.remove(paramT)) && (!this.e.remove(paramT)))
        this.d.remove(paramT);
      paramT.d = 4;
      paramT.i = 0.0F;
      paramT.h = 0L;
      ArrayList localArrayList = new ArrayList(1);
      localArrayList.add(paramT);
      c(localArrayList);
      e();
      return;
    }
  }

  public final void d()
  {
    if (this.b != null)
      this.b.clear();
    if (this.a != null)
      this.a.clear();
    if (this.c != null)
      this.c.clear();
    if (this.e != null)
      this.e.clear();
    if (this.d != null)
      this.d.clear();
  }

  final void d(T paramT)
  {
    ArrayList localArrayList = new ArrayList(1);
    localArrayList.add(paramT);
    c(localArrayList);
  }

  final void e(T paramT)
    throws eq
  {
    try
    {
      this.h.a();
      if ((this.g == null) || (this.g.size() == 0))
        return;
    }
    catch (Exception localException)
    {
      throw new eq(-7056, "breakable download IOException: " + localException.getMessage() + " update db exception");
    }
    Iterator localIterator = new ArrayList(this.g).iterator();
    while (localIterator.hasNext())
    {
      fi localfi = (fi)((WeakReference)localIterator.next()).get();
      if (localfi != null)
        localfi.e(paramT);
    }
  }

  protected abstract void f(T paramT);

  protected abstract void g(T paramT);

  protected void h(T paramT)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     fb
 * JD-Core Version:    0.6.2
 */