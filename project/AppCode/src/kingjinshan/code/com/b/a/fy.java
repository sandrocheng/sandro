package com.b.a;

import java.io.IOException;
import java.math.BigInteger;
import java.nio.CharBuffer;
import java.util.Locale;

public final class fy
{
  private static final gc a = new gc(false);
  private static final gc b = new gc(true);
  private static final int c = 4096;

  private static long a(String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    int j;
    int i;
    if (paramString.startsWith("-", 0))
    {
      if (!paramBoolean1)
        throw new NumberFormatException("Number must be positive: " + paramString);
      j = 0 + 1;
      i = 1;
    }
    while (true)
    {
      int k;
      int m;
      if (paramString.startsWith("0x", j))
      {
        k = j + 2;
        m = 16;
      }
      while (true)
      {
        String str = paramString.substring(k);
        long l2;
        if (str.length() < 16)
        {
          l2 = Long.parseLong(str, m);
          if (i == 0)
            break label424;
        }
        label414: label417: label424: for (long l1 = -l2; ; l1 = l2)
        {
          BigInteger localBigInteger1;
          if (!paramBoolean2)
          {
            if (paramBoolean1)
            {
              if ((l1 <= 2147483647L) && (l1 >= -2147483648L))
                break label414;
              throw new NumberFormatException("Number out of range for 32-bit signed integer: " + paramString);
              if (!paramString.startsWith("0", j))
                break label431;
              k = j;
              m = 8;
              break;
            }
            if ((l1 >= 4294967296L) || (l1 < 0L))
            {
              throw new NumberFormatException("Number out of range for 32-bit unsigned integer: " + paramString);
              localBigInteger1 = new BigInteger(str, m);
              if (i == 0)
                break label417;
            }
          }
          for (BigInteger localBigInteger2 = localBigInteger1.negate(); ; localBigInteger2 = localBigInteger1)
          {
            if (!paramBoolean2)
            {
              if (paramBoolean1)
              {
                if (localBigInteger2.bitLength() > 31)
                  throw new NumberFormatException("Number out of range for 32-bit signed integer: " + paramString);
              }
              else if (localBigInteger2.bitLength() > 32)
                throw new NumberFormatException("Number out of range for 32-bit unsigned integer: " + paramString);
            }
            else if (paramBoolean1)
            {
              if (localBigInteger2.bitLength() > 63)
                throw new NumberFormatException("Number out of range for 64-bit signed integer: " + paramString);
            }
            else if (localBigInteger2.bitLength() > 64)
              throw new NumberFormatException("Number out of range for 64-bit unsigned integer: " + paramString);
            l1 = localBigInteger2.longValue();
            return l1;
          }
        }
        label431: k = j;
        m = 10;
      }
      i = 0;
      j = 0;
    }
  }

  static i a(CharSequence paramCharSequence)
  {
    i locali = i.a(paramCharSequence.toString());
    byte[] arrayOfByte = new byte[locali.a()];
    int i = 0;
    int j = 0;
    int k;
    byte b1;
    int i17;
    int i22;
    int i18;
    if (i < locali.a())
    {
      k = locali.a(i);
      if (k == 92)
        if (i + 1 < locali.a())
        {
          i++;
          b1 = locali.a(i);
          if (a(b1))
          {
            i17 = c(b1);
            if ((i + 1 >= locali.a()) || (!a(locali.a(i + 1))))
              break label700;
            int i21 = i + 1;
            i22 = i17 * 8 + c(locali.a(i21));
            i18 = i21;
          }
        }
    }
    for (int i19 = i22; ; i19 = i17)
    {
      if ((i18 + 1 < locali.a()) && (a(locali.a(i18 + 1))))
      {
        i18++;
        i19 = i19 * 8 + c(locali.a(i18));
      }
      int i20 = j + 1;
      arrayOfByte[j] = ((byte)i19);
      i = i18;
      j = i20;
      while (true)
      {
        i++;
        break;
        switch (b1)
        {
        default:
          throw new ga("Invalid escape sequence: '\\" + (char)b1 + '\'');
        case 97:
          int i16 = j + 1;
          arrayOfByte[j] = 7;
          j = i16;
          break;
        case 98:
          int i15 = j + 1;
          arrayOfByte[j] = 8;
          j = i15;
          break;
        case 102:
          int i14 = j + 1;
          arrayOfByte[j] = 12;
          j = i14;
          break;
        case 110:
          int i13 = j + 1;
          arrayOfByte[j] = 10;
          j = i13;
          break;
        case 114:
          int i12 = j + 1;
          arrayOfByte[j] = 13;
          j = i12;
          break;
        case 116:
          int i11 = j + 1;
          arrayOfByte[j] = 9;
          j = i11;
          break;
        case 118:
          int i10 = j + 1;
          arrayOfByte[j] = 11;
          j = i10;
          break;
        case 92:
          int i9 = j + 1;
          arrayOfByte[j] = 92;
          j = i9;
          break;
        case 39:
          int i8 = j + 1;
          arrayOfByte[j] = 39;
          j = i8;
          break;
        case 34:
          int i7 = j + 1;
          arrayOfByte[j] = 34;
          j = i7;
        case 120:
        }
      }
      int n;
      int i1;
      int i6;
      int i2;
      if ((i + 1 < locali.a()) && (b(locali.a(i + 1))))
      {
        n = i + 1;
        i1 = c(locali.a(n));
        if ((n + 1 >= locali.a()) || (!b(locali.a(n + 1))))
          break label689;
        int i5 = n + 1;
        i6 = i1 * 16 + c(locali.a(i5));
        i2 = i5;
      }
      for (int i3 = i6; ; i3 = i1)
      {
        int i4 = j + 1;
        arrayOfByte[j] = ((byte)i3);
        i = i2;
        j = i4;
        break;
        throw new ga("Invalid escape sequence: '\\x' with no digits");
        throw new ga("Invalid escape sequence: '\\' at end of string.");
        int m = j + 1;
        arrayOfByte[j] = k;
        j = m;
        break;
        return i.a(arrayOfByte, 0, j);
        label689: i2 = n;
      }
      label700: i18 = i;
    }
  }

  private static String a(cq paramcq, Object paramObject)
  {
    try
    {
      StringBuilder localStringBuilder = new StringBuilder();
      gc.a(a, paramcq, paramObject, new gd(localStringBuilder));
      String str = localStringBuilder.toString();
      return str;
    }
    catch (IOException localIOException)
    {
      throw new IllegalStateException(localIOException);
    }
  }

  public static String a(ev paramev)
  {
    try
    {
      StringBuilder localStringBuilder = new StringBuilder();
      gc.a(a, paramev, new gd(localStringBuilder));
      String str = localStringBuilder.toString();
      return str;
    }
    catch (IOException localIOException)
    {
      throw new IllegalStateException(localIOException);
    }
  }

  public static String a(gg paramgg)
  {
    try
    {
      StringBuilder localStringBuilder = new StringBuilder();
      gc.a(a, paramgg, new gd(localStringBuilder));
      String str = localStringBuilder.toString();
      return str;
    }
    catch (IOException localIOException)
    {
      throw new IllegalStateException(localIOException);
    }
  }

  static String a(i parami)
  {
    StringBuilder localStringBuilder = new StringBuilder(parami.a());
    int i = 0;
    if (i < parami.a())
    {
      int j = parami.a(i);
      switch (j)
      {
      default:
        if (j >= 32)
          localStringBuilder.append((char)j);
        break;
      case 7:
      case 8:
      case 12:
      case 10:
      case 13:
      case 9:
      case 11:
      case 92:
      case 39:
      case 34:
      }
      while (true)
      {
        i++;
        break;
        localStringBuilder.append("\\a");
        continue;
        localStringBuilder.append("\\b");
        continue;
        localStringBuilder.append("\\f");
        continue;
        localStringBuilder.append("\\n");
        continue;
        localStringBuilder.append("\\r");
        continue;
        localStringBuilder.append("\\t");
        continue;
        localStringBuilder.append("\\v");
        continue;
        localStringBuilder.append("\\\\");
        continue;
        localStringBuilder.append("\\'");
        continue;
        localStringBuilder.append("\\\"");
        continue;
        localStringBuilder.append('\\');
        localStringBuilder.append((char)(48 + (0x3 & j >>> 6)));
        localStringBuilder.append((char)(48 + (0x7 & j >>> 3)));
        localStringBuilder.append((char)(48 + (j & 0x7)));
      }
    }
    return localStringBuilder.toString();
  }

  static String a(String paramString)
  {
    return a(i.a(paramString));
  }

  private static StringBuilder a(Readable paramReadable)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    CharBuffer localCharBuffer = CharBuffer.allocate(4096);
    while (true)
    {
      int i = paramReadable.read(localCharBuffer);
      if (i == -1)
        break;
      localCharBuffer.flip();
      localStringBuilder.append(localCharBuffer, 0, i);
    }
    return localStringBuilder;
  }

  private static void a(int paramInt, Object paramObject, Appendable paramAppendable)
  {
    b(paramInt, paramObject, new gd(paramAppendable));
  }

  private static void a(cq paramcq, Object paramObject, Appendable paramAppendable)
  {
    gc.a(a, paramcq, paramObject, new gd(paramAppendable));
  }

  private static void a(ev paramev, Appendable paramAppendable)
  {
    gc.a(a, paramev, new gd(paramAppendable));
  }

  private static void a(ge paramge, db paramdb, ew paramew)
  {
    cj localcj = paramew.C();
    de localde1;
    Object localObject1;
    if (paramge.a("["))
    {
      StringBuilder localStringBuilder = new StringBuilder(paramge.c());
      while (paramge.a("."))
      {
        localStringBuilder.append('.');
        localStringBuilder.append(paramge.c());
      }
      localde1 = paramdb.a(localStringBuilder.toString());
      if (localde1 == null)
        throw paramge.d("Extension \"" + localStringBuilder + "\" not found in the ExtensionRegistry.");
      if (localde1.a.r() != localcj)
        throw paramge.d("Extension \"" + localStringBuilder + "\" does not extend message type \"" + localcj.b() + "\".");
      paramge.b("]");
      localObject1 = localde1.a;
    }
    for (de localde2 = localde1; ; localde2 = null)
    {
      cq localcq;
      label428: label453: Object localObject2;
      if (((cq)localObject1).f() == cr.i)
      {
        paramge.a(":");
        String str2;
        ew localew;
        if (paramge.a("<"))
        {
          str2 = ">";
          if (localde2 != null)
            break label428;
          localew = paramew.e((cq)localObject1);
        }
        while (true)
        {
          if (paramge.a(str2))
            break label453;
          if (paramge.a())
          {
            throw paramge.c("Expected \"" + str2 + "\".");
            String str3 = paramge.c();
            localcq = localcj.a(str3);
            if (localcq == null)
            {
              localcq = localcj.a(str3.toLowerCase(Locale.US));
              if ((localcq != null) && (localcq.h() != cs.j))
                localcq = null;
            }
            if ((localcq != null) && (localcq.h() == cs.j) && (!localcq.t().a().equals(str3)))
              localcq = null;
            if (localcq != null)
              break label880;
            throw paramge.d("Message type \"" + localcj.b() + "\" has no field named \"" + str3 + "\".");
            paramge.b("{");
            str2 = "}";
            break;
            localew = localde2.b.E();
            continue;
          }
          a(paramge, paramdb, localew);
        }
        localObject2 = localew.K();
        if (!((cq)localObject1).m())
          break label866;
        paramew.a((cq)localObject1, localObject2);
      }
      while (true)
      {
        return;
        paramge.b(":");
        switch (fz.a[localObject1.h().ordinal()])
        {
        default:
          localObject2 = null;
          break;
        case 1:
        case 2:
        case 3:
          localObject2 = Integer.valueOf(paramge.d());
          break;
        case 4:
        case 5:
        case 6:
          localObject2 = Long.valueOf(paramge.f());
          break;
        case 10:
        case 11:
          localObject2 = Integer.valueOf(paramge.e());
          break;
        case 12:
        case 13:
          localObject2 = Long.valueOf(paramge.g());
          break;
        case 8:
          localObject2 = Float.valueOf(paramge.i());
          break;
        case 9:
          localObject2 = Double.valueOf(paramge.h());
          break;
        case 7:
          localObject2 = Boolean.valueOf(paramge.j());
          break;
        case 14:
          localObject2 = paramge.k();
          break;
        case 15:
          localObject2 = paramge.l();
          break;
        case 16:
          co localco = ((cq)localObject1).u();
          if (paramge.b())
          {
            int i = paramge.d();
            cp localcp2 = localco.b(i);
            if (localcp2 == null)
              throw paramge.d("Enum type \"" + localco.b() + "\" has no value with number " + i + '.');
            localObject2 = localcp2;
            break;
          }
          String str1 = paramge.c();
          cp localcp1 = localco.a(str1);
          if (localcp1 == null)
            throw paramge.d("Enum type \"" + localco.b() + "\" has no value named \"" + str1 + "\".");
          localObject2 = localcp1;
          break;
        case 17:
        case 18:
          throw new RuntimeException("Can't get here.");
          label866: paramew.b((cq)localObject1, localObject2);
        }
      }
      label880: localObject1 = localcq;
    }
  }

  private static void a(gg paramgg, Appendable paramAppendable)
  {
    gc.a(a, paramgg, new gd(paramAppendable));
  }

  private static void a(CharSequence paramCharSequence, db paramdb, ew paramew)
  {
    ge localge = new ge(paramCharSequence);
    while (!localge.a())
      a(localge, paramdb, paramew);
  }

  private static void a(CharSequence paramCharSequence, ew paramew)
  {
    a(paramCharSequence, db.a(), paramew);
  }

  private static void a(Readable paramReadable, db paramdb, ew paramew)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    CharBuffer localCharBuffer = CharBuffer.allocate(4096);
    while (true)
    {
      int i = paramReadable.read(localCharBuffer);
      if (i == -1)
        break;
      localCharBuffer.flip();
      localStringBuilder.append(localCharBuffer, 0, i);
    }
    a(localStringBuilder, paramdb, paramew);
  }

  private static void a(Readable paramReadable, ew paramew)
  {
    db localdb = db.a();
    StringBuilder localStringBuilder = new StringBuilder();
    CharBuffer localCharBuffer = CharBuffer.allocate(4096);
    while (true)
    {
      int i = paramReadable.read(localCharBuffer);
      if (i == -1)
        break;
      localCharBuffer.flip();
      localStringBuilder.append(localCharBuffer, 0, i);
    }
    a(localStringBuilder, localdb, paramew);
  }

  private static boolean a(byte paramByte)
  {
    if ((48 <= paramByte) && (paramByte <= 55));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  static int b(String paramString)
  {
    return (int)a(paramString, true, false);
  }

  private static String b(int paramInt)
  {
    if (paramInt >= 0);
    for (String str = Integer.toString(paramInt); ; str = Long.toString(0xFFFFFFFF & paramInt))
      return str;
  }

  private static String b(long paramLong)
  {
    if (paramLong >= 0L);
    for (String str = Long.toString(paramLong); ; str = BigInteger.valueOf(0xFFFFFFFF & paramLong).setBit(63).toString())
      return str;
  }

  private static String b(ev paramev)
  {
    try
    {
      StringBuilder localStringBuilder = new StringBuilder();
      gc.a(b, paramev, new gd(localStringBuilder));
      String str = localStringBuilder.toString().trim();
      return str;
    }
    catch (IOException localIOException)
    {
      throw new IllegalStateException(localIOException);
    }
  }

  private static String b(gg paramgg)
  {
    try
    {
      StringBuilder localStringBuilder = new StringBuilder();
      gc.a(b, paramgg, new gd(localStringBuilder));
      String str = localStringBuilder.toString().trim();
      return str;
    }
    catch (IOException localIOException)
    {
      throw new IllegalStateException(localIOException);
    }
  }

  private static void b(int paramInt, Object paramObject, gd paramgd)
  {
    switch (go.a(paramInt))
    {
    case 4:
    default:
      throw new IllegalArgumentException("Bad tag: " + paramInt);
    case 0:
      paramgd.a(b(((Long)paramObject).longValue()));
    case 5:
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      return;
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = ((Integer)paramObject);
      paramgd.a(String.format(null, "0x%08x", arrayOfObject2));
      continue;
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = ((Long)paramObject);
      paramgd.a(String.format(null, "0x%016x", arrayOfObject1));
      continue;
      paramgd.a("\"");
      paramgd.a(a((i)paramObject));
      paramgd.a("\"");
      continue;
      gc.a(a, (gg)paramObject, paramgd);
    }
  }

  private static void b(cq paramcq, Object paramObject, Appendable paramAppendable)
  {
    gc.b(a, paramcq, paramObject, new gd(paramAppendable));
  }

  private static boolean b(byte paramByte)
  {
    if (((48 <= paramByte) && (paramByte <= 57)) || ((97 <= paramByte) && (paramByte <= 102)) || ((65 <= paramByte) && (paramByte <= 70)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  private static int c(byte paramByte)
  {
    int i;
    if ((48 <= paramByte) && (paramByte <= 57))
      i = paramByte - 48;
    while (true)
    {
      return i;
      if ((97 <= paramByte) && (paramByte <= 122))
        i = 10 + (paramByte - 97);
      else
        i = 10 + (paramByte - 65);
    }
  }

  static int c(String paramString)
  {
    return (int)a(paramString, false, false);
  }

  static long d(String paramString)
  {
    return a(paramString, true, true);
  }

  static long e(String paramString)
  {
    return a(paramString, false, true);
  }

  private static String f(String paramString)
  {
    return a(paramString).b();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.b.a.fy
 * JD-Core Version:    0.6.2
 */