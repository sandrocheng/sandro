package com.antivirus.core.scanners;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.TreeMap;

class b
  implements j
{
  b(a parama, j paramj)
  {
  }

  public void a(h paramh, c paramc)
  {
    a.a(this.b)[paramc.ordinal()] = a.b(this.b)[paramc.ordinal()].a;
    a.b(this.b)[paramc.ordinal()] = null;
    d locald = new d(this.b, paramh);
    Thread localThread = new Thread(locald);
    localThread.setName("LogSecurityThreats");
    localThread.start();
    try
    {
      localThread.join(2500L);
      label83: locald.a();
      if ((!d.a(locald)) && (paramh.c != null) && (paramh.c.c != null) && (paramh.c.c.size() > 0))
      {
        Bundle localBundle2 = new Bundle();
        localBundle2.putStringArrayList("basenames", new ArrayList(paramh.c.c));
        localBundle2.putSerializable("detection_info", new TreeMap(paramh.c.e));
        this.b.a(2006, localBundle2);
      }
      if ((!d.b(locald)) && (paramh.f != null) && (paramh.f.c != null) && (paramh.f.c.size() > 0))
      {
        Bundle localBundle1 = new Bundle();
        localBundle1.putStringArrayList("basenames", new ArrayList(paramh.f.c));
        localBundle1.putSerializable("detection_info", new TreeMap(paramh.f.e));
        this.b.a(2006, localBundle1);
      }
      if (paramh.c != null)
        paramh.c.b();
      if (paramh.f != null)
        paramh.f.b();
      if (c.a.equals(paramc))
        paramh.b(this.b.b);
      this.a.a(paramh, paramc);
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      break label83;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.core.scanners.b
 * JD-Core Version:    0.6.2
 */