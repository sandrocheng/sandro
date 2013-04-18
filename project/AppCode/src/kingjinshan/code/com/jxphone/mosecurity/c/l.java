package com.jxphone.mosecurity.c;

import android.content.Context;
import android.database.Cursor;
import java.io.Serializable;
import org.json.JSONObject;

public final class l
  implements Serializable
{
  public static final int a = -2;
  public static final int b = -1;
  public static final int c = 0;
  public static final int d = 1;
  public static final int e = 2;
  public static final int f = 0;
  public static final int g = 1;
  public static final int h = 2;
  public static final int i = 3;
  public static final int j = 4;
  public static final int k = 5;
  public static final int l = 6;
  public static final int m = 0;
  public static final int n = 1;
  private static final long o = 2626959029951557661L;
  private int p;
  private int q;
  private k r = k.a;
  private String s;
  private long t;
  private int u;
  private int v = -2;
  private c w = c.a;
  private boolean x = false;

  public static l a(Cursor paramCursor)
  {
    l locall = new l();
    locall.p = paramCursor.getInt(0);
    locall.a(paramCursor.getString(1));
    locall.s = paramCursor.getString(2);
    locall.t = paramCursor.getLong(3);
    locall.v = paramCursor.getInt(4);
    locall.u = paramCursor.getShort(5);
    locall.w = c.values()[paramCursor.getInt(6)];
    return locall;
  }

  public static l a(JSONObject paramJSONObject)
  {
    l locall = new l();
    locall.p = paramJSONObject.getInt("id");
    locall.a(paramJSONObject.getString("address"));
    locall.s = paramJSONObject.getString("body");
    locall.t = paramJSONObject.getLong("date");
    locall.v = paramJSONObject.getInt("status");
    locall.u = paramJSONObject.getInt("type");
    locall.w = c.values()[paramJSONObject.getInt("list_type")];
    return locall;
  }

  private void a(boolean paramBoolean)
  {
    this.x = paramBoolean;
  }

  private boolean j()
  {
    return this.x;
  }

  public final int a()
  {
    return this.p;
  }

  public final String a(Context paramContext)
  {
    return this.r.a(paramContext);
  }

  public final void a(int paramInt)
  {
    this.p = paramInt;
  }

  public final void a(long paramLong)
  {
    this.t = paramLong;
  }

  public final void a(c paramc)
  {
    this.w = paramc;
  }

  public final void a(String paramString)
  {
    this.r = new k(paramString);
  }

  public final String b()
  {
    return this.r.a();
  }

  public final void b(int paramInt)
  {
    this.u = paramInt;
  }

  public final void b(String paramString)
  {
    this.s = paramString;
  }

  public final String c()
  {
    return this.s;
  }

  public final void c(int paramInt)
  {
    this.v = paramInt;
  }

  public final long d()
  {
    return this.t;
  }

  public final void d(int paramInt)
  {
    this.q = paramInt;
  }

  public final c e()
  {
    return this.w;
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool;
    if ((paramObject instanceof l))
    {
      l locall = (l)paramObject;
      if (((locall.r.a().equals(this.r.a())) || (locall.r.b().equals(this.r.b()))) && (locall.t == this.t) && (locall.w.equals(this.w)) && (locall.u == this.u) && (locall.v == this.v) && (locall.s.equals(this.s)))
        bool = true;
    }
    while (true)
    {
      return bool;
      bool = false;
      continue;
      bool = false;
    }
  }

  public final int f()
  {
    return this.u;
  }

  public final int g()
  {
    return this.v;
  }

  public final String h()
  {
    return this.r.b();
  }

  public final int hashCode()
  {
    return 31 * (31 * (31 * (31 * (31 * (217 + this.r.a().hashCode()) + (int)this.t) + this.u) + this.w.ordinal()) + this.v) + this.s.hashCode();
  }

  public final int i()
  {
    return this.q;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.c.l
 * JD-Core Version:    0.6.2
 */