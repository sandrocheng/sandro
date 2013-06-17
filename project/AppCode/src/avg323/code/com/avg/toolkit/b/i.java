package com.avg.toolkit.b;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import java.net.URISyntaxException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class i extends Handler
{
  private com.avg.toolkit.e.a a = null;
  private Map b;
  private Context c;
  private com.avg.toolkit.UID.a d;

  public i(Context paramContext, com.avg.toolkit.e.a parama, Looper paramLooper, com.avg.toolkit.UID.a parama1)
  {
    super(paramLooper);
    this.c = paramContext;
    this.a = parama;
    this.d = parama1;
    this.b = new HashMap();
  }

  private boolean a(g paramg)
  {
    String str1 = this.d.a();
    boolean bool;
    if (str1 == null)
    {
      com.avg.toolkit.f.a.a("no id");
      bool = paramg.a(this.c, new Exception("serialNum == null"));
    }
    while (true)
    {
      return bool;
      j localj1;
      try
      {
        j localj2 = new h(this.c).a(this.a, str1);
        localj1 = localj2;
        if (localj1 == null)
        {
          bool = paramg.a(this.c, new Exception("xmlRpcClient == null"));
          continue;
        }
      }
      catch (URISyntaxException localURISyntaxException)
      {
        com.avg.toolkit.f.a.a(localURISyntaxException);
        localj1 = null;
      }
      catch (Exception localException1)
      {
        com.avg.toolkit.f.a.a(localException1);
        localj1 = null;
      }
      finally
      {
        if (0 == 0)
        {
          bool = paramg.a(this.c, new Exception("xmlRpcClient == null"));
          continue;
        }
      }
      if (!f.a(this.c))
      {
        bool = false;
      }
      else
      {
        if (paramg.b(this.c));
        try
        {
          if (paramg.c() == null)
          {
            bool = true;
          }
          else
          {
            Context localContext = this.c;
            String str2 = paramg.f();
            String str3 = paramg.c();
            Object[] arrayOfObject = paramg.f;
            HashMap localHashMap = paramg.g;
            if (paramg.d())
              str1 = "anon";
            Object localObject2 = localj1.a(localContext, str2, str3, arrayOfObject, localHashMap, str1, paramg.i);
            if (localObject2 != null)
            {
              try
              {
                if (!localObject2.getClass().equals(String.class))
                  break label363;
                String str4 = (String)localObject2;
                if ((TextUtils.isEmpty(str4)) || (!str4.equalsIgnoreCase("re-register")))
                  break label363;
                this.d.d();
                bool = false;
              }
              catch (Exception localException3)
              {
                com.avg.toolkit.f.a.a(localException3);
                bool = false;
              }
              continue;
              label363: bool = paramg.a(this.c, localObject2);
            }
            else
            {
              paramg.b(this.c, new Exception("xmlRpcClient returned null"));
              bool = false;
            }
          }
        }
        catch (Exception localException2)
        {
          paramg.b(this.c, localException2);
          bool = false;
        }
      }
    }
  }

  public void a(List paramList)
  {
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      Class localClass = (Class)localIterator.next();
      try
      {
        g localg = (g)localClass.newInstance();
        this.b.put(Integer.valueOf(localg.b_()), localClass);
      }
      catch (Exception localException)
      {
        com.avg.toolkit.f.a.a(localException);
      }
    }
  }

  public void handleMessage(Message paramMessage)
  {
    try
    {
      i = paramMessage.what;
      if (paramMessage.obj != null)
        ((Bundle)paramMessage.obj).getInt("wc");
    }
    catch (Exception localException1)
    {
      try
      {
        int i;
        g localg = (g)((Class)this.b.get(Integer.valueOf(i))).newInstance();
        localg.c(this.a);
        localg.a(this.c, paramMessage);
        a(localg);
        while (true)
        {
          return;
          localException1 = localException1;
          com.avg.toolkit.f.a.a(localException1);
        }
      }
      catch (Exception localException2)
      {
        while (true)
          com.avg.toolkit.f.a.a(localException2);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.toolkit.b.i
 * JD-Core Version:    0.6.2
 */