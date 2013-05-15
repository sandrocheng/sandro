package com.avast.android.mobilesecurity.app.filter.core.a;

import android.util.Log;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;
import java.util.HashMap;

public class e
{
  static
  {
    if (!e.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      a = bool;
      return;
    }
  }

  protected static void a(ByteArrayInputStream paramByteArrayInputStream, HashMap paramHashMap, Integer paramInteger)
  {
    if ((!a) && (paramByteArrayInputStream == null))
      throw new AssertionError();
    if ((!a) && (paramInteger.intValue() <= 0))
      throw new AssertionError();
    int i = paramByteArrayInputStream.available();
    int j = paramInteger.intValue();
    while (j > 0)
    {
      int k = paramByteArrayInputStream.read();
      if ((!a) && (-1 == k))
        throw new AssertionError();
      j--;
      switch (k)
      {
      default:
        Log.v("PduParser", "Not supported Content-Type parameter");
        if (-1 == c(paramByteArrayInputStream, j))
          Log.e("PduParser", "Corrupt Content-Type");
        break;
      case 131:
      case 137:
        paramByteArrayInputStream.mark(1);
        int i5 = e(paramByteArrayInputStream);
        paramByteArrayInputStream.reset();
        if (i5 > 127)
        {
          int i7 = f(paramByteArrayInputStream);
          if (i7 < c.a.length)
          {
            byte[] arrayOfByte5 = c.a[i7].getBytes();
            paramHashMap.put(Integer.valueOf(131), arrayOfByte5);
          }
        }
        while (true)
        {
          int i6 = paramByteArrayInputStream.available();
          j = paramInteger.intValue() - (i - i6);
          break;
          byte[] arrayOfByte4 = a(paramByteArrayInputStream, 0);
          if ((arrayOfByte4 != null) && (paramHashMap != null))
            paramHashMap.put(Integer.valueOf(131), arrayOfByte4);
        }
      case 138:
      case 153:
        byte[] arrayOfByte3 = a(paramByteArrayInputStream, 0);
        if ((arrayOfByte3 != null) && (paramHashMap != null))
          paramHashMap.put(Integer.valueOf(153), arrayOfByte3);
        int i4 = paramByteArrayInputStream.available();
        j = paramInteger.intValue() - (i - i4);
        break;
      case 129:
        paramByteArrayInputStream.mark(1);
        int n = e(paramByteArrayInputStream);
        paramByteArrayInputStream.reset();
        byte[] arrayOfByte2;
        if (((n > 32) && (n < 127)) || (n == 0))
          arrayOfByte2 = a(paramByteArrayInputStream, 0);
        while (true)
        {
          try
          {
            int i3 = a.a(new String(arrayOfByte2));
            paramHashMap.put(Integer.valueOf(129), Integer.valueOf(i3));
            int i2 = paramByteArrayInputStream.available();
            j = paramInteger.intValue() - (i - i2);
          }
          catch (UnsupportedEncodingException localUnsupportedEncodingException)
          {
            Log.e("PduParser", Arrays.toString(arrayOfByte2), localUnsupportedEncodingException);
            paramHashMap.put(Integer.valueOf(129), Integer.valueOf(0));
            continue;
          }
          int i1 = (int)h(paramByteArrayInputStream);
          if (paramHashMap != null)
            paramHashMap.put(Integer.valueOf(129), Integer.valueOf(i1));
        }
      case 133:
      case 151:
        byte[] arrayOfByte1 = a(paramByteArrayInputStream, 0);
        if ((arrayOfByte1 != null) && (paramHashMap != null))
          paramHashMap.put(Integer.valueOf(151), arrayOfByte1);
        int m = paramByteArrayInputStream.available();
        j = paramInteger.intValue() - (i - m);
        continue;
        j = 0;
      }
    }
    if (j != 0)
      Log.e("PduParser", "Corrupt Content-Type");
  }

  private static void a(String paramString)
  {
    Log.v("PduParser", paramString);
  }

  protected static boolean a(int paramInt)
  {
    boolean bool = false;
    if (paramInt >= 33)
    {
      bool = false;
      if (paramInt <= 126)
        break label18;
    }
    while (true)
    {
      return bool;
      label18: bool = false;
      switch (paramInt)
      {
      case 34:
      case 40:
      case 41:
      case 44:
      case 47:
      case 58:
      case 59:
      case 60:
      case 61:
      case 62:
      case 63:
      case 64:
      case 91:
      case 92:
      case 93:
      case 123:
      case 125:
      }
      bool = true;
    }
  }

  protected static boolean a(d paramd)
  {
    boolean bool1 = false;
    if (paramd == null);
    while (true)
    {
      return bool1;
      int i = paramd.a(140);
      int j = paramd.a(141);
      bool1 = false;
      if (j != 0)
        switch (i)
        {
        default:
          bool1 = false;
          break;
        case 128:
          byte[] arrayOfByte7 = paramd.b(132);
          bool1 = false;
          if (arrayOfByte7 != null)
          {
            b localb3 = paramd.c(137);
            bool1 = false;
            if (localb3 != null)
            {
              byte[] arrayOfByte8 = paramd.b(152);
              bool1 = false;
              if (arrayOfByte8 == null);
            }
          }
          break;
        case 129:
        case 130:
        case 131:
        case 132:
        case 134:
        case 133:
        case 136:
        case 135:
          do
          {
            do
            {
              do
              {
                do
                {
                  do
                  {
                    do
                    {
                      do
                      {
                        do
                        {
                          bool1 = true;
                          break;
                          int i2 = paramd.a(146);
                          bool1 = false;
                          if (i2 == 0)
                            break;
                        }
                        while (paramd.b(152) != null);
                        bool1 = false;
                        break;
                        byte[] arrayOfByte5 = paramd.b(131);
                        bool1 = false;
                        if (arrayOfByte5 == null)
                          break;
                        boolean bool4 = -1L < paramd.e(136);
                        bool1 = false;
                        if (!bool4)
                          break;
                        byte[] arrayOfByte6 = paramd.b(138);
                        bool1 = false;
                        if (arrayOfByte6 == null)
                          break;
                        boolean bool5 = -1L < paramd.e(142);
                        bool1 = false;
                        if (!bool5)
                          break;
                      }
                      while (paramd.b(152) != null);
                      bool1 = false;
                      break;
                      int i1 = paramd.a(149);
                      bool1 = false;
                      if (i1 == 0)
                        break;
                    }
                    while (paramd.b(152) != null);
                    bool1 = false;
                    break;
                    byte[] arrayOfByte4 = paramd.b(132);
                    bool1 = false;
                    if (arrayOfByte4 == null)
                      break;
                  }
                  while (-1L != paramd.e(133));
                  bool1 = false;
                  break;
                  boolean bool3 = -1L < paramd.e(133);
                  bool1 = false;
                  if (!bool3)
                    break;
                  byte[] arrayOfByte3 = paramd.b(139);
                  bool1 = false;
                  if (arrayOfByte3 == null)
                    break;
                  int n = paramd.a(149);
                  bool1 = false;
                  if (n == 0)
                    break;
                }
                while (paramd.d(151) != null);
                bool1 = false;
                break;
              }
              while (paramd.b(152) != null);
              bool1 = false;
              break;
              boolean bool2 = -1L < paramd.e(133);
              bool1 = false;
              if (!bool2)
                break;
              b localb2 = paramd.c(137);
              bool1 = false;
              if (localb2 == null)
                break;
              byte[] arrayOfByte2 = paramd.b(139);
              bool1 = false;
              if (arrayOfByte2 == null)
                break;
              int m = paramd.a(155);
              bool1 = false;
              if (m == 0)
                break;
            }
            while (paramd.d(151) != null);
            bool1 = false;
            break;
            b localb1 = paramd.c(137);
            bool1 = false;
            if (localb1 == null)
              break;
            byte[] arrayOfByte1 = paramd.b(139);
            bool1 = false;
            if (arrayOfByte1 == null)
              break;
            int k = paramd.a(155);
            bool1 = false;
            if (k == 0)
              break;
          }
          while (paramd.d(151) != null);
          bool1 = false;
        }
    }
  }

  protected static byte[] a(ByteArrayInputStream paramByteArrayInputStream, int paramInt)
  {
    if ((!a) && (paramByteArrayInputStream == null))
      throw new AssertionError();
    paramByteArrayInputStream.mark(1);
    int i = paramByteArrayInputStream.read();
    if ((!a) && (-1 == i))
      throw new AssertionError();
    if ((1 == paramInt) && (34 == i))
      paramByteArrayInputStream.mark(1);
    while (true)
    {
      return b(paramByteArrayInputStream, paramInt);
      if ((paramInt == 0) && (127 == i))
        paramByteArrayInputStream.mark(1);
      else
        paramByteArrayInputStream.reset();
    }
  }

  protected static byte[] a(ByteArrayInputStream paramByteArrayInputStream, HashMap paramHashMap)
  {
    if ((!a) && (paramByteArrayInputStream == null))
      throw new AssertionError();
    paramByteArrayInputStream.mark(1);
    int i = paramByteArrayInputStream.read();
    if ((!a) && (-1 == i))
      throw new AssertionError();
    paramByteArrayInputStream.reset();
    int j = i & 0xFF;
    int i1;
    byte[] arrayOfByte;
    if (j < 32)
    {
      int k = c(paramByteArrayInputStream);
      int m = paramByteArrayInputStream.available();
      paramByteArrayInputStream.mark(1);
      int n = paramByteArrayInputStream.read();
      if ((!a) && (-1 == n))
        throw new AssertionError();
      paramByteArrayInputStream.reset();
      i1 = n & 0xFF;
      if ((i1 >= 32) && (i1 <= 127))
      {
        arrayOfByte = a(paramByteArrayInputStream, 0);
        int i3 = k - (m - paramByteArrayInputStream.available());
        if (i3 > 0)
          a(paramByteArrayInputStream, paramHashMap, Integer.valueOf(i3));
        if (i3 < 0)
        {
          Log.e("PduParser", "Corrupt MMS message");
          arrayOfByte = c.a[0].getBytes();
        }
      }
    }
    while (true)
    {
      return arrayOfByte;
      if (i1 > 127)
      {
        int i2 = f(paramByteArrayInputStream);
        if (i2 < c.a.length)
        {
          arrayOfByte = c.a[i2].getBytes();
          break;
        }
        paramByteArrayInputStream.reset();
        arrayOfByte = a(paramByteArrayInputStream, 0);
        break;
      }
      Log.e("PduParser", "Corrupt content-type");
      arrayOfByte = c.a[0].getBytes();
      continue;
      if (j <= 127)
        arrayOfByte = a(paramByteArrayInputStream, 0);
      else
        arrayOfByte = c.a[f(paramByteArrayInputStream)].getBytes();
    }
  }

  protected static int b(ByteArrayInputStream paramByteArrayInputStream)
  {
    if ((!a) && (paramByteArrayInputStream == null))
      throw new AssertionError();
    int i = paramByteArrayInputStream.read();
    int j = 0;
    if (i == -1);
    while (true)
    {
      return i;
      while (true)
        if ((i & 0x80) != 0)
        {
          j = j << 7 | i & 0x7F;
          i = paramByteArrayInputStream.read();
          if (i == -1)
            break;
        }
      i = j << 7 | i & 0x7F;
    }
  }

  protected static boolean b(int paramInt)
  {
    boolean bool = true;
    if (((paramInt >= 32) && (paramInt <= 126)) || ((paramInt >= 128) && (paramInt <= 255)));
    while (true)
    {
      return bool;
      switch (paramInt)
      {
      case 9:
      case 10:
      case 13:
      case 11:
      case 12:
      }
      bool = false;
    }
  }

  protected static byte[] b(ByteArrayInputStream paramByteArrayInputStream, int paramInt)
  {
    if ((!a) && (paramByteArrayInputStream == null))
      throw new AssertionError();
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    int i = paramByteArrayInputStream.read();
    if ((!a) && (-1 == i))
      throw new AssertionError();
    if ((-1 != i) && (i != 0))
    {
      if (paramInt == 2)
        if (a(i))
          localByteArrayOutputStream.write(i);
      while (true)
      {
        i = paramByteArrayInputStream.read();
        if ((a) || (-1 != i))
          break;
        throw new AssertionError();
        if (b(i))
          localByteArrayOutputStream.write(i);
      }
    }
    if (localByteArrayOutputStream.size() > 0);
    for (byte[] arrayOfByte = localByteArrayOutputStream.toByteArray(); ; arrayOfByte = null)
      return arrayOfByte;
  }

  protected static int c(ByteArrayInputStream paramByteArrayInputStream)
  {
    if ((!a) && (paramByteArrayInputStream == null))
      throw new AssertionError();
    int i = paramByteArrayInputStream.read();
    if ((!a) && (-1 == i))
      throw new AssertionError();
    int j = i & 0xFF;
    if (j <= 30);
    while (true)
    {
      return j;
      if (j != 31)
        break;
      j = b(paramByteArrayInputStream);
    }
    throw new RuntimeException("Value length > LENGTH_QUOTE!");
  }

  protected static int c(ByteArrayInputStream paramByteArrayInputStream, int paramInt)
  {
    if ((!a) && (paramByteArrayInputStream == null))
      throw new AssertionError();
    int i = paramByteArrayInputStream.read(new byte[paramInt], 0, paramInt);
    if (i < paramInt)
      i = -1;
    return i;
  }

  protected static b d(ByteArrayInputStream paramByteArrayInputStream)
  {
    if ((!a) && (paramByteArrayInputStream == null))
      throw new AssertionError();
    paramByteArrayInputStream.mark(1);
    int i = paramByteArrayInputStream.read();
    if ((!a) && (-1 == i))
      throw new AssertionError();
    int j = i & 0xFF;
    paramByteArrayInputStream.reset();
    if (j < 32)
      c(paramByteArrayInputStream);
    b localb;
    for (int k = f(paramByteArrayInputStream); ; k = 0)
    {
      byte[] arrayOfByte = a(paramByteArrayInputStream, 0);
      if (k != 0);
      try
      {
        localb = new b(k, arrayOfByte);
        break;
        localb = new b(arrayOfByte);
      }
      catch (Exception localException)
      {
        localb = null;
      }
    }
    return localb;
  }

  protected static int e(ByteArrayInputStream paramByteArrayInputStream)
  {
    if ((!a) && (paramByteArrayInputStream == null))
      throw new AssertionError();
    int i = paramByteArrayInputStream.read();
    if ((!a) && (-1 == i))
      throw new AssertionError();
    return i & 0xFF;
  }

  protected static int f(ByteArrayInputStream paramByteArrayInputStream)
  {
    if ((!a) && (paramByteArrayInputStream == null))
      throw new AssertionError();
    int i = paramByteArrayInputStream.read();
    if ((!a) && (-1 == i))
      throw new AssertionError();
    return i & 0x7F;
  }

  protected static long g(ByteArrayInputStream paramByteArrayInputStream)
  {
    if ((!a) && (paramByteArrayInputStream == null))
      throw new AssertionError();
    int i = paramByteArrayInputStream.read();
    if ((!a) && (-1 == i))
      throw new AssertionError();
    int j = i & 0xFF;
    if (j > 8)
      throw new RuntimeException("Octet count greater than 8 and I can't represent that!");
    long l = 0L;
    for (int k = 0; k < j; k++)
    {
      int m = paramByteArrayInputStream.read();
      if ((!a) && (-1 == m))
        throw new AssertionError();
      l = (l << 8) + (m & 0xFF);
    }
    return l;
  }

  protected static long h(ByteArrayInputStream paramByteArrayInputStream)
  {
    if ((!a) && (paramByteArrayInputStream == null))
      throw new AssertionError();
    paramByteArrayInputStream.mark(1);
    int i = paramByteArrayInputStream.read();
    if ((!a) && (-1 == i))
      throw new AssertionError();
    paramByteArrayInputStream.reset();
    if (i > 127);
    for (long l = f(paramByteArrayInputStream); ; l = g(paramByteArrayInputStream))
      return l;
  }

  // ERROR //
  protected d a(ByteArrayInputStream paramByteArrayInputStream)
  {
    // Byte code:
    //   0: aload_1
    //   1: ifnonnull +9 -> 10
    //   4: aconst_null
    //   5: astore 4
    //   7: aload 4
    //   9: areturn
    //   10: new 121	com/avast/android/mobilesecurity/app/filter/core/a/d
    //   13: dup
    //   14: invokespecial 198	com/avast/android/mobilesecurity/app/filter/core/a/d:<init>	()V
    //   17: astore_2
    //   18: iconst_1
    //   19: istore_3
    //   20: iload_3
    //   21: ifeq +1871 -> 1892
    //   24: aload_1
    //   25: invokevirtual 36	java/io/ByteArrayInputStream:available	()I
    //   28: ifle +1864 -> 1892
    //   31: aload_1
    //   32: invokestatic 65	com/avast/android/mobilesecurity/app/filter/core/a/e:e	(Ljava/io/ByteArrayInputStream;)I
    //   35: istore 5
    //   37: iload 5
    //   39: tableswitch	default:+265 -> 304, 129:+750->789, 130:+750->789, 131:+623->662, 132:+1780->1819, 133:+535->574, 134:+446->485, 135:+883->922, 136:+883->922, 137:+997->1036, 138:+1195->1234, 139:+623->662, 140:+273->312, 141:+1420->1459, 142:+535->574, 143:+446->485, 144:+446->485, 145:+446->485, 146:+446->485, 147:+687->726, 148:+446->485, 149:+446->485, 150:+687->726, 151:+750->789, 152:+623->662, 153:+446->485, 154:+687->726, 155:+446->485, 156:+446->485, 157:+883->922, 158:+623->662, 159:+535->574, 160:+1510->1549, 161:+1616->1655, 162:+446->485, 163:+446->485, 164:+1703->1742, 165:+446->485, 166:+687->726, 167:+446->485, 168:+265->304, 169:+446->485, 170:+1721->1760, 171:+446->485, 172:+1721->1760, 173:+579->618, 174:+265->304, 175:+579->618, 176:+265->304, 177:+446->485, 178:+1771->1810, 179:+579->618, 180:+446->485, 181:+687->726, 182:+687->726, 183:+623->662, 184:+623->662, 185:+623->662, 186:+446->485, 187:+446->485, 188:+446->485, 189:+623->662, 190:+623->662, 191:+446->485
    //   305: goto_w 184 0 202 167
    //   310: impdep1
    //   311: <illegal opcode>
    //   312: aload_1
    //   313: invokestatic 65	com/avast/android/mobilesecurity/app/filter/core/a/e:e	(Ljava/io/ByteArrayInputStream;)I
    //   316: istore 74
    //   318: iload 74
    //   320: tableswitch	default:+76 -> 396, 137:+128->448, 138:+128->448, 139:+128->448, 140:+128->448, 141:+128->448, 142:+128->448, 143:+128->448, 144:+128->448, 145:+128->448, 146:+128->448, 147:+128->448, 148:+128->448, 149:+128->448, 150:+128->448, 151:+128->448
    //   397: iload 74
    //   399: iload 5
    //   401: invokevirtual 205	com/avast/android/mobilesecurity/app/filter/core/a/d:a	(II)V
    //   404: goto -384 -> 20
    //   407: astore 76
    //   409: new 207	java/lang/StringBuilder
    //   412: dup
    //   413: invokespecial 208	java/lang/StringBuilder:<init>	()V
    //   416: ldc 210
    //   418: invokevirtual 214	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   421: iload 74
    //   423: invokevirtual 217	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   426: ldc 219
    //   428: invokevirtual 214	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   431: iload 5
    //   433: invokevirtual 217	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   436: invokevirtual 222	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   439: invokestatic 202	com/avast/android/mobilesecurity/app/filter/core/a/e:a	(Ljava/lang/String;)V
    //   442: aconst_null
    //   443: astore 4
    //   445: goto -438 -> 7
    //   448: aconst_null
    //   449: astore 4
    //   451: goto -444 -> 7
    //   454: astore 75
    //   456: new 207	java/lang/StringBuilder
    //   459: dup
    //   460: invokespecial 208	java/lang/StringBuilder:<init>	()V
    //   463: iload 5
    //   465: invokevirtual 217	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   468: ldc 224
    //   470: invokevirtual 214	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   473: invokevirtual 222	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   476: invokestatic 202	com/avast/android/mobilesecurity/app/filter/core/a/e:a	(Ljava/lang/String;)V
    //   479: aconst_null
    //   480: astore 4
    //   482: goto -475 -> 7
    //   485: aload_1
    //   486: invokestatic 65	com/avast/android/mobilesecurity/app/filter/core/a/e:e	(Ljava/io/ByteArrayInputStream;)I
    //   489: istore 71
    //   491: aload_2
    //   492: iload 71
    //   494: iload 5
    //   496: invokevirtual 205	com/avast/android/mobilesecurity/app/filter/core/a/d:a	(II)V
    //   499: goto -479 -> 20
    //   502: astore 73
    //   504: new 207	java/lang/StringBuilder
    //   507: dup
    //   508: invokespecial 208	java/lang/StringBuilder:<init>	()V
    //   511: ldc 210
    //   513: invokevirtual 214	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   516: iload 71
    //   518: invokevirtual 217	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   521: ldc 219
    //   523: invokevirtual 214	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   526: iload 5
    //   528: invokevirtual 217	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   531: invokevirtual 222	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   534: invokestatic 202	com/avast/android/mobilesecurity/app/filter/core/a/e:a	(Ljava/lang/String;)V
    //   537: aconst_null
    //   538: astore 4
    //   540: goto -533 -> 7
    //   543: astore 72
    //   545: new 207	java/lang/StringBuilder
    //   548: dup
    //   549: invokespecial 208	java/lang/StringBuilder:<init>	()V
    //   552: iload 5
    //   554: invokevirtual 217	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   557: ldc 224
    //   559: invokevirtual 214	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   562: invokevirtual 222	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   565: invokestatic 202	com/avast/android/mobilesecurity/app/filter/core/a/e:a	(Ljava/lang/String;)V
    //   568: aconst_null
    //   569: astore 4
    //   571: goto -564 -> 7
    //   574: aload_2
    //   575: aload_1
    //   576: invokestatic 192	com/avast/android/mobilesecurity/app/filter/core/a/e:g	(Ljava/io/ByteArrayInputStream;)J
    //   579: iload 5
    //   581: invokevirtual 227	com/avast/android/mobilesecurity/app/filter/core/a/d:a	(JI)V
    //   584: goto -564 -> 20
    //   587: astore 70
    //   589: new 207	java/lang/StringBuilder
    //   592: dup
    //   593: invokespecial 208	java/lang/StringBuilder:<init>	()V
    //   596: iload 5
    //   598: invokevirtual 217	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   601: ldc 229
    //   603: invokevirtual 214	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   606: invokevirtual 222	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   609: invokestatic 202	com/avast/android/mobilesecurity/app/filter/core/a/e:a	(Ljava/lang/String;)V
    //   612: aconst_null
    //   613: astore 4
    //   615: goto -608 -> 7
    //   618: aload_2
    //   619: aload_1
    //   620: invokestatic 116	com/avast/android/mobilesecurity/app/filter/core/a/e:h	(Ljava/io/ByteArrayInputStream;)J
    //   623: iload 5
    //   625: invokevirtual 227	com/avast/android/mobilesecurity/app/filter/core/a/d:a	(JI)V
    //   628: goto -608 -> 20
    //   631: astore 69
    //   633: new 207	java/lang/StringBuilder
    //   636: dup
    //   637: invokespecial 208	java/lang/StringBuilder:<init>	()V
    //   640: iload 5
    //   642: invokevirtual 217	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   645: ldc 229
    //   647: invokevirtual 214	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   650: invokevirtual 222	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   653: invokestatic 202	com/avast/android/mobilesecurity/app/filter/core/a/e:a	(Ljava/lang/String;)V
    //   656: aconst_null
    //   657: astore 4
    //   659: goto -652 -> 7
    //   662: aload_1
    //   663: iconst_0
    //   664: invokestatic 95	com/avast/android/mobilesecurity/app/filter/core/a/e:a	(Ljava/io/ByteArrayInputStream;I)[B
    //   667: astore 66
    //   669: aload 66
    //   671: ifnull -651 -> 20
    //   674: aload_2
    //   675: aload 66
    //   677: iload 5
    //   679: invokevirtual 232	com/avast/android/mobilesecurity/app/filter/core/a/d:a	([BI)V
    //   682: goto -662 -> 20
    //   685: astore 68
    //   687: ldc 234
    //   689: invokestatic 202	com/avast/android/mobilesecurity/app/filter/core/a/e:a	(Ljava/lang/String;)V
    //   692: goto -672 -> 20
    //   695: astore 67
    //   697: new 207	java/lang/StringBuilder
    //   700: dup
    //   701: invokespecial 208	java/lang/StringBuilder:<init>	()V
    //   704: iload 5
    //   706: invokevirtual 217	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   709: ldc 236
    //   711: invokevirtual 214	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   714: invokevirtual 222	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   717: invokestatic 202	com/avast/android/mobilesecurity/app/filter/core/a/e:a	(Ljava/lang/String;)V
    //   720: aconst_null
    //   721: astore 4
    //   723: goto -716 -> 7
    //   726: aload_1
    //   727: invokestatic 238	com/avast/android/mobilesecurity/app/filter/core/a/e:d	(Ljava/io/ByteArrayInputStream;)Lcom/avast/android/mobilesecurity/app/filter/core/a/b;
    //   730: astore 63
    //   732: aload 63
    //   734: ifnull -714 -> 20
    //   737: aload_2
    //   738: aload 63
    //   740: iload 5
    //   742: invokevirtual 241	com/avast/android/mobilesecurity/app/filter/core/a/d:a	(Lcom/avast/android/mobilesecurity/app/filter/core/a/b;I)V
    //   745: goto -725 -> 20
    //   748: astore 65
    //   750: ldc 234
    //   752: invokestatic 202	com/avast/android/mobilesecurity/app/filter/core/a/e:a	(Ljava/lang/String;)V
    //   755: goto -735 -> 20
    //   758: astore 64
    //   760: new 207	java/lang/StringBuilder
    //   763: dup
    //   764: invokespecial 208	java/lang/StringBuilder:<init>	()V
    //   767: iload 5
    //   769: invokevirtual 217	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   772: ldc 243
    //   774: invokevirtual 214	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   777: invokevirtual 222	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   780: invokestatic 202	com/avast/android/mobilesecurity/app/filter/core/a/e:a	(Ljava/lang/String;)V
    //   783: aconst_null
    //   784: astore 4
    //   786: goto -779 -> 7
    //   789: aload_1
    //   790: invokestatic 238	com/avast/android/mobilesecurity/app/filter/core/a/e:d	(Ljava/io/ByteArrayInputStream;)Lcom/avast/android/mobilesecurity/app/filter/core/a/b;
    //   793: astore 56
    //   795: aload 56
    //   797: ifnull -777 -> 20
    //   800: aload 56
    //   802: invokevirtual 245	com/avast/android/mobilesecurity/app/filter/core/a/b:a	()[B
    //   805: astore 57
    //   807: aload 57
    //   809: ifnull +48 -> 857
    //   812: new 78	java/lang/String
    //   815: dup
    //   816: aload 57
    //   818: invokespecial 98	java/lang/String:<init>	([B)V
    //   821: astore 58
    //   823: aload 58
    //   825: ldc 247
    //   827: invokevirtual 250	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   830: istore 59
    //   832: iload 59
    //   834: ifle +13 -> 847
    //   837: aload 58
    //   839: iconst_0
    //   840: iload 59
    //   842: invokevirtual 254	java/lang/String:substring	(II)Ljava/lang/String;
    //   845: astore 58
    //   847: aload 56
    //   849: aload 58
    //   851: invokevirtual 82	java/lang/String:getBytes	()[B
    //   854: invokevirtual 256	com/avast/android/mobilesecurity/app/filter/core/a/b:a	([B)V
    //   857: aload_2
    //   858: aload 56
    //   860: iload 5
    //   862: invokevirtual 258	com/avast/android/mobilesecurity/app/filter/core/a/d:b	(Lcom/avast/android/mobilesecurity/app/filter/core/a/b;I)V
    //   865: goto -845 -> 20
    //   868: astore 62
    //   870: ldc 234
    //   872: invokestatic 202	com/avast/android/mobilesecurity/app/filter/core/a/e:a	(Ljava/lang/String;)V
    //   875: goto -855 -> 20
    //   878: astore 60
    //   880: ldc 234
    //   882: invokestatic 202	com/avast/android/mobilesecurity/app/filter/core/a/e:a	(Ljava/lang/String;)V
    //   885: aconst_null
    //   886: astore 4
    //   888: goto -881 -> 7
    //   891: astore 61
    //   893: new 207	java/lang/StringBuilder
    //   896: dup
    //   897: invokespecial 208	java/lang/StringBuilder:<init>	()V
    //   900: iload 5
    //   902: invokevirtual 217	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   905: ldc 243
    //   907: invokevirtual 214	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   910: invokevirtual 222	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   913: invokestatic 202	com/avast/android/mobilesecurity/app/filter/core/a/e:a	(Ljava/lang/String;)V
    //   916: aconst_null
    //   917: astore 4
    //   919: goto -912 -> 7
    //   922: aload_1
    //   923: invokestatic 145	com/avast/android/mobilesecurity/app/filter/core/a/e:c	(Ljava/io/ByteArrayInputStream;)I
    //   926: pop
    //   927: aload_1
    //   928: invokestatic 65	com/avast/android/mobilesecurity/app/filter/core/a/e:e	(Ljava/io/ByteArrayInputStream;)I
    //   931: istore 49
    //   933: aload_1
    //   934: invokestatic 192	com/avast/android/mobilesecurity/app/filter/core/a/e:g	(Ljava/io/ByteArrayInputStream;)J
    //   937: lstore 51
    //   939: lload 51
    //   941: lstore 53
    //   943: sipush 129
    //   946: iload 49
    //   948: if_icmpne +15 -> 963
    //   951: lload 53
    //   953: invokestatic 264	java/lang/System:currentTimeMillis	()J
    //   956: ldc2_w 265
    //   959: ldiv
    //   960: ladd
    //   961: lstore 53
    //   963: aload_2
    //   964: lload 53
    //   966: iload 5
    //   968: invokevirtual 227	com/avast/android/mobilesecurity/app/filter/core/a/d:a	(JI)V
    //   971: goto -951 -> 20
    //   974: astore 55
    //   976: new 207	java/lang/StringBuilder
    //   979: dup
    //   980: invokespecial 208	java/lang/StringBuilder:<init>	()V
    //   983: iload 5
    //   985: invokevirtual 217	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   988: ldc 229
    //   990: invokevirtual 214	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   993: invokevirtual 222	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   996: invokestatic 202	com/avast/android/mobilesecurity/app/filter/core/a/e:a	(Ljava/lang/String;)V
    //   999: aconst_null
    //   1000: astore 4
    //   1002: goto -995 -> 7
    //   1005: astore 50
    //   1007: new 207	java/lang/StringBuilder
    //   1010: dup
    //   1011: invokespecial 208	java/lang/StringBuilder:<init>	()V
    //   1014: iload 5
    //   1016: invokevirtual 217	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1019: ldc 229
    //   1021: invokevirtual 214	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1024: invokevirtual 222	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1027: invokestatic 202	com/avast/android/mobilesecurity/app/filter/core/a/e:a	(Ljava/lang/String;)V
    //   1030: aconst_null
    //   1031: astore 4
    //   1033: goto -1026 -> 7
    //   1036: aload_1
    //   1037: invokestatic 145	com/avast/android/mobilesecurity/app/filter/core/a/e:c	(Ljava/io/ByteArrayInputStream;)I
    //   1040: pop
    //   1041: sipush 128
    //   1044: aload_1
    //   1045: invokestatic 65	com/avast/android/mobilesecurity/app/filter/core/a/e:e	(Ljava/io/ByteArrayInputStream;)I
    //   1048: if_icmpne +106 -> 1154
    //   1051: aload_1
    //   1052: invokestatic 238	com/avast/android/mobilesecurity/app/filter/core/a/e:d	(Ljava/io/ByteArrayInputStream;)Lcom/avast/android/mobilesecurity/app/filter/core/a/b;
    //   1055: astore 40
    //   1057: aload 40
    //   1059: ifnull +60 -> 1119
    //   1062: aload 40
    //   1064: invokevirtual 245	com/avast/android/mobilesecurity/app/filter/core/a/b:a	()[B
    //   1067: astore 44
    //   1069: aload 44
    //   1071: ifnull +48 -> 1119
    //   1074: new 78	java/lang/String
    //   1077: dup
    //   1078: aload 44
    //   1080: invokespecial 98	java/lang/String:<init>	([B)V
    //   1083: astore 45
    //   1085: aload 45
    //   1087: ldc 247
    //   1089: invokevirtual 250	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   1092: istore 46
    //   1094: iload 46
    //   1096: ifle +13 -> 1109
    //   1099: aload 45
    //   1101: iconst_0
    //   1102: iload 46
    //   1104: invokevirtual 254	java/lang/String:substring	(II)Ljava/lang/String;
    //   1107: astore 45
    //   1109: aload 40
    //   1111: aload 45
    //   1113: invokevirtual 82	java/lang/String:getBytes	()[B
    //   1116: invokevirtual 256	com/avast/android/mobilesecurity/app/filter/core/a/b:a	([B)V
    //   1119: aload_2
    //   1120: aload 40
    //   1122: sipush 137
    //   1125: invokevirtual 241	com/avast/android/mobilesecurity/app/filter/core/a/d:a	(Lcom/avast/android/mobilesecurity/app/filter/core/a/b;I)V
    //   1128: goto -1108 -> 20
    //   1131: astore 42
    //   1133: ldc 234
    //   1135: invokestatic 202	com/avast/android/mobilesecurity/app/filter/core/a/e:a	(Ljava/lang/String;)V
    //   1138: goto -1118 -> 20
    //   1141: astore 47
    //   1143: ldc 234
    //   1145: invokestatic 202	com/avast/android/mobilesecurity/app/filter/core/a/e:a	(Ljava/lang/String;)V
    //   1148: aconst_null
    //   1149: astore 4
    //   1151: goto -1144 -> 7
    //   1154: new 183	com/avast/android/mobilesecurity/app/filter/core/a/b
    //   1157: dup
    //   1158: ldc_w 268
    //   1161: invokevirtual 82	java/lang/String:getBytes	()[B
    //   1164: invokespecial 187	com/avast/android/mobilesecurity/app/filter/core/a/b:<init>	([B)V
    //   1167: astore 40
    //   1169: goto -50 -> 1119
    //   1172: astore 43
    //   1174: new 207	java/lang/StringBuilder
    //   1177: dup
    //   1178: invokespecial 208	java/lang/StringBuilder:<init>	()V
    //   1181: iload 5
    //   1183: invokevirtual 217	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1186: ldc 243
    //   1188: invokevirtual 214	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1191: invokevirtual 222	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1194: invokestatic 202	com/avast/android/mobilesecurity/app/filter/core/a/e:a	(Ljava/lang/String;)V
    //   1197: aconst_null
    //   1198: astore 4
    //   1200: goto -1193 -> 7
    //   1203: astore 41
    //   1205: new 207	java/lang/StringBuilder
    //   1208: dup
    //   1209: invokespecial 208	java/lang/StringBuilder:<init>	()V
    //   1212: iload 5
    //   1214: invokevirtual 217	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1217: ldc 243
    //   1219: invokevirtual 214	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1222: invokevirtual 222	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1225: invokestatic 202	com/avast/android/mobilesecurity/app/filter/core/a/e:a	(Ljava/lang/String;)V
    //   1228: aconst_null
    //   1229: astore 4
    //   1231: goto -1224 -> 7
    //   1234: aload_1
    //   1235: iconst_1
    //   1236: invokevirtual 62	java/io/ByteArrayInputStream:mark	(I)V
    //   1239: aload_1
    //   1240: invokestatic 65	com/avast/android/mobilesecurity/app/filter/core/a/e:e	(Ljava/io/ByteArrayInputStream;)I
    //   1243: istore 33
    //   1245: iload 33
    //   1247: sipush 128
    //   1250: if_icmplt +140 -> 1390
    //   1253: sipush 128
    //   1256: iload 33
    //   1258: if_icmpne +29 -> 1287
    //   1261: aload_2
    //   1262: ldc_w 270
    //   1265: invokevirtual 82	java/lang/String:getBytes	()[B
    //   1268: sipush 138
    //   1271: invokevirtual 232	com/avast/android/mobilesecurity/app/filter/core/a/d:a	([BI)V
    //   1274: goto -1254 -> 20
    //   1277: astore 38
    //   1279: ldc 234
    //   1281: invokestatic 202	com/avast/android/mobilesecurity/app/filter/core/a/e:a	(Ljava/lang/String;)V
    //   1284: goto -1264 -> 20
    //   1287: sipush 129
    //   1290: iload 33
    //   1292: if_icmpne +50 -> 1342
    //   1295: aload_2
    //   1296: ldc_w 272
    //   1299: invokevirtual 82	java/lang/String:getBytes	()[B
    //   1302: sipush 138
    //   1305: invokevirtual 232	com/avast/android/mobilesecurity/app/filter/core/a/d:a	([BI)V
    //   1308: goto -1288 -> 20
    //   1311: astore 37
    //   1313: new 207	java/lang/StringBuilder
    //   1316: dup
    //   1317: invokespecial 208	java/lang/StringBuilder:<init>	()V
    //   1320: iload 5
    //   1322: invokevirtual 217	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1325: ldc 236
    //   1327: invokevirtual 214	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1330: invokevirtual 222	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1333: invokestatic 202	com/avast/android/mobilesecurity/app/filter/core/a/e:a	(Ljava/lang/String;)V
    //   1336: aconst_null
    //   1337: astore 4
    //   1339: goto -1332 -> 7
    //   1342: sipush 130
    //   1345: iload 33
    //   1347: if_icmpne +19 -> 1366
    //   1350: aload_2
    //   1351: ldc_w 274
    //   1354: invokevirtual 82	java/lang/String:getBytes	()[B
    //   1357: sipush 138
    //   1360: invokevirtual 232	com/avast/android/mobilesecurity/app/filter/core/a/d:a	([BI)V
    //   1363: goto -1343 -> 20
    //   1366: sipush 131
    //   1369: iload 33
    //   1371: if_icmpne -1351 -> 20
    //   1374: aload_2
    //   1375: ldc_w 276
    //   1378: invokevirtual 82	java/lang/String:getBytes	()[B
    //   1381: sipush 138
    //   1384: invokevirtual 232	com/avast/android/mobilesecurity/app/filter/core/a/d:a	([BI)V
    //   1387: goto -1367 -> 20
    //   1390: aload_1
    //   1391: invokevirtual 68	java/io/ByteArrayInputStream:reset	()V
    //   1394: aload_1
    //   1395: iconst_0
    //   1396: invokestatic 95	com/avast/android/mobilesecurity/app/filter/core/a/e:a	(Ljava/io/ByteArrayInputStream;I)[B
    //   1399: astore 34
    //   1401: aload 34
    //   1403: ifnull -1383 -> 20
    //   1406: aload_2
    //   1407: aload 34
    //   1409: sipush 138
    //   1412: invokevirtual 232	com/avast/android/mobilesecurity/app/filter/core/a/d:a	([BI)V
    //   1415: goto -1395 -> 20
    //   1418: astore 36
    //   1420: ldc 234
    //   1422: invokestatic 202	com/avast/android/mobilesecurity/app/filter/core/a/e:a	(Ljava/lang/String;)V
    //   1425: goto -1405 -> 20
    //   1428: astore 35
    //   1430: new 207	java/lang/StringBuilder
    //   1433: dup
    //   1434: invokespecial 208	java/lang/StringBuilder:<init>	()V
    //   1437: iload 5
    //   1439: invokevirtual 217	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1442: ldc 236
    //   1444: invokevirtual 214	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1447: invokevirtual 222	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1450: invokestatic 202	com/avast/android/mobilesecurity/app/filter/core/a/e:a	(Ljava/lang/String;)V
    //   1453: aconst_null
    //   1454: astore 4
    //   1456: goto -1449 -> 7
    //   1459: aload_1
    //   1460: invokestatic 71	com/avast/android/mobilesecurity/app/filter/core/a/e:f	(Ljava/io/ByteArrayInputStream;)I
    //   1463: istore 30
    //   1465: aload_2
    //   1466: iload 30
    //   1468: sipush 141
    //   1471: invokevirtual 205	com/avast/android/mobilesecurity/app/filter/core/a/d:a	(II)V
    //   1474: goto -1454 -> 20
    //   1477: astore 32
    //   1479: new 207	java/lang/StringBuilder
    //   1482: dup
    //   1483: invokespecial 208	java/lang/StringBuilder:<init>	()V
    //   1486: ldc 210
    //   1488: invokevirtual 214	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1491: iload 30
    //   1493: invokevirtual 217	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1496: ldc 219
    //   1498: invokevirtual 214	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1501: iload 5
    //   1503: invokevirtual 217	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1506: invokevirtual 222	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1509: invokestatic 202	com/avast/android/mobilesecurity/app/filter/core/a/e:a	(Ljava/lang/String;)V
    //   1512: aconst_null
    //   1513: astore 4
    //   1515: goto -1508 -> 7
    //   1518: astore 31
    //   1520: new 207	java/lang/StringBuilder
    //   1523: dup
    //   1524: invokespecial 208	java/lang/StringBuilder:<init>	()V
    //   1527: iload 5
    //   1529: invokevirtual 217	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1532: ldc 224
    //   1534: invokevirtual 214	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1537: invokevirtual 222	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1540: invokestatic 202	com/avast/android/mobilesecurity/app/filter/core/a/e:a	(Ljava/lang/String;)V
    //   1543: aconst_null
    //   1544: astore 4
    //   1546: goto -1539 -> 7
    //   1549: aload_1
    //   1550: invokestatic 145	com/avast/android/mobilesecurity/app/filter/core/a/e:c	(Ljava/io/ByteArrayInputStream;)I
    //   1553: pop
    //   1554: aload_1
    //   1555: invokestatic 116	com/avast/android/mobilesecurity/app/filter/core/a/e:h	(Ljava/io/ByteArrayInputStream;)J
    //   1558: pop2
    //   1559: aload_1
    //   1560: invokestatic 238	com/avast/android/mobilesecurity/app/filter/core/a/e:d	(Ljava/io/ByteArrayInputStream;)Lcom/avast/android/mobilesecurity/app/filter/core/a/b;
    //   1563: astore 27
    //   1565: aload 27
    //   1567: ifnull -1547 -> 20
    //   1570: aload_2
    //   1571: aload 27
    //   1573: sipush 160
    //   1576: invokevirtual 241	com/avast/android/mobilesecurity/app/filter/core/a/d:a	(Lcom/avast/android/mobilesecurity/app/filter/core/a/b;I)V
    //   1579: goto -1559 -> 20
    //   1582: astore 29
    //   1584: ldc 234
    //   1586: invokestatic 202	com/avast/android/mobilesecurity/app/filter/core/a/e:a	(Ljava/lang/String;)V
    //   1589: goto -1569 -> 20
    //   1592: astore 24
    //   1594: new 207	java/lang/StringBuilder
    //   1597: dup
    //   1598: invokespecial 208	java/lang/StringBuilder:<init>	()V
    //   1601: iload 5
    //   1603: invokevirtual 217	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1606: ldc_w 278
    //   1609: invokevirtual 214	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1612: invokevirtual 222	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1615: invokestatic 202	com/avast/android/mobilesecurity/app/filter/core/a/e:a	(Ljava/lang/String;)V
    //   1618: aconst_null
    //   1619: astore 4
    //   1621: goto -1614 -> 7
    //   1624: astore 28
    //   1626: new 207	java/lang/StringBuilder
    //   1629: dup
    //   1630: invokespecial 208	java/lang/StringBuilder:<init>	()V
    //   1633: iload 5
    //   1635: invokevirtual 217	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1638: ldc 243
    //   1640: invokevirtual 214	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1643: invokevirtual 222	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1646: invokestatic 202	com/avast/android/mobilesecurity/app/filter/core/a/e:a	(Ljava/lang/String;)V
    //   1649: aconst_null
    //   1650: astore 4
    //   1652: goto -1645 -> 7
    //   1655: aload_1
    //   1656: invokestatic 145	com/avast/android/mobilesecurity/app/filter/core/a/e:c	(Ljava/io/ByteArrayInputStream;)I
    //   1659: pop
    //   1660: aload_1
    //   1661: invokestatic 116	com/avast/android/mobilesecurity/app/filter/core/a/e:h	(Ljava/io/ByteArrayInputStream;)J
    //   1664: pop2
    //   1665: aload_2
    //   1666: aload_1
    //   1667: invokestatic 192	com/avast/android/mobilesecurity/app/filter/core/a/e:g	(Ljava/io/ByteArrayInputStream;)J
    //   1670: sipush 161
    //   1673: invokevirtual 227	com/avast/android/mobilesecurity/app/filter/core/a/d:a	(JI)V
    //   1676: goto -1656 -> 20
    //   1679: astore 22
    //   1681: new 207	java/lang/StringBuilder
    //   1684: dup
    //   1685: invokespecial 208	java/lang/StringBuilder:<init>	()V
    //   1688: iload 5
    //   1690: invokevirtual 217	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1693: ldc 229
    //   1695: invokevirtual 214	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1698: invokevirtual 222	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1701: invokestatic 202	com/avast/android/mobilesecurity/app/filter/core/a/e:a	(Ljava/lang/String;)V
    //   1704: aconst_null
    //   1705: astore 4
    //   1707: goto -1700 -> 7
    //   1710: astore 19
    //   1712: new 207	java/lang/StringBuilder
    //   1715: dup
    //   1716: invokespecial 208	java/lang/StringBuilder:<init>	()V
    //   1719: iload 5
    //   1721: invokevirtual 217	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1724: ldc_w 278
    //   1727: invokevirtual 214	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1730: invokevirtual 222	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1733: invokestatic 202	com/avast/android/mobilesecurity/app/filter/core/a/e:a	(Ljava/lang/String;)V
    //   1736: aconst_null
    //   1737: astore 4
    //   1739: goto -1732 -> 7
    //   1742: aload_1
    //   1743: invokestatic 145	com/avast/android/mobilesecurity/app/filter/core/a/e:c	(Ljava/io/ByteArrayInputStream;)I
    //   1746: pop
    //   1747: aload_1
    //   1748: invokestatic 65	com/avast/android/mobilesecurity/app/filter/core/a/e:e	(Ljava/io/ByteArrayInputStream;)I
    //   1751: pop
    //   1752: aload_1
    //   1753: invokestatic 238	com/avast/android/mobilesecurity/app/filter/core/a/e:d	(Ljava/io/ByteArrayInputStream;)Lcom/avast/android/mobilesecurity/app/filter/core/a/b;
    //   1756: pop
    //   1757: goto -1737 -> 20
    //   1760: aload_1
    //   1761: invokestatic 145	com/avast/android/mobilesecurity/app/filter/core/a/e:c	(Ljava/io/ByteArrayInputStream;)I
    //   1764: pop
    //   1765: aload_1
    //   1766: invokestatic 65	com/avast/android/mobilesecurity/app/filter/core/a/e:e	(Ljava/io/ByteArrayInputStream;)I
    //   1769: pop
    //   1770: aload_1
    //   1771: invokestatic 116	com/avast/android/mobilesecurity/app/filter/core/a/e:h	(Ljava/io/ByteArrayInputStream;)J
    //   1774: pop2
    //   1775: goto -1755 -> 20
    //   1778: astore 12
    //   1780: new 207	java/lang/StringBuilder
    //   1783: dup
    //   1784: invokespecial 208	java/lang/StringBuilder:<init>	()V
    //   1787: iload 5
    //   1789: invokevirtual 217	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1792: ldc_w 278
    //   1795: invokevirtual 214	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1798: invokevirtual 222	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1801: invokestatic 202	com/avast/android/mobilesecurity/app/filter/core/a/e:a	(Ljava/lang/String;)V
    //   1804: aconst_null
    //   1805: astore 4
    //   1807: goto -1800 -> 7
    //   1810: aload_1
    //   1811: aconst_null
    //   1812: invokestatic 280	com/avast/android/mobilesecurity/app/filter/core/a/e:a	(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B
    //   1815: pop
    //   1816: goto -1796 -> 20
    //   1819: aload_1
    //   1820: new 88	java/util/HashMap
    //   1823: dup
    //   1824: invokespecial 281	java/util/HashMap:<init>	()V
    //   1827: invokestatic 280	com/avast/android/mobilesecurity/app/filter/core/a/e:a	(Ljava/io/ByteArrayInputStream;Ljava/util/HashMap;)[B
    //   1830: astore 6
    //   1832: aload 6
    //   1834: ifnull +12 -> 1846
    //   1837: aload_2
    //   1838: aload 6
    //   1840: sipush 132
    //   1843: invokevirtual 232	com/avast/android/mobilesecurity/app/filter/core/a/d:a	([BI)V
    //   1846: iconst_0
    //   1847: istore_3
    //   1848: goto -1828 -> 20
    //   1851: astore 8
    //   1853: ldc 234
    //   1855: invokestatic 202	com/avast/android/mobilesecurity/app/filter/core/a/e:a	(Ljava/lang/String;)V
    //   1858: goto -12 -> 1846
    //   1861: astore 7
    //   1863: new 207	java/lang/StringBuilder
    //   1866: dup
    //   1867: invokespecial 208	java/lang/StringBuilder:<init>	()V
    //   1870: iload 5
    //   1872: invokevirtual 217	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1875: ldc 236
    //   1877: invokevirtual 214	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1880: invokevirtual 222	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1883: invokestatic 202	com/avast/android/mobilesecurity/app/filter/core/a/e:a	(Ljava/lang/String;)V
    //   1886: aconst_null
    //   1887: astore 4
    //   1889: goto -1882 -> 7
    //   1892: aload_2
    //   1893: astore 4
    //   1895: goto -1888 -> 7
    //
    // Exception table:
    //   from	to	target	type
    //   396	404	407	java/lang/IllegalArgumentException
    //   396	404	454	java/lang/RuntimeException
    //   491	499	502	java/lang/IllegalArgumentException
    //   491	499	543	java/lang/RuntimeException
    //   574	584	587	java/lang/RuntimeException
    //   618	628	631	java/lang/RuntimeException
    //   674	682	685	java/lang/NullPointerException
    //   674	682	695	java/lang/RuntimeException
    //   737	745	748	java/lang/NullPointerException
    //   737	745	758	java/lang/RuntimeException
    //   857	865	868	java/lang/NullPointerException
    //   847	857	878	java/lang/NullPointerException
    //   857	865	891	java/lang/RuntimeException
    //   963	971	974	java/lang/RuntimeException
    //   933	939	1005	java/lang/RuntimeException
    //   1119	1128	1131	java/lang/NullPointerException
    //   1109	1119	1141	java/lang/NullPointerException
    //   1154	1169	1172	java/lang/NullPointerException
    //   1119	1128	1203	java/lang/RuntimeException
    //   1261	1274	1277	java/lang/NullPointerException
    //   1295	1308	1277	java/lang/NullPointerException
    //   1350	1387	1277	java/lang/NullPointerException
    //   1261	1274	1311	java/lang/RuntimeException
    //   1295	1308	1311	java/lang/RuntimeException
    //   1350	1387	1311	java/lang/RuntimeException
    //   1406	1415	1418	java/lang/NullPointerException
    //   1406	1415	1428	java/lang/RuntimeException
    //   1465	1474	1477	java/lang/IllegalArgumentException
    //   1465	1474	1518	java/lang/RuntimeException
    //   1570	1579	1582	java/lang/NullPointerException
    //   1554	1559	1592	java/lang/RuntimeException
    //   1570	1579	1624	java/lang/RuntimeException
    //   1665	1676	1679	java/lang/RuntimeException
    //   1660	1665	1710	java/lang/RuntimeException
    //   1770	1775	1778	java/lang/RuntimeException
    //   1837	1846	1851	java/lang/NullPointerException
    //   1837	1846	1861	java/lang/RuntimeException
  }

  public d a(byte[] paramArrayOfByte)
  {
    d locald1 = a(new ByteArrayInputStream(paramArrayOfByte));
    d locald2 = null;
    if (locald1 == null);
    while (true)
    {
      return locald2;
      if (!a(locald1))
      {
        a("check mandatory headers failed!");
        locald2 = null;
      }
      else
      {
        locald2 = locald1;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.filter.core.a.e
 * JD-Core Version:    0.6.2
 */