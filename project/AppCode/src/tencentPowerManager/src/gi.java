public class gi
{
  static
  {
    gi.class.desiredAssertionStatus();
  }

  public static byte[] a(String paramString)
  {
    return a(paramString.getBytes(), 0);
  }

  public static byte[] a(byte[] paramArrayOfByte, int paramInt)
  {
    int i = paramArrayOfByte.length;
    gi.b localb = new gi.b(0, new byte[i * 3 / 4]);
    if (!localb.a(paramArrayOfByte, 0, i))
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

  static abstract class a
  {
    public byte[] a;
    public int b;
  }

  static final class b extends gi.a
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
        int i = this.e;
        byte[] arrayOfByte = this.a;
        int[] arrayOfInt = this.g;
        int j = 0;
        int k = 0;
        int m = i;
        int n = 0;
        label46: label52: int i4;
        if (k >= paramInt2)
          i4 = j;
        switch (m)
        {
        case 0:
        default:
        case 1:
        case 2:
        case 3:
          while (true)
          {
            this.e = m;
            this.b = n;
            bool = true;
            break;
            if (m == 0)
            {
              label115: if (k + 4 <= paramInt2)
              {
                j = arrayOfInt[(0xFF & paramArrayOfByte[k])] << 18 | arrayOfInt[(0xFF & paramArrayOfByte[(k + 1)])] << 12 | arrayOfInt[(0xFF & paramArrayOfByte[(k + 2)])] << 6 | arrayOfInt[(0xFF & paramArrayOfByte[(k + 3)])];
                if (j >= 0)
                  break label263;
              }
              if (k >= paramInt2)
                break label52;
            }
            int i1 = k + 1;
            int i2 = arrayOfInt[(0xFF & paramArrayOfByte[k])];
            switch (m)
            {
            default:
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            }
            label263: 
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
                        k = i1;
                        break;
                        arrayOfByte[(n + 2)] = ((byte)j);
                        arrayOfByte[(n + 1)] = ((byte)(j >> 8));
                        arrayOfByte[n] = ((byte)(j >> 16));
                        n += 3;
                        k += 4;
                        break label115;
                        if (i2 >= 0)
                        {
                          m++;
                          j = i2;
                          k = i1;
                          break;
                        }
                      }
                      while (i2 == -1);
                      this.e = 6;
                      bool = false;
                      break;
                      if (i2 >= 0)
                      {
                        j = i2 | j << 6;
                        m++;
                        k = i1;
                        break label46;
                      }
                    }
                    while (i2 == -1);
                    this.e = 6;
                    bool = false;
                    break;
                    if (i2 >= 0)
                    {
                      j = i2 | j << 6;
                      m++;
                      k = i1;
                      break label46;
                    }
                    if (i2 == -2)
                    {
                      int i3 = n + 1;
                      arrayOfByte[n] = ((byte)(j >> 4));
                      m = 4;
                      n = i3;
                      k = i1;
                      break label46;
                    }
                  }
                  while (i2 == -1);
                  this.e = 6;
                  bool = false;
                  break;
                  if (i2 >= 0)
                  {
                    j = i2 | j << 6;
                    arrayOfByte[(n + 2)] = ((byte)j);
                    arrayOfByte[(n + 1)] = ((byte)(j >> 8));
                    arrayOfByte[n] = ((byte)(j >> 16));
                    n += 3;
                    k = i1;
                    m = 0;
                    break label46;
                  }
                  if (i2 == -2)
                  {
                    arrayOfByte[(n + 1)] = ((byte)(j >> 2));
                    arrayOfByte[n] = ((byte)(j >> 10));
                    n += 2;
                    m = 5;
                    k = i1;
                    break label46;
                  }
                }
                while (i2 == -1);
                this.e = 6;
                bool = false;
                break;
                if (i2 == -2)
                {
                  m++;
                  k = i1;
                  break label46;
                }
              }
              while (i2 == -1);
              this.e = 6;
              bool = false;
              break;
            }
            while (i2 == -1);
            this.e = 6;
            bool = false;
            break;
            this.e = 6;
            bool = false;
            break;
            int i6 = n + 1;
            arrayOfByte[n] = ((byte)(i4 >> 4));
            n = i6;
            continue;
            int i5 = n + 1;
            arrayOfByte[n] = ((byte)(i4 >> 10));
            n = i5 + 1;
            arrayOfByte[i5] = ((byte)(i4 >> 2));
          }
        case 4:
        }
        this.e = 6;
        bool = false;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     gi
 * JD-Core Version:    0.6.2
 */