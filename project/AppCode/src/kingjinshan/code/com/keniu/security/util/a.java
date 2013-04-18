package com.keniu.security.util;

import android.os.Handler;
import android.os.Message;

public final class a extends Thread
{
  private b a;
  private c b = null;
  private Handler c;
  private int d;
  private d e;

  private a(Handler paramHandler)
  {
    this.a = null;
    this.c = paramHandler;
    this.d = -1;
    this.e = null;
  }

  private a(Handler paramHandler, int paramInt)
  {
    this.a = null;
    this.c = paramHandler;
    this.d = paramInt;
    this.e = null;
  }

  private a(b paramb, Handler paramHandler)
  {
    this(paramb, paramHandler, -1);
  }

  public a(b paramb, Handler paramHandler, int paramInt)
  {
    this.a = paramb;
    this.c = paramHandler;
    this.d = paramInt;
    this.e = null;
  }

  private a(b paramb, Handler paramHandler, int paramInt, d paramd)
  {
    this.a = paramb;
    this.c = paramHandler;
    this.d = paramInt;
    this.e = paramd;
  }

  private a(c paramc, Handler paramHandler, int paramInt)
  {
    this.b = paramc;
    this.a = null;
    this.c = paramHandler;
    this.d = paramInt;
    this.e = null;
  }

  public static b a(long paramLong)
  {
    return new j(paramLong);
  }

  public final void run()
  {
    try
    {
      if (this.a != null)
        this.a.b();
      c localc = this.b;
      localObject1 = null;
      if (localc != null)
      {
        Object localObject2 = this.b.a();
        localObject1 = localObject2;
      }
      Message localMessage = Message.obtain();
      localMessage.what = this.d;
      if (this.b != null)
        localMessage.obj = localObject1;
      if (this.c != null)
        this.c.sendMessage(localMessage);
      return;
    }
    catch (Exception localException)
    {
      while (true)
      {
        Object localObject1;
        if (this.e != null)
        {
          localObject1 = null;
        }
        else
        {
          localException.printStackTrace();
          localObject1 = null;
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.util.a
 * JD-Core Version:    0.6.2
 */