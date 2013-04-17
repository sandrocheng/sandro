import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.RandomAccessFile;
import java.security.Key;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;

public final class kq
{
  private static String[] l = { "057B2AEB22007A41B73E64C50F2D50F78EB07D355BE68B1F14F83E6D9F2393184C5FB75DD5729BB5E08A2351814392EE7F098CF06D87EA8C879DE799A9D40C8AC57E0C27D00D37ADB89E57F96F5D8B7ED45C1A986D05F55A2EEAA04AD5F86D07BB160EEDA80615EBD66426BB4A9E81A96AA7277C8971CC9AA4489E8EDBE163E3F88B2000496F882D8797AC177A9A6CE2A51B6D8D03DF56863DC6D14A9D6E2443E3E133F94F607215BB9A7BF8BFD99582", "AEAEF116F43581B8720F799E8A1325BC68EFB37F5D800606F59F75427D660E7BAF542150D2333BFF860789BD02D0DAD54A49A5FF7D87491DFC8B35A86492722AC92C69AD3EC8A9A162837C6209215A089092365DFF900E656B639618F03E5324707E4868C7B137AF2A83AB5306BAB4CA61B16B90EC3E1B2DD1DDA41394F81023EE339364B7BD9F9B67B5F042639291BBA5C3D6303F8C15A81954F0D3A4309B526D6FB8B31572ED8BD786AD03A3C591A7", "D64342264C9D08FBABD9A937B4D4F13F5A56725C0ECA389F890CF71C12FD442464C122F66F84958D36B446634460AC4DF0BED210F5FCDA537B9829547C05FD4C6B69E91FE964AE4885D8593C50712BB06427BDCBAE060CF2BFC35B55A1087B51373A85EEAF0EC3C91C9B1041F0C4790890603361157A0005C0A67E51103FA2A61A34D87B9CCC81F5AE346A7D27647330832DBBE8E09022302A0302F5" };
  private static HashMap<Key, Boolean> m = new HashMap();
  private ko a;
  private byte[] b = null;
  private byte[] c = null;
  private int d = 0;
  private int e = 0;
  private int f = 0;
  private byte[] g = null;
  private File h;
  private RandomAccessFile i;
  private String j;
  private kq.a k;

  static
  {
    String[] arrayOfString = l;
    int n = arrayOfString.length;
    for (int i1 = 0; i1 < n; i1++)
    {
      Key localKey = ks.a(arrayOfString[i1]);
      if (localKey != null)
        m.put(localKey, Boolean.valueOf(false));
    }
  }

  // ERROR //
  private int a(int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 81	kq:h	Ljava/io/File;
    //   4: invokevirtual 87	java/io/File:length	()J
    //   7: ldc2_w 88
    //   10: lcmp
    //   11: ifgt +25 -> 36
    //   14: sipush 255
    //   17: iload_1
    //   18: bipush 16
    //   20: ishr
    //   21: iand
    //   22: istore 18
    //   24: iconst_0
    //   25: istore 6
    //   27: iload 18
    //   29: iconst_1
    //   30: if_icmpeq +6 -> 36
    //   33: iload 6
    //   35: ireturn
    //   36: bipush 56
    //   38: newarray byte
    //   40: astore_2
    //   41: new 91	java/io/FileInputStream
    //   44: dup
    //   45: aload_0
    //   46: getfield 81	kq:h	Ljava/io/File;
    //   49: invokespecial 94	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   52: astore_3
    //   53: aload_3
    //   54: aload_2
    //   55: invokevirtual 100	java/io/InputStream:read	([B)I
    //   58: istore 10
    //   60: iload 10
    //   62: aload_2
    //   63: arraylength
    //   64: if_icmpeq +32 -> 96
    //   67: new 102	java/lang/StringBuilder
    //   70: dup
    //   71: ldc 104
    //   73: invokespecial 107	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   76: iload 10
    //   78: invokevirtual 111	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   81: invokevirtual 115	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   84: pop
    //   85: aload_3
    //   86: invokevirtual 118	java/io/InputStream:close	()V
    //   89: bipush 156
    //   91: istore 6
    //   93: goto -60 -> 33
    //   96: aload_3
    //   97: invokevirtual 118	java/io/InputStream:close	()V
    //   100: aload_2
    //   101: invokestatic 123	kq$a:a	([B)Lkq$a;
    //   104: astore 12
    //   106: aload 12
    //   108: getfield 125	kq$a:a	I
    //   111: ldc 126
    //   113: if_icmpne +60 -> 173
    //   116: aload 12
    //   118: getfield 128	kq$a:b	Ljava/lang/String;
    //   121: ldc 130
    //   123: invokevirtual 134	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   126: ifeq +47 -> 173
    //   129: bipush 249
    //   131: istore 6
    //   133: goto -100 -> 33
    //   136: astore 17
    //   138: aconst_null
    //   139: astore 5
    //   141: aload 5
    //   143: ifnull +8 -> 151
    //   146: aload 5
    //   148: invokevirtual 118	java/io/InputStream:close	()V
    //   151: bipush 156
    //   153: istore 6
    //   155: goto -122 -> 33
    //   158: astore 8
    //   160: aconst_null
    //   161: astore_3
    //   162: aload_3
    //   163: ifnull +7 -> 170
    //   166: aload_3
    //   167: invokevirtual 118	java/io/InputStream:close	()V
    //   170: aload 8
    //   172: athrow
    //   173: aload_0
    //   174: getfield 81	kq:h	Ljava/io/File;
    //   177: invokevirtual 87	java/io/File:length	()J
    //   180: ldc2_w 135
    //   183: lcmp
    //   184: istore 13
    //   186: iconst_0
    //   187: istore 6
    //   189: iload 13
    //   191: ifge -158 -> 33
    //   194: sipush 255
    //   197: iload_1
    //   198: bipush 16
    //   200: ishr
    //   201: iand
    //   202: istore 14
    //   204: iconst_0
    //   205: istore 6
    //   207: iload 14
    //   209: iconst_1
    //   210: if_icmpne -177 -> 33
    //   213: bipush 248
    //   215: istore 6
    //   217: goto -184 -> 33
    //   220: astore 16
    //   222: goto -133 -> 89
    //   225: astore 11
    //   227: goto -127 -> 100
    //   230: astore 7
    //   232: goto -81 -> 151
    //   235: astore 9
    //   237: goto -67 -> 170
    //   240: astore 8
    //   242: goto -80 -> 162
    //   245: astore 4
    //   247: aload_3
    //   248: astore 5
    //   250: goto -109 -> 141
    //
    // Exception table:
    //   from	to	target	type
    //   41	53	136	java/lang/Exception
    //   41	53	158	finally
    //   85	89	220	java/io/IOException
    //   96	100	225	java/io/IOException
    //   146	151	230	java/io/IOException
    //   166	170	235	java/io/IOException
    //   53	85	240	finally
    //   53	85	245	java/lang/Exception
  }

  private int a(String paramString, int paramInt)
  {
    this.h = new File(paramString);
    int n;
    if (!this.h.exists())
    {
      new StringBuilder("Encrypt input file not exist: ").append(paramString).toString();
      n = -1;
    }
    while (true)
    {
      return n;
      b("AES/CBC/PKCS5Padding");
      n = a(this.f);
      if (n == 0)
      {
        int i1 = this.a.a();
        a(ks.a(), ks.a(i1).getBytes());
        this.k = new kq.a();
        this.k.a = 20121221;
        this.k.b = "TMFS";
        this.k.f = this.f;
        this.k.c = 1;
        this.k.e = ((short)paramInt);
        this.k.g = this.g;
        if (this.h.length() < 1024L)
        {
          this.k.d = 1;
          this.k.h = 56L;
          this.k.i = -1L;
          this.d = ((int)this.h.length());
          this.e = (i1 * (1 + this.d / i1));
        }
        try
        {
          label230: this.i = new RandomAccessFile(this.h, "r");
          this.b = new byte[this.d];
          if (this.k.d == 1)
            this.i.read(this.b, 0, this.b.length);
          while (true)
          {
            this.i.close();
            this.c = this.a.a(this.b);
            if (this.c != null)
              break label408;
            n = -10;
            break;
            this.k.d = 0;
            this.k.h = 56L;
            this.k.i = this.h.length();
            this.d = 1024;
            this.e = (i1 * (1 + this.d / i1));
            break label230;
            this.i.read(this.b, 0, 1024);
          }
        }
        catch (Exception localException)
        {
          n = -12;
        }
        continue;
        label408: n = 0;
      }
    }
  }

  private int a(String paramString, byte[] paramArrayOfByte)
  {
    int n = this.a.a();
    int i1;
    if (((0xFF & this.f >> 8) == 2) && ((paramArrayOfByte == null) || (paramArrayOfByte.length != n)))
      i1 = -4;
    while (true)
    {
      return i1;
      this.a.a(paramString, paramArrayOfByte);
      this.g = a.i(paramString);
      if (this.g == null)
        i1 = -9;
      else
        i1 = 0;
    }
  }

  private static boolean a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    int n = paramArrayOfByte1.length;
    int i1 = paramArrayOfByte2.length;
    boolean bool = false;
    if (n != i1);
    while (true)
    {
      return bool;
      if (paramArrayOfByte1.equals(paramArrayOfByte2))
      {
        bool = true;
      }
      else
      {
        for (int i2 = 0; ; i2++)
        {
          if (i2 >= paramArrayOfByte1.length)
            break label69;
          int i3 = paramArrayOfByte1[i2];
          int i4 = paramArrayOfByte2[i2];
          bool = false;
          if (i3 != i4)
            break;
        }
        label69: bool = true;
      }
    }
  }

  // ERROR //
  private int b(int paramInt)
  {
    // Byte code:
    //   0: bipush 250
    //   2: istore_2
    //   3: aload_0
    //   4: getfield 81	kq:h	Ljava/io/File;
    //   7: invokevirtual 87	java/io/File:length	()J
    //   10: ldc2_w 88
    //   13: lcmp
    //   14: ifgt +5 -> 19
    //   17: iload_2
    //   18: ireturn
    //   19: bipush 56
    //   21: newarray byte
    //   23: astore_3
    //   24: new 91	java/io/FileInputStream
    //   27: dup
    //   28: aload_0
    //   29: getfield 81	kq:h	Ljava/io/File;
    //   32: invokespecial 94	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   35: astore 4
    //   37: aload 4
    //   39: aload_3
    //   40: invokevirtual 100	java/io/InputStream:read	([B)I
    //   43: istore 10
    //   45: iload 10
    //   47: aload_3
    //   48: arraylength
    //   49: if_icmpeq +40 -> 89
    //   52: new 102	java/lang/StringBuilder
    //   55: dup
    //   56: ldc 104
    //   58: invokespecial 107	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   61: iload 10
    //   63: invokevirtual 111	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   66: invokevirtual 115	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   69: pop
    //   70: aload 4
    //   72: invokevirtual 118	java/io/InputStream:close	()V
    //   75: bipush 156
    //   77: istore_2
    //   78: goto -61 -> 17
    //   81: astore 13
    //   83: bipush 156
    //   85: istore_2
    //   86: goto -69 -> 17
    //   89: aload 4
    //   91: invokevirtual 118	java/io/InputStream:close	()V
    //   94: aload_0
    //   95: aload_3
    //   96: invokestatic 123	kq$a:a	([B)Lkq$a;
    //   99: putfield 176	kq:k	Lkq$a;
    //   102: aload_0
    //   103: getfield 176	kq:k	Lkq$a;
    //   106: getfield 125	kq$a:a	I
    //   109: ldc 126
    //   111: if_icmpne -94 -> 17
    //   114: aload_0
    //   115: getfield 176	kq:k	Lkq$a;
    //   118: getfield 128	kq$a:b	Ljava/lang/String;
    //   121: ldc 130
    //   123: invokevirtual 134	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   126: ifeq -109 -> 17
    //   129: aload_0
    //   130: getfield 176	kq:k	Lkq$a;
    //   133: getfield 177	kq$a:f	I
    //   136: iload_1
    //   137: if_icmpne +58 -> 195
    //   140: iconst_0
    //   141: istore_2
    //   142: goto -125 -> 17
    //   145: astore 11
    //   147: bipush 156
    //   149: istore_2
    //   150: goto -133 -> 17
    //   153: astore 14
    //   155: aconst_null
    //   156: astore 4
    //   158: aload 4
    //   160: invokevirtual 118	java/io/InputStream:close	()V
    //   163: goto -69 -> 94
    //   166: astore 6
    //   168: bipush 156
    //   170: istore_2
    //   171: goto -154 -> 17
    //   174: astore 8
    //   176: aconst_null
    //   177: astore 4
    //   179: aload 4
    //   181: invokevirtual 118	java/io/InputStream:close	()V
    //   184: aload 8
    //   186: athrow
    //   187: astore 9
    //   189: bipush 156
    //   191: istore_2
    //   192: goto -175 -> 17
    //   195: new 102	java/lang/StringBuilder
    //   198: dup
    //   199: ldc 220
    //   201: invokespecial 107	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   204: aload_0
    //   205: getfield 176	kq:k	Lkq$a;
    //   208: getfield 177	kq$a:f	I
    //   211: invokevirtual 111	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   214: ldc 222
    //   216: invokevirtual 147	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   219: iload_1
    //   220: invokevirtual 111	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   223: invokevirtual 115	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   226: pop
    //   227: goto -210 -> 17
    //   230: astore 8
    //   232: goto -53 -> 179
    //   235: astore 5
    //   237: goto -79 -> 158
    //
    // Exception table:
    //   from	to	target	type
    //   70	75	81	java/io/IOException
    //   89	94	145	java/io/IOException
    //   24	37	153	java/lang/Exception
    //   158	163	166	java/io/IOException
    //   24	37	174	finally
    //   179	184	187	java/io/IOException
    //   37	70	230	finally
    //   37	70	235	java/lang/Exception
  }

  private int b(String paramString)
  {
    String[] arrayOfString = paramString.split("/");
    int i2;
    int i3;
    label40: int n;
    if (arrayOfString[0].equalsIgnoreCase("DES"))
    {
      i2 = 1;
      if (!arrayOfString[1].equalsIgnoreCase("ECB"))
        break label125;
      i3 = i2 | 0x100;
      if (!arrayOfString[2].equalsIgnoreCase("NoPadding"))
        break label173;
      n = i3 | 0x10000;
    }
    int i1;
    while (true)
    {
      this.f = n;
      if (this.f != -2)
        break label220;
      i1 = this.f;
      return i1;
      if (arrayOfString[0].equalsIgnoreCase("AES"))
      {
        i2 = 2;
        break;
      }
      new StringBuilder("Algorithm unknown: ").append(arrayOfString[0]).toString();
      n = -2;
      continue;
      label125: if (arrayOfString[1].equalsIgnoreCase("CBC"))
      {
        i3 = i2 | 0x200;
        break label40;
      }
      new StringBuilder("BlockMode unknown: ").append(arrayOfString[1]).toString();
      n = -2;
      continue;
      label173: if (arrayOfString[2].equalsIgnoreCase("PKCS5Padding"))
      {
        n = i3 | 0x20000;
      }
      else
      {
        new StringBuilder("PaddingMode unknown: ").append(arrayOfString[2]).toString();
        n = -2;
      }
    }
    label220: if ((0xFF & this.f) == 1)
      this.a = new kp(paramString);
    while (true)
    {
      i1 = 0;
      break;
      if ((0xFF & this.f) == 2)
        this.a = new kn(paramString);
    }
  }

  // ERROR //
  private int c()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 176	kq:k	Lkq$a;
    //   4: invokevirtual 262	kq$a:a	()[B
    //   7: astore_1
    //   8: aload_0
    //   9: new 195	java/io/RandomAccessFile
    //   12: dup
    //   13: aload_0
    //   14: getfield 81	kq:h	Ljava/io/File;
    //   17: ldc_w 264
    //   20: invokespecial 200	java/io/RandomAccessFile:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   23: putfield 202	kq:i	Ljava/io/RandomAccessFile;
    //   26: aload_0
    //   27: getfield 202	kq:i	Ljava/io/RandomAccessFile;
    //   30: lconst_0
    //   31: invokevirtual 268	java/io/RandomAccessFile:seek	(J)V
    //   34: aload_0
    //   35: getfield 202	kq:i	Ljava/io/RandomAccessFile;
    //   38: aload_1
    //   39: invokevirtual 272	java/io/RandomAccessFile:write	([B)V
    //   42: aload_0
    //   43: getfield 176	kq:k	Lkq$a;
    //   46: getfield 186	kq$a:d	B
    //   49: iconst_1
    //   50: if_icmpne +30 -> 80
    //   53: aload_0
    //   54: getfield 202	kq:i	Ljava/io/RandomAccessFile;
    //   57: aload_0
    //   58: getfield 66	kq:c	[B
    //   61: invokevirtual 272	java/io/RandomAccessFile:write	([B)V
    //   64: aload_0
    //   65: getfield 202	kq:i	Ljava/io/RandomAccessFile;
    //   68: invokevirtual 276	java/io/RandomAccessFile:getFD	()Ljava/io/FileDescriptor;
    //   71: invokevirtual 281	java/io/FileDescriptor:sync	()V
    //   74: iconst_0
    //   75: istore 8
    //   77: goto +273 -> 350
    //   80: aload_0
    //   81: getfield 202	kq:i	Ljava/io/RandomAccessFile;
    //   84: aload_0
    //   85: getfield 66	kq:c	[B
    //   88: iconst_0
    //   89: sipush 968
    //   92: invokevirtual 284	java/io/RandomAccessFile:write	([BII)V
    //   95: aload_0
    //   96: getfield 202	kq:i	Ljava/io/RandomAccessFile;
    //   99: aload_0
    //   100: getfield 176	kq:k	Lkq$a;
    //   103: getfield 193	kq$a:i	J
    //   106: invokevirtual 268	java/io/RandomAccessFile:seek	(J)V
    //   109: aload_0
    //   110: getfield 202	kq:i	Ljava/io/RandomAccessFile;
    //   113: aload_0
    //   114: getfield 66	kq:c	[B
    //   117: sipush 968
    //   120: sipush -968
    //   123: aload_0
    //   124: getfield 70	kq:e	I
    //   127: iadd
    //   128: invokevirtual 284	java/io/RandomAccessFile:write	([BII)V
    //   131: goto -67 -> 64
    //   134: astore 16
    //   136: bipush 243
    //   138: istore 8
    //   140: goto +210 -> 350
    //   143: astore_2
    //   144: aload_0
    //   145: getfield 202	kq:i	Ljava/io/RandomAccessFile;
    //   148: invokevirtual 288	java/io/RandomAccessFile:getChannel	()Ljava/nio/channels/FileChannel;
    //   151: astore_3
    //   152: aload_0
    //   153: getfield 202	kq:i	Ljava/io/RandomAccessFile;
    //   156: lconst_0
    //   157: invokevirtual 268	java/io/RandomAccessFile:seek	(J)V
    //   160: aload_0
    //   161: getfield 202	kq:i	Ljava/io/RandomAccessFile;
    //   164: aload_0
    //   165: getfield 64	kq:b	[B
    //   168: invokevirtual 272	java/io/RandomAccessFile:write	([B)V
    //   171: aload_0
    //   172: getfield 176	kq:k	Lkq$a;
    //   175: getfield 186	kq$a:d	B
    //   178: iconst_1
    //   179: if_icmpne +61 -> 240
    //   182: aload_0
    //   183: getfield 68	kq:d	I
    //   186: i2l
    //   187: lstore 11
    //   189: aload_3
    //   190: lload 11
    //   192: invokevirtual 294	java/nio/channels/FileChannel:truncate	(J)Ljava/nio/channels/FileChannel;
    //   195: pop
    //   196: aload_0
    //   197: getfield 202	kq:i	Ljava/io/RandomAccessFile;
    //   200: invokevirtual 276	java/io/RandomAccessFile:getFD	()Ljava/io/FileDescriptor;
    //   203: invokevirtual 281	java/io/FileDescriptor:sync	()V
    //   206: aload_3
    //   207: ifnull +7 -> 214
    //   210: aload_3
    //   211: invokevirtual 295	java/nio/channels/FileChannel:close	()V
    //   214: aload_0
    //   215: getfield 202	kq:i	Ljava/io/RandomAccessFile;
    //   218: ifnull +15 -> 233
    //   221: aload_0
    //   222: getfield 202	kq:i	Ljava/io/RandomAccessFile;
    //   225: invokevirtual 206	java/io/RandomAccessFile:close	()V
    //   228: aload_0
    //   229: aconst_null
    //   230: putfield 202	kq:i	Ljava/io/RandomAccessFile;
    //   233: bipush 243
    //   235: istore 8
    //   237: goto +113 -> 350
    //   240: aload_0
    //   241: getfield 176	kq:k	Lkq$a;
    //   244: getfield 193	kq$a:i	J
    //   247: lstore 11
    //   249: goto -60 -> 189
    //   252: astore 7
    //   254: aload_3
    //   255: ifnull +7 -> 262
    //   258: aload_3
    //   259: invokevirtual 295	java/nio/channels/FileChannel:close	()V
    //   262: aload_0
    //   263: getfield 202	kq:i	Ljava/io/RandomAccessFile;
    //   266: ifnull +15 -> 281
    //   269: aload_0
    //   270: getfield 202	kq:i	Ljava/io/RandomAccessFile;
    //   273: invokevirtual 206	java/io/RandomAccessFile:close	()V
    //   276: aload_0
    //   277: aconst_null
    //   278: putfield 202	kq:i	Ljava/io/RandomAccessFile;
    //   281: bipush 241
    //   283: istore 8
    //   285: goto +65 -> 350
    //   288: astore 4
    //   290: aload_3
    //   291: ifnull +7 -> 298
    //   294: aload_3
    //   295: invokevirtual 295	java/nio/channels/FileChannel:close	()V
    //   298: aload_0
    //   299: getfield 202	kq:i	Ljava/io/RandomAccessFile;
    //   302: ifnull +15 -> 317
    //   305: aload_0
    //   306: getfield 202	kq:i	Ljava/io/RandomAccessFile;
    //   309: invokevirtual 206	java/io/RandomAccessFile:close	()V
    //   312: aload_0
    //   313: aconst_null
    //   314: putfield 202	kq:i	Ljava/io/RandomAccessFile;
    //   317: aload 4
    //   319: athrow
    //   320: astore 15
    //   322: goto -108 -> 214
    //   325: astore 10
    //   327: goto -65 -> 262
    //   330: astore 6
    //   332: goto -34 -> 298
    //   335: astore 5
    //   337: goto -25 -> 312
    //   340: astore 9
    //   342: goto -66 -> 276
    //   345: astore 14
    //   347: goto -119 -> 228
    //   350: iload 8
    //   352: ireturn
    //
    // Exception table:
    //   from	to	target	type
    //   8	131	134	java/io/FileNotFoundException
    //   8	131	143	java/lang/Exception
    //   152	206	252	java/lang/Exception
    //   240	249	252	java/lang/Exception
    //   152	206	288	finally
    //   240	249	288	finally
    //   210	214	320	java/io/IOException
    //   258	262	325	java/io/IOException
    //   294	298	330	java/io/IOException
    //   305	312	335	java/lang/Exception
    //   269	276	340	java/lang/Exception
    //   221	228	345	java/lang/Exception
  }

  // ERROR //
  private int d()
  {
    // Byte code:
    //   0: aload_0
    //   1: new 195	java/io/RandomAccessFile
    //   4: dup
    //   5: aload_0
    //   6: getfield 81	kq:h	Ljava/io/File;
    //   9: ldc_w 264
    //   12: invokespecial 200	java/io/RandomAccessFile:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   15: putfield 202	kq:i	Ljava/io/RandomAccessFile;
    //   18: aload_0
    //   19: getfield 202	kq:i	Ljava/io/RandomAccessFile;
    //   22: lconst_0
    //   23: invokevirtual 268	java/io/RandomAccessFile:seek	(J)V
    //   26: aload_0
    //   27: getfield 176	kq:k	Lkq$a;
    //   30: getfield 186	kq$a:d	B
    //   33: iconst_1
    //   34: if_icmpne +85 -> 119
    //   37: aload_0
    //   38: getfield 202	kq:i	Ljava/io/RandomAccessFile;
    //   41: aload_0
    //   42: getfield 64	kq:b	[B
    //   45: invokevirtual 272	java/io/RandomAccessFile:write	([B)V
    //   48: aload_0
    //   49: getfield 202	kq:i	Ljava/io/RandomAccessFile;
    //   52: invokevirtual 288	java/io/RandomAccessFile:getChannel	()Ljava/nio/channels/FileChannel;
    //   55: astore 16
    //   57: aload 16
    //   59: astore 7
    //   61: aload 7
    //   63: aload_0
    //   64: getfield 68	kq:d	I
    //   67: i2l
    //   68: invokevirtual 294	java/nio/channels/FileChannel:truncate	(J)Ljava/nio/channels/FileChannel;
    //   71: pop
    //   72: aload_0
    //   73: getfield 202	kq:i	Ljava/io/RandomAccessFile;
    //   76: invokevirtual 276	java/io/RandomAccessFile:getFD	()Ljava/io/FileDescriptor;
    //   79: invokevirtual 281	java/io/FileDescriptor:sync	()V
    //   82: aload 7
    //   84: ifnull +8 -> 92
    //   87: aload 7
    //   89: invokevirtual 295	java/nio/channels/FileChannel:close	()V
    //   92: aload_0
    //   93: getfield 202	kq:i	Ljava/io/RandomAccessFile;
    //   96: astore 13
    //   98: iconst_0
    //   99: istore_3
    //   100: aload 13
    //   102: ifnull +15 -> 117
    //   105: aload_0
    //   106: getfield 202	kq:i	Ljava/io/RandomAccessFile;
    //   109: invokevirtual 206	java/io/RandomAccessFile:close	()V
    //   112: aload_0
    //   113: aconst_null
    //   114: putfield 202	kq:i	Ljava/io/RandomAccessFile;
    //   117: iload_3
    //   118: ireturn
    //   119: aload_0
    //   120: getfield 202	kq:i	Ljava/io/RandomAccessFile;
    //   123: aload_0
    //   124: getfield 64	kq:b	[B
    //   127: iconst_0
    //   128: sipush 1024
    //   131: invokevirtual 284	java/io/RandomAccessFile:write	([BII)V
    //   134: aload_0
    //   135: getfield 202	kq:i	Ljava/io/RandomAccessFile;
    //   138: aload_0
    //   139: getfield 176	kq:k	Lkq$a;
    //   142: getfield 193	kq$a:i	J
    //   145: invokevirtual 268	java/io/RandomAccessFile:seek	(J)V
    //   148: aload_0
    //   149: getfield 202	kq:i	Ljava/io/RandomAccessFile;
    //   152: invokevirtual 288	java/io/RandomAccessFile:getChannel	()Ljava/nio/channels/FileChannel;
    //   155: astore 10
    //   157: aload 10
    //   159: astore 7
    //   161: aload 7
    //   163: aload_0
    //   164: getfield 202	kq:i	Ljava/io/RandomAccessFile;
    //   167: invokevirtual 298	java/io/RandomAccessFile:getFilePointer	()J
    //   170: invokevirtual 294	java/nio/channels/FileChannel:truncate	(J)Ljava/nio/channels/FileChannel;
    //   173: pop
    //   174: goto -102 -> 72
    //   177: astore 11
    //   179: aload 7
    //   181: astore_2
    //   182: aload_2
    //   183: ifnull +7 -> 190
    //   186: aload_2
    //   187: invokevirtual 295	java/nio/channels/FileChannel:close	()V
    //   190: aload_0
    //   191: getfield 202	kq:i	Ljava/io/RandomAccessFile;
    //   194: ifnull +15 -> 209
    //   197: aload_0
    //   198: getfield 202	kq:i	Ljava/io/RandomAccessFile;
    //   201: invokevirtual 206	java/io/RandomAccessFile:close	()V
    //   204: aload_0
    //   205: aconst_null
    //   206: putfield 202	kq:i	Ljava/io/RandomAccessFile;
    //   209: bipush 243
    //   211: istore_3
    //   212: goto -95 -> 117
    //   215: astore 6
    //   217: aconst_null
    //   218: astore 7
    //   220: aload 7
    //   222: ifnull +8 -> 230
    //   225: aload 7
    //   227: invokevirtual 295	java/nio/channels/FileChannel:close	()V
    //   230: aload_0
    //   231: getfield 202	kq:i	Ljava/io/RandomAccessFile;
    //   234: ifnull +15 -> 249
    //   237: aload_0
    //   238: getfield 202	kq:i	Ljava/io/RandomAccessFile;
    //   241: invokevirtual 206	java/io/RandomAccessFile:close	()V
    //   244: aload_0
    //   245: aconst_null
    //   246: putfield 202	kq:i	Ljava/io/RandomAccessFile;
    //   249: aload 6
    //   251: athrow
    //   252: astore 15
    //   254: goto -162 -> 92
    //   257: astore 5
    //   259: goto -69 -> 190
    //   262: astore 9
    //   264: goto -34 -> 230
    //   267: astore 8
    //   269: goto -25 -> 244
    //   272: astore 6
    //   274: goto -54 -> 220
    //   277: astore 4
    //   279: goto -75 -> 204
    //   282: astore_1
    //   283: aconst_null
    //   284: astore_2
    //   285: goto -103 -> 182
    //   288: astore 14
    //   290: goto -178 -> 112
    //
    // Exception table:
    //   from	to	target	type
    //   61	82	177	java/lang/Exception
    //   161	174	177	java/lang/Exception
    //   0	57	215	finally
    //   119	157	215	finally
    //   87	92	252	java/io/IOException
    //   186	190	257	java/io/IOException
    //   225	230	262	java/io/IOException
    //   237	244	267	java/lang/Exception
    //   61	82	272	finally
    //   161	174	272	finally
    //   197	204	277	java/lang/Exception
    //   0	57	282	java/lang/Exception
    //   119	157	282	java/lang/Exception
    //   105	112	288	java/lang/Exception
  }

  public final int a(String paramString)
  {
    int n = -1;
    this.h = new File(paramString);
    this.f = 0;
    if (!this.h.exists())
      new StringBuilder("Decrypt input file not exist: ").append(paramString).toString();
    while (true)
    {
      return n;
      b("AES/CBC/PKCS5Padding");
      int i1 = b(this.f);
      if (i1 != 0)
      {
        n = i1;
      }
      else
      {
        int i2 = this.a.a();
        a(ks.a(), ks.a(i2).getBytes());
        if (!a(this.g, this.k.g))
        {
          n = -3;
        }
        else
        {
          if (this.k.d == 1)
          {
            this.e = ((int)(this.h.length() - this.k.h));
            this.d = n;
          }
          try
          {
            label161: this.i = new RandomAccessFile(this.h, "r");
            this.i.seek(this.k.h);
            this.c = new byte[this.e];
            if (this.k.d == 1)
              this.i.read(this.c, 0, this.c.length);
            while (true)
            {
              this.i.close();
              this.b = this.a.b(this.c);
              if (this.b != null)
                break label520;
              if ((m.containsKey(this.a.b())) && (!((Boolean)m.get(this.a.b())).booleanValue()))
                m.put(this.a.b(), Boolean.valueOf(true));
              Iterator localIterator = m.entrySet().iterator();
              do
              {
                Map.Entry localEntry;
                do
                {
                  if (!localIterator.hasNext())
                    break;
                  localEntry = (Map.Entry)localIterator.next();
                }
                while (((Boolean)localEntry.getValue()).booleanValue());
                this.a.a((Key)localEntry.getKey());
                this.b = this.a.b(this.c);
              }
              while (this.b == null);
              if (this.b != null)
                break label520;
              n = -11;
              break;
              this.d = 1024;
              this.e = (i2 * (1 + this.d / i2));
              break label161;
              int i3 = 1024 - (int)this.k.h;
              this.i.read(this.c, 0, i3);
              this.i.seek(this.k.i);
              this.i.read(this.c, i3, this.e - i3);
            }
          }
          catch (Exception localException)
          {
            n = -100;
          }
          continue;
          label520: this.d = this.b.length;
          n = 0;
        }
      }
    }
  }

  public final int a(String paramString1, String paramString2)
  {
    int n = a(paramString1);
    if (n != 0);
    while (true)
    {
      return n;
      n = d();
      if (n != 0)
        continue;
      this.j = paramString2;
      try
      {
        boolean bool = k.b(this.h, new File(this.j));
        if (bool)
        {
          this.k = null;
          this.j = "";
          this.h = null;
          n = 0;
          continue;
        }
        c();
        this.k = null;
        this.j = "";
        this.h = null;
        n = -14;
      }
      catch (Exception localException)
      {
        this.k = null;
        this.j = "";
        this.h = null;
        n = -100;
      }
      finally
      {
        this.k = null;
        this.j = "";
        this.h = null;
      }
    }
  }

  public final int a(String paramString1, String paramString2, int paramInt)
  {
    int n = a(paramString1, paramInt);
    if (n != -7)
      if (n == 0)
      {
        n = c();
        if (n == 0)
          break label34;
      }
    while (true)
    {
      return n;
      label34: this.j = paramString2;
      try
      {
        boolean bool = k.b(this.h, new File(this.j));
        if (bool)
        {
          this.k = null;
          this.j = "";
          this.h = null;
          n = 0;
          continue;
        }
        d();
        this.k = null;
        this.j = "";
        this.h = null;
        n = -14;
      }
      catch (Exception localException)
      {
        this.k = null;
        this.j = "";
        this.h = null;
        n = -100;
      }
      finally
      {
        this.k = null;
        this.j = "";
        this.h = null;
      }
    }
  }

  public final byte[] a()
  {
    return this.b;
  }

  public final kq.a b()
  {
    return this.k;
  }

  public static final class a
  {
    public int a;
    public String b;
    public byte c;
    public byte d;
    public short e;
    public int f;
    public byte[] g;
    public long h;
    public long i;
    private int j;
    private int k;

    public static a a(byte[] paramArrayOfByte)
    {
      a locala;
      if (paramArrayOfByte.length != 56)
      {
        new StringBuilder("HeadLength unMatch:").append(paramArrayOfByte.length).append("<---->56").toString();
        locala = null;
      }
      while (true)
      {
        return locala;
        ByteArrayInputStream localByteArrayInputStream = new ByteArrayInputStream(paramArrayOfByte);
        DataInputStream localDataInputStream = new DataInputStream(localByteArrayInputStream);
        locala = new a();
        try
        {
          byte[] arrayOfByte = new byte[4];
          locala.g = new byte[16];
          locala.a = localDataInputStream.readInt();
          localDataInputStream.read(arrayOfByte);
          locala.b = new String(arrayOfByte, "UTF-8");
          locala.c = localDataInputStream.readByte();
          locala.d = localDataInputStream.readByte();
          locala.e = localDataInputStream.readShort();
          locala.f = localDataInputStream.readInt();
          localDataInputStream.read(locala.g);
          locala.j = localDataInputStream.readInt();
          locala.k = localDataInputStream.readInt();
          locala.h = localDataInputStream.readLong();
          locala.i = localDataInputStream.readLong();
          localByteArrayInputStream.close();
          localDataInputStream.close();
        }
        catch (Exception localException)
        {
        }
      }
    }

    public final byte[] a()
    {
      ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream(56);
      DataOutputStream localDataOutputStream = new DataOutputStream(localByteArrayOutputStream);
      try
      {
        localDataOutputStream.writeInt(this.a);
        localDataOutputStream.write(this.b.getBytes("UTF-8"));
        localDataOutputStream.writeByte(this.c);
        localDataOutputStream.writeByte(this.d);
        localDataOutputStream.writeShort(this.e);
        localDataOutputStream.writeInt(this.f);
        localDataOutputStream.write(this.g);
        localDataOutputStream.writeInt(this.j);
        localDataOutputStream.writeInt(this.k);
        localDataOutputStream.writeLong(this.h);
        localDataOutputStream.writeLong(this.i);
        localByteArrayOutputStream.close();
        localDataOutputStream.close();
        arrayOfByte = localByteArrayOutputStream.toByteArray();
        if ((arrayOfByte != null) && (arrayOfByte.length == 56))
          return arrayOfByte;
      }
      catch (Exception localException)
      {
        while (true)
        {
          byte[] arrayOfByte = null;
          continue;
          arrayOfByte = null;
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     kq
 * JD-Core Version:    0.6.2
 */