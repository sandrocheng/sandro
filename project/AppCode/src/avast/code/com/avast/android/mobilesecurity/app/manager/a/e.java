package com.avast.android.mobilesecurity.app.manager.a;

import android.annotation.SuppressLint;
import android.content.Context;
import android.database.Cursor;
import android.os.AsyncTask;
import android.os.AsyncTask.Status;
import com.avast.android.generic.util.m;
import java.util.HashMap;
import java.util.Map;

public class e
{
  private b a;
  private h b;
  private Map c = new HashMap();
  private Map d = new HashMap();
  private AsyncTask e;
  private int f = -1;
  private int g = -1;
  private boolean h = false;
  private int i = 15;

  public e(Context paramContext)
  {
    this.a = new b(paramContext);
  }

  public int a()
  {
    return this.f;
  }

  public int a(int paramInt)
  {
    g localg = (g)this.c.get(Integer.valueOf(paramInt));
    if (localg != null);
    for (int j = localg.a; ; j = -1)
    {
      return j;
      m.d("CachedAppsInfoprovider.getApplicationMemoryUsage(" + paramInt + ") - not found");
    }
  }

  public int a(String paramString)
  {
    Integer localInteger = (Integer)this.d.get(paramString);
    if (localInteger != null);
    for (int j = localInteger.intValue(); ; j = -1)
      return j;
  }

  @SuppressLint({"NewApi"})
  public void a(Cursor paramCursor, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if ((this.e != null) && (this.e.getStatus() == AsyncTask.Status.RUNNING))
      this.e.cancel(true);
    this.e = new f(this, paramCursor, paramInt1, paramInt2, paramInt3, paramInt4);
    com.avast.android.generic.util.b.a(this.e, new Void[0]);
  }

  public void a(h paramh)
  {
    this.b = paramh;
  }

  public int b()
  {
    return this.g;
  }

  public int b(int paramInt)
  {
    g localg = (g)this.c.get(Integer.valueOf(paramInt));
    if (localg != null);
    for (int j = localg.b; ; j = -1)
      return j;
  }

  public void c(int paramInt)
  {
    this.i = paramInt;
  }

  public boolean c()
  {
    return this.h;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.manager.a.e
 * JD-Core Version:    0.6.2
 */