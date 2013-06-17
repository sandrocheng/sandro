package com.google.c.a;

import java.io.Externalizable;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.util.ArrayList;
import java.util.List;

public class l
  implements Externalizable
{
  private boolean A;
  private String B = "";
  private boolean C;
  private int D = 0;
  private boolean E;
  private String F = "";
  private boolean G;
  private String H = "";
  private boolean I;
  private String J = "";
  private boolean K;
  private String L = "";
  private boolean M;
  private String N = "";
  private boolean O;
  private String P = "";
  private boolean Q;
  private boolean R = false;
  private List S = new ArrayList();
  private List T = new ArrayList();
  private boolean U;
  private boolean V = false;
  private boolean W;
  private String X = "";
  private boolean Y;
  private boolean Z = false;
  private boolean a;
  private n b = null;
  private boolean c;
  private n d = null;
  private boolean e;
  private n f = null;
  private boolean g;
  private n h = null;
  private boolean i;
  private n j = null;
  private boolean k;
  private n l = null;
  private boolean m;
  private n n = null;
  private boolean o;
  private n p = null;
  private boolean q;
  private n r = null;
  private boolean s;
  private n t = null;
  private boolean u;
  private n v = null;
  private boolean w;
  private n x = null;
  private boolean y;
  private n z = null;

  public l a(int paramInt)
  {
    this.C = true;
    this.D = paramInt;
    return this;
  }

  public l a(n paramn)
  {
    if (paramn == null)
      throw new NullPointerException();
    this.a = true;
    this.b = paramn;
    return this;
  }

  public l a(String paramString)
  {
    this.A = true;
    this.B = paramString;
    return this;
  }

  public l a(boolean paramBoolean)
  {
    this.Q = true;
    this.R = paramBoolean;
    return this;
  }

  public n a()
  {
    return this.b;
  }

  public int b()
  {
    return this.D;
  }

  public l b(n paramn)
  {
    if (paramn == null)
      throw new NullPointerException();
    this.c = true;
    this.d = paramn;
    return this;
  }

  public l b(String paramString)
  {
    this.E = true;
    this.F = paramString;
    return this;
  }

  public l b(boolean paramBoolean)
  {
    this.U = true;
    this.V = paramBoolean;
    return this;
  }

  public l c(n paramn)
  {
    if (paramn == null)
      throw new NullPointerException();
    this.e = true;
    this.f = paramn;
    return this;
  }

  public l c(String paramString)
  {
    this.G = true;
    this.H = paramString;
    return this;
  }

  public l c(boolean paramBoolean)
  {
    this.Y = true;
    this.Z = paramBoolean;
    return this;
  }

  public String c()
  {
    return this.F;
  }

  public l d(n paramn)
  {
    if (paramn == null)
      throw new NullPointerException();
    this.g = true;
    this.h = paramn;
    return this;
  }

  public l d(String paramString)
  {
    this.I = true;
    this.J = paramString;
    return this;
  }

  public boolean d()
  {
    return this.K;
  }

  public l e(n paramn)
  {
    if (paramn == null)
      throw new NullPointerException();
    this.i = true;
    this.j = paramn;
    return this;
  }

  public l e(String paramString)
  {
    this.K = true;
    this.L = paramString;
    return this;
  }

  public String e()
  {
    return this.L;
  }

  public l f(n paramn)
  {
    if (paramn == null)
      throw new NullPointerException();
    this.k = true;
    this.l = paramn;
    return this;
  }

  public l f(String paramString)
  {
    this.M = true;
    this.N = paramString;
    return this;
  }

  public String f()
  {
    return this.N;
  }

  public l g(n paramn)
  {
    if (paramn == null)
      throw new NullPointerException();
    this.m = true;
    this.n = paramn;
    return this;
  }

  public l g(String paramString)
  {
    this.O = true;
    this.P = paramString;
    return this;
  }

  public String g()
  {
    return this.P;
  }

  public l h(n paramn)
  {
    if (paramn == null)
      throw new NullPointerException();
    this.o = true;
    this.p = paramn;
    return this;
  }

  public l h(String paramString)
  {
    this.W = true;
    this.X = paramString;
    return this;
  }

  public List h()
  {
    return this.S;
  }

  public int i()
  {
    return this.S.size();
  }

  public l i(n paramn)
  {
    if (paramn == null)
      throw new NullPointerException();
    this.q = true;
    this.r = paramn;
    return this;
  }

  public l j(n paramn)
  {
    if (paramn == null)
      throw new NullPointerException();
    this.s = true;
    this.t = paramn;
    return this;
  }

  public List j()
  {
    return this.T;
  }

  public int k()
  {
    return this.T.size();
  }

  public l k(n paramn)
  {
    if (paramn == null)
      throw new NullPointerException();
    this.u = true;
    this.v = paramn;
    return this;
  }

  public l l(n paramn)
  {
    if (paramn == null)
      throw new NullPointerException();
    this.w = true;
    this.x = paramn;
    return this;
  }

  public l m(n paramn)
  {
    if (paramn == null)
      throw new NullPointerException();
    this.y = true;
    this.z = paramn;
    return this;
  }

  public void readExternal(ObjectInput paramObjectInput)
  {
    int i1 = 0;
    if (paramObjectInput.readBoolean())
    {
      n localn1 = new n();
      localn1.readExternal(paramObjectInput);
      a(localn1);
    }
    if (paramObjectInput.readBoolean())
    {
      n localn2 = new n();
      localn2.readExternal(paramObjectInput);
      b(localn2);
    }
    if (paramObjectInput.readBoolean())
    {
      n localn3 = new n();
      localn3.readExternal(paramObjectInput);
      c(localn3);
    }
    if (paramObjectInput.readBoolean())
    {
      n localn4 = new n();
      localn4.readExternal(paramObjectInput);
      d(localn4);
    }
    if (paramObjectInput.readBoolean())
    {
      n localn5 = new n();
      localn5.readExternal(paramObjectInput);
      e(localn5);
    }
    if (paramObjectInput.readBoolean())
    {
      n localn6 = new n();
      localn6.readExternal(paramObjectInput);
      f(localn6);
    }
    if (paramObjectInput.readBoolean())
    {
      n localn7 = new n();
      localn7.readExternal(paramObjectInput);
      g(localn7);
    }
    if (paramObjectInput.readBoolean())
    {
      n localn8 = new n();
      localn8.readExternal(paramObjectInput);
      h(localn8);
    }
    if (paramObjectInput.readBoolean())
    {
      n localn9 = new n();
      localn9.readExternal(paramObjectInput);
      i(localn9);
    }
    if (paramObjectInput.readBoolean())
    {
      n localn10 = new n();
      localn10.readExternal(paramObjectInput);
      j(localn10);
    }
    if (paramObjectInput.readBoolean())
    {
      n localn11 = new n();
      localn11.readExternal(paramObjectInput);
      k(localn11);
    }
    if (paramObjectInput.readBoolean())
    {
      n localn12 = new n();
      localn12.readExternal(paramObjectInput);
      l(localn12);
    }
    if (paramObjectInput.readBoolean())
    {
      n localn13 = new n();
      localn13.readExternal(paramObjectInput);
      m(localn13);
    }
    a(paramObjectInput.readUTF());
    a(paramObjectInput.readInt());
    b(paramObjectInput.readUTF());
    if (paramObjectInput.readBoolean())
      c(paramObjectInput.readUTF());
    if (paramObjectInput.readBoolean())
      d(paramObjectInput.readUTF());
    if (paramObjectInput.readBoolean())
      e(paramObjectInput.readUTF());
    if (paramObjectInput.readBoolean())
      f(paramObjectInput.readUTF());
    if (paramObjectInput.readBoolean())
      g(paramObjectInput.readUTF());
    a(paramObjectInput.readBoolean());
    int i2 = paramObjectInput.readInt();
    for (int i3 = 0; i3 < i2; i3++)
    {
      k localk1 = new k();
      localk1.readExternal(paramObjectInput);
      this.S.add(localk1);
    }
    int i4 = paramObjectInput.readInt();
    while (i1 < i4)
    {
      k localk2 = new k();
      localk2.readExternal(paramObjectInput);
      this.T.add(localk2);
      i1++;
    }
    b(paramObjectInput.readBoolean());
    if (paramObjectInput.readBoolean())
      h(paramObjectInput.readUTF());
    c(paramObjectInput.readBoolean());
  }

  public void writeExternal(ObjectOutput paramObjectOutput)
  {
    int i1 = 0;
    paramObjectOutput.writeBoolean(this.a);
    if (this.a)
      this.b.writeExternal(paramObjectOutput);
    paramObjectOutput.writeBoolean(this.c);
    if (this.c)
      this.d.writeExternal(paramObjectOutput);
    paramObjectOutput.writeBoolean(this.e);
    if (this.e)
      this.f.writeExternal(paramObjectOutput);
    paramObjectOutput.writeBoolean(this.g);
    if (this.g)
      this.h.writeExternal(paramObjectOutput);
    paramObjectOutput.writeBoolean(this.i);
    if (this.i)
      this.j.writeExternal(paramObjectOutput);
    paramObjectOutput.writeBoolean(this.k);
    if (this.k)
      this.l.writeExternal(paramObjectOutput);
    paramObjectOutput.writeBoolean(this.m);
    if (this.m)
      this.n.writeExternal(paramObjectOutput);
    paramObjectOutput.writeBoolean(this.o);
    if (this.o)
      this.p.writeExternal(paramObjectOutput);
    paramObjectOutput.writeBoolean(this.q);
    if (this.q)
      this.r.writeExternal(paramObjectOutput);
    paramObjectOutput.writeBoolean(this.s);
    if (this.s)
      this.t.writeExternal(paramObjectOutput);
    paramObjectOutput.writeBoolean(this.u);
    if (this.u)
      this.v.writeExternal(paramObjectOutput);
    paramObjectOutput.writeBoolean(this.w);
    if (this.w)
      this.x.writeExternal(paramObjectOutput);
    paramObjectOutput.writeBoolean(this.y);
    if (this.y)
      this.z.writeExternal(paramObjectOutput);
    paramObjectOutput.writeUTF(this.B);
    paramObjectOutput.writeInt(this.D);
    paramObjectOutput.writeUTF(this.F);
    paramObjectOutput.writeBoolean(this.G);
    if (this.G)
      paramObjectOutput.writeUTF(this.H);
    paramObjectOutput.writeBoolean(this.I);
    if (this.I)
      paramObjectOutput.writeUTF(this.J);
    paramObjectOutput.writeBoolean(this.K);
    if (this.K)
      paramObjectOutput.writeUTF(this.L);
    paramObjectOutput.writeBoolean(this.M);
    if (this.M)
      paramObjectOutput.writeUTF(this.N);
    paramObjectOutput.writeBoolean(this.O);
    if (this.O)
      paramObjectOutput.writeUTF(this.P);
    paramObjectOutput.writeBoolean(this.R);
    int i2 = i();
    paramObjectOutput.writeInt(i2);
    for (int i3 = 0; i3 < i2; i3++)
      ((k)this.S.get(i3)).writeExternal(paramObjectOutput);
    int i4 = k();
    paramObjectOutput.writeInt(i4);
    while (i1 < i4)
    {
      ((k)this.T.get(i1)).writeExternal(paramObjectOutput);
      i1++;
    }
    paramObjectOutput.writeBoolean(this.V);
    paramObjectOutput.writeBoolean(this.W);
    if (this.W)
      paramObjectOutput.writeUTF(this.X);
    paramObjectOutput.writeBoolean(this.Z);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.c.a.l
 * JD-Core Version:    0.6.2
 */