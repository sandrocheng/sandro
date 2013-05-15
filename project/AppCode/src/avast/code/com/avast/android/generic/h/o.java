package com.avast.android.generic.h;

import a.a.a.a.a.a;
import android.os.Bundle;
import com.avast.android.generic.service.AvastService;
import com.avast.android.generic.util.t;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.concurrent.ConcurrentHashMap;

public class o
{
  private AvastService a;
  private ConcurrentHashMap b = new ConcurrentHashMap();
  private ConcurrentHashMap c = new ConcurrentHashMap();
  private int d = 0;
  private Object e = new Object();

  public o(AvastService paramAvastService)
  {
    this.a = paramAvastService;
  }

  private void a(Class paramClass, String paramString, Bundle paramBundle)
  {
    synchronized (this.e)
    {
      this.d = (1 + this.d);
      t.a("AvastGeneric", this.a, "EventsRunning at " + this.d + " (handleEvent2 begin)");
    }
    try
    {
      l locall = (l)paramClass.newInstance();
      locall.a(this.a);
      locall.a(this.a, paramString, paramBundle, new p(this));
      return;
      localObject2 = finally;
      throw localObject2;
    }
    catch (Exception localException)
    {
      while (true)
      {
        a.a().a("Exception in initializing event", localException);
        synchronized (this.e)
        {
          this.d = (-1 + this.d);
          t.a("AvastGeneric", this.a, "EventsRunning at " + this.d + " (handleEvent2 error)");
          if (a())
            continue;
          this.a.b();
        }
      }
    }
  }

  public void a(String paramString, Bundle paramBundle)
  {
    t.a("AvastGeneric", this.a, "Performing action '" + paramString + "'");
    synchronized (this.e)
    {
      this.d = (1 + this.d);
      t.a("AvastGeneric", this.a, "EventsRunning at " + this.d + " (handleEvent begin)");
      if (!this.c.containsKey(paramString))
        break label160;
      Iterator localIterator2 = ((LinkedList)this.c.get(paramString)).iterator();
      if (localIterator2.hasNext())
        a((Class)localIterator2.next(), paramString, paramBundle);
    }
    this.c.remove(paramString);
    label160: if (this.b.containsKey(paramString))
    {
      Iterator localIterator1 = ((LinkedList)this.b.get(paramString)).iterator();
      while (localIterator1.hasNext())
        a((Class)localIterator1.next(), paramString, paramBundle);
    }
    synchronized (this.e)
    {
      this.d = (-1 + this.d);
      t.a("AvastGeneric", this.a, "EventsRunning at " + this.d + " (handleEvent end)");
      if (!a())
        this.a.b();
      return;
    }
  }

  public void a(String paramString, Class paramClass)
  {
    a(paramString, paramClass, false);
  }

  public void a(String paramString, Class paramClass, boolean paramBoolean)
  {
    if (paramBoolean)
      if (this.c.containsKey(paramString))
        ((LinkedList)this.c.get(paramString)).add(paramClass);
    while (true)
    {
      return;
      LinkedList localLinkedList2 = new LinkedList();
      this.c.put(paramString, localLinkedList2);
      continue;
      if (this.b.containsKey(paramString))
      {
        ((LinkedList)this.b.get(paramString)).add(paramClass);
      }
      else
      {
        LinkedList localLinkedList1 = new LinkedList();
        localLinkedList1.add(paramClass);
        this.b.put(paramString, localLinkedList1);
      }
    }
  }

  public boolean a()
  {
    boolean bool1 = true;
    t.a("AvastGeneric", this.a, "Checking task handler population state");
    while (true)
    {
      synchronized (this.e)
      {
        AvastService localAvastService = this.a;
        StringBuilder localStringBuilder = new StringBuilder().append("Checked task handler population state (");
        if (this.d > 0)
        {
          bool2 = bool1;
          t.a("AvastGeneric", localAvastService, bool2 + ")");
          if (this.d <= 0)
            break label94;
          return bool1;
        }
      }
      boolean bool2 = false;
      continue;
      label94: bool1 = false;
    }
  }

  public void b()
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.h.o
 * JD-Core Version:    0.6.2
 */