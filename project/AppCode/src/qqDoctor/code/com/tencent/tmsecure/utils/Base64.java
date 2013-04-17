package com.tencent.tmsecure.utils;

import java.io.UnsupportedEncodingException;

public class Base64
{
  public static final int CRLF = 4;
  public static final int DEFAULT = 0;
  public static final int NO_CLOSE = 16;
  public static final int NO_PADDING = 1;
  public static final int NO_WRAP = 2;
  public static final int URL_SAFE = 8;

  static
  {
    if (!Base64.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      a = bool;
      return;
    }
  }

  public static byte[] decode(String paramString, int paramInt)
  {
    return decode(paramString.getBytes(), paramInt);
  }

  public static byte[] decode(byte[] paramArrayOfByte, int paramInt)
  {
    return decode(paramArrayOfByte, 0, paramArrayOfByte.length, paramInt);
  }

  public static byte[] decode(byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3)
  {
    b localb = new b(paramInt3, new byte[paramInt2 * 3 / 4]);
    if (!localb.a(paramArrayOfByte, paramInt1, paramInt2))
      throw new IllegalArgumentException("bad base-64");
    byte[] arrayOfByte;
    if (localb.b == localb.a.length)
      arrayOfByte = localb.a;
    while (true)
    {
      return arrayOfByte;
      arrayOfByte = new byte[localb.b];
      System.arraycopy(localb.a, 0, arrayOfByte, 0, localb.b);
    }
  }

  public static byte[] encode(byte[] paramArrayOfByte, int paramInt)
  {
    return encode(paramArrayOfByte, 0, paramArrayOfByte.length, paramInt);
  }

  public static byte[] encode(byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3)
  {
    c localc = new c(paramInt3);
    int i = paramInt2 / 3 << 2;
    int j;
    if (localc.c)
    {
      if (paramInt2 % 3 > 0)
        i += 4;
      if ((localc.d) && (paramInt2 > 0))
      {
        j = 1 + (paramInt2 - 1) / 57;
        if (!localc.e)
          break label163;
      }
    }
    label163: for (int k = 2; ; k = 1)
    {
      i += k * j;
      localc.a = new byte[i];
      localc.a(paramArrayOfByte, paramInt1, paramInt2);
      if ((a) || (localc.b == i))
        break label169;
      throw new AssertionError();
      switch (paramInt2 % 3)
      {
      case 0:
      default:
        break;
      case 1:
        i += 2;
        break;
      case 2:
        i += 3;
        break;
      }
    }
    label169: return localc.a;
  }

  public static String encodeToString(byte[] paramArrayOfByte, int paramInt)
  {
    try
    {
      String str = new String(encode(paramArrayOfByte, paramInt), "US-ASCII");
      return str;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw new AssertionError(localUnsupportedEncodingException);
    }
  }

  public static String encodeToString(byte[] paramArrayOfByte, int paramInt1, int paramInt2, int paramInt3)
  {
    try
    {
      String str = new String(encode(paramArrayOfByte, paramInt1, paramInt2, paramInt3), "US-ASCII");
      return str;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
      throw new AssertionError(localUnsupportedEncodingException);
    }
  }

  static abstract class a
  {
    public byte[] a;
    public int b;
  }

  static final class b extends Base64.a
  {
    private static final int[] c;
    private static final int[] d = arrayOfInt2;
    private int e;
    private int f;
    private final int[] g;

    static
    {
      int[] arrayOfInt1 = new int[256];
      arrayOfInt1[0] = -1;
      arrayOfInt1[1] = -1;
      arrayOfInt1[2] = -1;
      arrayOfInt1[3] = -1;
      arrayOfInt1[4] = -1;
      arrayOfInt1[5] = -1;
      arrayOfInt1[6] = -1;
      arrayOfInt1[7] = -1;
      arrayOfInt1[8] = -1;
      arrayOfInt1[9] = -1;
      arrayOfInt1[10] = -1;
      arrayOfInt1[11] = -1;
      arrayOfInt1[12] = -1;
      arrayOfInt1[13] = -1;
      arrayOfInt1[14] = -1;
      arrayOfInt1[15] = -1;
      arrayOfInt1[16] = -1;
      arrayOfInt1[17] = -1;
      arrayOfInt1[18] = -1;
      arrayOfInt1[19] = -1;
      arrayOfInt1[20] = -1;
      arrayOfInt1[21] = -1;
      arrayOfInt1[22] = -1;
      arrayOfInt1[23] = -1;
      arrayOfInt1[24] = -1;
      arrayOfInt1[25] = -1;
      arrayOfInt1[26] = -1;
      arrayOfInt1[27] = -1;
      arrayOfInt1[28] = -1;
      arrayOfInt1[29] = -1;
      arrayOfInt1[30] = -1;
      arrayOfInt1[31] = -1;
      arrayOfInt1[32] = -1;
      arrayOfInt1[33] = -1;
      arrayOfInt1[34] = -1;
      arrayOfInt1[35] = -1;
      arrayOfInt1[36] = -1;
      arrayOfInt1[37] = -1;
      arrayOfInt1[38] = -1;
      arrayOfInt1[39] = -1;
      arrayOfInt1[40] = -1;
      arrayOfInt1[41] = -1;
      arrayOfInt1[42] = -1;
      arrayOfInt1[43] = 62;
      arrayOfInt1[44] = -1;
      arrayOfInt1[45] = -1;
      arrayOfInt1[46] = -1;
      arrayOfInt1[47] = 63;
      arrayOfInt1[48] = 52;
      arrayOfInt1[49] = 53;
      arrayOfInt1[50] = 54;
      arrayOfInt1[51] = 55;
      arrayOfInt1[52] = 56;
      arrayOfInt1[53] = 57;
      arrayOfInt1[54] = 58;
      arrayOfInt1[55] = 59;
      arrayOfInt1[56] = 60;
      arrayOfInt1[57] = 61;
      arrayOfInt1[58] = -1;
      arrayOfInt1[59] = -1;
      arrayOfInt1[60] = -1;
      arrayOfInt1[61] = -2;
      arrayOfInt1[62] = -1;
      arrayOfInt1[63] = -1;
      arrayOfInt1[64] = -1;
      arrayOfInt1[66] = 1;
      arrayOfInt1[67] = 2;
      arrayOfInt1[68] = 3;
      arrayOfInt1[69] = 4;
      arrayOfInt1[70] = 5;
      arrayOfInt1[71] = 6;
      arrayOfInt1[72] = 7;
      arrayOfInt1[73] = 8;
      arrayOfInt1[74] = 9;
      arrayOfInt1[75] = 10;
      arrayOfInt1[76] = 11;
      arrayOfInt1[77] = 12;
      arrayOfInt1[78] = 13;
      arrayOfInt1[79] = 14;
      arrayOfInt1[80] = 15;
      arrayOfInt1[81] = 16;
      arrayOfInt1[82] = 17;
      arrayOfInt1[83] = 18;
      arrayOfInt1[84] = 19;
      arrayOfInt1[85] = 20;
      arrayOfInt1[86] = 21;
      arrayOfInt1[87] = 22;
      arrayOfInt1[88] = 23;
      arrayOfInt1[89] = 24;
      arrayOfInt1[90] = 25;
      arrayOfInt1[91] = -1;
      arrayOfInt1[92] = -1;
      arrayOfInt1[93] = -1;
      arrayOfInt1[94] = -1;
      arrayOfInt1[95] = -1;
      arrayOfInt1[96] = -1;
      arrayOfInt1[97] = 26;
      arrayOfInt1[98] = 27;
      arrayOfInt1[99] = 28;
      arrayOfInt1[100] = 29;
      arrayOfInt1[101] = 30;
      arrayOfInt1[102] = 31;
      arrayOfInt1[103] = 32;
      arrayOfInt1[104] = 33;
      arrayOfInt1[105] = 34;
      arrayOfInt1[106] = 35;
      arrayOfInt1[107] = 36;
      arrayOfInt1[108] = 37;
      arrayOfInt1[109] = 38;
      arrayOfInt1[110] = 39;
      arrayOfInt1[111] = 40;
      arrayOfInt1[112] = 41;
      arrayOfInt1[113] = 42;
      arrayOfInt1[114] = 43;
      arrayOfInt1[115] = 44;
      arrayOfInt1[116] = 45;
      arrayOfInt1[117] = 46;
      arrayOfInt1[118] = 47;
      arrayOfInt1[119] = 48;
      arrayOfInt1[120] = 49;
      arrayOfInt1[121] = 50;
      arrayOfInt1[122] = 51;
      arrayOfInt1[123] = -1;
      arrayOfInt1[124] = -1;
      arrayOfInt1[125] = -1;
      arrayOfInt1[126] = -1;
      arrayOfInt1[127] = -1;
      arrayOfInt1[''] = -1;
      arrayOfInt1[''] = -1;
      arrayOfInt1[''] = -1;
      arrayOfInt1[''] = -1;
      arrayOfInt1[''] = -1;
      arrayOfInt1[''] = -1;
      arrayOfInt1[''] = -1;
      arrayOfInt1[''] = -1;
      arrayOfInt1[''] = -1;
      arrayOfInt1[''] = -1;
      arrayOfInt1[''] = -1;
      arrayOfInt1[''] = -1;
      arrayOfInt1[''] = -1;
      arrayOfInt1[''] = -1;
      arrayOfInt1[''] = -1;
      arrayOfInt1[''] = -1;
      arrayOfInt1[''] = -1;
      arrayOfInt1[''] = -1;
      arrayOfInt1[''] = -1;
      arrayOfInt1[''] = -1;
      arrayOfInt1[''] = -1;
      arrayOfInt1[''] = -1;
      arrayOfInt1[''] = -1;
      arrayOfInt1[''] = -1;
      arrayOfInt1[''] = -1;
      arrayOfInt1[''] = -1;
      arrayOfInt1[''] = -1;
      arrayOfInt1[''] = -1;
      arrayOfInt1[''] = -1;
      arrayOfInt1[''] = -1;
      arrayOfInt1[''] = -1;
      arrayOfInt1[''] = -1;
      arrayOfInt1[' '] = -1;
      arrayOfInt1['¡'] = -1;
      arrayOfInt1['¢'] = -1;
      arrayOfInt1['£'] = -1;
      arrayOfInt1['¤'] = -1;
      arrayOfInt1['¥'] = -1;
      arrayOfInt1['¦'] = -1;
      arrayOfInt1['§'] = -1;
      arrayOfInt1['¨'] = -1;
      arrayOfInt1['©'] = -1;
      arrayOfInt1['ª'] = -1;
      arrayOfInt1['«'] = -1;
      arrayOfInt1['¬'] = -1;
      arrayOfInt1['­'] = -1;
      arrayOfInt1['®'] = -1;
      arrayOfInt1['¯'] = -1;
      arrayOfInt1['°'] = -1;
      arrayOfInt1['±'] = -1;
      arrayOfInt1['²'] = -1;
      arrayOfInt1['³'] = -1;
      arrayOfInt1['´'] = -1;
      arrayOfInt1['µ'] = -1;
      arrayOfInt1['¶'] = -1;
      arrayOfInt1['·'] = -1;
      arrayOfInt1['¸'] = -1;
      arrayOfInt1['¹'] = -1;
      arrayOfInt1['º'] = -1;
      arrayOfInt1['»'] = -1;
      arrayOfInt1['¼'] = -1;
      arrayOfInt1['½'] = -1;
      arrayOfInt1['¾'] = -1;
      arrayOfInt1['¿'] = -1;
      arrayOfInt1['À'] = -1;
      arrayOfInt1['Á'] = -1;
      arrayOfInt1['Â'] = -1;
      arrayOfInt1['Ã'] = -1;
      arrayOfInt1['Ä'] = -1;
      arrayOfInt1['Å'] = -1;
      arrayOfInt1['Æ'] = -1;
      arrayOfInt1['Ç'] = -1;
      arrayOfInt1['È'] = -1;
      arrayOfInt1['É'] = -1;
      arrayOfInt1['Ê'] = -1;
      arrayOfInt1['Ë'] = -1;
      arrayOfInt1['Ì'] = -1;
      arrayOfInt1['Í'] = -1;
      arrayOfInt1['Î'] = -1;
      arrayOfInt1['Ï'] = -1;
      arrayOfInt1['Ð'] = -1;
      arrayOfInt1['Ñ'] = -1;
      arrayOfInt1['Ò'] = -1;
      arrayOfInt1['Ó'] = -1;
      arrayOfInt1['Ô'] = -1;
      arrayOfInt1['Õ'] = -1;
      arrayOfInt1['Ö'] = -1;
      arrayOfInt1['×'] = -1;
      arrayOfInt1['Ø'] = -1;
      arrayOfInt1['Ù'] = -1;
      arrayOfInt1['Ú'] = -1;
      arrayOfInt1['Û'] = -1;
      arrayOfInt1['Ü'] = -1;
      arrayOfInt1['Ý'] = -1;
      arrayOfInt1['Þ'] = -1;
      arrayOfInt1['ß'] = -1;
      arrayOfInt1['à'] = -1;
      arrayOfInt1['á'] = -1;
      arrayOfInt1['â'] = -1;
      arrayOfInt1['ã'] = -1;
      arrayOfInt1['ä'] = -1;
      arrayOfInt1['å'] = -1;
      arrayOfInt1['æ'] = -1;
      arrayOfInt1['ç'] = -1;
      arrayOfInt1['è'] = -1;
      arrayOfInt1['é'] = -1;
      arrayOfInt1['ê'] = -1;
      arrayOfInt1['ë'] = -1;
      arrayOfInt1['ì'] = -1;
      arrayOfInt1['í'] = -1;
      arrayOfInt1['î'] = -1;
      arrayOfInt1['ï'] = -1;
      arrayOfInt1['ð'] = -1;
      arrayOfInt1['ñ'] = -1;
      arrayOfInt1['ò'] = -1;
      arrayOfInt1['ó'] = -1;
      arrayOfInt1['ô'] = -1;
      arrayOfInt1['õ'] = -1;
      arrayOfInt1['ö'] = -1;
      arrayOfInt1['÷'] = -1;
      arrayOfInt1['ø'] = -1;
      arrayOfInt1['ù'] = -1;
      arrayOfInt1['ú'] = -1;
      arrayOfInt1['û'] = -1;
      arrayOfInt1['ü'] = -1;
      arrayOfInt1['ý'] = -1;
      arrayOfInt1['þ'] = -1;
      arrayOfInt1['ÿ'] = -1;
      c = arrayOfInt1;
      int[] arrayOfInt2 = new int[256];
      arrayOfInt2[0] = -1;
      arrayOfInt2[1] = -1;
      arrayOfInt2[2] = -1;
      arrayOfInt2[3] = -1;
      arrayOfInt2[4] = -1;
      arrayOfInt2[5] = -1;
      arrayOfInt2[6] = -1;
      arrayOfInt2[7] = -1;
      arrayOfInt2[8] = -1;
      arrayOfInt2[9] = -1;
      arrayOfInt2[10] = -1;
      arrayOfInt2[11] = -1;
      arrayOfInt2[12] = -1;
      arrayOfInt2[13] = -1;
      arrayOfInt2[14] = -1;
      arrayOfInt2[15] = -1;
      arrayOfInt2[16] = -1;
      arrayOfInt2[17] = -1;
      arrayOfInt2[18] = -1;
      arrayOfInt2[19] = -1;
      arrayOfInt2[20] = -1;
      arrayOfInt2[21] = -1;
      arrayOfInt2[22] = -1;
      arrayOfInt2[23] = -1;
      arrayOfInt2[24] = -1;
      arrayOfInt2[25] = -1;
      arrayOfInt2[26] = -1;
      arrayOfInt2[27] = -1;
      arrayOfInt2[28] = -1;
      arrayOfInt2[29] = -1;
      arrayOfInt2[30] = -1;
      arrayOfInt2[31] = -1;
      arrayOfInt2[32] = -1;
      arrayOfInt2[33] = -1;
      arrayOfInt2[34] = -1;
      arrayOfInt2[35] = -1;
      arrayOfInt2[36] = -1;
      arrayOfInt2[37] = -1;
      arrayOfInt2[38] = -1;
      arrayOfInt2[39] = -1;
      arrayOfInt2[40] = -1;
      arrayOfInt2[41] = -1;
      arrayOfInt2[42] = -1;
      arrayOfInt2[43] = -1;
      arrayOfInt2[44] = -1;
      arrayOfInt2[45] = 62;
      arrayOfInt2[46] = -1;
      arrayOfInt2[47] = -1;
      arrayOfInt2[48] = 52;
      arrayOfInt2[49] = 53;
      arrayOfInt2[50] = 54;
      arrayOfInt2[51] = 55;
      arrayOfInt2[52] = 56;
      arrayOfInt2[53] = 57;
      arrayOfInt2[54] = 58;
      arrayOfInt2[55] = 59;
      arrayOfInt2[56] = 60;
      arrayOfInt2[57] = 61;
      arrayOfInt2[58] = -1;
      arrayOfInt2[59] = -1;
      arrayOfInt2[60] = -1;
      arrayOfInt2[61] = -2;
      arrayOfInt2[62] = -1;
      arrayOfInt2[63] = -1;
      arrayOfInt2[64] = -1;
      arrayOfInt2[66] = 1;
      arrayOfInt2[67] = 2;
      arrayOfInt2[68] = 3;
      arrayOfInt2[69] = 4;
      arrayOfInt2[70] = 5;
      arrayOfInt2[71] = 6;
      arrayOfInt2[72] = 7;
      arrayOfInt2[73] = 8;
      arrayOfInt2[74] = 9;
      arrayOfInt2[75] = 10;
      arrayOfInt2[76] = 11;
      arrayOfInt2[77] = 12;
      arrayOfInt2[78] = 13;
      arrayOfInt2[79] = 14;
      arrayOfInt2[80] = 15;
      arrayOfInt2[81] = 16;
      arrayOfInt2[82] = 17;
      arrayOfInt2[83] = 18;
      arrayOfInt2[84] = 19;
      arrayOfInt2[85] = 20;
      arrayOfInt2[86] = 21;
      arrayOfInt2[87] = 22;
      arrayOfInt2[88] = 23;
      arrayOfInt2[89] = 24;
      arrayOfInt2[90] = 25;
      arrayOfInt2[91] = -1;
      arrayOfInt2[92] = -1;
      arrayOfInt2[93] = -1;
      arrayOfInt2[94] = -1;
      arrayOfInt2[95] = 63;
      arrayOfInt2[96] = -1;
      arrayOfInt2[97] = 26;
      arrayOfInt2[98] = 27;
      arrayOfInt2[99] = 28;
      arrayOfInt2[100] = 29;
      arrayOfInt2[101] = 30;
      arrayOfInt2[102] = 31;
      arrayOfInt2[103] = 32;
      arrayOfInt2[104] = 33;
      arrayOfInt2[105] = 34;
      arrayOfInt2[106] = 35;
      arrayOfInt2[107] = 36;
      arrayOfInt2[108] = 37;
      arrayOfInt2[109] = 38;
      arrayOfInt2[110] = 39;
      arrayOfInt2[111] = 40;
      arrayOfInt2[112] = 41;
      arrayOfInt2[113] = 42;
      arrayOfInt2[114] = 43;
      arrayOfInt2[115] = 44;
      arrayOfInt2[116] = 45;
      arrayOfInt2[117] = 46;
      arrayOfInt2[118] = 47;
      arrayOfInt2[119] = 48;
      arrayOfInt2[120] = 49;
      arrayOfInt2[121] = 50;
      arrayOfInt2[122] = 51;
      arrayOfInt2[123] = -1;
      arrayOfInt2[124] = -1;
      arrayOfInt2[125] = -1;
      arrayOfInt2[126] = -1;
      arrayOfInt2[127] = -1;
      arrayOfInt2[''] = -1;
      arrayOfInt2[''] = -1;
      arrayOfInt2[''] = -1;
      arrayOfInt2[''] = -1;
      arrayOfInt2[''] = -1;
      arrayOfInt2[''] = -1;
      arrayOfInt2[''] = -1;
      arrayOfInt2[''] = -1;
      arrayOfInt2[''] = -1;
      arrayOfInt2[''] = -1;
      arrayOfInt2[''] = -1;
      arrayOfInt2[''] = -1;
      arrayOfInt2[''] = -1;
      arrayOfInt2[''] = -1;
      arrayOfInt2[''] = -1;
      arrayOfInt2[''] = -1;
      arrayOfInt2[''] = -1;
      arrayOfInt2[''] = -1;
      arrayOfInt2[''] = -1;
      arrayOfInt2[''] = -1;
      arrayOfInt2[''] = -1;
      arrayOfInt2[''] = -1;
      arrayOfInt2[''] = -1;
      arrayOfInt2[''] = -1;
      arrayOfInt2[''] = -1;
      arrayOfInt2[''] = -1;
      arrayOfInt2[''] = -1;
      arrayOfInt2[''] = -1;
      arrayOfInt2[''] = -1;
      arrayOfInt2[''] = -1;
      arrayOfInt2[''] = -1;
      arrayOfInt2[''] = -1;
      arrayOfInt2[' '] = -1;
      arrayOfInt2['¡'] = -1;
      arrayOfInt2['¢'] = -1;
      arrayOfInt2['£'] = -1;
      arrayOfInt2['¤'] = -1;
      arrayOfInt2['¥'] = -1;
      arrayOfInt2['¦'] = -1;
      arrayOfInt2['§'] = -1;
      arrayOfInt2['¨'] = -1;
      arrayOfInt2['©'] = -1;
      arrayOfInt2['ª'] = -1;
      arrayOfInt2['«'] = -1;
      arrayOfInt2['¬'] = -1;
      arrayOfInt2['­'] = -1;
      arrayOfInt2['®'] = -1;
      arrayOfInt2['¯'] = -1;
      arrayOfInt2['°'] = -1;
      arrayOfInt2['±'] = -1;
      arrayOfInt2['²'] = -1;
      arrayOfInt2['³'] = -1;
      arrayOfInt2['´'] = -1;
      arrayOfInt2['µ'] = -1;
      arrayOfInt2['¶'] = -1;
      arrayOfInt2['·'] = -1;
      arrayOfInt2['¸'] = -1;
      arrayOfInt2['¹'] = -1;
      arrayOfInt2['º'] = -1;
      arrayOfInt2['»'] = -1;
      arrayOfInt2['¼'] = -1;
      arrayOfInt2['½'] = -1;
      arrayOfInt2['¾'] = -1;
      arrayOfInt2['¿'] = -1;
      arrayOfInt2['À'] = -1;
      arrayOfInt2['Á'] = -1;
      arrayOfInt2['Â'] = -1;
      arrayOfInt2['Ã'] = -1;
      arrayOfInt2['Ä'] = -1;
      arrayOfInt2['Å'] = -1;
      arrayOfInt2['Æ'] = -1;
      arrayOfInt2['Ç'] = -1;
      arrayOfInt2['È'] = -1;
      arrayOfInt2['É'] = -1;
      arrayOfInt2['Ê'] = -1;
      arrayOfInt2['Ë'] = -1;
      arrayOfInt2['Ì'] = -1;
      arrayOfInt2['Í'] = -1;
      arrayOfInt2['Î'] = -1;
      arrayOfInt2['Ï'] = -1;
      arrayOfInt2['Ð'] = -1;
      arrayOfInt2['Ñ'] = -1;
      arrayOfInt2['Ò'] = -1;
      arrayOfInt2['Ó'] = -1;
      arrayOfInt2['Ô'] = -1;
      arrayOfInt2['Õ'] = -1;
      arrayOfInt2['Ö'] = -1;
      arrayOfInt2['×'] = -1;
      arrayOfInt2['Ø'] = -1;
      arrayOfInt2['Ù'] = -1;
      arrayOfInt2['Ú'] = -1;
      arrayOfInt2['Û'] = -1;
      arrayOfInt2['Ü'] = -1;
      arrayOfInt2['Ý'] = -1;
      arrayOfInt2['Þ'] = -1;
      arrayOfInt2['ß'] = -1;
      arrayOfInt2['à'] = -1;
      arrayOfInt2['á'] = -1;
      arrayOfInt2['â'] = -1;
      arrayOfInt2['ã'] = -1;
      arrayOfInt2['ä'] = -1;
      arrayOfInt2['å'] = -1;
      arrayOfInt2['æ'] = -1;
      arrayOfInt2['ç'] = -1;
      arrayOfInt2['è'] = -1;
      arrayOfInt2['é'] = -1;
      arrayOfInt2['ê'] = -1;
      arrayOfInt2['ë'] = -1;
      arrayOfInt2['ì'] = -1;
      arrayOfInt2['í'] = -1;
      arrayOfInt2['î'] = -1;
      arrayOfInt2['ï'] = -1;
      arrayOfInt2['ð'] = -1;
      arrayOfInt2['ñ'] = -1;
      arrayOfInt2['ò'] = -1;
      arrayOfInt2['ó'] = -1;
      arrayOfInt2['ô'] = -1;
      arrayOfInt2['õ'] = -1;
      arrayOfInt2['ö'] = -1;
      arrayOfInt2['÷'] = -1;
      arrayOfInt2['ø'] = -1;
      arrayOfInt2['ù'] = -1;
      arrayOfInt2['ú'] = -1;
      arrayOfInt2['û'] = -1;
      arrayOfInt2['ü'] = -1;
      arrayOfInt2['ý'] = -1;
      arrayOfInt2['þ'] = -1;
      arrayOfInt2['ÿ'] = -1;
    }

    public b(int paramInt, byte[] paramArrayOfByte)
    {
      this.a = paramArrayOfByte;
      if ((paramInt & 0x8) == 0);
      for (int[] arrayOfInt = c; ; arrayOfInt = d)
      {
        this.g = arrayOfInt;
        this.e = 0;
        this.f = 0;
        return;
      }
    }

    public final boolean a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    {
      boolean bool;
      if (this.e == 6)
        bool = false;
      while (true)
      {
        return bool;
        int i = paramInt2 + paramInt1;
        int j = this.e;
        int k = 0;
        int m = 0;
        byte[] arrayOfByte = this.a;
        int[] arrayOfInt = this.g;
        int n = j;
        int i1 = paramInt1;
        label51: label58: int i5;
        if (i1 >= i)
          i5 = k;
        switch (n)
        {
        case 0:
        default:
        case 1:
        case 2:
        case 3:
          while (true)
          {
            this.e = n;
            this.b = m;
            bool = true;
            break;
            if (n == 0)
            {
              label123: if (i1 + 4 <= i)
              {
                k = arrayOfInt[(0xFF & paramArrayOfByte[i1])] << 18 | arrayOfInt[(0xFF & paramArrayOfByte[(i1 + 1)])] << 12 | arrayOfInt[(0xFF & paramArrayOfByte[(i1 + 2)])] << 6 | arrayOfInt[(0xFF & paramArrayOfByte[(i1 + 3)])];
                if (k >= 0)
                  break label275;
              }
              if (i1 >= i)
                break label58;
            }
            int i2 = i1 + 1;
            int i3 = arrayOfInt[(0xFF & paramArrayOfByte[i1])];
            switch (n)
            {
            default:
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            }
            label275: 
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
                        i1 = i2;
                        break;
                        arrayOfByte[(m + 2)] = ((byte)k);
                        arrayOfByte[(m + 1)] = ((byte)(k >> 8));
                        arrayOfByte[m] = ((byte)(k >> 16));
                        m += 3;
                        i1 += 4;
                        break label123;
                        if (i3 >= 0)
                        {
                          n++;
                          k = i3;
                          i1 = i2;
                          break;
                        }
                      }
                      while (i3 == -1);
                      this.e = 6;
                      bool = false;
                      break;
                      if (i3 >= 0)
                      {
                        k = i3 | k << 6;
                        n++;
                        i1 = i2;
                        break label51;
                      }
                    }
                    while (i3 == -1);
                    this.e = 6;
                    bool = false;
                    break;
                    if (i3 >= 0)
                    {
                      k = i3 | k << 6;
                      n++;
                      i1 = i2;
                      break label51;
                    }
                    if (i3 == -2)
                    {
                      int i4 = m + 1;
                      arrayOfByte[m] = ((byte)(k >> 4));
                      n = 4;
                      m = i4;
                      i1 = i2;
                      break label51;
                    }
                  }
                  while (i3 == -1);
                  this.e = 6;
                  bool = false;
                  break;
                  if (i3 >= 0)
                  {
                    k = i3 | k << 6;
                    arrayOfByte[(m + 2)] = ((byte)k);
                    arrayOfByte[(m + 1)] = ((byte)(k >> 8));
                    arrayOfByte[m] = ((byte)(k >> 16));
                    m += 3;
                    i1 = i2;
                    n = 0;
                    break label51;
                  }
                  if (i3 == -2)
                  {
                    arrayOfByte[(m + 1)] = ((byte)(k >> 2));
                    arrayOfByte[m] = ((byte)(k >> 10));
                    m += 2;
                    n = 5;
                    i1 = i2;
                    break label51;
                  }
                }
                while (i3 == -1);
                this.e = 6;
                bool = false;
                break;
                if (i3 == -2)
                {
                  n++;
                  i1 = i2;
                  break label51;
                }
              }
              while (i3 == -1);
              this.e = 6;
              bool = false;
              break;
            }
            while (i3 == -1);
            this.e = 6;
            bool = false;
            break;
            this.e = 6;
            bool = false;
            break;
            int i7 = m + 1;
            arrayOfByte[m] = ((byte)(i5 >> 4));
            m = i7;
            continue;
            int i6 = m + 1;
            arrayOfByte[m] = ((byte)(i5 >> 10));
            m = i6 + 1;
            arrayOfByte[i6] = ((byte)(i5 >> 2));
          }
        case 4:
        }
        this.e = 6;
        bool = false;
      }
    }
  }

  static final class c extends Base64.a
  {
    private static final byte[] f;
    private static final byte[] g;
    public final boolean c;
    public final boolean d;
    public final boolean e;
    private final byte[] h;
    private int i;
    private int j;
    private final byte[] k;

    static
    {
      if (!Base64.class.desiredAssertionStatus());
      for (boolean bool = true; ; bool = false)
      {
        l = bool;
        f = new byte[] { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47 };
        g = new byte[] { 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 45, 95 };
        return;
      }
    }

    public c(int paramInt)
    {
      this.a = null;
      boolean bool2;
      boolean bool3;
      label33: label45: byte[] arrayOfByte;
      if ((paramInt & 0x1) == 0)
      {
        bool2 = bool1;
        this.c = bool2;
        if ((paramInt & 0x2) != 0)
          break label103;
        bool3 = bool1;
        this.d = bool3;
        if ((paramInt & 0x4) == 0)
          break label109;
        this.e = bool1;
        if ((paramInt & 0x8) != 0)
          break label114;
        arrayOfByte = f;
        label62: this.k = arrayOfByte;
        this.h = new byte[2];
        this.i = 0;
        if (!this.d)
          break label122;
      }
      label103: label109: label114: label122: for (int m = 19; ; m = -1)
      {
        this.j = m;
        return;
        bool2 = false;
        break;
        bool3 = false;
        break label33;
        bool1 = false;
        break label45;
        arrayOfByte = g;
        break label62;
      }
    }

    public final boolean a(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
    {
      byte[] arrayOfByte1 = this.k;
      byte[] arrayOfByte2 = this.a;
      int m = this.j;
      int n = paramInt2 + paramInt1;
      int i4;
      int i2;
      label58: int i33;
      int i34;
      int i6;
      int i5;
      switch (this.i)
      {
      default:
        i4 = -1;
        i2 = paramInt1;
        if (i4 != -1)
        {
          arrayOfByte2[0] = arrayOfByte1[(0x3F & i4 >> 18)];
          arrayOfByte2[1] = arrayOfByte1[(0x3F & i4 >> 12)];
          arrayOfByte2[2] = arrayOfByte1[(0x3F & i4 >> 6)];
          i33 = 4;
          arrayOfByte2[3] = arrayOfByte1[(i4 & 0x3F)];
          i34 = m - 1;
          if (i34 == 0)
          {
            if (this.e)
            {
              i33 = 5;
              arrayOfByte2[4] = 13;
            }
            i6 = i33 + 1;
            arrayOfByte2[i33] = 10;
            i5 = 19;
          }
        }
        break;
      case 0:
      case 1:
      case 2:
      }
      while (true)
      {
        int i28;
        int i27;
        label213: int i23;
        if (i2 + 3 > n)
        {
          if (i2 - this.i != n - 1)
            break label720;
          if (this.i <= 0)
            break label698;
          byte[] arrayOfByte5 = this.h;
          i28 = 1;
          i27 = arrayOfByte5[0];
          int i29 = (i27 & 0xFF) << 4;
          this.i -= i28;
          int i30 = i6 + 1;
          arrayOfByte2[i6] = arrayOfByte1[(0x3F & i29 >> 6)];
          i23 = i30 + 1;
          arrayOfByte2[i30] = arrayOfByte1[(i29 & 0x3F)];
          if (this.c)
          {
            int i32 = i23 + 1;
            arrayOfByte2[i23] = 61;
            i23 = i32 + 1;
            arrayOfByte2[i32] = 61;
          }
          if (!this.d)
            break label1090;
          if (this.e)
          {
            int i31 = i23 + 1;
            arrayOfByte2[i23] = 13;
            i23 = i31;
          }
          i6 = i23 + 1;
          arrayOfByte2[i23] = 10;
          if ((l) || (this.i == 0))
            break label1048;
          throw new AssertionError();
          i4 = -1;
          i2 = paramInt1;
          break label58;
          if (paramInt1 + 2 > n)
            break;
          int i35 = (0xFF & this.h[0]) << 16;
          int i36 = paramInt1 + 1;
          int i37 = i35 | (0xFF & paramArrayOfByte[paramInt1]) << 8;
          int i38 = i36 + 1;
          int i39 = i37 | 0xFF & paramArrayOfByte[i36];
          this.i = 0;
          i4 = i39;
          i2 = i38;
          break label58;
          if (paramInt1 + 1 > n)
            break;
          int i1 = (0xFF & this.h[0]) << 16 | (0xFF & this.h[1]) << 8;
          i2 = paramInt1 + 1;
          int i3 = i1 | 0xFF & paramArrayOfByte[paramInt1];
          this.i = 0;
          i4 = i3;
          break label58;
        }
        int i7 = (0xFF & paramArrayOfByte[i2]) << 16 | (0xFF & paramArrayOfByte[(i2 + 1)]) << 8 | 0xFF & paramArrayOfByte[(i2 + 2)];
        arrayOfByte2[i6] = arrayOfByte1[(0x3F & i7 >> 18)];
        arrayOfByte2[(i6 + 1)] = arrayOfByte1[(0x3F & i7 >> 12)];
        arrayOfByte2[(i6 + 2)] = arrayOfByte1[(0x3F & i7 >> 6)];
        arrayOfByte2[(i6 + 3)] = arrayOfByte1[(i7 & 0x3F)];
        int i8 = i2 + 3;
        int i9 = i6 + 4;
        int i10 = i5 - 1;
        if (i10 == 0)
        {
          int i11;
          if (this.e)
          {
            i11 = i9 + 1;
            arrayOfByte2[i9] = 13;
          }
          while (true)
          {
            i6 = i11 + 1;
            arrayOfByte2[i11] = 10;
            i2 = i8;
            i5 = 19;
            break;
            label698: int i26 = i2 + 1;
            i27 = paramArrayOfByte[i2];
            i2 = i26;
            i28 = 0;
            break label213;
            label720: int i15;
            int i14;
            label757: int i18;
            label798: int i22;
            if (i2 - this.i == n - 2)
              if (this.i > 1)
              {
                byte[] arrayOfByte4 = this.h;
                i15 = 1;
                i14 = arrayOfByte4[0];
                int i16 = (i14 & 0xFF) << 10;
                if (this.i <= 0)
                  break label974;
                byte[] arrayOfByte3 = this.h;
                int i25 = i15 + 1;
                i18 = arrayOfByte3[i15];
                i15 = i25;
                int i19 = i16 | (i18 & 0xFF) << 2;
                this.i -= i15;
                int i20 = i6 + 1;
                arrayOfByte2[i6] = arrayOfByte1[(0x3F & i19 >> 12)];
                int i21 = i20 + 1;
                arrayOfByte2[i20] = arrayOfByte1[(0x3F & i19 >> 6)];
                i22 = i21 + 1;
                arrayOfByte2[i21] = arrayOfByte1[(i19 & 0x3F)];
                if (!this.c)
                  break label1097;
                i23 = i22 + 1;
                arrayOfByte2[i22] = 61;
              }
            while (true)
            {
              if (this.d)
              {
                if (this.e)
                {
                  int i24 = i23 + 1;
                  arrayOfByte2[i23] = 13;
                  i23 = i24;
                }
                i6 = i23 + 1;
                arrayOfByte2[i23] = 10;
                break;
                int i13 = i2 + 1;
                i14 = paramArrayOfByte[i2];
                i2 = i13;
                i15 = 0;
                break label757;
                label974: int i17 = i2 + 1;
                i18 = paramArrayOfByte[i2];
                i2 = i17;
                break label798;
                if ((!this.d) || (i6 <= 0) || (i5 == 19))
                  break;
                int i12;
                if (this.e)
                {
                  i12 = i6 + 1;
                  arrayOfByte2[i6] = 13;
                }
                while (true)
                {
                  i6 = i12 + 1;
                  arrayOfByte2[i12] = 10;
                  break;
                  label1048: if ((!l) && (i2 != n))
                    throw new AssertionError();
                  this.b = i6;
                  this.j = i5;
                  return true;
                  i12 = i6;
                }
              }
              label1090: i6 = i23;
              break;
              label1097: i23 = i22;
            }
            i11 = i9;
          }
        }
        i5 = i10;
        i6 = i9;
        i2 = i8;
        continue;
        i5 = i34;
        i6 = i33;
        continue;
        i5 = m;
        i6 = 0;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.utils.Base64
 * JD-Core Version:    0.6.2
 */