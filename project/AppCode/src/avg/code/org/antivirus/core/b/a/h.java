package org.antivirus.core.b.a;

import android.text.TextUtils;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashSet;
import java.util.Vector;
import org.antivirus.core.Logger;

public final class h
{
  static final j[] a;
  static final int b;
  static final j[] c = arrayOfj2;
  static final int d = arrayOfj2.length;
  k e;

  static
  {
    j[] arrayOfj1 = new j[1];
    arrayOfj1[0] = new j(7562331041294894367L);
    a = arrayOfj1;
    b = arrayOfj1.length;
    j[] arrayOfj2 = new j[1];
    arrayOfj2[0] = new j(-4627673907431431335L);
  }

  private v a(String paramString)
  {
    v localv;
    if (this.e != null)
    {
      paramString.charAt(0);
      localv = v.d;
      if (localv == v.d)
        throw new a(4L);
      if (localv != v.a)
        throw new a(3758162951L);
    }
    else
    {
      localv = v.a;
    }
    return localv;
  }

  private static void a(String paramString, int paramInt1, int paramInt2, int paramInt3, long paramLong)
  {
    byte[] arrayOfByte = new byte[8];
    arrayOfByte[7] = ((byte)(int)(paramLong >>> 56));
    arrayOfByte[6] = ((byte)(int)(paramLong >>> 48));
    arrayOfByte[5] = ((byte)(int)(paramLong >>> 40));
    arrayOfByte[4] = ((byte)(int)(paramLong >>> 32));
    arrayOfByte[3] = ((byte)(int)(paramLong >>> 24));
    arrayOfByte[2] = ((byte)(int)(paramLong >>> 16));
    arrayOfByte[1] = ((byte)(int)(paramLong >>> 8));
    arrayOfByte[0] = ((byte)(int)(paramLong >>> 0));
    if ((paramInt2 & a(paramString, arrayOfByte)[0] << paramInt3) != (paramInt1 & paramInt2))
      throw new a(3L);
  }

  private static void a(x paramx, String paramString)
  {
    aa localaa = new aa();
    paramx.a = e.a(new String[] { paramString }, false);
    String[] arrayOfString1 = { paramString };
    paramx.a = e.a(arrayOfString1, true);
    String str1 = arrayOfString1[0];
    if (paramx.a == o.a)
      throw new a(3L);
    o localo = paramx.a;
    int i = paramx.b.byteValue();
    t localt;
    label133: String str2;
    switch (n.a[localo.ordinal()])
    {
    default:
      localt = t.a;
      localaa.a = localt;
      switch (i.a[paramx.a.ordinal()])
      {
      default:
        str2 = str1;
      case 1:
      case 2:
      case 3:
      }
      break;
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    }
    String str3;
    while (true)
    {
      str3 = e.a(paramx.a, str2);
      String str4 = e.a(paramx.a, paramString);
      switch (i.a[paramx.a.ordinal()])
      {
      default:
        paramx.q = str4;
        return;
        localt = t.b;
        break label133;
        localt = t.c;
        break label133;
        switch (i)
        {
        default:
          break;
        case 0:
        case 1:
          localt = t.d;
          break label133;
          switch (i)
          {
          default:
            break;
          case 0:
          case 1:
            localt = t.e;
            break label133;
            switch (i)
            {
            default:
              break;
            case 0:
            case 1:
              localt = t.f;
              break label133;
              String[] arrayOfString5 = { str1 };
              paramx.c = e.a(arrayOfString5, arrayOfString5[0].indexOf('-'));
              str2 = arrayOfString5[0];
              continue;
              String[] arrayOfString2 = { str1 };
              paramx.c = e.a(arrayOfString2, 1);
              str2 = arrayOfString2[0];
            }
            break;
          }
          break;
        }
        break;
      case 1:
      case 2:
      case 3:
      }
    }
    b localb1 = new b(paramx.a);
    int j;
    Object localObject;
    int k;
    if ((paramx.a == o.d) || (paramx.a == o.e))
    {
      if (str3.length() != 26)
        throw new a(3L);
      j = 0;
      localObject = str3;
      k = 0;
    }
    while (true)
    {
      if (TextUtils.isEmpty((CharSequence)localObject))
        break label657;
      if ((k + j) % 5 == 0)
      {
        String[] arrayOfString3 = { localObject };
        if (e.a(arrayOfString3) != '-')
        {
          throw new a(3L);
          if (str3.length() != 25)
            throw new a(3L);
          j = 1;
          break;
        }
        localObject = arrayOfString3[0];
      }
      String[] arrayOfString4 = { localObject };
      char c1 = e.a(arrayOfString4);
      String str5 = arrayOfString4[0];
      String str6 = e.a(paramx.a, Character.toString(c1));
      if (!TextUtils.isEmpty(str6))
        c1 = str6.charAt(0);
      localb1.a(c1);
      k++;
      localObject = str5;
    }
    label657: if (localb1.a.size() != 105)
      throw new a(3L);
    b localb2 = new b(paramx.a);
    x localx = new x();
    localx.a(paramx);
    localb2.a.clear();
    localb2.a = localb1.a;
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Character.valueOf(localb2.a(14));
    arrayOfObject[1] = Character.valueOf(localb2.a(15));
    byte[] arrayOfByte = org.a.a.a.b.a.a(String.format("%c%c", arrayOfObject));
    int m = 0;
    int n = 0;
    if (n < 21)
    {
      if ((n != 0) && (n != 14) && (n != 15))
      {
        localb2.a(0x1F & arrayOfByte[m] ^ localb2.b(n * 5, 5), n * 5);
        if (m != 15)
          break label849;
      }
      label849: for (m = 0; ; m++)
      {
        n++;
        break;
      }
    }
    int i1 = localb2.b(0, 2);
    if ((i1 != 0) && (i1 != 1))
      throw new a(999L);
    localx.b = Byte.valueOf((byte)i1);
    int i2 = localb2.b(2, 3);
    if (i2 >= g.e)
      throw new a(999L);
    localx.d = g.d[i2].a;
    localx.j = g.d[i2].b;
    localx.m = g.d[i2].c;
    localaa.c = true;
    int i3 = localb2.b(5, 10);
    if (i3 > 670)
      throw new a(999L);
    label1015: u localu;
    if (i3 <= 100)
    {
      localx.s = i3;
      localaa.f = true;
      if (localx.d != s.b)
        break label1446;
      localx.g = r.a;
      localx.h = 0;
      localx.i = 9223372036854775807L;
      label1053: localaa.d = true;
      localx.f = localb2.b(28, 6);
      switch (localb2.b(34, 9))
      {
      default:
        localu = u.a;
      case 251:
      case 256:
      case 261:
      }
    }
    while (true)
    {
      localaa.e = true;
      localx.e = localu;
      localx.l = localb2.b(43, 10);
      localaa.b = true;
      int i4 = localb2.b(53, 7);
      localx.k.clear();
      if (i4 != 0)
        localx.k.add(Integer.valueOf(i4 - 1));
      int i5 = localb2.b(60, 7);
      if (i5 != 0)
        localx.k.add(Integer.valueOf(i5 - 1));
      int i6 = localb2.b(67, 7);
      if (i6 != 0)
        localx.k.add(Integer.valueOf(i6 - 1));
      localx.t = localb2.b(74, 28);
      int i7 = localb2.b(102, 2);
      localx.n = p.values()[i7];
      localx.a(paramx);
      break;
      if ((i3 > 100) && (i3 <= 280))
      {
        localx.s = (100 + 5 * (i3 - 100));
        break label1015;
      }
      if ((i3 > 280) && (i3 <= 460))
      {
        localx.s = (1000 + 50 * (i3 - 280));
        break label1015;
      }
      if ((i3 > 460) && (i3 <= 640))
      {
        localx.s = (10000 + 500 * (i3 - 460));
        break label1015;
      }
      if ((i3 <= 640) || (i3 > 670))
        break label1015;
      localx.s = (100000 + 5000 * (i3 - 640));
      break label1015;
      label1446: if (localb2.b(15, 1) == 0)
      {
        localx.g = r.b;
        if (localx.b.byteValue() == 0)
        {
          localx.h = localb2.b(16, 7);
          localx.i = 9223372036854775807L;
          break label1053;
        }
        if (localx.b.byteValue() != 1)
          break label1053;
        localx.h = localb2.b(16, 7);
        if (localb2.b(23, 1) == 1);
        for (int i8 = 1; ; i8 = 0)
        {
          if (i8 != 0)
            localx.h = (135 + 15 * localx.h);
          localx.i = 9223372036854775807L;
          break;
        }
      }
      localx.g = r.c;
      long l1 = 864000000000L * localb2.b(16, 12);
      if (localx.a == o.f);
      for (long l2 = 129067776000000000L; ; l2 = 128436192000000000L)
      {
        localx.i = (l2 + l1);
        localx.h = 0;
        break;
      }
      localu = u.b;
      continue;
      localu = u.c;
      continue;
      localu = u.d;
    }
  }

  private static byte[] a(String paramString, byte[] paramArrayOfByte)
  {
    try
    {
      MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
      localMessageDigest.reset();
      localMessageDigest.update(paramArrayOfByte);
      localMessageDigest.update(paramString.getBytes());
      byte[] arrayOfByte2 = localMessageDigest.digest();
      arrayOfByte1 = arrayOfByte2;
      return arrayOfByte1;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      while (true)
      {
        Logger.error("noalg");
        byte[] arrayOfByte1 = null;
      }
    }
  }

  public final void a(z paramz, String paramString, l paraml)
  {
    String str1 = paramString.trim().toUpperCase();
    String[] arrayOfString1 = { str1 };
    o localo = e.a(arrayOfString1, false);
    String str2 = arrayOfString1[0];
    if (localo == o.a)
      throw new a(2L);
    if ((localo == o.b) || (localo == o.c))
      return;
    if (str2.length() < 26)
      throw new a(3L);
    String str3 = e.a(localo, str2);
    paramz.b.p = str3;
    paramz.c = w.a;
    paramz.d = w.a;
    String str4 = "";
    int i;
    Object localObject2;
    String str5;
    Object localObject1;
    Object localObject4;
    Object localObject3;
    if ((localo == o.d) || (localo == o.e))
    {
      i = str2.length();
      if ((str2.charAt(i - 5) == '-') && (i >= 36))
      {
        String[] arrayOfString3 = { "" };
        e.a(localo, str2, arrayOfString3);
        String str9 = arrayOfString3[0];
        String[] arrayOfString4 = { str2, "" };
        e.a(localo, str2, "", arrayOfString4);
        String str10 = arrayOfString4[0];
        str4 = arrayOfString4[1];
        localObject2 = str2;
        str5 = "";
        localObject1 = str9;
        localObject4 = str10;
        localObject3 = str9;
      }
    }
    while (true)
    {
      label265: if (paraml.a != v.d);
      try
      {
        if (((localo != o.d) && (localo != o.e) && (localo != o.f)) || ((str4.length() == 4) && (((String)localObject3).length() == 4)))
          break;
        throw new a(1L);
      }
      catch (a locala1)
      {
        if (locala1.a != 3758162951L)
          break label988;
      }
      throw new a(999L);
      if ((str2.charAt(i - 6) == '-') && (i >= 31))
      {
        String[] arrayOfString2 = { str2, "" };
        e.a(localo, str2, "", arrayOfString2);
        String str7 = arrayOfString2[0];
        String str8 = arrayOfString2[1];
        localObject2 = str7;
        str5 = "";
        localObject1 = str8;
        localObject3 = "";
        localObject4 = "";
      }
      else if ((str2.charAt(i - 2) == '-') && (i >= 27))
      {
        localObject1 = "";
        localObject2 = "";
        str5 = str2;
        localObject3 = "";
        localObject4 = "";
      }
      else
      {
        throw new a(3L);
        if (localo != o.f)
          break label1202;
        switch (str2.length())
        {
        default:
          throw new a(3L);
        case 35:
          String[] arrayOfString6 = { str2, "" };
          e.a(localo, str2, arrayOfString6);
          String str13 = arrayOfString6[0];
          String str14 = arrayOfString6[1];
          String[] arrayOfString7 = { str13, "" };
          e.a(localo, str13, "", arrayOfString7);
          String str15 = arrayOfString7[0];
          str4 = arrayOfString7[1];
          localObject2 = str13;
          str5 = "";
          localObject1 = str14;
          localObject4 = str15;
          localObject3 = str14;
          break;
        case 31:
          String[] arrayOfString5 = { str2, "" };
          e.a(localo, str2, "", arrayOfString5);
          String str11 = arrayOfString5[0];
          String str12 = arrayOfString5[1];
          localObject2 = str11;
          str5 = "";
          localObject1 = str12;
          localObject3 = "";
          localObject4 = "";
          break;
        case 26:
          localObject1 = "";
          localObject2 = "";
          str5 = str2;
          localObject3 = "";
          localObject4 = "";
        }
      }
    }
    a((String)localObject4);
    a(paramz.b, (String)localObject4);
    e.a(localo, (String)localObject4);
    e.a(localo, str4);
    e.a(localo, (String)localObject3);
    int m = d.a(localo, str4);
    int n = d.a(localo, (String)localObject3);
    paramz.b.o = m;
    while (true)
    {
      int i2;
      int i1;
      label979: label988: int k;
      try
      {
        while (true)
        {
          paramz.c = w.c;
          i2 = 0;
          if (i2 < b)
          {
            a((String)localObject4, m, a[i2].a, a[i2].b, a[i2].c);
            if (i2 != 0)
              break label1230;
            paramz.c = w.d;
            break label1230;
          }
          paramz.c = w.b;
          try
          {
            while (true)
            {
              paramz.d = w.c;
              i1 = 0;
              if (i1 < d)
              {
                a((String)localObject4, n, c[i1].a, c[i1].b, c[i1].c);
                if (i1 != 0)
                  break label1236;
                paramz.d = w.d;
                break label1236;
              }
              paramz.d = w.b;
              paramz.a = ((String)localObject4);
              break;
              try
              {
                if (((String)localObject1).length() == 4)
                  break label1031;
                throw new a(1L);
              }
              catch (a locala2)
              {
                if (locala2.a != 3758162951L)
                  break label1162;
              }
              throw new a(999L);
              label1031: a((String)localObject2);
              a(paramz.b, (String)localObject2);
              String str6 = e.a(localo, (String)localObject2);
              int j = d.a(localo, e.a(localo, (String)localObject1));
              paramz.b.o = j;
              try
              {
                paramz.c = w.c;
                k = 0;
                if (k < b)
                {
                  a(str6, j, a[k].a, a[k].b, a[k].c);
                  if (k != 0)
                    break label1242;
                  paramz.c = w.d;
                  break label1242;
                }
                paramz.c = w.b;
                label1153: paramz.a = ((String)localObject2);
                break;
                label1162: a(str5);
                a(paramz.b, str5);
                paramz.a = str5;
              }
              catch (Exception localException1)
              {
                break label1153;
              }
            }
          }
          catch (Exception localException3)
          {
            break label979;
          }
        }
      }
      catch (Exception localException2)
      {
        continue;
      }
      label1202: localObject2 = "";
      str5 = "";
      localObject1 = "";
      localObject3 = "";
      localObject4 = "";
      break label265;
      label1230: i2++;
      continue;
      label1236: i1++;
      continue;
      label1242: k++;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.core.b.a.h
 * JD-Core Version:    0.6.2
 */