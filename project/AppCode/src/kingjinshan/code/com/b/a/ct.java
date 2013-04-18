package com.b.a;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;

public final class ct
{
  private av a;
  private final cj[] b;
  private final co[] c;
  private final cx[] d;
  private final cq[] e;
  private final ct[] f;
  private final ck g;

  private ct(av paramav, ct[] paramArrayOfct, ck paramck)
  {
    this.g = paramck;
    this.a = paramav;
    this.f = ((ct[])paramArrayOfct.clone());
    paramck.a(this.a.k(), this);
    this.b = new cj[paramav.p()];
    for (int i = 0; i < paramav.p(); i++)
      this.b[i] = new cj(paramav.b(i), this, i);
    this.c = new co[paramav.s()];
    for (int j = 0; j < paramav.s(); j++)
      this.c[j] = new co(paramav.d(j), this, null, j);
    this.d = new cx[paramav.v()];
    for (int k = 0; k < paramav.v(); k++)
      this.d[k] = new cx(paramav.f(k), this, k);
    this.e = new cq[paramav.y()];
    for (int m = 0; m < paramav.y(); m++)
      this.e[m] = new cq(paramav.h(m), this, null, m, true);
  }

  private cj a(String paramString)
  {
    cj localcj;
    if (paramString.indexOf('.') != -1)
    {
      localcj = null;
      return localcj;
    }
    if (this.a.k().length() > 0);
    for (String str = this.a.k() + '.' + paramString; ; str = paramString)
    {
      cv localcv = this.g.a(str);
      if ((localcv != null) && ((localcv instanceof cj)) && (localcv.c() == this))
      {
        localcj = (cj)localcv;
        break;
      }
      localcj = null;
      break;
    }
  }

  private static ct a(av paramav, ct[] paramArrayOfct)
  {
    ct localct = new ct(paramav, paramArrayOfct, new ck(paramArrayOfct));
    if (paramArrayOfct.length != paramav.m())
      throw new cn(localct, "Dependencies passed to FileDescriptor.buildFrom() don't match those listed in the FileDescriptorProto.");
    for (int i = 0; i < paramav.m(); i++)
      if (!paramArrayOfct[i].a.i().equals(paramav.a(i)))
        throw new cn(localct, "Dependencies passed to FileDescriptor.buildFrom() don't match those listed in the FileDescriptorProto.");
    cj[] arrayOfcj = localct.b;
    int j = arrayOfcj.length;
    for (int k = 0; k < j; k++)
      cj.a(arrayOfcj[k]);
    cx[] arrayOfcx = localct.d;
    int m = arrayOfcx.length;
    for (int n = 0; n < m; n++)
      cx.a(arrayOfcx[n]);
    cq[] arrayOfcq = localct.e;
    int i1 = arrayOfcq.length;
    for (int i2 = 0; i2 < i1; i2++)
      cq.a(arrayOfcq[i2]);
    return localct;
  }

  private void a(av paramav)
  {
    this.a = paramav;
    for (int i = 0; i < this.b.length; i++)
      cj.a(this.b[i], paramav.b(i));
    for (int j = 0; j < this.c.length; j++)
      co.a(this.c[j], paramav.d(j));
    for (int k = 0; k < this.d.length; k++)
      cx.a(this.d[k], paramav.f(k));
    for (int m = 0; m < this.e.length; m++)
      cq.a(this.e[m], paramav.h(m));
  }

  // ERROR //
  public static void a(String[] paramArrayOfString, ct[] paramArrayOfct, cu paramcu)
  {
    // Byte code:
    //   0: new 111	java/lang/StringBuilder
    //   3: dup
    //   4: invokespecial 112	java/lang/StringBuilder:<init>	()V
    //   7: astore_3
    //   8: aload_0
    //   9: arraylength
    //   10: istore 4
    //   12: iconst_0
    //   13: istore 5
    //   15: iload 5
    //   17: iload 4
    //   19: if_icmpge +18 -> 37
    //   22: aload_3
    //   23: aload_0
    //   24: iload 5
    //   26: aaload
    //   27: invokevirtual 116	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   30: pop
    //   31: iinc 5 1
    //   34: goto -19 -> 15
    //   37: aload_3
    //   38: invokevirtual 122	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   41: ldc 186
    //   43: invokevirtual 190	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   46: astore 7
    //   48: aload 7
    //   50: invokestatic 193	com/b/a/av:a	([B)Lcom/b/a/av;
    //   53: astore 9
    //   55: aload 9
    //   57: aload_1
    //   58: invokestatic 195	com/b/a/ct:a	(Lcom/b/a/av;[Lcom/b/a/ct;)Lcom/b/a/ct;
    //   61: astore 11
    //   63: aload_2
    //   64: aload 11
    //   66: invokeinterface 200 2 0
    //   71: pop
    //   72: return
    //   73: astore 6
    //   75: new 202	java/lang/RuntimeException
    //   78: dup
    //   79: ldc 204
    //   81: aload 6
    //   83: invokespecial 207	java/lang/RuntimeException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   86: athrow
    //   87: astore 8
    //   89: new 209	java/lang/IllegalArgumentException
    //   92: dup
    //   93: ldc 211
    //   95: aload 8
    //   97: invokespecial 212	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   100: athrow
    //   101: astore 10
    //   103: new 209	java/lang/IllegalArgumentException
    //   106: dup
    //   107: new 111	java/lang/StringBuilder
    //   110: dup
    //   111: invokespecial 112	java/lang/StringBuilder:<init>	()V
    //   114: ldc 214
    //   116: invokevirtual 116	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   119: aload 9
    //   121: invokevirtual 150	com/b/a/av:i	()Ljava/lang/String;
    //   124: invokevirtual 116	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   127: ldc 216
    //   129: invokevirtual 116	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   132: invokevirtual 122	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   135: aload 10
    //   137: invokespecial 212	java/lang/IllegalArgumentException:<init>	(Ljava/lang/String;Ljava/lang/Throwable;)V
    //   140: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   37	48	73	java/io/UnsupportedEncodingException
    //   48	55	87	com/b/a/es
    //   55	63	101	com/b/a/cn
  }

  private co b(String paramString)
  {
    co localco;
    if (paramString.indexOf('.') != -1)
    {
      localco = null;
      return localco;
    }
    if (this.a.k().length() > 0);
    for (String str = this.a.k() + '.' + paramString; ; str = paramString)
    {
      cv localcv = this.g.a(str);
      if ((localcv != null) && ((localcv instanceof co)) && (localcv.c() == this))
      {
        localco = (co)localcv;
        break;
      }
      localco = null;
      break;
    }
  }

  private cx c(String paramString)
  {
    cx localcx;
    if (paramString.indexOf('.') != -1)
    {
      localcx = null;
      return localcx;
    }
    if (this.a.k().length() > 0);
    for (String str = this.a.k() + '.' + paramString; ; str = paramString)
    {
      cv localcv = this.g.a(str);
      if ((localcv != null) && ((localcv instanceof cx)) && (localcv.c() == this))
      {
        localcx = (cx)localcv;
        break;
      }
      localcx = null;
      break;
    }
  }

  private cq d(String paramString)
  {
    cq localcq;
    if (paramString.indexOf('.') != -1)
    {
      localcq = null;
      return localcq;
    }
    if (this.a.k().length() > 0);
    for (String str = this.a.k() + '.' + paramString; ; str = paramString)
    {
      cv localcv = this.g.a(str);
      if ((localcv != null) && ((localcv instanceof cq)) && (localcv.c() == this))
      {
        localcq = (cq)localcv;
        break;
      }
      localcq = null;
      break;
    }
  }

  private bb e()
  {
    return this.a.A();
  }

  private List f()
  {
    return Collections.unmodifiableList(Arrays.asList(this.c));
  }

  private List g()
  {
    return Collections.unmodifiableList(Arrays.asList(this.d));
  }

  private List h()
  {
    return Collections.unmodifiableList(Arrays.asList(this.e));
  }

  private List i()
  {
    return Collections.unmodifiableList(Arrays.asList(this.f));
  }

  private void j()
  {
    cj[] arrayOfcj = this.b;
    int i = arrayOfcj.length;
    for (int j = 0; j < i; j++)
      cj.a(arrayOfcj[j]);
    cx[] arrayOfcx = this.d;
    int k = arrayOfcx.length;
    for (int m = 0; m < k; m++)
      cx.a(arrayOfcx[m]);
    cq[] arrayOfcq = this.e;
    int n = arrayOfcq.length;
    for (int i1 = 0; i1 < n; i1++)
      cq.a(arrayOfcq[i1]);
  }

  public final av a()
  {
    return this.a;
  }

  public final String b()
  {
    return this.a.i();
  }

  public final String c()
  {
    return this.a.k();
  }

  public final List d()
  {
    return Collections.unmodifiableList(Arrays.asList(this.b));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.ct
 * JD-Core Version:    0.6.2
 */