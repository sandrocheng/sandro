import QQPIM.VirusClientInfo;
import android.content.Context;
import android.os.Bundle;
import com.tencent.tmsecure.common.TMSApplication;
import com.tencent.tmsecure.module.qscanner.AmScanner;

final class byk
{
  private static byk e;
  Bundle a;
  boolean b = false;
  private int c;
  private int d;
  private Context f = TMSApplication.getApplicaionContext();

  private byk()
  {
    c();
    String str = btd.a(this.f, "qv_base.amf", null);
    VirusClientInfo localVirusClientInfo = AmScanner.loadAmfHeader(this.f, str);
    if ((localVirusClientInfo != null) && ((localVirusClientInfo.getTimestamp() != this.d) || (localVirusClientInfo.getVersion() != this.c)))
    {
      this.d = localVirusClientInfo.getTimestamp();
      this.c = localVirusClientInfo.getVersion();
      this.a = new Bundle();
    }
    if (this.a == null)
      this.a = new Bundle();
  }

  public static byk a()
  {
    try
    {
      if (e == null)
        e = new byk();
      byk localbyk = e;
      return localbyk;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  // ERROR //
  public static void b()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_0
    //   2: ldc 2
    //   4: monitorenter
    //   5: getstatic 65	byk:e	Lbyk;
    //   8: ifnull +103 -> 111
    //   11: getstatic 65	byk:e	Lbyk;
    //   14: astore_2
    //   15: aload_2
    //   16: getfield 21	byk:b	Z
    //   19: istore_3
    //   20: iload_3
    //   21: ifeq +86 -> 107
    //   24: aload_2
    //   25: getfield 29	byk:f	Landroid/content/Context;
    //   28: ldc 70
    //   30: iconst_0
    //   31: invokevirtual 76	android/content/Context:openFileOutput	(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    //   34: astore 9
    //   36: aload 9
    //   38: astore 5
    //   40: invokestatic 82	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   43: astore_0
    //   44: aload_0
    //   45: aload_2
    //   46: getfield 57	byk:c	I
    //   49: invokevirtual 86	android/os/Parcel:writeInt	(I)V
    //   52: aload_0
    //   53: aload_2
    //   54: getfield 52	byk:d	I
    //   57: invokevirtual 86	android/os/Parcel:writeInt	(I)V
    //   60: aload_0
    //   61: aload_2
    //   62: getfield 62	byk:a	Landroid/os/Bundle;
    //   65: invokevirtual 90	android/os/Parcel:writeBundle	(Landroid/os/Bundle;)V
    //   68: aload_0
    //   69: invokevirtual 94	android/os/Parcel:marshall	()[B
    //   72: astore 10
    //   74: aload 5
    //   76: aload_2
    //   77: getfield 29	byk:f	Landroid/content/Context;
    //   80: aload 10
    //   82: aconst_null
    //   83: invokestatic 100	com/tencent/tccdb/TccCryptor:encrypt	(Landroid/content/Context;[B[B)[B
    //   86: invokevirtual 106	java/io/FileOutputStream:write	([B)V
    //   89: aload 5
    //   91: ifnull +8 -> 99
    //   94: aload 5
    //   96: invokevirtual 109	java/io/FileOutputStream:close	()V
    //   99: aload_0
    //   100: ifnull +7 -> 107
    //   103: aload_0
    //   104: invokevirtual 112	android/os/Parcel:recycle	()V
    //   107: aconst_null
    //   108: putstatic 65	byk:e	Lbyk;
    //   111: ldc 2
    //   113: monitorexit
    //   114: return
    //   115: astore 7
    //   117: aconst_null
    //   118: astore 5
    //   120: aload 7
    //   122: invokevirtual 115	java/io/IOException:printStackTrace	()V
    //   125: aload 5
    //   127: ifnull +8 -> 135
    //   130: aload 5
    //   132: invokevirtual 109	java/io/FileOutputStream:close	()V
    //   135: aload_0
    //   136: ifnull -29 -> 107
    //   139: aload_0
    //   140: invokevirtual 112	android/os/Parcel:recycle	()V
    //   143: goto -36 -> 107
    //   146: astore_1
    //   147: ldc 2
    //   149: monitorexit
    //   150: aload_1
    //   151: athrow
    //   152: astore 8
    //   154: aload 8
    //   156: invokevirtual 115	java/io/IOException:printStackTrace	()V
    //   159: goto -24 -> 135
    //   162: astore 4
    //   164: aconst_null
    //   165: astore 5
    //   167: aload 5
    //   169: ifnull +8 -> 177
    //   172: aload 5
    //   174: invokevirtual 109	java/io/FileOutputStream:close	()V
    //   177: aload_0
    //   178: ifnull +7 -> 185
    //   181: aload_0
    //   182: invokevirtual 112	android/os/Parcel:recycle	()V
    //   185: aload 4
    //   187: athrow
    //   188: astore 6
    //   190: aload 6
    //   192: invokevirtual 115	java/io/IOException:printStackTrace	()V
    //   195: goto -18 -> 177
    //   198: astore 11
    //   200: aload 11
    //   202: invokevirtual 115	java/io/IOException:printStackTrace	()V
    //   205: goto -106 -> 99
    //   208: astore 4
    //   210: goto -43 -> 167
    //   213: astore 7
    //   215: goto -95 -> 120
    //
    // Exception table:
    //   from	to	target	type
    //   24	36	115	java/io/IOException
    //   5	20	146	finally
    //   94	99	146	finally
    //   103	111	146	finally
    //   130	135	146	finally
    //   139	143	146	finally
    //   154	159	146	finally
    //   172	177	146	finally
    //   181	205	146	finally
    //   130	135	152	java/io/IOException
    //   24	36	162	finally
    //   172	177	188	java/io/IOException
    //   94	99	198	java/io/IOException
    //   40	89	208	finally
    //   120	125	208	finally
    //   40	89	213	java/io/IOException
  }

  // ERROR //
  private void c()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: aload_0
    //   3: getfield 29	byk:f	Landroid/content/Context;
    //   6: ldc 70
    //   8: invokevirtual 121	android/content/Context:openFileInput	(Ljava/lang/String;)Ljava/io/FileInputStream;
    //   11: astore 11
    //   13: aload 11
    //   15: astore 4
    //   17: new 123	java/io/ByteArrayOutputStream
    //   20: dup
    //   21: invokespecial 124	java/io/ByteArrayOutputStream:<init>	()V
    //   24: astore_3
    //   25: sipush 1024
    //   28: newarray byte
    //   30: astore 12
    //   32: aload 4
    //   34: aload 12
    //   36: invokevirtual 130	java/io/FileInputStream:read	([B)I
    //   39: istore 13
    //   41: aconst_null
    //   42: astore_1
    //   43: iload 13
    //   45: iconst_m1
    //   46: if_icmpne +90 -> 136
    //   49: aload_0
    //   50: getfield 29	byk:f	Landroid/content/Context;
    //   53: aload_3
    //   54: invokevirtual 133	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   57: aconst_null
    //   58: invokestatic 136	com/tencent/tccdb/TccCryptor:decrypt	(Landroid/content/Context;[B[B)[B
    //   61: astore 14
    //   63: invokestatic 82	android/os/Parcel:obtain	()Landroid/os/Parcel;
    //   66: astore_1
    //   67: aload_1
    //   68: aload 14
    //   70: iconst_0
    //   71: aload 14
    //   73: arraylength
    //   74: invokevirtual 140	android/os/Parcel:unmarshall	([BII)V
    //   77: aload_1
    //   78: iconst_0
    //   79: invokevirtual 143	android/os/Parcel:setDataPosition	(I)V
    //   82: aload_0
    //   83: aload_1
    //   84: invokevirtual 146	android/os/Parcel:readInt	()I
    //   87: putfield 57	byk:c	I
    //   90: aload_0
    //   91: aload_1
    //   92: invokevirtual 146	android/os/Parcel:readInt	()I
    //   95: putfield 52	byk:d	I
    //   98: aload_0
    //   99: aload_1
    //   100: aload_0
    //   101: getfield 29	byk:f	Landroid/content/Context;
    //   104: invokevirtual 150	android/content/Context:getClassLoader	()Ljava/lang/ClassLoader;
    //   107: invokevirtual 154	android/os/Parcel:readBundle	(Ljava/lang/ClassLoader;)Landroid/os/Bundle;
    //   110: putfield 62	byk:a	Landroid/os/Bundle;
    //   113: aload 4
    //   115: ifnull +8 -> 123
    //   118: aload 4
    //   120: invokevirtual 155	java/io/FileInputStream:close	()V
    //   123: aload_3
    //   124: invokevirtual 156	java/io/ByteArrayOutputStream:close	()V
    //   127: aload_1
    //   128: ifnull +7 -> 135
    //   131: aload_1
    //   132: invokevirtual 112	android/os/Parcel:recycle	()V
    //   135: return
    //   136: aload_3
    //   137: aload 12
    //   139: iconst_0
    //   140: iload 13
    //   142: invokevirtual 158	java/io/ByteArrayOutputStream:write	([BII)V
    //   145: goto -113 -> 32
    //   148: astore_2
    //   149: aload_2
    //   150: invokevirtual 162	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   153: pop
    //   154: aload 4
    //   156: ifnull +8 -> 164
    //   159: aload 4
    //   161: invokevirtual 155	java/io/FileInputStream:close	()V
    //   164: aload_3
    //   165: ifnull +7 -> 172
    //   168: aload_3
    //   169: invokevirtual 156	java/io/ByteArrayOutputStream:close	()V
    //   172: aload_1
    //   173: ifnull -38 -> 135
    //   176: aload_1
    //   177: invokevirtual 112	android/os/Parcel:recycle	()V
    //   180: goto -45 -> 135
    //   183: astore 10
    //   185: aload 10
    //   187: invokevirtual 115	java/io/IOException:printStackTrace	()V
    //   190: goto -26 -> 164
    //   193: astore 9
    //   195: aload 9
    //   197: invokevirtual 115	java/io/IOException:printStackTrace	()V
    //   200: goto -28 -> 172
    //   203: astore 5
    //   205: aconst_null
    //   206: astore_3
    //   207: aconst_null
    //   208: astore 4
    //   210: aload 4
    //   212: ifnull +8 -> 220
    //   215: aload 4
    //   217: invokevirtual 155	java/io/FileInputStream:close	()V
    //   220: aload_3
    //   221: ifnull +7 -> 228
    //   224: aload_3
    //   225: invokevirtual 156	java/io/ByteArrayOutputStream:close	()V
    //   228: aload_1
    //   229: ifnull +7 -> 236
    //   232: aload_1
    //   233: invokevirtual 112	android/os/Parcel:recycle	()V
    //   236: aload 5
    //   238: athrow
    //   239: astore 7
    //   241: aload 7
    //   243: invokevirtual 115	java/io/IOException:printStackTrace	()V
    //   246: goto -26 -> 220
    //   249: astore 6
    //   251: aload 6
    //   253: invokevirtual 115	java/io/IOException:printStackTrace	()V
    //   256: goto -28 -> 228
    //   259: astore 16
    //   261: aload 16
    //   263: invokevirtual 115	java/io/IOException:printStackTrace	()V
    //   266: goto -143 -> 123
    //   269: astore 15
    //   271: aload 15
    //   273: invokevirtual 115	java/io/IOException:printStackTrace	()V
    //   276: goto -149 -> 127
    //   279: astore 5
    //   281: aconst_null
    //   282: astore_1
    //   283: aconst_null
    //   284: astore_3
    //   285: goto -75 -> 210
    //   288: astore 5
    //   290: goto -80 -> 210
    //   293: astore_2
    //   294: aconst_null
    //   295: astore_1
    //   296: aconst_null
    //   297: astore_3
    //   298: aconst_null
    //   299: astore 4
    //   301: goto -152 -> 149
    //   304: astore_2
    //   305: aconst_null
    //   306: astore_1
    //   307: aconst_null
    //   308: astore_3
    //   309: goto -160 -> 149
    //
    // Exception table:
    //   from	to	target	type
    //   25	113	148	java/lang/Throwable
    //   136	145	148	java/lang/Throwable
    //   159	164	183	java/io/IOException
    //   168	172	193	java/io/IOException
    //   2	13	203	finally
    //   215	220	239	java/io/IOException
    //   224	228	249	java/io/IOException
    //   118	123	259	java/io/IOException
    //   123	127	269	java/io/IOException
    //   17	25	279	finally
    //   25	113	288	finally
    //   136	145	288	finally
    //   149	154	288	finally
    //   2	13	293	java/lang/Throwable
    //   17	25	304	java/lang/Throwable
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     byk
 * JD-Core Version:    0.6.2
 */