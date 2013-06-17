package com.avast.android.mobilesecurity.vps;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

public final class g
{
  private static final int a = 16;
  private static final int b = 16384;
  private static final int c = 65536;
  private static final int d = 128;
  private static final int e = 512;
  private static final Map f = new HashMap();
  private static final Map g = new HashMap();
  private static final Map h = new HashMap();
  private static final Map i = new HashMap();
  private int A;
  private int j;
  private boolean k;
  private byte[] l;
  private int m;
  private byte[] n;
  private int o;
  private byte[] p;
  private byte[] q;
  private int r;
  private ZipFile s;
  private ZipEntry t;
  private Enumeration u;
  private ZipEntry v;
  private InputStream w;
  private int x;
  private boolean y;
  private byte z;

  public g(int paramInt)
  {
    if (c < b + e)
      throw new InstantiationException();
    this.y = false;
    this.w = null;
    this.t = null;
    this.j = 0;
    this.k = false;
    this.l = ((byte[])f.get(Integer.valueOf(paramInt)));
    if (this.l == null)
    {
      this.l = new byte[c];
      f.put(Integer.valueOf(paramInt), this.l);
    }
    this.n = ((byte[])h.get(Integer.valueOf(paramInt)));
    if (this.n == null)
    {
      this.n = new byte[d];
      h.put(Integer.valueOf(paramInt), this.n);
    }
    this.p = ((byte[])g.get(Integer.valueOf(paramInt)));
    if (this.p == null)
    {
      this.p = new byte[b];
      g.put(Integer.valueOf(paramInt), this.p);
    }
    this.q = ((byte[])i.get(Integer.valueOf(paramInt)));
    if (this.q == null)
    {
      this.q = new byte[e + b];
      i.put(Integer.valueOf(paramInt), this.q);
    }
    this.A = paramInt;
    this.z = ((byte)(paramInt << 24 >> 24));
  }

  public static void a(int paramInt)
  {
    if ((byte[])f.get(Integer.valueOf(paramInt)) != null)
      f.remove(Integer.valueOf(paramInt));
    if ((byte[])g.get(Integer.valueOf(paramInt)) != null)
      g.remove(Integer.valueOf(paramInt));
    if ((byte[])h.get(Integer.valueOf(paramInt)) != null)
      h.remove(Integer.valueOf(paramInt));
    if ((byte[])i.get(Integer.valueOf(paramInt)) != null)
      i.remove(Integer.valueOf(paramInt));
  }

  // ERROR //
  private boolean a(ZipEntry paramZipEntry)
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_2
    //   2: aload_0
    //   3: iconst_0
    //   4: putfield 120	com/avast/android/mobilesecurity/vps/g:m	I
    //   7: aload_0
    //   8: getfield 75	com/avast/android/mobilesecurity/vps/g:w	Ljava/io/InputStream;
    //   11: ifnonnull +123 -> 134
    //   14: aload_0
    //   15: aload_0
    //   16: getfield 122	com/avast/android/mobilesecurity/vps/g:s	Ljava/util/zip/ZipFile;
    //   19: aload_1
    //   20: invokevirtual 128	java/util/zip/ZipFile:getInputStream	(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    //   23: putfield 75	com/avast/android/mobilesecurity/vps/g:w	Ljava/io/InputStream;
    //   26: aload_0
    //   27: getfield 75	com/avast/android/mobilesecurity/vps/g:w	Ljava/io/InputStream;
    //   30: aload_0
    //   31: getfield 104	com/avast/android/mobilesecurity/vps/g:p	[B
    //   34: invokevirtual 134	java/io/InputStream:read	([B)I
    //   37: istore 9
    //   39: iload 9
    //   41: iflt +282 -> 323
    //   44: iload 9
    //   46: aload_0
    //   47: getfield 120	com/avast/android/mobilesecurity/vps/g:m	I
    //   50: iadd
    //   51: aload_0
    //   52: getfield 96	com/avast/android/mobilesecurity/vps/g:l	[B
    //   55: arraylength
    //   56: if_icmpgt +150 -> 206
    //   59: aload_0
    //   60: getfield 104	com/avast/android/mobilesecurity/vps/g:p	[B
    //   63: iconst_0
    //   64: aload_0
    //   65: getfield 96	com/avast/android/mobilesecurity/vps/g:l	[B
    //   68: aload_0
    //   69: getfield 120	com/avast/android/mobilesecurity/vps/g:m	I
    //   72: iload 9
    //   74: invokestatic 140	java/lang/System:arraycopy	(Ljava/lang/Object;ILjava/lang/Object;II)V
    //   77: aload_0
    //   78: iload 9
    //   80: aload_0
    //   81: getfield 120	com/avast/android/mobilesecurity/vps/g:m	I
    //   84: iadd
    //   85: putfield 120	com/avast/android/mobilesecurity/vps/g:m	I
    //   88: goto -62 -> 26
    //   91: astore 7
    //   93: aload_0
    //   94: iconst_0
    //   95: putfield 120	com/avast/android/mobilesecurity/vps/g:m	I
    //   98: aload_0
    //   99: getfield 120	com/avast/android/mobilesecurity/vps/g:m	I
    //   102: getstatic 49	com/avast/android/mobilesecurity/vps/g:c	I
    //   105: if_icmpge +25 -> 130
    //   108: aload_0
    //   109: getfield 75	com/avast/android/mobilesecurity/vps/g:w	Ljava/io/InputStream;
    //   112: invokevirtual 143	java/io/InputStream:close	()V
    //   115: aload_0
    //   116: aconst_null
    //   117: putfield 75	com/avast/android/mobilesecurity/vps/g:w	Ljava/io/InputStream;
    //   120: aload_0
    //   121: iload_2
    //   122: putfield 73	com/avast/android/mobilesecurity/vps/g:y	Z
    //   125: aload_0
    //   126: iconst_0
    //   127: putfield 145	com/avast/android/mobilesecurity/vps/g:r	I
    //   130: iconst_0
    //   131: istore_2
    //   132: iload_2
    //   133: ireturn
    //   134: aload_0
    //   135: getfield 106	com/avast/android/mobilesecurity/vps/g:q	[B
    //   138: iconst_0
    //   139: aload_0
    //   140: getfield 96	com/avast/android/mobilesecurity/vps/g:l	[B
    //   143: iconst_0
    //   144: aload_0
    //   145: getfield 145	com/avast/android/mobilesecurity/vps/g:r	I
    //   148: invokestatic 140	java/lang/System:arraycopy	(Ljava/lang/Object;ILjava/lang/Object;II)V
    //   151: aload_0
    //   152: aload_0
    //   153: getfield 145	com/avast/android/mobilesecurity/vps/g:r	I
    //   156: putfield 120	com/avast/android/mobilesecurity/vps/g:m	I
    //   159: goto -133 -> 26
    //   162: astore 5
    //   164: aload_0
    //   165: iconst_0
    //   166: putfield 120	com/avast/android/mobilesecurity/vps/g:m	I
    //   169: aload_0
    //   170: getfield 120	com/avast/android/mobilesecurity/vps/g:m	I
    //   173: getstatic 49	com/avast/android/mobilesecurity/vps/g:c	I
    //   176: if_icmpge +25 -> 201
    //   179: aload_0
    //   180: getfield 75	com/avast/android/mobilesecurity/vps/g:w	Ljava/io/InputStream;
    //   183: invokevirtual 143	java/io/InputStream:close	()V
    //   186: aload_0
    //   187: aconst_null
    //   188: putfield 75	com/avast/android/mobilesecurity/vps/g:w	Ljava/io/InputStream;
    //   191: aload_0
    //   192: iload_2
    //   193: putfield 73	com/avast/android/mobilesecurity/vps/g:y	Z
    //   196: aload_0
    //   197: iconst_0
    //   198: putfield 145	com/avast/android/mobilesecurity/vps/g:r	I
    //   201: iconst_0
    //   202: istore_2
    //   203: goto -71 -> 132
    //   206: aload_0
    //   207: getfield 104	com/avast/android/mobilesecurity/vps/g:p	[B
    //   210: iconst_0
    //   211: aload_0
    //   212: getfield 96	com/avast/android/mobilesecurity/vps/g:l	[B
    //   215: aload_0
    //   216: getfield 120	com/avast/android/mobilesecurity/vps/g:m	I
    //   219: aload_0
    //   220: getfield 96	com/avast/android/mobilesecurity/vps/g:l	[B
    //   223: arraylength
    //   224: aload_0
    //   225: getfield 120	com/avast/android/mobilesecurity/vps/g:m	I
    //   228: isub
    //   229: invokestatic 140	java/lang/System:arraycopy	(Ljava/lang/Object;ILjava/lang/Object;II)V
    //   232: aload_0
    //   233: getfield 96	com/avast/android/mobilesecurity/vps/g:l	[B
    //   236: aload_0
    //   237: getfield 96	com/avast/android/mobilesecurity/vps/g:l	[B
    //   240: arraylength
    //   241: getstatic 53	com/avast/android/mobilesecurity/vps/g:e	I
    //   244: isub
    //   245: aload_0
    //   246: getfield 106	com/avast/android/mobilesecurity/vps/g:q	[B
    //   249: iconst_0
    //   250: getstatic 53	com/avast/android/mobilesecurity/vps/g:e	I
    //   253: invokestatic 140	java/lang/System:arraycopy	(Ljava/lang/Object;ILjava/lang/Object;II)V
    //   256: aload_0
    //   257: getfield 104	com/avast/android/mobilesecurity/vps/g:p	[B
    //   260: aload_0
    //   261: getfield 96	com/avast/android/mobilesecurity/vps/g:l	[B
    //   264: arraylength
    //   265: aload_0
    //   266: getfield 120	com/avast/android/mobilesecurity/vps/g:m	I
    //   269: isub
    //   270: aload_0
    //   271: getfield 106	com/avast/android/mobilesecurity/vps/g:q	[B
    //   274: getstatic 53	com/avast/android/mobilesecurity/vps/g:e	I
    //   277: iload 9
    //   279: aload_0
    //   280: getfield 96	com/avast/android/mobilesecurity/vps/g:l	[B
    //   283: arraylength
    //   284: aload_0
    //   285: getfield 120	com/avast/android/mobilesecurity/vps/g:m	I
    //   288: isub
    //   289: isub
    //   290: invokestatic 140	java/lang/System:arraycopy	(Ljava/lang/Object;ILjava/lang/Object;II)V
    //   293: aload_0
    //   294: iload 9
    //   296: aload_0
    //   297: getfield 96	com/avast/android/mobilesecurity/vps/g:l	[B
    //   300: arraylength
    //   301: aload_0
    //   302: getfield 120	com/avast/android/mobilesecurity/vps/g:m	I
    //   305: isub
    //   306: isub
    //   307: getstatic 53	com/avast/android/mobilesecurity/vps/g:e	I
    //   310: iadd
    //   311: putfield 145	com/avast/android/mobilesecurity/vps/g:r	I
    //   314: aload_0
    //   315: aload_0
    //   316: getfield 96	com/avast/android/mobilesecurity/vps/g:l	[B
    //   319: arraylength
    //   320: putfield 120	com/avast/android/mobilesecurity/vps/g:m	I
    //   323: aload_0
    //   324: getfield 120	com/avast/android/mobilesecurity/vps/g:m	I
    //   327: getstatic 49	com/avast/android/mobilesecurity/vps/g:c	I
    //   330: if_icmpge -198 -> 132
    //   333: aload_0
    //   334: getfield 75	com/avast/android/mobilesecurity/vps/g:w	Ljava/io/InputStream;
    //   337: invokevirtual 143	java/io/InputStream:close	()V
    //   340: aload_0
    //   341: aconst_null
    //   342: putfield 75	com/avast/android/mobilesecurity/vps/g:w	Ljava/io/InputStream;
    //   345: aload_0
    //   346: iload_2
    //   347: putfield 73	com/avast/android/mobilesecurity/vps/g:y	Z
    //   350: aload_0
    //   351: iconst_0
    //   352: putfield 145	com/avast/android/mobilesecurity/vps/g:r	I
    //   355: goto -223 -> 132
    //   358: astore_3
    //   359: aload_0
    //   360: getfield 120	com/avast/android/mobilesecurity/vps/g:m	I
    //   363: getstatic 49	com/avast/android/mobilesecurity/vps/g:c	I
    //   366: if_icmpge +25 -> 391
    //   369: aload_0
    //   370: getfield 75	com/avast/android/mobilesecurity/vps/g:w	Ljava/io/InputStream;
    //   373: invokevirtual 143	java/io/InputStream:close	()V
    //   376: aload_0
    //   377: aconst_null
    //   378: putfield 75	com/avast/android/mobilesecurity/vps/g:w	Ljava/io/InputStream;
    //   381: aload_0
    //   382: iload_2
    //   383: putfield 73	com/avast/android/mobilesecurity/vps/g:y	Z
    //   386: aload_0
    //   387: iconst_0
    //   388: putfield 145	com/avast/android/mobilesecurity/vps/g:r	I
    //   391: aload_3
    //   392: athrow
    //   393: astore 4
    //   395: goto -19 -> 376
    //   398: astore 6
    //   400: goto -214 -> 186
    //   403: astore 8
    //   405: goto -290 -> 115
    //   408: astore 10
    //   410: goto -70 -> 340
    //
    // Exception table:
    //   from	to	target	type
    //   2	88	91	java/util/zip/ZipException
    //   134	159	91	java/util/zip/ZipException
    //   206	323	91	java/util/zip/ZipException
    //   2	88	162	java/io/IOException
    //   134	159	162	java/io/IOException
    //   206	323	162	java/io/IOException
    //   2	88	358	finally
    //   93	98	358	finally
    //   134	159	358	finally
    //   164	169	358	finally
    //   206	323	358	finally
    //   369	376	393	java/io/IOException
    //   179	186	398	java/io/IOException
    //   108	115	403	java/io/IOException
    //   333	340	408	java/io/IOException
  }

  public static byte[] a(File paramFile, int paramInt)
  {
    int i1 = 0;
    try
    {
      byte[] arrayOfByte2 = new byte[d];
      byte[] arrayOfByte3 = new byte[b];
      FileInputStream localFileInputStream = new FileInputStream(paramFile);
      while (true)
      {
        int i2 = localFileInputStream.read(arrayOfByte3);
        if (i2 < 0)
          break label148;
        if (i1 + i2 > -1 + arrayOfByte2.length)
          break;
        System.arraycopy(arrayOfByte3, 0, arrayOfByte2, i1, i2);
        i1 += i2;
      }
      System.arraycopy(arrayOfByte3, 0, arrayOfByte2, i1, -1 + arrayOfByte2.length - i1);
      i3 = i1 + (-1 + arrayOfByte2.length - i1);
      arrayOfByte1 = new byte[i3 + 1];
      System.arraycopy(arrayOfByte2, 0, arrayOfByte1, 0, i3);
      arrayOfByte1[i3] = ((byte)(paramInt << 24 >> 24));
      return arrayOfByte1;
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      while (true)
        arrayOfByte1 = null;
    }
    catch (IOException localIOException)
    {
      while (true)
      {
        byte[] arrayOfByte1 = null;
        continue;
        label148: int i3 = i1;
      }
    }
  }

  // ERROR //
  private boolean h()
  {
    // Byte code:
    //   0: iconst_1
    //   1: istore_1
    //   2: aload_0
    //   3: iconst_0
    //   4: putfield 156	com/avast/android/mobilesecurity/vps/g:o	I
    //   7: aload_0
    //   8: aload_0
    //   9: getfield 122	com/avast/android/mobilesecurity/vps/g:s	Ljava/util/zip/ZipFile;
    //   12: aload_0
    //   13: getfield 158	com/avast/android/mobilesecurity/vps/g:v	Ljava/util/zip/ZipEntry;
    //   16: invokevirtual 128	java/util/zip/ZipFile:getInputStream	(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    //   19: putfield 75	com/avast/android/mobilesecurity/vps/g:w	Ljava/io/InputStream;
    //   22: aload_0
    //   23: getfield 75	com/avast/android/mobilesecurity/vps/g:w	Ljava/io/InputStream;
    //   26: aload_0
    //   27: getfield 104	com/avast/android/mobilesecurity/vps/g:p	[B
    //   30: invokevirtual 134	java/io/InputStream:read	([B)I
    //   33: istore 8
    //   35: aload_0
    //   36: iload 8
    //   38: putfield 160	com/avast/android/mobilesecurity/vps/g:x	I
    //   41: iload 8
    //   43: iflt +124 -> 167
    //   46: aload_0
    //   47: getfield 156	com/avast/android/mobilesecurity/vps/g:o	I
    //   50: aload_0
    //   51: getfield 160	com/avast/android/mobilesecurity/vps/g:x	I
    //   54: iadd
    //   55: aload_0
    //   56: getfield 102	com/avast/android/mobilesecurity/vps/g:n	[B
    //   59: arraylength
    //   60: if_icmpgt +62 -> 122
    //   63: aload_0
    //   64: getfield 104	com/avast/android/mobilesecurity/vps/g:p	[B
    //   67: iconst_0
    //   68: aload_0
    //   69: getfield 102	com/avast/android/mobilesecurity/vps/g:n	[B
    //   72: aload_0
    //   73: getfield 156	com/avast/android/mobilesecurity/vps/g:o	I
    //   76: aload_0
    //   77: getfield 160	com/avast/android/mobilesecurity/vps/g:x	I
    //   80: invokestatic 140	java/lang/System:arraycopy	(Ljava/lang/Object;ILjava/lang/Object;II)V
    //   83: aload_0
    //   84: aload_0
    //   85: getfield 156	com/avast/android/mobilesecurity/vps/g:o	I
    //   88: aload_0
    //   89: getfield 160	com/avast/android/mobilesecurity/vps/g:x	I
    //   92: iadd
    //   93: putfield 156	com/avast/android/mobilesecurity/vps/g:o	I
    //   96: goto -74 -> 22
    //   99: astore 6
    //   101: aload_0
    //   102: iconst_0
    //   103: putfield 156	com/avast/android/mobilesecurity/vps/g:o	I
    //   106: aload_0
    //   107: getfield 75	com/avast/android/mobilesecurity/vps/g:w	Ljava/io/InputStream;
    //   110: invokevirtual 143	java/io/InputStream:close	()V
    //   113: aload_0
    //   114: aconst_null
    //   115: putfield 75	com/avast/android/mobilesecurity/vps/g:w	Ljava/io/InputStream;
    //   118: iconst_0
    //   119: istore_1
    //   120: iload_1
    //   121: ireturn
    //   122: aload_0
    //   123: getfield 104	com/avast/android/mobilesecurity/vps/g:p	[B
    //   126: iconst_0
    //   127: aload_0
    //   128: getfield 102	com/avast/android/mobilesecurity/vps/g:n	[B
    //   131: aload_0
    //   132: getfield 156	com/avast/android/mobilesecurity/vps/g:o	I
    //   135: aload_0
    //   136: getfield 102	com/avast/android/mobilesecurity/vps/g:n	[B
    //   139: arraylength
    //   140: aload_0
    //   141: getfield 156	com/avast/android/mobilesecurity/vps/g:o	I
    //   144: isub
    //   145: invokestatic 140	java/lang/System:arraycopy	(Ljava/lang/Object;ILjava/lang/Object;II)V
    //   148: aload_0
    //   149: aload_0
    //   150: getfield 156	com/avast/android/mobilesecurity/vps/g:o	I
    //   153: aload_0
    //   154: getfield 102	com/avast/android/mobilesecurity/vps/g:n	[B
    //   157: arraylength
    //   158: aload_0
    //   159: getfield 156	com/avast/android/mobilesecurity/vps/g:o	I
    //   162: isub
    //   163: iadd
    //   164: putfield 156	com/avast/android/mobilesecurity/vps/g:o	I
    //   167: aload_0
    //   168: getfield 75	com/avast/android/mobilesecurity/vps/g:w	Ljava/io/InputStream;
    //   171: invokevirtual 143	java/io/InputStream:close	()V
    //   174: aload_0
    //   175: aconst_null
    //   176: putfield 75	com/avast/android/mobilesecurity/vps/g:w	Ljava/io/InputStream;
    //   179: goto -59 -> 120
    //   182: astore 4
    //   184: aload_0
    //   185: iconst_1
    //   186: putfield 81	com/avast/android/mobilesecurity/vps/g:k	Z
    //   189: aload_0
    //   190: iconst_0
    //   191: putfield 156	com/avast/android/mobilesecurity/vps/g:o	I
    //   194: aload_0
    //   195: getfield 75	com/avast/android/mobilesecurity/vps/g:w	Ljava/io/InputStream;
    //   198: invokevirtual 143	java/io/InputStream:close	()V
    //   201: aload_0
    //   202: aconst_null
    //   203: putfield 75	com/avast/android/mobilesecurity/vps/g:w	Ljava/io/InputStream;
    //   206: iconst_0
    //   207: istore_1
    //   208: goto -88 -> 120
    //   211: astore_2
    //   212: aload_0
    //   213: getfield 75	com/avast/android/mobilesecurity/vps/g:w	Ljava/io/InputStream;
    //   216: invokevirtual 143	java/io/InputStream:close	()V
    //   219: aload_0
    //   220: aconst_null
    //   221: putfield 75	com/avast/android/mobilesecurity/vps/g:w	Ljava/io/InputStream;
    //   224: aload_2
    //   225: athrow
    //   226: astore_3
    //   227: goto -8 -> 219
    //   230: astore 5
    //   232: goto -31 -> 201
    //   235: astore 7
    //   237: goto -124 -> 113
    //   240: astore 9
    //   242: goto -68 -> 174
    //
    // Exception table:
    //   from	to	target	type
    //   2	96	99	java/util/zip/ZipException
    //   122	167	99	java/util/zip/ZipException
    //   2	96	182	java/io/IOException
    //   122	167	182	java/io/IOException
    //   2	96	211	finally
    //   101	106	211	finally
    //   122	167	211	finally
    //   184	194	211	finally
    //   212	219	226	java/io/IOException
    //   194	201	230	java/io/IOException
    //   106	113	235	java/io/IOException
    //   167	174	240	java/io/IOException
  }

  public final boolean a(File paramFile)
  {
    boolean bool1 = this.k;
    boolean bool2 = false;
    if (bool1);
    while (true)
    {
      return bool2;
      try
      {
        this.s = new ZipFile(paramFile);
        this.u = this.s.entries();
        int i1 = 1 + this.j;
        this.j = i1;
        if (i1 == a)
          this.k = true;
        bool2 = true;
      }
      catch (IOException localIOException)
      {
        bool2 = false;
      }
    }
  }

  public final byte[] a()
  {
    if (a(this.t));
    for (byte[] arrayOfByte = this.l; ; arrayOfByte = null)
      return arrayOfByte;
  }

  public final byte[] a(String paramString)
  {
    this.y = false;
    byte[] arrayOfByte;
    while (true)
      if (this.u.hasMoreElements())
      {
        this.v = ((ZipEntry)this.u.nextElement());
        if ((paramString == null) || ("".equals(paramString)) || (this.v.getName().endsWith(paramString)))
          if (h())
          {
            this.t = this.v;
            arrayOfByte = this.n;
          }
      }
    while (true)
    {
      return arrayOfByte;
      arrayOfByte = null;
      continue;
      arrayOfByte = null;
    }
  }

  public final boolean b(File paramFile)
  {
    try
    {
      this.w = new FileInputStream(paramFile);
      bool = true;
      return bool;
    }
    catch (IOException localIOException)
    {
      while (true)
        boolean bool = false;
    }
  }

  public final byte[] b()
  {
    boolean bool = a(null);
    byte[] arrayOfByte = null;
    if (bool)
      arrayOfByte = this.l;
    return arrayOfByte;
  }

  public final int c()
  {
    return this.m;
  }

  public final int d()
  {
    return this.o;
  }

  public final boolean e()
  {
    return this.y;
  }

  public final boolean f()
  {
    return this.k;
  }

  public final void g()
  {
    if (this.w != null);
    try
    {
      this.w.close();
      label14: return;
    }
    catch (IOException localIOException)
    {
      break label14;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.vps.g
 * JD-Core Version:    0.6.2
 */