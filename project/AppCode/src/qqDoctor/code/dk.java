import android.os.Environment;
import java.text.SimpleDateFormat;

public final class dk
{
  private static SimpleDateFormat a = null;
  private static boolean b = false;

  static
  {
    if (!"mounted".equals(Environment.getExternalStorageState()))
      b = false;
    while (true)
    {
      return;
      b = true;
      a = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
    }
  }

  // ERROR //
  private static void a(int paramInt, String paramString1, String paramString2)
  {
    // Byte code:
    //   0: iload_0
    //   1: invokestatic 47	bl:d	()I
    //   4: if_icmpge +4 -> 8
    //   7: return
    //   8: iload_0
    //   9: tableswitch	default:+39 -> 48, 2:+252->261, 3:+258->267, 4:+240->249, 5:+264->273, 6:+246->255, 7:+270->279
    //   49: lload_2
    //   50: istore_3
    //   51: new 49	java/lang/StringBuilder
    //   54: dup
    //   55: sipush 128
    //   58: invokespecial 52	java/lang/StringBuilder:<init>	(I)V
    //   61: getstatic 12	dk:a	Ljava/text/SimpleDateFormat;
    //   64: new 54	java/util/Date
    //   67: dup
    //   68: invokespecial 56	java/util/Date:<init>	()V
    //   71: invokevirtual 60	java/text/SimpleDateFormat:format	(Ljava/util/Date;)Ljava/lang/String;
    //   74: invokevirtual 64	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   77: astore 4
    //   79: aload 4
    //   81: ldc 66
    //   83: invokevirtual 64	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   86: pop
    //   87: aload 4
    //   89: iload_3
    //   90: invokevirtual 69	java/lang/StringBuilder:append	(C)Ljava/lang/StringBuilder;
    //   93: pop
    //   94: aload 4
    //   96: ldc 71
    //   98: invokevirtual 64	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   101: pop
    //   102: aload 4
    //   104: aload_1
    //   105: invokevirtual 64	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   108: pop
    //   109: aload 4
    //   111: ldc 73
    //   113: invokevirtual 64	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   116: pop
    //   117: aload 4
    //   119: aload_2
    //   120: invokevirtual 64	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   123: pop
    //   124: aload 4
    //   126: ldc 75
    //   128: invokevirtual 64	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   131: pop
    //   132: aload 4
    //   134: invokevirtual 78	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   137: astore 12
    //   139: aconst_null
    //   140: astore 13
    //   142: getstatic 83	dj:a	Ljava/lang/String;
    //   145: ifnonnull +140 -> 285
    //   148: new 49	java/lang/StringBuilder
    //   151: dup
    //   152: invokespecial 84	java/lang/StringBuilder:<init>	()V
    //   155: invokestatic 88	android/os/Environment:getExternalStorageDirectory	()Ljava/io/File;
    //   158: invokevirtual 91	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   161: getstatic 96	java/io/File:separator	Ljava/lang/String;
    //   164: invokevirtual 64	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   167: ldc 98
    //   169: invokevirtual 64	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   172: getstatic 96	java/io/File:separator	Ljava/lang/String;
    //   175: invokevirtual 64	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   178: ldc 100
    //   180: invokevirtual 64	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   183: getstatic 96	java/io/File:separator	Ljava/lang/String;
    //   186: invokevirtual 64	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   189: ldc 102
    //   191: invokevirtual 64	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   194: invokevirtual 78	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   197: astore 14
    //   199: new 104	java/io/OutputStreamWriter
    //   202: dup
    //   203: new 106	java/io/FileOutputStream
    //   206: dup
    //   207: aload 14
    //   209: iconst_1
    //   210: invokespecial 109	java/io/FileOutputStream:<init>	(Ljava/lang/String;Z)V
    //   213: invokespecial 112	java/io/OutputStreamWriter:<init>	(Ljava/io/OutputStream;)V
    //   216: astore 15
    //   218: aload 15
    //   220: aload 12
    //   222: invokevirtual 115	java/io/OutputStreamWriter:write	(Ljava/lang/String;)V
    //   225: aload 15
    //   227: invokevirtual 118	java/io/OutputStreamWriter:flush	()V
    //   230: aload 15
    //   232: invokevirtual 121	java/io/OutputStreamWriter:close	()V
    //   235: goto -228 -> 7
    //   238: astore 23
    //   240: aload 23
    //   242: invokevirtual 122	java/io/IOException:toString	()Ljava/lang/String;
    //   245: pop
    //   246: goto -239 -> 7
    //   249: bipush 73
    //   251: istore_3
    //   252: goto -201 -> 51
    //   255: bipush 69
    //   257: istore_3
    //   258: goto -207 -> 51
    //   261: bipush 86
    //   263: istore_3
    //   264: goto -213 -> 51
    //   267: bipush 68
    //   269: istore_3
    //   270: goto -219 -> 51
    //   273: bipush 87
    //   275: istore_3
    //   276: goto -225 -> 51
    //   279: bipush 65
    //   281: istore_3
    //   282: goto -231 -> 51
    //   285: getstatic 83	dj:a	Ljava/lang/String;
    //   288: astore 14
    //   290: goto -91 -> 199
    //   293: astore 16
    //   295: aconst_null
    //   296: astore 15
    //   298: aload 16
    //   300: invokevirtual 123	java/lang/Exception:toString	()Ljava/lang/String;
    //   303: pop
    //   304: aload 15
    //   306: ifnull -299 -> 7
    //   309: aload 15
    //   311: invokevirtual 121	java/io/OutputStreamWriter:close	()V
    //   314: goto -307 -> 7
    //   317: astore 21
    //   319: aload 21
    //   321: invokevirtual 122	java/io/IOException:toString	()Ljava/lang/String;
    //   324: pop
    //   325: goto -318 -> 7
    //   328: astore 17
    //   330: aload 13
    //   332: ifnull +8 -> 340
    //   335: aload 13
    //   337: invokevirtual 121	java/io/OutputStreamWriter:close	()V
    //   340: aload 17
    //   342: athrow
    //   343: astore 18
    //   345: aload 18
    //   347: invokevirtual 122	java/io/IOException:toString	()Ljava/lang/String;
    //   350: pop
    //   351: goto -11 -> 340
    //   354: astore 17
    //   356: aload 15
    //   358: astore 13
    //   360: goto -30 -> 330
    //   363: astore 16
    //   365: goto -67 -> 298
    //
    // Exception table:
    //   from	to	target	type
    //   230	235	238	java/io/IOException
    //   199	218	293	java/lang/Exception
    //   309	314	317	java/io/IOException
    //   199	218	328	finally
    //   335	340	343	java/io/IOException
    //   218	230	354	finally
    //   298	304	354	finally
    //   218	230	363	java/lang/Exception
  }

  public static void a(String paramString1, String paramString2)
  {
    bl.e();
    if ((b) && (bl.c()))
      a(3, paramString1, paramString2);
  }

  public static void b(String paramString1, String paramString2)
  {
    bl.e();
    if ((b) && (bl.c()))
      a(4, paramString1, paramString2);
  }

  public static void c(String paramString1, String paramString2)
  {
    bl.e();
    if ((b) && (bl.c()))
      a(6, paramString1, paramString2);
  }

  public static void d(String paramString1, String paramString2)
  {
    bl.e();
    if ((b) && (bl.c()))
      a(7, paramString1, paramString2);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     dk
 * JD-Core Version:    0.6.2
 */