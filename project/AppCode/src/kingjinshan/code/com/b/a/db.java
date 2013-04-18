package com.b.a;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public final class db extends df
{
  private static final db c = new db();
  private final Map a;
  private final Map b;

  private db()
  {
    super(df.c());
    this.a = Collections.emptyMap();
    this.b = Collections.emptyMap();
  }

  private db(byte paramByte)
  {
    super((byte)0);
    this.a = new HashMap();
    this.b = new HashMap();
  }

  private db(db paramdb)
  {
    super(paramdb);
    this.a = Collections.unmodifiableMap(paramdb.a);
    this.b = Collections.unmodifiableMap(paramdb.b);
  }

  public static db a()
  {
    return c;
  }

  private void a(cq paramcq)
  {
    if (paramcq.f() == cr.i)
      throw new IllegalArgumentException("ExtensionRegistry.add() must be provided a default instance when adding an embedded message extension.");
    a(new de(paramcq, null));
  }

  private void a(cq paramcq, ev paramev)
  {
    if (paramcq.f() != cr.i)
      throw new IllegalArgumentException("ExtensionRegistry.add() provided a default instance for a non-message extension.");
    a(new de(paramcq, paramev));
  }

  private void a(de paramde)
  {
    if (!paramde.a.q())
      throw new IllegalArgumentException("ExtensionRegistry.add() was given a FieldDescriptor for a regular (non-extension) field.");
    this.a.put(paramde.a.b(), paramde);
    this.b.put(new dd(paramde.a.r(), paramde.a.e()), paramde);
    cq localcq = paramde.a;
    if ((localcq.r().d().i()) && (localcq.h() == cs.k) && (localcq.l()) && (localcq.s() == localcq.t()))
      this.a.put(localcq.t().b(), paramde);
  }

  private void a(ed paramed)
  {
    if (paramed.a().f() == cr.i)
    {
      if (paramed.b() == null)
        throw new IllegalStateException("Registered message-type extension had null default instance: " + paramed.a().b());
      a(new de(paramed.a(), paramed.b()));
    }
    while (true)
    {
      return;
      a(new de(paramed.a(), null));
    }
  }

  private static db d()
  {
    return new db((byte)0);
  }

  private db e()
  {
    return new db(this);
  }

  public final de a(cj paramcj, int paramInt)
  {
    return (de)this.b.get(new dd(paramcj, paramInt));
  }

  public final de a(String paramString)
  {
    return (de)this.a.get(paramString);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.db
 * JD-Core Version:    0.6.2
 */