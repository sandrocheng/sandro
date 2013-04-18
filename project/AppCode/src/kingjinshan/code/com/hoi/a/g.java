package com.hoi.a;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.util.Random;
import junit.framework.TestCase;

public final class g extends TestCase
{
  private static final String a = "Base64Test";
  private static final byte[] b = { -1, -18, -35, -52, -69, -86, -103, -120, 119 };
  private static final String c = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque congue eleifend odio, eu ornare nulla facilisis eget. Integer eget elit diam, sit amet laoreet nibh. Quisque enim urna, pharetra vitae consequat eget, adipiscing eu ante. Aliquam venenatis arcu nec nibh imperdiet tempor. In id dui eget lorem aliquam rutrum vel vitae eros. In placerat ornare pretium. Curabitur non fringilla mi. Fusce ultricies, turpis eu ultrices suscipit, ligula nisi consectetur eros, dapibus aliquet dui sapien a turpis. Donec ultricies varius ligula, ut hendrerit arcu malesuada at. Praesent sed elit pretium eros luctus gravida. In ac dolor lorem. Cras condimentum convallis elementum. Phasellus vel felis in nulla ultrices venenatis. Nam non tortor non orci convallis convallis. Nam tristique lacinia hendrerit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus cursus, nibh eu imperdiet porta, magna ipsum mollis mauris, sit amet fringilla mi nisl eu mi. Phasellus posuere, leo at ultricies vehicula, massa risus volutpat sapien, eu tincidunt diam ipsum eget nulla. Cras molestie dapibus commodo. Ut vel tellus at massa gravida semper non sed orci.";

  private static String a(String paramString)
  {
    return new String(a.a(paramString, 0));
  }

  private static String a(String paramString, int paramInt)
  {
    String str = a.a(paramString.getBytes(), paramInt);
    assertEquals(paramString, a(str));
    return str;
  }

  private static void a()
  {
    assertEquals("hello, world", a("aGVsbG8sIHdvcmxk"));
    b("aGVsbG8sIHdvcmxk=");
    b("aGVsbG8sIHdvcmxk==");
    b("aGVsbG8sIHdvcmxk =");
    b("aGVsbG8sIHdvcmxk = = ");
    assertEquals("hello, world", a(" aGVs bG8s IHdv cmxk  "));
    assertEquals("hello, world", a(" aGV sbG8 sIHd vcmx k "));
    assertEquals("hello, world", a(" aG VsbG 8sIH dvcm xk "));
    assertEquals("hello, world", a(" a GVsb G8sI Hdvc mxk "));
    assertEquals("hello, world", a(" a G V s b G 8 s I H d v c m x k "));
    assertEquals("hello, world", a("_a*G_V*s_b*G_8*s_I*H_d*v_c*m_x*k_"));
    assertEquals("hello, world", a("aGVsbG8sIHdvcmxk"));
    assertEquals("hello, world?!", a("aGVsbG8sIHdvcmxkPyE="));
    assertEquals("hello, world?!", a("aGVsbG8sIHdvcmxkPyE"));
    b("aGVsbG8sIHdvcmxkPyE==");
    b("aGVsbG8sIHdvcmxkPyE ==");
    b("aGVsbG8sIHdvcmxkPyE = = ");
    assertEquals("hello, world?!", a("aGVsbG8sIHdvcmxkPy E="));
    assertEquals("hello, world?!", a("aGVsbG8sIHdvcmxkPy E"));
    assertEquals("hello, world?!", a("aGVsbG8sIHdvcmxkPy E ="));
    assertEquals("hello, world?!", a("aGVsbG8sIHdvcmxkPy E "));
    assertEquals("hello, world?!", a("aGVsbG8sIHdvcmxkPy E = "));
    assertEquals("hello, world?!", a("aGVsbG8sIHdvcmxkPy E   "));
    assertEquals("hello, world.", a("aGVsbG8sIHdvcmxkLg=="));
    assertEquals("hello, world.", a("aGVsbG8sIHdvcmxkLg"));
    b("aGVsbG8sIHdvcmxkLg=");
    b("aGVsbG8sIHdvcmxkLg =");
    b("aGVsbG8sIHdvcmxkLg = ");
    assertEquals("hello, world.", a("aGVsbG8sIHdvcmxkL g=="));
    assertEquals("hello, world.", a("aGVsbG8sIHdvcmxkL g"));
    assertEquals("hello, world.", a("aGVsbG8sIHdvcmxkL g =="));
    assertEquals("hello, world.", a("aGVsbG8sIHdvcmxkL g "));
    assertEquals("hello, world.", a("aGVsbG8sIHdvcmxkL g = = "));
    assertEquals("hello, world.", a("aGVsbG8sIHdvcmxkL g   "));
  }

  private static void a(byte[] paramArrayOfByte1, int paramInt, byte[] paramArrayOfByte2)
  {
    assertEquals(paramInt, paramArrayOfByte2.length);
    for (int i = 0; i < paramInt; i++)
      assertEquals(paramArrayOfByte1[i], paramArrayOfByte2[i]);
  }

  private static void a(byte[] paramArrayOfByte1, int paramInt1, byte[] paramArrayOfByte2, int paramInt2)
  {
    assertEquals(paramInt1, paramInt2);
    for (int i = 0; i < paramInt1; i++)
      assertEquals(paramArrayOfByte1[i], paramArrayOfByte2[i]);
  }

  private static void a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    assertEquals(paramArrayOfByte1.length, paramArrayOfByte2.length);
    for (int i = 0; i < paramArrayOfByte1.length; i++)
      assertEquals(paramArrayOfByte1[i], paramArrayOfByte2[i]);
  }

  private static void b()
  {
    a(b, 0, a.a("", 0));
    a(b, 1, a.a("/w==", 0));
    a(b, 2, a.a("/+4=", 0));
    a(b, 3, a.a("/+7d", 0));
    a(b, 4, a.a("/+7dzA==", 0));
    a(b, 5, a.a("/+7dzLs=", 0));
    a(b, 6, a.a("/+7dzLuq", 0));
    a(b, 7, a.a("/+7dzLuqmQ==", 0));
    a(b, 8, a.a("/+7dzLuqmYg=", 0));
  }

  private static void b(String paramString)
  {
    try
    {
      a.a(paramString, 0);
      fail("should have failed to decode");
      label11: return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      break label11;
    }
  }

  private static void c()
  {
    a(b, 0, a.a("", 8));
    a(b, 1, a.a("_w==", 8));
    a(b, 2, a.a("_-4=", 8));
    a(b, 3, a.a("_-7d", 8));
    a(b, 4, a.a("_-7dzA==", 8));
    a(b, 5, a.a("_-7dzLs=", 8));
    a(b, 6, a.a("_-7dzLuq", 8));
    a(b, 7, a.a("_-7dzLuqmQ==", 8));
    a(b, 8, a.a("_-7dzLuqmYg=", 8));
    assertEquals("", a.b(b, 0));
    assertEquals("_w==\n", a.b(b, 1));
    assertEquals("_-4=\n", a.b(b, 2));
    assertEquals("_-7d\n", a.b(b, 3));
    assertEquals("_-7dzA==\n", a.b(b, 4));
    assertEquals("_-7dzLs=\n", a.b(b, 5));
    assertEquals("_-7dzLuq\n", a.b(b, 6));
    assertEquals("_-7dzLuqmQ==\n", a.b(b, 7));
    assertEquals("_-7dzLuqmYg=\n", a.b(b, 8));
  }

  private static void d()
  {
    assertEquals("YQ==\n", a("a", 0));
    assertEquals("YQ==", a("a", 2));
    assertEquals("YQ\n", a("a", 1));
    assertEquals("YQ", a("a", 3));
    assertEquals("YQ==\r\n", a("a", 4));
    assertEquals("YQ\r\n", a("a", 5));
    assertEquals("YWI=\n", a("ab", 0));
    assertEquals("YWI=", a("ab", 2));
    assertEquals("YWI\n", a("ab", 1));
    assertEquals("YWI", a("ab", 3));
    assertEquals("YWI=\r\n", a("ab", 4));
    assertEquals("YWI\r\n", a("ab", 5));
    assertEquals("YWJj\n", a("abc", 0));
    assertEquals("YWJj", a("abc", 2));
    assertEquals("YWJj\n", a("abc", 1));
    assertEquals("YWJj", a("abc", 3));
    assertEquals("YWJj\r\n", a("abc", 4));
    assertEquals("YWJj\r\n", a("abc", 5));
    assertEquals("YWJjZA==\n", a("abcd", 0));
    assertEquals("YWJjZA==", a("abcd", 2));
    assertEquals("YWJjZA\n", a("abcd", 1));
    assertEquals("YWJjZA", a("abcd", 3));
    assertEquals("YWJjZA==\r\n", a("abcd", 4));
    assertEquals("YWJjZA\r\n", a("abcd", 5));
  }

  private static void e()
  {
    String str1 = "abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcd" + "e";
    String str2 = "abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcd" + "ef";
    String str3 = "abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcd" + "efg";
    String str4 = "abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcd" + "efgh";
    String str5 = "abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcd" + "efghi";
    String str6 = "YWJjZGVmZ2hpamtsbW5vcHFyc3R1dnd4eXphYmNkZWZnaGlqa2xtbm9wcXJzdHV2d3h5emFi" + "Y2Q=\n";
    String str7 = "YWJjZGVmZ2hpamtsbW5vcHFyc3R1dnd4eXphYmNkZWZnaGlqa2xtbm9wcXJzdHV2d3h5emFi" + "Y2Rl\n";
    String str8 = "YWJjZGVmZ2hpamtsbW5vcHFyc3R1dnd4eXphYmNkZWZnaGlqa2xtbm9wcXJzdHV2d3h5emFi" + "Y2Rl\nZg==\n";
    String str9 = "YWJjZGVmZ2hpamtsbW5vcHFyc3R1dnd4eXphYmNkZWZnaGlqa2xtbm9wcXJzdHV2d3h5emFi" + "Y2Rl\nZmc=\n";
    String str10 = "YWJjZGVmZ2hpamtsbW5vcHFyc3R1dnd4eXphYmNkZWZnaGlqa2xtbm9wcXJzdHV2d3h5emFi" + "Y2Rl\nZmdo\n";
    String str11 = "YWJjZGVmZ2hpamtsbW5vcHFyc3R1dnd4eXphYmNkZWZnaGlqa2xtbm9wcXJzdHV2d3h5emFi" + "Y2Rl\nZmdoaQ==\n";
    assertEquals("", a("", 0));
    assertEquals(str6, a("abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcd", 0));
    assertEquals(str7, a(str1, 0));
    assertEquals(str8, a(str2, 0));
    assertEquals(str9, a(str3, 0));
    assertEquals(str10, a(str4, 0));
    assertEquals(str11, a(str5, 0));
    assertEquals(str6.replaceAll("=", ""), a("abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcd", 1));
    assertEquals(str7.replaceAll("=", ""), a(str1, 1));
    assertEquals(str8.replaceAll("=", ""), a(str2, 1));
    assertEquals(str9.replaceAll("=", ""), a(str3, 1));
    assertEquals(str10.replaceAll("=", ""), a(str4, 1));
    assertEquals(str11.replaceAll("=", ""), a(str5, 1));
    assertEquals(str6.replaceAll("\n", ""), a("abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzabcd", 2));
    assertEquals(str7.replaceAll("\n", ""), a(str1, 2));
    assertEquals(str8.replaceAll("\n", ""), a(str2, 2));
    assertEquals(str9.replaceAll("\n", ""), a(str3, 2));
    assertEquals(str10.replaceAll("\n", ""), a(str4, 2));
    assertEquals(str11.replaceAll("\n", ""), a(str5, 2));
  }

  private static void f()
  {
    byte[] arrayOfByte = { 97, 98, 99 };
    d locald = new d(3, new byte[100]);
    locald.a(arrayOfByte, 0, 3, false);
    a("YWJj".getBytes(), 4, locald.a, locald.b);
    assertEquals(0, locald.d);
    locald.a(arrayOfByte, 0, 3, false);
    a("YWJj".getBytes(), 4, locald.a, locald.b);
    assertEquals(0, locald.d);
    locald.a(arrayOfByte, 0, 1, false);
    assertEquals(0, locald.b);
    assertEquals(1, locald.d);
    locald.a(arrayOfByte, 0, 1, false);
    assertEquals(0, locald.b);
    assertEquals(2, locald.d);
    locald.a(arrayOfByte, 0, 1, false);
    a("YWFh".getBytes(), 4, locald.a, locald.b);
    assertEquals(0, locald.d);
    locald.a(arrayOfByte, 0, 2, false);
    assertEquals(0, locald.b);
    assertEquals(2, locald.d);
    locald.a(arrayOfByte, 0, 2, false);
    a("YWJh".getBytes(), 4, locald.a, locald.b);
    assertEquals(1, locald.d);
    locald.a(arrayOfByte, 0, 2, false);
    a("YmFi".getBytes(), 4, locald.a, locald.b);
    assertEquals(0, locald.d);
    locald.a(arrayOfByte, 0, 1, true);
    a("YQ".getBytes(), 2, locald.a, locald.b);
  }

  private static void g()
  {
    int[] arrayOfInt1 = { 0, 1, 2, 3, 4, 8 };
    int[] arrayOfInt2 = { -10, -5, -1, 0, 1, 1, 2, 2, 3, 10, 100 };
    Random localRandom = new Random(32176L);
    byte[] arrayOfByte1 = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque congue eleifend odio, eu ornare nulla facilisis eget. Integer eget elit diam, sit amet laoreet nibh. Quisque enim urna, pharetra vitae consequat eget, adipiscing eu ante. Aliquam venenatis arcu nec nibh imperdiet tempor. In id dui eget lorem aliquam rutrum vel vitae eros. In placerat ornare pretium. Curabitur non fringilla mi. Fusce ultricies, turpis eu ultrices suscipit, ligula nisi consectetur eros, dapibus aliquet dui sapien a turpis. Donec ultricies varius ligula, ut hendrerit arcu malesuada at. Praesent sed elit pretium eros luctus gravida. In ac dolor lorem. Cras condimentum convallis elementum. Phasellus vel felis in nulla ultrices venenatis. Nam non tortor non orci convallis convallis. Nam tristique lacinia hendrerit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus cursus, nibh eu imperdiet porta, magna ipsum mollis mauris, sit amet fringilla mi nisl eu mi. Phasellus posuere, leo at ultricies vehicula, massa risus volutpat sapien, eu tincidunt diam ipsum eget nulla. Cras molestie dapibus commodo. Ut vel tellus at massa gravida semper non sed orci.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque congue eleifend odio, eu ornare nulla facilisis eget. Integer eget elit diam, sit amet laoreet nibh. Quisque enim urna, pharetra vitae consequat eget, adipiscing eu ante. Aliquam venenatis arcu nec nibh imperdiet tempor. In id dui eget lorem aliquam rutrum vel vitae eros. In placerat ornare pretium. Curabitur non fringilla mi. Fusce ultricies, turpis eu ultrices suscipit, ligula nisi consectetur eros, dapibus aliquet dui sapien a turpis. Donec ultricies varius ligula, ut hendrerit arcu malesuada at. Praesent sed elit pretium eros luctus gravida. In ac dolor lorem. Cras condimentum convallis elementum. Phasellus vel felis in nulla ultrices venenatis. Nam non tortor non orci convallis convallis. Nam tristique lacinia hendrerit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus cursus, nibh eu imperdiet porta, magna ipsum mollis mauris, sit amet fringilla mi nisl eu mi. Phasellus posuere, leo at ultricies vehicula, massa risus volutpat sapien, eu tincidunt diam ipsum eget nulla. Cras molestie dapibus commodo. Ut vel tellus at massa gravida semper non sed orci.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque congue eleifend odio, eu ornare nulla facilisis eget. Integer eget elit diam, sit amet laoreet nibh. Quisque enim urna, pharetra vitae consequat eget, adipiscing eu ante. Aliquam venenatis arcu nec nibh imperdiet tempor. In id dui eget lorem aliquam rutrum vel vitae eros. In placerat ornare pretium. Curabitur non fringilla mi. Fusce ultricies, turpis eu ultrices suscipit, ligula nisi consectetur eros, dapibus aliquet dui sapien a turpis. Donec ultricies varius ligula, ut hendrerit arcu malesuada at. Praesent sed elit pretium eros luctus gravida. In ac dolor lorem. Cras condimentum convallis elementum. Phasellus vel felis in nulla ultrices venenatis. Nam non tortor non orci convallis convallis. Nam tristique lacinia hendrerit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus cursus, nibh eu imperdiet porta, magna ipsum mollis mauris, sit amet fringilla mi nisl eu mi. Phasellus posuere, leo at ultricies vehicula, massa risus volutpat sapien, eu tincidunt diam ipsum eget nulla. Cras molestie dapibus commodo. Ut vel tellus at massa gravida semper non sed orci.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque congue eleifend odio, eu ornare nulla facilisis eget. Integer eget elit diam, sit amet laoreet nibh. Quisque enim urna, pharetra vitae consequat eget, adipiscing eu ante. Aliquam venenatis arcu nec nibh imperdiet tempor. In id dui eget lorem aliquam rutrum vel vitae eros. In placerat ornare pretium. Curabitur non fringilla mi. Fusce ultricies, turpis eu ultrices suscipit, ligula nisi consectetur eros, dapibus aliquet dui sapien a turpis. Donec ultricies varius ligula, ut hendrerit arcu malesuada at. Praesent sed elit pretium eros luctus gravida. In ac dolor lorem. Cras condimentum convallis elementum. Phasellus vel felis in nulla ultrices venenatis. Nam non tortor non orci convallis convallis. Nam tristique lacinia hendrerit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus cursus, nibh eu imperdiet porta, magna ipsum mollis mauris, sit amet fringilla mi nisl eu mi. Phasellus posuere, leo at ultricies vehicula, massa risus volutpat sapien, eu tincidunt diam ipsum eget nulla. Cras molestie dapibus commodo. Ut vel tellus at massa gravida semper non sed orci.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque congue eleifend odio, eu ornare nulla facilisis eget. Integer eget elit diam, sit amet laoreet nibh. Quisque enim urna, pharetra vitae consequat eget, adipiscing eu ante. Aliquam venenatis arcu nec nibh imperdiet tempor. In id dui eget lorem aliquam rutrum vel vitae eros. In placerat ornare pretium. Curabitur non fringilla mi. Fusce ultricies, turpis eu ultrices suscipit, ligula nisi consectetur eros, dapibus aliquet dui sapien a turpis. Donec ultricies varius ligula, ut hendrerit arcu malesuada at. Praesent sed elit pretium eros luctus gravida. In ac dolor lorem. Cras condimentum convallis elementum. Phasellus vel felis in nulla ultrices venenatis. Nam non tortor non orci convallis convallis. Nam tristique lacinia hendrerit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus cursus, nibh eu imperdiet porta, magna ipsum mollis mauris, sit amet fringilla mi nisl eu mi. Phasellus posuere, leo at ultricies vehicula, massa risus volutpat sapien, eu tincidunt diam ipsum eget nulla. Cras molestie dapibus commodo. Ut vel tellus at massa gravida semper non sed orci.".getBytes();
    int i = arrayOfInt1.length;
    for (int j = 0; j < i; j++)
    {
      int k = arrayOfInt1[j];
      byte[] arrayOfByte2 = a.c(arrayOfByte1, k);
      byte[] arrayOfByte3 = new byte[2 * arrayOfByte1.length];
      e locale1 = new e(new ByteArrayInputStream(arrayOfByte2), k);
      int m = 0;
      while (true)
      {
        int n = locale1.read(arrayOfByte3, m, arrayOfByte3.length - m);
        if (n == -1)
          break;
        m += n;
      }
      a(arrayOfByte3, m, arrayOfByte1);
      e locale2 = new e(new ByteArrayInputStream(arrayOfByte2), k);
      int i22;
      for (int i1 = 0; ; i1 = i22)
      {
        int i2 = locale2.read();
        if (i2 == -1)
          break;
        i22 = i1 + 1;
        arrayOfByte3[i1] = ((byte)i2);
      }
      a(arrayOfByte3, i1, arrayOfByte1);
      e locale3 = new e(new ByteArrayInputStream(arrayOfByte2), k);
      int i3 = 0;
      int i5;
      while (true)
      {
        int i4 = arrayOfInt2[localRandom.nextInt(arrayOfInt2.length)];
        if (i4 >= 0)
        {
          int i21 = locale3.read(arrayOfByte3, i3, i4);
          if (i21 == -1)
            break label401;
          i3 += i21;
        }
        else
        {
          i5 = i3;
          int i6 = 0;
          while (i6 < -i4)
          {
            int i7 = locale3.read();
            if (i7 == -1)
              break label397;
            int i20 = i5 + 1;
            arrayOfByte3[i5] = ((byte)i7);
            i6++;
            i5 = i20;
          }
          i3 = i5;
        }
      }
      label397: i3 = i5;
      label401: a(arrayOfByte3, i3, arrayOfByte1);
      e locale4 = new e(new ByteArrayInputStream(arrayOfByte1), k, true);
      int i8 = 0;
      while (true)
      {
        int i9 = locale4.read(arrayOfByte3, i8, arrayOfByte3.length - i8);
        if (i9 == -1)
          break;
        i8 += i9;
      }
      a(arrayOfByte3, i8, arrayOfByte2);
      e locale5 = new e(new ByteArrayInputStream(arrayOfByte1), k, true);
      int i19;
      for (int i10 = 0; ; i10 = i19)
      {
        int i11 = locale5.read();
        if (i11 == -1)
          break;
        i19 = i10 + 1;
        arrayOfByte3[i10] = ((byte)i11);
      }
      a(arrayOfByte3, i10, arrayOfByte2);
      e locale6 = new e(new ByteArrayInputStream(arrayOfByte1), k, true);
      int i12 = 0;
      int i14;
      while (true)
      {
        int i13 = arrayOfInt2[localRandom.nextInt(arrayOfInt2.length)];
        if (i13 >= 0)
        {
          int i18 = locale6.read(arrayOfByte3, i12, i13);
          if (i18 == -1)
            break label670;
          i12 += i18;
        }
        else
        {
          i14 = i12;
          int i15 = 0;
          while (i15 < -i13)
          {
            int i16 = locale6.read();
            if (i16 == -1)
              break label666;
            int i17 = i14 + 1;
            arrayOfByte3[i14] = ((byte)i16);
            i15++;
            i14 = i17;
          }
          i12 = i14;
        }
      }
      label666: i12 = i14;
      label670: a(arrayOfByte3, i12, arrayOfByte2);
    }
  }

  private static void h()
  {
    int[] arrayOfInt1 = { 0, 1, 2, 3, 4, 8 };
    int[] arrayOfInt2 = { -10, -5, -1, 0, 1, 1, 2, 2, 3, 10, 100 };
    Random localRandom = new Random(32176L);
    byte[] arrayOfByte1 = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque congue eleifend odio, eu ornare nulla facilisis eget. Integer eget elit diam, sit amet laoreet nibh. Quisque enim urna, pharetra vitae consequat eget, adipiscing eu ante. Aliquam venenatis arcu nec nibh imperdiet tempor. In id dui eget lorem aliquam rutrum vel vitae eros. In placerat ornare pretium. Curabitur non fringilla mi. Fusce ultricies, turpis eu ultrices suscipit, ligula nisi consectetur eros, dapibus aliquet dui sapien a turpis. Donec ultricies varius ligula, ut hendrerit arcu malesuada at. Praesent sed elit pretium eros luctus gravida. In ac dolor lorem. Cras condimentum convallis elementum. Phasellus vel felis in nulla ultrices venenatis. Nam non tortor non orci convallis convallis. Nam tristique lacinia hendrerit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus cursus, nibh eu imperdiet porta, magna ipsum mollis mauris, sit amet fringilla mi nisl eu mi. Phasellus posuere, leo at ultricies vehicula, massa risus volutpat sapien, eu tincidunt diam ipsum eget nulla. Cras molestie dapibus commodo. Ut vel tellus at massa gravida semper non sed orci.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque congue eleifend odio, eu ornare nulla facilisis eget. Integer eget elit diam, sit amet laoreet nibh. Quisque enim urna, pharetra vitae consequat eget, adipiscing eu ante. Aliquam venenatis arcu nec nibh imperdiet tempor. In id dui eget lorem aliquam rutrum vel vitae eros. In placerat ornare pretium. Curabitur non fringilla mi. Fusce ultricies, turpis eu ultrices suscipit, ligula nisi consectetur eros, dapibus aliquet dui sapien a turpis. Donec ultricies varius ligula, ut hendrerit arcu malesuada at. Praesent sed elit pretium eros luctus gravida. In ac dolor lorem. Cras condimentum convallis elementum. Phasellus vel felis in nulla ultrices venenatis. Nam non tortor non orci convallis convallis. Nam tristique lacinia hendrerit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vivamus cursus, nibh eu imperdiet porta, magna ipsum mollis mauris, sit amet fringilla mi nisl eu mi. Phasellus posuere, leo at ultricies vehicula, massa risus volutpat sapien, eu tincidunt diam ipsum eget nulla. Cras molestie dapibus commodo. Ut vel tellus at massa gravida semper non sed orci.".getBytes();
    int i = arrayOfInt1.length;
    for (int j = 0; j < i; j++)
    {
      int k = arrayOfInt1[j];
      byte[] arrayOfByte2 = a.c(arrayOfByte1, k);
      ByteArrayOutputStream localByteArrayOutputStream1 = new ByteArrayOutputStream();
      f localf1 = new f(localByteArrayOutputStream1, k);
      localf1.write(arrayOfByte1);
      localf1.close();
      a(arrayOfByte2, localByteArrayOutputStream1.toByteArray());
      ByteArrayOutputStream localByteArrayOutputStream2 = new ByteArrayOutputStream();
      f localf2 = new f(localByteArrayOutputStream2, k);
      for (int m = 0; m < arrayOfByte1.length; m++)
        localf2.write(arrayOfByte1[m]);
      localf2.close();
      a(arrayOfByte2, localByteArrayOutputStream2.toByteArray());
      ByteArrayOutputStream localByteArrayOutputStream3 = new ByteArrayOutputStream();
      f localf3 = new f(localByteArrayOutputStream3, k);
      int n = 0;
      if (n < arrayOfByte1.length)
      {
        int i5 = Math.min(arrayOfInt2[localRandom.nextInt(arrayOfInt2.length)], arrayOfByte1.length - n);
        if (i5 >= 0)
          localf3.write(arrayOfByte1, n, i5);
        while (true)
        {
          n += i5;
          break;
          i5 = Math.min(-i5, arrayOfByte1.length - n);
          for (int i6 = 0; i6 < i5; i6++)
            localf3.write(arrayOfByte1[(n + i6)]);
        }
      }
      localf3.close();
      a(arrayOfByte2, localByteArrayOutputStream3.toByteArray());
      ByteArrayOutputStream localByteArrayOutputStream4 = new ByteArrayOutputStream();
      f localf4 = new f(localByteArrayOutputStream4, k, false);
      localf4.write(arrayOfByte2);
      localf4.close();
      a(arrayOfByte1, localByteArrayOutputStream4.toByteArray());
      ByteArrayOutputStream localByteArrayOutputStream5 = new ByteArrayOutputStream();
      f localf5 = new f(localByteArrayOutputStream5, k, false);
      for (int i1 = 0; i1 < arrayOfByte2.length; i1++)
        localf5.write(arrayOfByte2[i1]);
      localf5.close();
      a(arrayOfByte1, localByteArrayOutputStream5.toByteArray());
      ByteArrayOutputStream localByteArrayOutputStream6 = new ByteArrayOutputStream();
      f localf6 = new f(localByteArrayOutputStream6, k, false);
      int i2 = 0;
      if (i2 < arrayOfByte2.length)
      {
        int i3 = Math.min(arrayOfInt2[localRandom.nextInt(arrayOfInt2.length)], arrayOfByte2.length - i2);
        if (i3 >= 0)
          localf6.write(arrayOfByte2, i2, i3);
        while (true)
        {
          i2 += i3;
          break;
          i3 = Math.min(-i3, arrayOfByte2.length - i2);
          for (int i4 = 0; i4 < i3; i4++)
            localf6.write(arrayOfByte2[(i2 + i4)]);
        }
      }
      localf6.close();
      a(arrayOfByte1, localByteArrayOutputStream6.toByteArray());
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.hoi.a.g
 * JD-Core Version:    0.6.2
 */