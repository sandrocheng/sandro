package com.b.a;

import java.util.Collections;
import java.util.List;

public final class cq
  implements cv, dj, Comparable
{
  private static final gq[] a = gq.values();
  private final int b;
  private aj c;
  private final String d;
  private final ct e;
  private final cj f;
  private cs g;
  private cj h;
  private cj i;
  private co j;
  private Object k;

  static
  {
    if (cs.values().length != an.values().length)
      throw new RuntimeException("descriptor.proto has a new declared type but Desrciptors.java wasn't updated.");
  }

  private cq(aj paramaj, ct paramct, cj paramcj, int paramInt, boolean paramBoolean, byte paramByte)
  {
    this.b = paramInt;
    this.c = paramaj;
    this.d = ch.a(paramct, paramcj, paramaj.i());
    this.e = paramct;
    if (paramaj.n())
      this.g = cs.a(paramaj.o());
    if (this.c.k() <= 0)
      throw new cn(this, "Field numbers must be positive integers.");
    if ((paramaj.w().k()) && (!o()))
      throw new cn(this, "[packed = true] can only be specified for repeated primitive fields.");
    if (paramBoolean)
    {
      if (!paramaj.r())
        throw new cn(this, "FieldDescriptorProto.extendee not set for extension field.");
      this.h = null;
      if (paramcj != null)
        this.f = paramcj;
    }
    while (true)
    {
      ct.a(paramct).a(this);
      return;
      this.f = null;
      continue;
      if (paramaj.r())
        throw new cn(this, "FieldDescriptorProto.extendee set for non-extension field.");
      this.h = paramcj;
      this.f = null;
    }
  }

  private void a(aj paramaj)
  {
    this.c = paramaj;
  }

  private int b(cq paramcq)
  {
    if (paramcq.h != this.h)
      throw new IllegalArgumentException("FieldDescriptors can only be compared to other FieldDescriptors for fields of the same message type.");
    return this.c.k() - paramcq.c.k();
  }

  private aj w()
  {
    return this.c;
  }

  private boolean x()
  {
    return this.c.t();
  }

  private aq y()
  {
    return this.c.w();
  }

  private void z()
  {
    if (this.c.r())
    {
      cv localcv2 = ct.a(this.e).a(this.c.s(), this);
      if (!(localcv2 instanceof cj))
        throw new cn(this, '"' + this.c.s() + "\" is not a message type.");
      this.h = ((cj)localcv2);
      if (!this.h.a(this.c.k()))
        throw new cn(this, '"' + this.h.b() + "\" does not declare " + this.c.k() + " as an extension number.");
    }
    if (this.c.p())
    {
      cv localcv1 = ct.a(this.e).a(this.c.q(), this);
      if (!this.c.n())
      {
        if (!(localcv1 instanceof cj))
          break label272;
        this.g = cs.k;
      }
      while (this.g.a() == cr.i)
        if (!(localcv1 instanceof cj))
        {
          throw new cn(this, '"' + this.c.q() + "\" is not a message type.");
          label272: if ((localcv1 instanceof co))
            this.g = cs.n;
          else
            throw new cn(this, '"' + this.c.q() + "\" is not a type.");
        }
        else
        {
          this.i = ((cj)localcv1);
          if (!this.c.t())
            break label428;
          throw new cn(this, "Messages can't have default values.");
        }
      if (this.g.a() == cr.h)
      {
        if (!(localcv1 instanceof co))
          throw new cn(this, '"' + this.c.q() + "\" is not an enum type.");
        this.j = ((co)localcv1);
      }
    }
    while (true)
      label428: if (this.c.t())
        if (m())
        {
          throw new cn(this, "Repeated fields cannot have default values.");
          throw new cn(this, "Field with primitive type has type_name.");
          if ((this.g.a() != cr.i) && (this.g.a() != cr.h))
            continue;
          throw new cn(this, "Field with message or enum type missing type_name.");
        }
    while (true)
    {
      try
      {
        int m = ci.a[this.g.ordinal()];
        switch (m)
        {
        default:
          if (!this.c.r())
            ct.a(this.e).a(this);
          if ((this.h == null) || (!this.h.d().i()))
            return;
          if (!this.c.r())
            break;
          if ((l()) && (this.g == cs.k))
            return;
          throw new cn(this, "Extensions of MessageSets must be optional messages.");
        case 1:
        case 2:
        case 3:
          this.k = Integer.valueOf(fy.b(this.c.u()));
          continue;
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 10:
        case 11:
        case 12:
        case 13:
        case 14:
        case 15:
        case 16:
        case 17:
        case 18:
        }
      }
      catch (NumberFormatException localNumberFormatException)
      {
        throw new cn(this, "Could not parse default value: \"" + this.c.u() + '"', localNumberFormatException);
      }
      this.k = Integer.valueOf(fy.c(this.c.u()));
      continue;
      this.k = Long.valueOf(fy.d(this.c.u()));
      continue;
      this.k = Long.valueOf(fy.e(this.c.u()));
      continue;
      if (this.c.u().equals("inf"))
      {
        this.k = Float.valueOf((1.0F / 1.0F));
      }
      else if (this.c.u().equals("-inf"))
      {
        this.k = Float.valueOf((1.0F / -1.0F));
      }
      else if (this.c.u().equals("nan"))
      {
        this.k = Float.valueOf((0.0F / 0.0F));
      }
      else
      {
        this.k = Float.valueOf(this.c.u());
        continue;
        if (this.c.u().equals("inf"))
        {
          this.k = Double.valueOf((1.0D / 0.0D));
        }
        else if (this.c.u().equals("-inf"))
        {
          this.k = Double.valueOf((-1.0D / 0.0D));
        }
        else if (this.c.u().equals("nan"))
        {
          this.k = Double.valueOf((0.0D / 0.0D));
        }
        else
        {
          this.k = Double.valueOf(this.c.u());
          continue;
          this.k = Boolean.valueOf(this.c.u());
          continue;
          this.k = this.c.u();
          continue;
          try
          {
            this.k = fy.a(this.c.u());
          }
          catch (ga localga)
          {
            throw new cn(this, "Couldn't parse default value: " + localga.getMessage(), localga);
          }
          this.k = this.j.a(this.c.u());
          if (this.k == null)
          {
            throw new cn(this, "Unknown enum default value: \"" + this.c.u() + '"');
            throw new cn(this, "Message type had default value.");
            if (m())
              this.k = Collections.emptyList();
            else
              switch (ci.b[this.g.a().ordinal()])
              {
              default:
                this.k = cr.a(this.g.a());
                break;
              case 1:
                this.k = this.j.d().get(0);
                break;
              case 2:
                this.k = null;
              }
          }
        }
      }
    }
    throw new cn(this, "MessageSets cannot have fields, only extensions.");
  }

  public final ey a(ey paramey, ex paramex)
  {
    return ((ew)paramey).c((ev)paramex);
  }

  public final String a()
  {
    return this.c.i();
  }

  public final String b()
  {
    return this.d;
  }

  public final ct c()
  {
    return this.e;
  }

  public final int d()
  {
    return this.b;
  }

  public final int e()
  {
    return this.c.k();
  }

  public final cr f()
  {
    return this.g.a();
  }

  public final gv g()
  {
    return j().a();
  }

  public final cs h()
  {
    return this.g;
  }

  public final gq j()
  {
    return a[this.g.ordinal()];
  }

  public final boolean k()
  {
    if (this.c.m() == al.b);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final boolean l()
  {
    if (this.c.m() == al.a);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final boolean m()
  {
    if (this.c.m() == al.c);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final boolean n()
  {
    return this.c.w().k();
  }

  public final boolean o()
  {
    if ((m()) && (j().c()));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final Object p()
  {
    if (this.g.a() == cr.i)
      throw new UnsupportedOperationException("FieldDescriptor.getDefaultValue() called on an embedded message field.");
    return this.k;
  }

  public final boolean q()
  {
    return this.c.r();
  }

  public final cj r()
  {
    return this.h;
  }

  public final cj s()
  {
    if (!this.c.r())
      throw new UnsupportedOperationException("This field is not an extension.");
    return this.f;
  }

  public final cj t()
  {
    if (this.g.a() != cr.i)
      throw new UnsupportedOperationException("This field is not of message type.");
    return this.i;
  }

  public final co u()
  {
    if (this.g.a() != cr.h)
      throw new UnsupportedOperationException("This field is not of enum type.");
    return this.j;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.cq
 * JD-Core Version:    0.6.2
 */