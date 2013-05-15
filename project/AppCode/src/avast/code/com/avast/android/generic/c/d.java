package com.avast.android.generic.c;

import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.InputStream;
import java.io.PrintStream;
import java.security.DigestOutputStream;
import java.security.KeyFactory;
import java.security.MessageDigest;
import java.security.PrivateKey;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.PKCS8EncodedKeySpec;
import java.util.Collection;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.TreeMap;
import java.util.jar.JarEntry;
import java.util.jar.JarFile;
import java.util.jar.JarOutputStream;

public class d
{
  private static String a(JarFile paramJarFile)
  {
    String str1 = "" + "Manifest-Version: 1.0\r\n";
    Object localObject1 = str1 + "Created-By: 1.0 (Android SignApk)\r\n\r\n";
    MessageDigest localMessageDigest = MessageDigest.getInstance("SHA1");
    byte[] arrayOfByte = new byte[4096];
    TreeMap localTreeMap = new TreeMap();
    Enumeration localEnumeration = paramJarFile.entries();
    while (localEnumeration.hasMoreElements())
    {
      JarEntry localJarEntry2 = (JarEntry)localEnumeration.nextElement();
      localTreeMap.put(localJarEntry2.getName(), localJarEntry2);
    }
    Iterator localIterator = localTreeMap.values().iterator();
    String str3;
    if (localIterator.hasNext())
    {
      JarEntry localJarEntry1 = (JarEntry)localIterator.next();
      String str2 = localJarEntry1.getName();
      if ((localJarEntry1.isDirectory()) || (str2.equals("META-INF/MANIFEST.MF")) || (str2.equals("META-INF/CERT.SF")) || (str2.equals("META-INF/CERT.RSA")))
        break label299;
      InputStream localInputStream = paramJarFile.getInputStream(localJarEntry1);
      while (true)
      {
        int i = localInputStream.read(arrayOfByte);
        if (i <= 0)
          break;
        localMessageDigest.update(arrayOfByte, 0, i);
      }
      str3 = (String)localObject1 + "Name: " + str2 + "\r\n";
    }
    label299: for (Object localObject2 = str3 + "SHA1-Digest: " + String.valueOf(b.a(localMessageDigest.digest())) + "\r\n\r\n"; ; localObject2 = localObject1)
    {
      localObject1 = localObject2;
      break;
      return localObject1;
    }
  }

  private static String a(JarFile paramJarFile, String paramString)
  {
    String str1 = "Signature-Version: 1.0\r\n" + "Created-By: 1.0 (Android SignApk)\r\n";
    MessageDigest localMessageDigest1 = MessageDigest.getInstance("SHA1");
    byte[] arrayOfByte = new byte[4096];
    MessageDigest localMessageDigest2 = MessageDigest.getInstance("SHA1");
    PrintStream localPrintStream = new PrintStream(new DigestOutputStream(new ByteArrayOutputStream(), localMessageDigest2), true, "UTF-8");
    localPrintStream.write(paramString.getBytes());
    localPrintStream.flush();
    Object localObject1 = str1 + "SHA1-Digest-Manifest: " + String.valueOf(b.a(localMessageDigest2.digest())) + "\r\n\r\n";
    TreeMap localTreeMap = new TreeMap();
    Enumeration localEnumeration = paramJarFile.entries();
    while (localEnumeration.hasMoreElements())
    {
      JarEntry localJarEntry2 = (JarEntry)localEnumeration.nextElement();
      localTreeMap.put(localJarEntry2.getName(), localJarEntry2);
    }
    Iterator localIterator = localTreeMap.values().iterator();
    String str3;
    if (localIterator.hasNext())
    {
      JarEntry localJarEntry1 = (JarEntry)localIterator.next();
      String str2 = localJarEntry1.getName();
      if ((localJarEntry1.isDirectory()) || (str2.equals("META-INF/MANIFEST.MF")) || (str2.equals("META-INF/CERT.SF")) || (str2.equals("META-INF/CERT.RSA")))
        break label440;
      localPrintStream.print("Name: " + str2 + "\r\n");
      InputStream localInputStream = paramJarFile.getInputStream(localJarEntry1);
      while (true)
      {
        int i = localInputStream.read(arrayOfByte);
        if (i <= 0)
          break;
        localMessageDigest1.update(arrayOfByte, 0, i);
      }
      localPrintStream.print("SHA1-Digest: " + String.valueOf(b.a(localMessageDigest1.digest())) + "\r\n\r\n");
      str3 = (String)localObject1 + "Name: " + str2 + "\r\n";
    }
    label440: for (Object localObject2 = str3 + "SHA1-Digest: " + String.valueOf(b.a(localMessageDigest2.digest())) + "\r\n\r\n"; ; localObject2 = localObject1)
    {
      localObject1 = localObject2;
      break;
      return localObject1;
    }
  }

  private static X509Certificate a(InputStream paramInputStream)
  {
    try
    {
      X509Certificate localX509Certificate = (X509Certificate)CertificateFactory.getInstance("X.509").generateCertificate(paramInputStream);
      return localX509Certificate;
    }
    finally
    {
      paramInputStream.close();
    }
  }

  // ERROR //
  public static void a(android.content.Context paramContext, int paramInt1, int paramInt2, String paramString1, String paramString2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: aconst_null
    //   4: astore 6
    //   6: new 192	java/io/File
    //   9: dup
    //   10: aload_3
    //   11: invokespecial 194	java/io/File:<init>	(Ljava/lang/String;)V
    //   14: astore 7
    //   16: aconst_null
    //   17: astore 6
    //   19: aload 4
    //   21: ifnonnull +631 -> 652
    //   24: ldc 196
    //   26: aconst_null
    //   27: invokestatic 200	java/io/File:createTempFile	(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    //   30: astore 59
    //   32: aload 59
    //   34: astore 11
    //   36: new 202	java/io/DataInputStream
    //   39: dup
    //   40: aload_0
    //   41: invokevirtual 208	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   44: iload_1
    //   45: invokevirtual 214	android/content/res/Resources:openRawResource	(I)Ljava/io/InputStream;
    //   48: invokespecial 217	java/io/DataInputStream:<init>	(Ljava/io/InputStream;)V
    //   51: astore 12
    //   53: aload 12
    //   55: invokestatic 219	com/avast/android/generic/c/d:a	(Ljava/io/InputStream;)Ljava/security/cert/X509Certificate;
    //   58: astore 14
    //   60: iconst_1
    //   61: anewarray 221	java/io/Closeable
    //   64: dup
    //   65: iconst_0
    //   66: aload 12
    //   68: aastore
    //   69: invokestatic 226	com/avast/android/generic/util/af:a	([Ljava/io/Closeable;)V
    //   72: aload 14
    //   74: invokevirtual 230	java/security/cert/X509Certificate:getNotBefore	()Ljava/util/Date;
    //   77: invokevirtual 236	java/util/Date:getTime	()J
    //   80: lstore 15
    //   82: lload 15
    //   84: ldc2_w 237
    //   87: ladd
    //   88: lstore 17
    //   90: new 202	java/io/DataInputStream
    //   93: dup
    //   94: aload_0
    //   95: invokevirtual 208	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   98: iload_2
    //   99: invokevirtual 214	android/content/res/Resources:openRawResource	(I)Ljava/io/InputStream;
    //   102: invokespecial 217	java/io/DataInputStream:<init>	(Ljava/io/InputStream;)V
    //   105: astore 19
    //   107: aload 19
    //   109: invokestatic 242	com/avast/android/generic/c/d:b	(Ljava/io/InputStream;)Ljava/security/PrivateKey;
    //   112: astore 21
    //   114: iconst_1
    //   115: anewarray 221	java/io/Closeable
    //   118: dup
    //   119: iconst_0
    //   120: aload 19
    //   122: aastore
    //   123: invokestatic 226	com/avast/android/generic/util/af:a	([Ljava/io/Closeable;)V
    //   126: new 39	java/util/jar/JarFile
    //   129: dup
    //   130: aload 7
    //   132: iconst_0
    //   133: invokespecial 245	java/util/jar/JarFile:<init>	(Ljava/io/File;Z)V
    //   136: astore 22
    //   138: new 247	java/util/jar/JarOutputStream
    //   141: dup
    //   142: new 249	java/io/FileOutputStream
    //   145: dup
    //   146: aload 11
    //   148: invokespecial 252	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   151: invokespecial 255	java/util/jar/JarOutputStream:<init>	(Ljava/io/OutputStream;)V
    //   154: astore 23
    //   156: aload 23
    //   158: bipush 9
    //   160: invokevirtual 259	java/util/jar/JarOutputStream:setLevel	(I)V
    //   163: aload 22
    //   165: invokestatic 261	com/avast/android/generic/c/d:a	(Ljava/util/jar/JarFile;)Ljava/lang/String;
    //   168: astore 28
    //   170: new 55	java/util/jar/JarEntry
    //   173: dup
    //   174: ldc 85
    //   176: invokespecial 262	java/util/jar/JarEntry:<init>	(Ljava/lang/String;)V
    //   179: astore 29
    //   181: aload 29
    //   183: lload 17
    //   185: invokevirtual 266	java/util/jar/JarEntry:setTime	(J)V
    //   188: aload 23
    //   190: aload 29
    //   192: invokevirtual 270	java/util/jar/JarOutputStream:putNextEntry	(Ljava/util/zip/ZipEntry;)V
    //   195: aload 23
    //   197: aload 28
    //   199: invokevirtual 153	java/lang/String:getBytes	()[B
    //   202: invokevirtual 271	java/util/jar/JarOutputStream:write	([B)V
    //   205: getstatic 277	android/os/Build$VERSION:SDK_INT	I
    //   208: istore 30
    //   210: iload 30
    //   212: bipush 17
    //   214: if_icmpge +844 -> 1058
    //   217: new 279	com/avast/android/generic/c/f
    //   220: dup
    //   221: aload 21
    //   223: iconst_1
    //   224: anewarray 180	java/security/cert/X509Certificate
    //   227: dup
    //   228: iconst_0
    //   229: aload 14
    //   231: aastore
    //   232: ldc 28
    //   234: invokespecial 282	com/avast/android/generic/c/f:<init>	(Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/lang/String;)V
    //   237: astore 50
    //   239: aload 22
    //   241: aload 28
    //   243: invokestatic 284	com/avast/android/generic/c/d:a	(Ljava/util/jar/JarFile;Ljava/lang/String;)Ljava/lang/String;
    //   246: astore 52
    //   248: aload 52
    //   250: aload 50
    //   252: aload 21
    //   254: aload 14
    //   256: invokestatic 287	com/avast/android/generic/c/d:a	(Ljava/lang/String;Lcom/avast/android/generic/c/e;Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;)[B
    //   259: astore 53
    //   261: new 55	java/util/jar/JarEntry
    //   264: dup
    //   265: ldc 93
    //   267: invokespecial 262	java/util/jar/JarEntry:<init>	(Ljava/lang/String;)V
    //   270: astore 54
    //   272: aload 54
    //   274: lload 17
    //   276: invokevirtual 266	java/util/jar/JarEntry:setTime	(J)V
    //   279: aload 23
    //   281: aload 54
    //   283: invokevirtual 270	java/util/jar/JarOutputStream:putNextEntry	(Ljava/util/zip/ZipEntry;)V
    //   286: new 137	java/io/PrintStream
    //   289: dup
    //   290: aload 23
    //   292: iconst_1
    //   293: ldc 147
    //   295: invokespecial 150	java/io/PrintStream:<init>	(Ljava/io/OutputStream;ZLjava/lang/String;)V
    //   298: astore 55
    //   300: aload 55
    //   302: aload 52
    //   304: invokevirtual 166	java/io/PrintStream:print	(Ljava/lang/String;)V
    //   307: aload 55
    //   309: invokevirtual 160	java/io/PrintStream:flush	()V
    //   312: new 55	java/util/jar/JarEntry
    //   315: dup
    //   316: ldc 95
    //   318: invokespecial 262	java/util/jar/JarEntry:<init>	(Ljava/lang/String;)V
    //   321: astore 56
    //   323: aload 56
    //   325: lload 17
    //   327: invokevirtual 266	java/util/jar/JarEntry:setTime	(J)V
    //   330: aload 23
    //   332: aload 56
    //   334: invokevirtual 270	java/util/jar/JarOutputStream:putNextEntry	(Ljava/util/zip/ZipEntry;)V
    //   337: aload 23
    //   339: aload 53
    //   341: invokevirtual 271	java/util/jar/JarOutputStream:write	([B)V
    //   344: aload 23
    //   346: invokevirtual 288	java/util/jar/JarOutputStream:flush	()V
    //   349: iconst_1
    //   350: istore 31
    //   352: iload 31
    //   354: ifne +180 -> 534
    //   357: new 202	java/io/DataInputStream
    //   360: dup
    //   361: aload_0
    //   362: invokevirtual 208	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   365: getstatic 292	com/avast/android/generic/y:b	I
    //   368: invokevirtual 214	android/content/res/Resources:openRawResource	(I)Ljava/io/InputStream;
    //   371: invokespecial 217	java/io/DataInputStream:<init>	(Ljava/io/InputStream;)V
    //   374: astore 41
    //   376: aload 41
    //   378: invokestatic 296	com/avast/android/generic/c/d:c	(Ljava/io/InputStream;)[B
    //   381: astore 43
    //   383: iconst_1
    //   384: anewarray 221	java/io/Closeable
    //   387: dup
    //   388: iconst_0
    //   389: aload 41
    //   391: aastore
    //   392: invokestatic 226	com/avast/android/generic/util/af:a	([Ljava/io/Closeable;)V
    //   395: new 298	com/avast/android/generic/c/h
    //   398: dup
    //   399: invokespecial 299	com/avast/android/generic/c/h:<init>	()V
    //   402: astore 44
    //   404: aload 44
    //   406: aload 21
    //   408: invokevirtual 302	com/avast/android/generic/c/h:a	(Ljava/security/PrivateKey;)V
    //   411: aload 22
    //   413: aload 28
    //   415: invokestatic 284	com/avast/android/generic/c/d:a	(Ljava/util/jar/JarFile;Ljava/lang/String;)Ljava/lang/String;
    //   418: astore 45
    //   420: aload 44
    //   422: aload 45
    //   424: ldc 147
    //   426: invokevirtual 305	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   429: invokevirtual 307	com/avast/android/generic/c/h:a	([B)V
    //   432: aload 44
    //   434: invokevirtual 309	com/avast/android/generic/c/h:a	()[B
    //   437: astore 46
    //   439: new 55	java/util/jar/JarEntry
    //   442: dup
    //   443: ldc 93
    //   445: invokespecial 262	java/util/jar/JarEntry:<init>	(Ljava/lang/String;)V
    //   448: astore 47
    //   450: aload 47
    //   452: lload 17
    //   454: invokevirtual 266	java/util/jar/JarEntry:setTime	(J)V
    //   457: aload 23
    //   459: aload 47
    //   461: invokevirtual 270	java/util/jar/JarOutputStream:putNextEntry	(Ljava/util/zip/ZipEntry;)V
    //   464: new 137	java/io/PrintStream
    //   467: dup
    //   468: aload 23
    //   470: iconst_1
    //   471: ldc 147
    //   473: invokespecial 150	java/io/PrintStream:<init>	(Ljava/io/OutputStream;ZLjava/lang/String;)V
    //   476: astore 48
    //   478: aload 48
    //   480: aload 45
    //   482: invokevirtual 166	java/io/PrintStream:print	(Ljava/lang/String;)V
    //   485: aload 48
    //   487: invokevirtual 160	java/io/PrintStream:flush	()V
    //   490: new 55	java/util/jar/JarEntry
    //   493: dup
    //   494: ldc 95
    //   496: invokespecial 262	java/util/jar/JarEntry:<init>	(Ljava/lang/String;)V
    //   499: astore 49
    //   501: aload 49
    //   503: lload 17
    //   505: invokevirtual 266	java/util/jar/JarEntry:setTime	(J)V
    //   508: aload 23
    //   510: aload 49
    //   512: invokevirtual 270	java/util/jar/JarOutputStream:putNextEntry	(Ljava/util/zip/ZipEntry;)V
    //   515: aload 23
    //   517: aload 43
    //   519: invokevirtual 271	java/util/jar/JarOutputStream:write	([B)V
    //   522: aload 23
    //   524: aload 46
    //   526: invokevirtual 271	java/util/jar/JarOutputStream:write	([B)V
    //   529: aload 23
    //   531: invokevirtual 288	java/util/jar/JarOutputStream:flush	()V
    //   534: aload 22
    //   536: aload 23
    //   538: invokestatic 312	com/avast/android/generic/c/d:a	(Ljava/util/jar/JarFile;Ljava/util/jar/JarOutputStream;)V
    //   541: aload 22
    //   543: invokevirtual 313	java/util/jar/JarFile:close	()V
    //   546: iconst_1
    //   547: anewarray 221	java/io/Closeable
    //   550: dup
    //   551: iconst_0
    //   552: aload 23
    //   554: aastore
    //   555: invokestatic 226	com/avast/android/generic/util/af:a	([Ljava/io/Closeable;)V
    //   558: aload 4
    //   560: ifnonnull +75 -> 635
    //   563: aload 7
    //   565: invokevirtual 316	java/io/File:delete	()Z
    //   568: pop
    //   569: aload 11
    //   571: aload 7
    //   573: invokevirtual 320	java/io/File:renameTo	(Ljava/io/File;)Z
    //   576: istore 35
    //   578: iload 35
    //   580: ifne +55 -> 635
    //   583: new 249	java/io/FileOutputStream
    //   586: dup
    //   587: aload 7
    //   589: invokespecial 252	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   592: astore 36
    //   594: new 322	java/io/FileInputStream
    //   597: dup
    //   598: aload 11
    //   600: invokespecial 323	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   603: astore 37
    //   605: aload 37
    //   607: aload 36
    //   609: invokestatic 328	com/avast/android/generic/util/ag:a	(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    //   612: iconst_2
    //   613: anewarray 221	java/io/Closeable
    //   616: dup
    //   617: iconst_0
    //   618: aload 37
    //   620: aastore
    //   621: dup
    //   622: iconst_1
    //   623: aload 36
    //   625: aastore
    //   626: invokestatic 226	com/avast/android/generic/util/af:a	([Ljava/io/Closeable;)V
    //   629: aload 11
    //   631: invokevirtual 316	java/io/File:delete	()Z
    //   634: pop
    //   635: iconst_0
    //   636: ifeq +7 -> 643
    //   639: aconst_null
    //   640: invokevirtual 313	java/util/jar/JarFile:close	()V
    //   643: iconst_0
    //   644: ifeq +7 -> 651
    //   647: aconst_null
    //   648: invokevirtual 329	java/util/jar/JarOutputStream:close	()V
    //   651: return
    //   652: new 192	java/io/File
    //   655: dup
    //   656: aload 4
    //   658: invokespecial 194	java/io/File:<init>	(Ljava/lang/String;)V
    //   661: astore 11
    //   663: goto -627 -> 36
    //   666: astore 10
    //   668: aload 10
    //   670: athrow
    //   671: astore 8
    //   673: aload 5
    //   675: ifnull +8 -> 683
    //   678: aload 5
    //   680: invokevirtual 313	java/util/jar/JarFile:close	()V
    //   683: aload 6
    //   685: ifnull +8 -> 693
    //   688: aload 6
    //   690: invokevirtual 329	java/util/jar/JarOutputStream:close	()V
    //   693: aload 8
    //   695: athrow
    //   696: astore 13
    //   698: aconst_null
    //   699: astore 12
    //   701: iconst_1
    //   702: anewarray 221	java/io/Closeable
    //   705: dup
    //   706: iconst_0
    //   707: aload 12
    //   709: aastore
    //   710: invokestatic 226	com/avast/android/generic/util/af:a	([Ljava/io/Closeable;)V
    //   713: aload 13
    //   715: athrow
    //   716: iconst_1
    //   717: anewarray 221	java/io/Closeable
    //   720: dup
    //   721: iconst_0
    //   722: aload 19
    //   724: aastore
    //   725: invokestatic 226	com/avast/android/generic/util/af:a	([Ljava/io/Closeable;)V
    //   728: aload 20
    //   730: athrow
    //   731: astore 57
    //   733: new 331	com/avast/android/generic/c/g
    //   736: dup
    //   737: aload 21
    //   739: iconst_1
    //   740: anewarray 180	java/security/cert/X509Certificate
    //   743: dup
    //   744: iconst_0
    //   745: aload 14
    //   747: aastore
    //   748: ldc 28
    //   750: invokespecial 332	com/avast/android/generic/c/g:<init>	(Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/lang/String;)V
    //   753: astore 50
    //   755: goto -516 -> 239
    //   758: astore 58
    //   760: new 186	java/lang/Exception
    //   763: dup
    //   764: aload 58
    //   766: invokespecial 335	java/lang/Exception:<init>	(Ljava/lang/Throwable;)V
    //   769: athrow
    //   770: astore 51
    //   772: iconst_0
    //   773: istore 31
    //   775: goto -423 -> 352
    //   778: astore 42
    //   780: aconst_null
    //   781: astore 41
    //   783: iconst_1
    //   784: anewarray 221	java/io/Closeable
    //   787: dup
    //   788: iconst_0
    //   789: aload 41
    //   791: aastore
    //   792: invokestatic 226	com/avast/android/generic/util/af:a	([Ljava/io/Closeable;)V
    //   795: aload 42
    //   797: athrow
    //   798: astore 24
    //   800: aload 23
    //   802: astore 25
    //   804: aload 22
    //   806: astore 26
    //   808: aload 26
    //   810: invokevirtual 313	java/util/jar/JarFile:close	()V
    //   813: aconst_null
    //   814: astore 5
    //   816: iconst_1
    //   817: anewarray 221	java/io/Closeable
    //   820: dup
    //   821: iconst_0
    //   822: aload 25
    //   824: aastore
    //   825: invokestatic 226	com/avast/android/generic/util/af:a	([Ljava/io/Closeable;)V
    //   828: aconst_null
    //   829: astore 5
    //   831: aconst_null
    //   832: astore 6
    //   834: aload 24
    //   836: athrow
    //   837: astore 38
    //   839: aconst_null
    //   840: astore 39
    //   842: aconst_null
    //   843: astore 37
    //   845: iconst_2
    //   846: anewarray 221	java/io/Closeable
    //   849: dup
    //   850: iconst_0
    //   851: aload 37
    //   853: aastore
    //   854: dup
    //   855: iconst_1
    //   856: aload 39
    //   858: aastore
    //   859: invokestatic 226	com/avast/android/generic/util/af:a	([Ljava/io/Closeable;)V
    //   862: aload 38
    //   864: athrow
    //   865: astore 10
    //   867: aconst_null
    //   868: astore 5
    //   870: aconst_null
    //   871: astore 6
    //   873: goto -205 -> 668
    //   876: astore 9
    //   878: aload 9
    //   880: invokevirtual 338	java/io/IOException:printStackTrace	()V
    //   883: aload 9
    //   885: athrow
    //   886: astore 27
    //   888: goto -75 -> 813
    //   891: astore 32
    //   893: goto -347 -> 546
    //   896: astore 33
    //   898: aload 33
    //   900: invokevirtual 338	java/io/IOException:printStackTrace	()V
    //   903: aload 33
    //   905: athrow
    //   906: astore 8
    //   908: aconst_null
    //   909: astore 5
    //   911: aconst_null
    //   912: astore 6
    //   914: goto -241 -> 673
    //   917: astore 8
    //   919: aload 25
    //   921: astore 6
    //   923: aload 26
    //   925: astore 5
    //   927: goto -254 -> 673
    //   930: astore 8
    //   932: aload 25
    //   934: astore 6
    //   936: aconst_null
    //   937: astore 5
    //   939: goto -266 -> 673
    //   942: astore 8
    //   944: aload 23
    //   946: astore 6
    //   948: aload 22
    //   950: astore 5
    //   952: goto -279 -> 673
    //   955: astore 8
    //   957: aload 23
    //   959: astore 6
    //   961: aconst_null
    //   962: astore 5
    //   964: goto -291 -> 673
    //   967: astore 10
    //   969: aload 25
    //   971: astore 6
    //   973: goto -305 -> 668
    //   976: astore 10
    //   978: aload 23
    //   980: astore 6
    //   982: aconst_null
    //   983: astore 5
    //   985: goto -317 -> 668
    //   988: astore 38
    //   990: aload 36
    //   992: astore 39
    //   994: aconst_null
    //   995: astore 37
    //   997: goto -152 -> 845
    //   1000: astore 38
    //   1002: aload 36
    //   1004: astore 39
    //   1006: goto -161 -> 845
    //   1009: astore 38
    //   1011: aconst_null
    //   1012: astore 37
    //   1014: aconst_null
    //   1015: astore 39
    //   1017: goto -172 -> 845
    //   1020: astore 24
    //   1022: aconst_null
    //   1023: astore 25
    //   1025: aconst_null
    //   1026: astore 26
    //   1028: goto -220 -> 808
    //   1031: astore 24
    //   1033: aload 22
    //   1035: astore 26
    //   1037: aconst_null
    //   1038: astore 25
    //   1040: goto -232 -> 808
    //   1043: astore 42
    //   1045: goto -262 -> 783
    //   1048: astore 20
    //   1050: goto -334 -> 716
    //   1053: astore 13
    //   1055: goto -354 -> 701
    //   1058: iconst_0
    //   1059: istore 31
    //   1061: goto -709 -> 352
    //   1064: astore 20
    //   1066: aconst_null
    //   1067: astore 19
    //   1069: goto -353 -> 716
    //
    // Exception table:
    //   from	to	target	type
    //   6	32	666	java/lang/Exception
    //   60	82	666	java/lang/Exception
    //   114	126	666	java/lang/Exception
    //   652	663	666	java/lang/Exception
    //   701	731	666	java/lang/Exception
    //   834	837	666	java/lang/Exception
    //   6	32	671	finally
    //   60	82	671	finally
    //   114	126	671	finally
    //   652	663	671	finally
    //   668	671	671	finally
    //   701	731	671	finally
    //   834	837	671	finally
    //   36	53	696	finally
    //   217	239	731	java/lang/Throwable
    //   733	755	758	java/lang/Throwable
    //   239	349	770	java/lang/Throwable
    //   760	770	770	java/lang/Throwable
    //   357	376	778	finally
    //   156	210	798	finally
    //   217	239	798	finally
    //   239	349	798	finally
    //   383	541	798	finally
    //   733	755	798	finally
    //   760	770	798	finally
    //   783	798	798	finally
    //   583	594	837	java/lang/Exception
    //   563	578	865	java/lang/Exception
    //   845	865	865	java/lang/Exception
    //   678	693	876	java/io/IOException
    //   808	813	886	java/lang/Exception
    //   541	546	891	java/lang/Exception
    //   639	651	896	java/io/IOException
    //   563	578	906	finally
    //   583	594	906	finally
    //   594	605	906	finally
    //   605	629	906	finally
    //   629	635	906	finally
    //   845	865	906	finally
    //   808	813	917	finally
    //   816	828	930	finally
    //   541	546	942	finally
    //   546	558	955	finally
    //   816	828	967	java/lang/Exception
    //   546	558	976	java/lang/Exception
    //   594	605	988	java/lang/Exception
    //   605	629	1000	java/lang/Exception
    //   629	635	1009	java/lang/Exception
    //   126	138	1020	finally
    //   138	156	1031	finally
    //   376	383	1043	finally
    //   107	114	1048	finally
    //   53	60	1053	finally
    //   90	107	1064	finally
  }

  private static void a(JarFile paramJarFile, JarOutputStream paramJarOutputStream)
  {
    byte[] arrayOfByte = new byte[4096];
    TreeMap localTreeMap = new TreeMap();
    Enumeration localEnumeration = paramJarFile.entries();
    while (localEnumeration.hasMoreElements())
    {
      JarEntry localJarEntry4 = (JarEntry)localEnumeration.nextElement();
      localTreeMap.put(localJarEntry4.getName(), localJarEntry4);
    }
    Iterator localIterator = localTreeMap.values().iterator();
    while (localIterator.hasNext())
    {
      JarEntry localJarEntry1 = (JarEntry)localIterator.next();
      String str = localJarEntry1.getName();
      if ((!localJarEntry1.isDirectory()) && (!str.equals("META-INF/MANIFEST.MF")) && (!str.equals("META-INF/CERT.SF")) && (!str.equals("META-INF/CERT.RSA")))
      {
        JarEntry localJarEntry2 = paramJarFile.getJarEntry(str);
        if (localJarEntry2.getMethod() == 0)
          paramJarOutputStream.putNextEntry(new JarEntry(localJarEntry2));
        while (true)
        {
          InputStream localInputStream = paramJarFile.getInputStream(localJarEntry2);
          while (true)
          {
            int i = localInputStream.read(arrayOfByte);
            if (i <= 0)
              break;
            paramJarOutputStream.write(arrayOfByte, 0, i);
          }
          JarEntry localJarEntry3 = new JarEntry(str);
          localJarEntry3.setTime(localJarEntry2.getTime());
          paramJarOutputStream.putNextEntry(localJarEntry3);
        }
        paramJarOutputStream.flush();
      }
    }
  }

  private static byte[] a(String paramString, e parame, PrivateKey paramPrivateKey, X509Certificate paramX509Certificate)
  {
    return parame.a(paramString);
  }

  private static PrivateKey b(InputStream paramInputStream)
  {
    int i = 0;
    DataInputStream localDataInputStream = new DataInputStream(paramInputStream);
    try
    {
      byte[] arrayOfByte1 = new byte[10000];
      while (true)
      {
        int j = localDataInputStream.read(arrayOfByte1, i, 10000 - i);
        if (j == -1)
          break;
        i += j;
      }
      byte[] arrayOfByte2 = new byte[i];
      System.arraycopy(arrayOfByte1, 0, arrayOfByte2, 0, i);
      PKCS8EncodedKeySpec localPKCS8EncodedKeySpec = new PKCS8EncodedKeySpec(arrayOfByte2);
      try
      {
        PrivateKey localPrivateKey2 = KeyFactory.getInstance("RSA").generatePrivate(localPKCS8EncodedKeySpec);
        localObject2 = localPrivateKey2;
        return localObject2;
      }
      catch (InvalidKeySpecException localInvalidKeySpecException)
      {
        while (true)
        {
          PrivateKey localPrivateKey1 = KeyFactory.getInstance("DSA").generatePrivate(localPKCS8EncodedKeySpec);
          Object localObject2 = localPrivateKey1;
        }
      }
    }
    finally
    {
      localDataInputStream.close();
    }
  }

  private static byte[] c(InputStream paramInputStream)
  {
    int i = 0;
    DataInputStream localDataInputStream = new DataInputStream(paramInputStream);
    try
    {
      byte[] arrayOfByte1 = new byte[10000];
      while (true)
      {
        int j = localDataInputStream.read(arrayOfByte1, i, 10000 - i);
        if (j == -1)
          break;
        i += j;
      }
      byte[] arrayOfByte2 = new byte[i];
      System.arraycopy(arrayOfByte1, 0, arrayOfByte2, 0, i);
      return arrayOfByte2;
    }
    finally
    {
      localDataInputStream.close();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.c.d
 * JD-Core Version:    0.6.2
 */