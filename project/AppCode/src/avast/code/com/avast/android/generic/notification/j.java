package com.avast.android.generic.notification;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.app.Service;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build.VERSION;
import android.support.v4.app.NotificationCompat.Builder;
import com.avast.android.generic.ad;
import com.avast.android.generic.ae;
import com.avast.android.generic.e;
import com.avast.android.generic.s;
import com.avast.android.generic.u;
import com.avast.android.generic.util.b;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public abstract class j
{
  private Context a;
  private NotificationManager b;
  private java.text.DateFormat c;
  private Uri d;
  private ae e;
  private Notification f;
  private int g;
  private LinkedList h;
  private Map i;
  private o j;

  protected j(Uri paramUri, Context paramContext)
  {
    this.a = paramContext.getApplicationContext();
    this.b = ((NotificationManager)paramContext.getSystemService("notification"));
    this.c = android.text.format.DateFormat.getTimeFormat(paramContext);
    this.e = ((ae)ad.a(paramContext, ae.class));
    this.d = paramUri;
    this.h = new LinkedList();
    this.i = new HashMap();
    if (Build.VERSION.SDK_INT >= 14);
    for (this.j = new p(this, null); ; this.j = new q(this, null))
      return;
  }

  private void c(a parama)
  {
    int k;
    if ((parama == null) && (this.f != null))
    {
      k = 1;
      if ((parama == null) && (!this.h.isEmpty()))
        parama = (a)this.i.get(this.h.getLast());
      if (parama != null)
        break label100;
      if (!this.e.Q())
        break label92;
      this.f = this.j.a();
    }
    while (true)
    {
      if (k != 0)
        this.f.tickerText = null;
      return;
      k = 0;
      break;
      label92: this.f = null;
      continue;
      label100: if (!this.h.contains(Long.valueOf(parama.a)))
        this.h.add(Long.valueOf(parama.a));
      this.i.put(Long.valueOf(parama.a), parama);
      d(parama);
      this.f = this.j.a(parama);
    }
  }

  private void d(a parama)
  {
    if (parama != null)
    {
      if ((0x2 & parama.f) <= 0)
        break label32;
      this.a.getContentResolver().notifyChange(e.a(this.d), null);
    }
    while (true)
    {
      return;
      label32: b.a(new l(this, parama), new Void[0]);
    }
  }

  private NotificationCompat.Builder h()
  {
    Intent localIntent = new Intent("android.intent.action.VIEW", e.a(this.d));
    localIntent.setFlags(335544320);
    PendingIntent localPendingIntent = PendingIntent.getActivity(this.a, 0, localIntent, 134217728);
    this.g = this.e.R();
    int k = s.a;
    if (this.g == 2)
      k = s.c;
    NotificationCompat.Builder localBuilder = new NotificationCompat.Builder(this.a);
    localBuilder.setSmallIcon(k);
    localBuilder.setContentIntent(localPendingIntent);
    localBuilder.setPriority(0);
    return localBuilder;
  }

  public abstract int a(int paramInt);

  public void a()
  {
    try
    {
      b.a(new k(this), new Void[0]);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void a(long paramLong)
  {
    while (true)
    {
      try
      {
        if (!this.h.isEmpty())
        {
          long l = ((Long)this.h.getLast()).longValue();
          this.h.remove(Long.valueOf(paramLong));
          this.i.remove(Long.valueOf(paramLong));
          b.a(new m(this, paramLong), new Void[0]);
          if (l != paramLong)
            break label126;
          if ((this.h.isEmpty()) && (!this.e.Q()))
          {
            this.b.cancel(u.a);
            this.f = null;
          }
        }
        else
        {
          return;
        }
        b();
        continue;
      }
      finally
      {
      }
      label126: b();
    }
  }

  public void a(Service paramService, a parama)
  {
    try
    {
      StringBuilder localStringBuilder = new StringBuilder().append("AvastNotificationManager: start foreground ");
      if (parama == null);
      Long localLong;
      for (Object localObject2 = null; ; localObject2 = localLong)
      {
        com.avast.android.generic.util.m.c(localObject2);
        c(parama);
        paramService.startForeground(u.a, this.f);
        return;
        localLong = Long.valueOf(parama.a);
      }
    }
    finally
    {
    }
  }

  public abstract void a(Context paramContext);

  public abstract void a(Context paramContext, Intent paramIntent);

  public void a(a parama)
  {
    try
    {
      c(parama);
      if (this.f != null)
        this.b.notify(u.a, this.f);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void b()
  {
    try
    {
      a(null);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void b(Service paramService, a parama)
  {
    try
    {
      StringBuilder localStringBuilder = new StringBuilder().append("AvastNotificationManager: stopForeground ");
      Object localObject2;
      if (parama == null)
      {
        localObject2 = null;
        com.avast.android.generic.util.m.c(localObject2);
        paramService.stopForeground(true);
        if (parama == null)
          break label67;
        b(parama);
      }
      while (true)
      {
        return;
        localObject2 = Long.valueOf(parama.a);
        break;
        label67: b();
      }
    }
    finally
    {
    }
  }

  public void b(a parama)
  {
    try
    {
      a(parama.a);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void c()
  {
    try
    {
      Iterator localIterator = this.i.entrySet().iterator();
      while (localIterator.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)localIterator.next();
        if ((0x2 & ((a)localEntry.getValue()).f) == 0)
        {
          localIterator.remove();
          this.h.remove(localEntry.getKey());
        }
      }
    }
    finally
    {
    }
    b.a(new n(this), new Void[0]);
    if ((this.h.isEmpty()) && (!this.e.Q()))
    {
      this.f = null;
      this.b.cancel(u.a);
    }
    while (true)
    {
      return;
      b();
    }
  }

  List d()
  {
    ArrayList localArrayList;
    try
    {
      localArrayList = new ArrayList();
      ListIterator localListIterator = this.h.listIterator(this.h.size());
      if (localListIterator.hasPrevious())
      {
        long l = ((Long)localListIterator.previous()).longValue();
        localArrayList.add(this.i.get(Long.valueOf(l)));
      }
    }
    finally
    {
    }
    return localArrayList;
  }

  public abstract int e();

  public abstract int f();

  public Uri g()
  {
    return this.d;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.notification.j
 * JD-Core Version:    0.6.2
 */