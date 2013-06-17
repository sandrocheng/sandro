package com.avg.toolkit.b;

import android.content.Context;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class a extends Handler
{
  boolean a = false;
  private boolean b = false;
  private boolean c = false;
  private com.avg.toolkit.e.a d = null;
  private com.avg.toolkit.UID.a e;
  private d f;
  private boolean g = false;
  private ArrayList h;
  private Map i;
  private Context j;

  public a(Context paramContext, com.avg.toolkit.e.a parama, Looper paramLooper, com.avg.toolkit.UID.a parama1)
  {
    super(paramLooper);
    this.j = paramContext;
    this.d = parama;
    this.e = parama1;
    this.a = false;
    this.h = new ArrayList();
    this.i = new HashMap();
    this.f = new d(this, null);
  }

  private void a(g paramg)
  {
    if ((c)this.i.get(Integer.valueOf(paramg.b_())) != null)
      com.avg.toolkit.f.a.a("client " + paramg.b_() + " already exists");
    while (true)
    {
      return;
      paramg.c(this.d);
      c localc = new c(this, paramg);
      this.h.add(localc);
      this.i.put(Integer.valueOf(paramg.b_()), localc);
      localc.d = paramg.a();
      if (paramg.a(this.j))
      {
        localc.b = true;
        a(localc.d);
      }
    }
  }

  private boolean a(c paramc, Exception paramException)
  {
    boolean bool = paramc.a.b(this.j, paramException);
    if (bool);
    for (paramc.c = (1 + paramc.c); ; paramc.c = 0)
    {
      return bool;
      paramc.b = false;
    }
  }

  private boolean b(e parame)
  {
    boolean bool1 = false;
    String str1 = this.e.a();
    if (str1 == null)
      com.avg.toolkit.f.a.a("no uid");
    do
      while (true)
      {
        return bool1;
        try
        {
          j localj2 = new h(this.j).a(this.d, str1);
          j localj1 = localj2;
          bool1 = false;
          Iterator localIterator;
          boolean bool2;
          c localc;
          g localg;
          boolean bool3;
          if (localj1 != null)
          {
            if (f.a(this.j))
              break label156;
            boolean bool6 = this.g;
            bool1 = false;
            if (!bool6)
            {
              this.g = true;
              this.j.registerReceiver(this.f, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
              bool1 = false;
            }
          }
        }
        catch (URISyntaxException localURISyntaxException)
        {
          do
          {
            com.avg.toolkit.f.a.a(localURISyntaxException);
            localj1 = null;
          }
          while (0 != 0);
          bool1 = false;
        }
        catch (Exception localException1)
        {
          do
          {
            com.avg.toolkit.f.a.a(localException1);
            localj1 = null;
          }
          while (0 != 0);
          bool1 = false;
        }
        finally
        {
          bool1 = false;
        }
      }
    while (0 == 0);
    throw localObject1;
    label156: localIterator = this.h.iterator();
    bool2 = true;
    label168: if (localIterator.hasNext())
    {
      localc = (c)localIterator.next();
      localg = localc.a;
      if ((!localc.b) || (localc.d != parame))
        break label621;
      if (!localg.b(this.j))
        localc.c = (1 + localc.c);
    }
    label322: label478: label621: for (bool3 = false; ; bool3 = bool2)
    {
      while (true)
      {
        bool2 = bool3;
        break label168;
        try
        {
          if (localg.c() == null)
          {
            localc.b = false;
            localc.c = 0;
            localg.g();
            break label168;
          }
          Context localContext = this.j;
          String str2 = localg.f();
          String str3 = localg.c();
          Object[] arrayOfObject = localg.f;
          HashMap localHashMap = localg.g;
          String str4;
          Object localObject3;
          if (localg.d())
          {
            str4 = "unknown";
            localObject3 = localj1.a(localContext, str2, str3, arrayOfObject, localHashMap, str4, localg.i);
            if (localObject3 != null)
              break label394;
            boolean bool5 = a(localc, new Exception("xmlRpcClient returned null"));
            if (bool5)
              bool2 = false;
          }
          while (true)
          {
            while (true)
            {
              localg.g();
              bool3 = bool2;
              break;
              str4 = str1;
              break label322;
              try
              {
                if (!localObject3.getClass().equals(String.class))
                  break label478;
                String str5 = (String)localObject3;
                if ((TextUtils.isEmpty(str5)) || (!str5.equalsIgnoreCase("re-register")))
                  break label478;
                localc.c = (1 + localc.c);
                this.e.d();
                localg.g();
                bool1 = false;
              }
              catch (Exception localException3)
              {
                com.avg.toolkit.f.a.a(localException3);
                localg.g();
                bool1 = false;
              }
            }
            break;
            if (!localg.a(this.j, localObject3))
              break label555;
            localc.b = false;
            localc.c = 0;
          }
        }
        catch (k localk)
        {
          while (true)
          {
            if (a(localc, localk))
              bool2 = false;
            if (localk.a)
              localc.c = (1 + localc.c);
            localg.g();
            bool3 = bool2;
            break;
            localc.c = (1 + localc.c);
            bool2 = false;
          }
        }
        catch (Exception localException2)
        {
          boolean bool4 = a(localc, localException2);
          if (bool4)
            bool2 = false;
          localg.g();
          bool3 = bool2;
        }
        finally
        {
          localg.g();
        }
      }
      bool1 = bool2;
      break;
    }
  }

  void a()
  {
    if (this.g == true);
    while (true)
    {
      return;
      Iterator localIterator = this.h.iterator();
      while (localIterator.hasNext())
      {
        c localc = (c)localIterator.next();
        if (localc.b)
          if (localc.c < 3)
            a(localc.d);
          else
            localc.b = false;
      }
    }
  }

  void a(e parame)
  {
    Message localMessage;
    long l;
    if (((parame == e.c) && (!this.c)) || ((parame == e.b) && (!this.b)))
    {
      Bundle localBundle = new Bundle();
      localBundle.putInt("p", parame.a());
      localMessage = Message.obtain(this, 100, localBundle);
      localMessage.setTarget(this);
      if (parame.a() < e.c.a())
        break label92;
      l = 500L;
      this.c = true;
    }
    while (true)
    {
      sendMessageDelayed(localMessage, l);
      return;
      label92: l = 600000L;
      this.b = true;
    }
  }

  public void a(com.avg.toolkit.e.a parama)
  {
    this.d = parama;
    Iterator localIterator = this.h.iterator();
    while (localIterator.hasNext())
      ((c)localIterator.next()).a.c(parama);
  }

  public void a(List paramList)
  {
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      Class localClass = (Class)localIterator.next();
      try
      {
        a((g)localClass.newInstance());
      }
      catch (Exception localException)
      {
        com.avg.toolkit.f.a.a(localException);
      }
    }
  }

  public void b()
  {
    this.a = true;
    Bundle localBundle = new Bundle();
    localBundle.putInt("p", e.d.a());
    Message localMessage = Message.obtain(this, 100, localBundle);
    localMessage.setTarget(this);
    sendMessage(localMessage);
  }

  public void handleMessage(Message paramMessage)
  {
    try
    {
      k = paramMessage.what;
      if (paramMessage.obj != null)
      {
        int i1 = ((Bundle)paramMessage.obj).getInt("p");
        int i2 = ((Bundle)paramMessage.obj).getInt("wc");
        m = i1;
        n = i2;
        if (k == 100)
          if (!this.a)
          {
            this.c = false;
            this.b = false;
            return;
          }
      }
    }
    catch (Exception localException1)
    {
      while (true)
      {
        int k;
        int m;
        int n;
        this.c = false;
        this.b = false;
        com.avg.toolkit.f.a.a(localException1);
        continue;
        if (m == e.c.a())
          this.c = false;
        if (m == e.b.a())
          this.b = false;
        if (m == e.d.a())
          if (n != 0)
          {
            c localc2 = (c)this.i.get(Integer.valueOf(n));
            if (localc2 != null)
            {
              localc2.d = e.d;
              b(e.d);
              localc2.d = localc2.a.a();
            }
          }
        while (true)
        {
          a();
          break;
          com.avg.toolkit.f.a.a("invalid client " + n);
          continue;
          b(e.c);
          b(e.b);
          continue;
          if (m == e.c.a())
          {
            this.c = false;
            b(e.c);
          }
          else if (m == e.b.a())
          {
            this.b = false;
            b(e.b);
          }
          else
          {
            com.avg.toolkit.f.a.a("invalid action");
          }
        }
        c localc1 = (c)this.i.get(Integer.valueOf(k));
        if (localc1 == null)
        {
          com.avg.toolkit.f.a.a("invalid client " + k);
        }
        else
        {
          try
          {
            if (!localc1.a.a(this.j, paramMessage))
              continue;
            if (!localc1.b)
              break label401;
            localc1.c = 0;
          }
          catch (Exception localException2)
          {
            com.avg.toolkit.f.a.a(localException2);
          }
          continue;
          label401: localc1.b = true;
          a(localc1.d);
          continue;
          m = 0;
          n = 0;
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.toolkit.b.a
 * JD-Core Version:    0.6.2
 */