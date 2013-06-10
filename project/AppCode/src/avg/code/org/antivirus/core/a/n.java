package org.antivirus.core.a;

import android.content.Context;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.antivirus.core.Engine;
import org.antivirus.core.EngineSettings;
import org.antivirus.core.Logger;
import org.antivirus.core.telephony.TelephonyInfo;

public final class n extends Handler
{
  boolean a = false;
  private boolean b = false;
  private boolean c = false;
  private org.antivirus.core.b.a d = null;
  private p e;
  private boolean f = false;
  private ArrayList g;
  private Map h;
  private EngineSettings i;
  private Context j;

  public n(Context paramContext, EngineSettings paramEngineSettings, org.antivirus.core.b.a parama, Looper paramLooper, List paramList, boolean paramBoolean)
  {
    super(paramLooper);
    this.j = paramContext;
    this.i = paramEngineSettings;
    this.d = parama;
    this.a = paramBoolean;
    this.g = new ArrayList();
    this.h = new HashMap();
    a(new u());
    a locala = new a();
    locala.getClass();
    a(new b(locala));
    x localx = new x();
    localx.getClass();
    a(new y(localx));
    a(new org.antivirus.core.b.j());
    c localc = new c();
    localc.getClass();
    a(new i(localc));
    localc.getClass();
    a(new h(localc));
    localc.getClass();
    a(new l(localc));
    localc.getClass();
    a(new j(localc));
    localc.getClass();
    a(new f(localc));
    localc.getClass();
    a(new g(localc));
    localc.getClass();
    a(new k(localc));
    a(new r());
    a(new w());
    a(new z());
    if (paramList != null)
    {
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
      {
        Class localClass = (Class)localIterator.next();
        try
        {
          a((v)localClass.newInstance());
        }
        catch (Exception localException)
        {
          Logger.log(localException);
        }
      }
    }
    this.e = new p(this, (byte)0);
  }

  public static void a(Engine paramEngine)
  {
    Bundle localBundle = new Bundle();
    localBundle.putInt("p", q.d.a());
    paramEngine.sendCommMessage(100, localBundle);
  }

  private void a(q paramq)
  {
    Message localMessage;
    long l;
    if (((paramq == q.c) && (!this.c)) || ((paramq == q.b) && (!this.b)))
    {
      Bundle localBundle = new Bundle();
      localBundle.putInt("p", paramq.a());
      localMessage = Message.obtain(this, 100, localBundle);
      localMessage.setTarget(this);
      if (paramq.a() < q.c.a())
        break label91;
      l = 500L;
      this.c = true;
    }
    while (true)
    {
      sendMessageDelayed(localMessage, l);
      return;
      label91: l = 600000L;
      this.b = true;
    }
  }

  private void a(v paramv)
  {
    paramv.a(this.i);
    if ((o)this.h.get(Integer.valueOf(paramv.c())) != null)
      Logger.error("client " + paramv.c() + " already exists");
    while (true)
    {
      return;
      paramv.a(this.d);
      o localo = new o(this, paramv);
      this.g.add(localo);
      this.h.put(Integer.valueOf(paramv.c()), localo);
      localo.d = paramv.b();
      if (paramv.a())
      {
        localo.b = true;
        a(localo.d);
      }
    }
  }

  public static boolean a(Context paramContext)
  {
    try
    {
      String str = Build.PRODUCT;
      if ((str != null) && (!str.equalsIgnoreCase("9774D56D682E549C")) && (!str.equalsIgnoreCase("google_sdk")))
      {
        NetworkInfo localNetworkInfo = ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo();
        if ((localNetworkInfo != null) && (localNetworkInfo.isAvailable()))
        {
          boolean bool2 = localNetworkInfo.isConnected();
          if (bool2)
          {
            bool1 = true;
            break label93;
          }
        }
        bool1 = false;
      }
    }
    catch (Exception localException)
    {
      Logger.log(localException);
      bool1 = false;
    }
    boolean bool1 = true;
    label93: return bool1;
  }

  private boolean a(o paramo)
  {
    boolean bool = paramo.a.b(this.j);
    if (bool);
    for (paramo.c = (1 + paramo.c); ; paramo.c = 0)
    {
      return bool;
      paramo.b = false;
    }
  }

  private boolean b(q paramq)
  {
    boolean bool1 = false;
    String str1 = TelephonyInfo.getUniqueId(this.j, this.i);
    if (str1 == null)
      Logger.error("no id");
    while (true)
    {
      return bool1;
      try
      {
        String str2;
        label41: URI localURI;
        if (this.i.getAWSserver())
        {
          str2 = "https://aws.droidsecurity.com/xmlrpc";
          localURI = new URI(str2);
          if (this.d == null)
            break label145;
        }
        label145: for (int k = this.d.o; ; k = 0)
        {
          localab = new ab(localURI, k, str1);
          if (a(this.j))
            break label175;
          boolean bool8 = this.f;
          bool1 = false;
          if (bool8)
            break;
          this.f = true;
          this.j.registerReceiver(this.e, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
          bool1 = false;
          break;
          str2 = "https://droidsecurity.appspot.com/secure/xmlrpc";
          break label41;
        }
      }
      catch (URISyntaxException localURISyntaxException)
      {
        Logger.log(localURISyntaxException);
        bool1 = false;
      }
      catch (Exception localException1)
      {
        ab localab;
        Logger.log(localException1);
        bool1 = false;
        continue;
        label175: Iterator localIterator = this.g.iterator();
        label187: o localo;
        v localv;
        for (boolean bool2 = true; ; bool2 = false)
        {
          do
          {
            if (!localIterator.hasNext())
              break;
            localo = (o)localIterator.next();
            localv = localo.a;
          }
          while ((!localo.b) || (localo.d != paramq));
          if (localv.a(this.j))
            break;
          localo.c = (1 + localo.c);
        }
        while (true)
        {
          try
          {
            Object localObject3;
            while (true)
            {
              if (localv.d() == null)
              {
                localo.b = false;
                localo.c = 0;
                localv.f();
                break;
              }
              localObject3 = localab.a(localv.d(), localv.f, localv.g, str1, localv.j);
              if (localObject3 == null)
              {
                new Exception("xmlRpcClient returned null");
                boolean bool6 = a(localo);
                if (!bool6)
                  break label618;
                bool7 = false;
                localv.f();
                bool2 = bool7;
                break;
              }
              try
              {
                if (!localObject3.getClass().equals(String.class))
                  break label461;
                String str3 = (String)localObject3;
                if ((TextUtils.isEmpty(str3)) || (!str3.equalsIgnoreCase("re-register")))
                  break label461;
                localo.c = (1 + localo.c);
                this.i.setUniqueId("", this.j);
                localv.f();
              }
              catch (Exception localException3)
              {
                Logger.log(localException3);
                localv.f();
              }
            }
            break;
            label461: if (localv.a(this.j, localObject3))
            {
              localo.b = false;
              localo.c = 0;
              bool7 = bool2;
              continue;
            }
            localo.c = (1 + localo.c);
            bool7 = false;
            continue;
          }
          catch (ac localac)
          {
            if (!a(localo))
              break label611;
            bool5 = false;
            if (localac.a)
              localo.c = (1 + localo.c);
            localv.f();
            bool2 = bool5;
            break label187;
          }
          catch (Exception localException2)
          {
            boolean bool3 = a(localo);
            if (!bool3)
              break label604;
            bool4 = false;
            localv.f();
            bool2 = bool4;
            break label187;
          }
          finally
          {
            localv.f();
          }
          bool1 = bool2;
          break;
          label604: boolean bool4 = bool2;
          continue;
          label611: boolean bool5 = bool2;
          continue;
          label618: boolean bool7 = bool2;
        }
      }
      finally
      {
        bool1 = false;
      }
    }
  }

  final void a()
  {
    if (this.f == true);
    while (true)
    {
      return;
      Iterator localIterator = this.g.iterator();
      while (localIterator.hasNext())
      {
        o localo = (o)localIterator.next();
        if (localo.b)
          if (localo.c < 3)
            a(localo.d);
          else
            localo.b = false;
      }
    }
  }

  public final void a(org.antivirus.core.b.a parama)
  {
    this.d = parama;
    Iterator localIterator = this.g.iterator();
    while (localIterator.hasNext())
      ((o)localIterator.next()).a.a(parama);
  }

  public final void b()
  {
    this.a = true;
  }

  public final void handleMessage(Message paramMessage)
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
        Logger.log(localException1);
        continue;
        if (m == q.c.a())
          this.c = false;
        if (m == q.b.a())
          this.b = false;
        if (m == q.d.a())
          if (n != 0)
          {
            o localo2 = (o)this.h.get(Integer.valueOf(n));
            if (localo2 != null)
            {
              localo2.d = q.d;
              b(q.d);
              localo2.d = localo2.a.b();
            }
          }
        while (true)
        {
          a();
          break;
          Logger.error("invalid client " + n);
          continue;
          b(q.c);
          b(q.b);
          continue;
          if (m == q.c.a())
          {
            this.c = false;
            b(q.c);
          }
          else if (m == q.b.a())
          {
            this.b = false;
            b(q.b);
          }
          else
          {
            Logger.error("invalid action");
          }
        }
        o localo1 = (o)this.h.get(Integer.valueOf(k));
        if (localo1 == null)
        {
          Logger.error("invalid client " + k);
        }
        else
        {
          try
          {
            if (!localo1.a.a(this.j, paramMessage))
              continue;
            if (!localo1.b)
              break label394;
            localo1.c = 0;
          }
          catch (Exception localException2)
          {
            Logger.log(localException2);
          }
          continue;
          label394: localo1.b = true;
          a(localo1.d);
          continue;
          m = 0;
          n = 0;
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.core.a.n
 * JD-Core Version:    0.6.2
 */