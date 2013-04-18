package com.keniu.security.a;

import android.content.pm.ApplicationInfo;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

public final class k
{
  private ZipEntry a = null;
  private ZipFile b = null;

  private k(ZipFile paramZipFile, ZipEntry paramZipEntry)
  {
    this.a = paramZipEntry;
    this.b = paramZipFile;
  }

  private static long a(InputStream paramInputStream)
  {
    byte[] arrayOfByte = new byte[4];
    paramInputStream.read(arrayOfByte);
    long l1 = 0xFF & arrayOfByte[0];
    long l2 = (0xFF & arrayOfByte[1]) << 8;
    long l3 = (0xFF & arrayOfByte[2]) << 16;
    return (0xFF & arrayOfByte[3]) << 24 | (l3 | (l1 | l2));
  }

  public static ArrayList a(ApplicationInfo paramApplicationInfo)
  {
    System.currentTimeMillis();
    ArrayList localArrayList1 = new ArrayList();
    File localFile = new File(paramApplicationInfo.publicSourceDir);
    ArrayList localArrayList2 = new ArrayList();
    try
    {
      ZipFile localZipFile = new ZipFile(localFile);
      ZipEntry localZipEntry = localZipFile.getEntry("classes.dex");
      BufferedInputStream localBufferedInputStream = new BufferedInputStream(localZipFile.getInputStream(localZipEntry));
      localBufferedInputStream.mark((int)localZipEntry.getSize());
      localBufferedInputStream.read(new byte[8]);
      localBufferedInputStream.reset();
      localBufferedInputStream.skip(56L);
      long l1 = a(localBufferedInputStream);
      long l2 = a(localBufferedInputStream);
      for (long l3 = 0L; l3 < l1; l3 += 1L)
      {
        localBufferedInputStream.reset();
        localBufferedInputStream.skip(l2 + 4L * l3);
        long l4 = a(localBufferedInputStream);
        localBufferedInputStream.reset();
        localBufferedInputStream.skip(l4);
        byte[] arrayOfByte1 = new byte[1];
        localBufferedInputStream.read(arrayOfByte1);
        byte[] arrayOfByte2 = new byte[0xFF & arrayOfByte1[0]];
        localBufferedInputStream.read(arrayOfByte2);
        if ((arrayOfByte2.length > 0) && (arrayOfByte2[0] == 76))
        {
          String str = new String(arrayOfByte2);
          localArrayList2.add(str.trim().substring(0, str.length() - 1));
        }
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      for (int i = 0; i < localArrayList2.size(); i++)
        localArrayList1.add(r.a((String)localArrayList2.get(i)));
    }
    return localArrayList1;
  }

  // ERROR //
  private static ArrayList a(File paramFile)
  {
    // Byte code:
    //   0: new 35	java/util/ArrayList
    //   3: dup
    //   4: invokespecial 36	java/util/ArrayList:<init>	()V
    //   7: astore_1
    //   8: aconst_null
    //   9: astore_2
    //   10: new 35	java/util/ArrayList
    //   13: dup
    //   14: invokespecial 36	java/util/ArrayList:<init>	()V
    //   17: astore_3
    //   18: new 49	java/util/zip/ZipFile
    //   21: dup
    //   22: aload_0
    //   23: invokespecial 52	java/util/zip/ZipFile:<init>	(Ljava/io/File;)V
    //   26: astore 4
    //   28: aload 4
    //   30: ldc 54
    //   32: invokevirtual 58	java/util/zip/ZipFile:getEntry	(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    //   35: astore 13
    //   37: new 60	java/io/BufferedInputStream
    //   40: dup
    //   41: aload 4
    //   43: aload 13
    //   45: invokevirtual 64	java/util/zip/ZipFile:getInputStream	(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    //   48: invokespecial 67	java/io/BufferedInputStream:<init>	(Ljava/io/InputStream;)V
    //   51: astore 14
    //   53: aload 14
    //   55: aload 13
    //   57: invokevirtual 72	java/util/zip/ZipEntry:getSize	()J
    //   60: l2i
    //   61: invokevirtual 76	java/io/InputStream:mark	(I)V
    //   64: aload 14
    //   66: bipush 8
    //   68: newarray byte
    //   70: invokevirtual 24	java/io/InputStream:read	([B)I
    //   73: pop
    //   74: aload 14
    //   76: invokevirtual 79	java/io/InputStream:reset	()V
    //   79: aload 14
    //   81: ldc2_w 80
    //   84: invokevirtual 85	java/io/InputStream:skip	(J)J
    //   87: pop2
    //   88: aload 14
    //   90: invokestatic 87	com/keniu/security/a/k:a	(Ljava/io/InputStream;)J
    //   93: lstore 18
    //   95: aload 14
    //   97: invokestatic 87	com/keniu/security/a/k:a	(Ljava/io/InputStream;)J
    //   100: lstore 20
    //   102: lconst_0
    //   103: lstore 22
    //   105: lload 22
    //   107: lload 18
    //   109: lcmp
    //   110: ifge +116 -> 226
    //   113: aload 14
    //   115: invokevirtual 79	java/io/InputStream:reset	()V
    //   118: aload 14
    //   120: lload 20
    //   122: ldc2_w 88
    //   125: lload 22
    //   127: lmul
    //   128: ladd
    //   129: invokevirtual 85	java/io/InputStream:skip	(J)J
    //   132: pop2
    //   133: aload 14
    //   135: invokestatic 87	com/keniu/security/a/k:a	(Ljava/io/InputStream;)J
    //   138: lstore 27
    //   140: aload 14
    //   142: invokevirtual 79	java/io/InputStream:reset	()V
    //   145: aload 14
    //   147: lload 27
    //   149: invokevirtual 85	java/io/InputStream:skip	(J)J
    //   152: pop2
    //   153: iconst_1
    //   154: newarray byte
    //   156: astore 31
    //   158: aload 14
    //   160: aload 31
    //   162: invokevirtual 24	java/io/InputStream:read	([B)I
    //   165: pop
    //   166: sipush 255
    //   169: aload 31
    //   171: iconst_0
    //   172: baload
    //   173: iand
    //   174: newarray byte
    //   176: astore 33
    //   178: aload 14
    //   180: aload 33
    //   182: invokevirtual 24	java/io/InputStream:read	([B)I
    //   185: pop
    //   186: aload 33
    //   188: arraylength
    //   189: ifle +28 -> 217
    //   192: aload 33
    //   194: iconst_0
    //   195: baload
    //   196: bipush 76
    //   198: if_icmpne +19 -> 217
    //   201: aload_3
    //   202: new 91	java/lang/String
    //   205: dup
    //   206: aload 33
    //   208: invokespecial 94	java/lang/String:<init>	([B)V
    //   211: invokeinterface 112 2 0
    //   216: pop
    //   217: lload 22
    //   219: lconst_1
    //   220: ladd
    //   221: lstore 22
    //   223: goto -118 -> 105
    //   226: aload 14
    //   228: invokevirtual 79	java/io/InputStream:reset	()V
    //   231: iconst_0
    //   232: istore 11
    //   234: iload 11
    //   236: aload_3
    //   237: invokeinterface 118 1 0
    //   242: if_icmpge +83 -> 325
    //   245: aload_1
    //   246: aload_3
    //   247: iload 11
    //   249: invokeinterface 122 2 0
    //   254: invokevirtual 128	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   257: pop
    //   258: iinc 11 1
    //   261: goto -27 -> 234
    //   264: astore 24
    //   266: aload 24
    //   268: invokevirtual 132	java/io/IOException:printStackTrace	()V
    //   271: goto -40 -> 231
    //   274: astore 7
    //   276: aconst_null
    //   277: astore 8
    //   279: aload 7
    //   281: astore 9
    //   283: aload 9
    //   285: invokevirtual 115	java/lang/Exception:printStackTrace	()V
    //   288: aload 8
    //   290: invokevirtual 79	java/io/InputStream:reset	()V
    //   293: goto -62 -> 231
    //   296: astore 10
    //   298: aload 10
    //   300: invokevirtual 132	java/io/IOException:printStackTrace	()V
    //   303: goto -72 -> 231
    //   306: astore 5
    //   308: aload_2
    //   309: invokevirtual 79	java/io/InputStream:reset	()V
    //   312: aload 5
    //   314: athrow
    //   315: astore 6
    //   317: aload 6
    //   319: invokevirtual 132	java/io/IOException:printStackTrace	()V
    //   322: goto -10 -> 312
    //   325: aload_1
    //   326: areturn
    //   327: astore 5
    //   329: aload 14
    //   331: astore_2
    //   332: goto -24 -> 308
    //   335: astore 5
    //   337: aload 8
    //   339: astore_2
    //   340: goto -32 -> 308
    //   343: astore 9
    //   345: aload 14
    //   347: astore 8
    //   349: goto -66 -> 283
    //
    // Exception table:
    //   from	to	target	type
    //   226	231	264	java/io/IOException
    //   18	53	274	java/lang/Exception
    //   288	293	296	java/io/IOException
    //   18	53	306	finally
    //   308	312	315	java/io/IOException
    //   53	217	327	finally
    //   283	288	335	finally
    //   53	217	343	java/lang/Exception
  }

  private InputStream b(InputStream paramInputStream)
  {
    if (paramInputStream != null)
      paramInputStream.close();
    return this.b.getInputStream(this.a);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.a.k
 * JD-Core Version:    0.6.2
 */