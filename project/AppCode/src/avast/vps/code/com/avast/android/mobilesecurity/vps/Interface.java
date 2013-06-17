package com.avast.android.mobilesecurity.vps;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.util.Log;
import com.avast.android.mobilesecurity.vps.b.b;
import com.avast.android.mobilesecurity.vps.b.f;
import com.avast.android.mobilesecurity.vps.b.h;
import com.avast.android.mobilesecurity.vps.b.i;
import com.avast.android.mobilesecurity.vps.b.k;
import com.avast.android.mobilesecurity.vps.b.l;
import com.avast.android.mobilesecurity.vps.b.m;
import com.avast.android.mobilesecurity.vps.b.p;
import com.avast.android.mobilesecurity.vps.b.q;
import com.avast.android.mobilesecurity.vps.b.r;
import com.avast.android.mobilesecurity.vps.b.s;
import com.avast.android.mobilesecurity.vps.b.u;
import com.avast.android.mobilesecurity.vps.b.v;
import com.avast.android.mobilesecurity.vps.b.w;
import com.avast.android.mobilesecurity.vps.b.x;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.nio.ByteBuffer;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.TimeZone;
import java.util.concurrent.Semaphore;
import java.util.zip.ZipEntry;
import java.util.zip.ZipException;
import java.util.zip.ZipFile;

public class Interface
{
  public static final HashSet a;
  public static final HashSet b;
  private static final String c = "i-2";
  private static final boolean d = false;
  private static final String e = "avast!";
  private static final String f;
  private static final String g;
  private static final String h = "stmp";
  private static final String i;
  private static final String j;
  private static final String k;
  private static final String l;
  private static final int m;
  private static final int n;
  private static final int o;
  private static final int p;
  private static final String q;
  private static final Date r;
  private static final int s;
  private final Object t;
  private final Semaphore u;
  private d v;
  private ZipFile w;

  static
  {
    f = "dtmp";
    g = "atmp";
    i = "db_dex.dat";
    j = "db_dex.nam";
    k = "db_elfa.dat";
    l = "db_elfa.nam";
    m = 4;
    n = 1000;
    o = 4427;
    p = 105;
    q = "130509-00";
    Calendar localCalendar = Calendar.getInstance(TimeZone.getTimeZone("GMT+1"));
    localCalendar.set(2013, 4, 9, 9, 2);
    r = localCalendar.getTime();
    s = 8388608;
    HashSet localHashSet1 = new HashSet();
    a = localHashSet1;
    localHashSet1.add("ADS:".toLowerCase());
    HashSet localHashSet2 = new HashSet();
    b = localHashSet2;
    localHashSet2.add("Android:".toLowerCase());
    b.add("Elf:".toLowerCase());
  }

  // ERROR //
  public Interface(Map paramMap)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 156	java/lang/Object:<init>	()V
    //   4: aload_1
    //   5: ldc 158
    //   7: invokeinterface 164 2 0
    //   12: checkcast 166	android/content/Context
    //   15: astore_2
    //   16: aload_1
    //   17: ldc 168
    //   19: invokeinterface 164 2 0
    //   24: checkcast 126	java/lang/String
    //   27: astore_3
    //   28: aload_1
    //   29: ldc 170
    //   31: invokeinterface 164 2 0
    //   36: checkcast 172	java/lang/Class
    //   39: astore 4
    //   41: new 174	java/util/zip/ZipFile
    //   44: dup
    //   45: aload_2
    //   46: invokevirtual 178	android/content/Context:getApplicationInfo	()Landroid/content/pm/ApplicationInfo;
    //   49: getfield 183	android/content/pm/ApplicationInfo:sourceDir	Ljava/lang/String;
    //   52: invokespecial 186	java/util/zip/ZipFile:<init>	(Ljava/lang/String;)V
    //   55: astore 5
    //   57: new 174	java/util/zip/ZipFile
    //   60: dup
    //   61: aload_3
    //   62: invokespecial 186	java/util/zip/ZipFile:<init>	(Ljava/lang/String;)V
    //   65: astore 6
    //   67: aload_0
    //   68: aload 6
    //   70: putfield 188	com/avast/android/mobilesecurity/vps/Interface:w	Ljava/util/zip/ZipFile;
    //   73: aload 5
    //   75: invokestatic 191	com/avast/android/mobilesecurity/vps/Interface:a	(Ljava/util/zip/ZipFile;)Ljava/security/cert/X509Certificate;
    //   78: astore 15
    //   80: aload 6
    //   82: invokestatic 191	com/avast/android/mobilesecurity/vps/Interface:a	(Ljava/util/zip/ZipFile;)Ljava/security/cert/X509Certificate;
    //   85: astore 16
    //   87: aload 15
    //   89: ifnull +8 -> 97
    //   92: aload 16
    //   94: ifnonnull +50 -> 144
    //   97: new 193	java/lang/InstantiationException
    //   100: dup
    //   101: invokespecial 194	java/lang/InstantiationException:<init>	()V
    //   104: athrow
    //   105: astore 14
    //   107: new 193	java/lang/InstantiationException
    //   110: dup
    //   111: invokespecial 194	java/lang/InstantiationException:<init>	()V
    //   114: athrow
    //   115: astore 8
    //   117: aload_0
    //   118: new 4	java/lang/Object
    //   121: dup
    //   122: invokespecial 156	java/lang/Object:<init>	()V
    //   125: putfield 196	com/avast/android/mobilesecurity/vps/Interface:t	Ljava/lang/Object;
    //   128: aload_0
    //   129: new 198	java/util/concurrent/Semaphore
    //   132: dup
    //   133: iconst_0
    //   134: iconst_1
    //   135: invokespecial 201	java/util/concurrent/Semaphore:<init>	(IZ)V
    //   138: putfield 203	com/avast/android/mobilesecurity/vps/Interface:u	Ljava/util/concurrent/Semaphore;
    //   141: aload 8
    //   143: athrow
    //   144: aload 15
    //   146: invokevirtual 209	java/security/cert/X509Certificate:getIssuerDN	()Ljava/security/Principal;
    //   149: aload 16
    //   151: invokevirtual 209	java/security/cert/X509Certificate:getIssuerDN	()Ljava/security/Principal;
    //   154: invokevirtual 212	java/lang/Object:equals	(Ljava/lang/Object;)Z
    //   157: ifne +21 -> 178
    //   160: new 193	java/lang/InstantiationException
    //   163: dup
    //   164: invokespecial 194	java/lang/InstantiationException:<init>	()V
    //   167: athrow
    //   168: astore 13
    //   170: new 193	java/lang/InstantiationException
    //   173: dup
    //   174: invokespecial 194	java/lang/InstantiationException:<init>	()V
    //   177: athrow
    //   178: aload 15
    //   180: invokevirtual 215	java/security/cert/X509Certificate:getSubjectDN	()Ljava/security/Principal;
    //   183: aload 16
    //   185: invokevirtual 215	java/security/cert/X509Certificate:getSubjectDN	()Ljava/security/Principal;
    //   188: invokevirtual 212	java/lang/Object:equals	(Ljava/lang/Object;)Z
    //   191: ifne +21 -> 212
    //   194: new 193	java/lang/InstantiationException
    //   197: dup
    //   198: invokespecial 194	java/lang/InstantiationException:<init>	()V
    //   201: athrow
    //   202: astore 12
    //   204: new 193	java/lang/InstantiationException
    //   207: dup
    //   208: invokespecial 194	java/lang/InstantiationException:<init>	()V
    //   211: athrow
    //   212: aload 15
    //   214: invokevirtual 219	java/security/cert/X509Certificate:getPublicKey	()Ljava/security/PublicKey;
    //   217: checkcast 221	java/security/interfaces/RSAPublicKey
    //   220: astore 17
    //   222: aload 16
    //   224: invokevirtual 219	java/security/cert/X509Certificate:getPublicKey	()Ljava/security/PublicKey;
    //   227: checkcast 221	java/security/interfaces/RSAPublicKey
    //   230: astore 18
    //   232: aload 17
    //   234: invokeinterface 224 1 0
    //   239: aload 18
    //   241: invokeinterface 224 1 0
    //   246: invokevirtual 225	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   249: ifne +21 -> 270
    //   252: new 193	java/lang/InstantiationException
    //   255: dup
    //   256: invokespecial 194	java/lang/InstantiationException:<init>	()V
    //   259: athrow
    //   260: astore 11
    //   262: new 193	java/lang/InstantiationException
    //   265: dup
    //   266: invokespecial 194	java/lang/InstantiationException:<init>	()V
    //   269: athrow
    //   270: aload 17
    //   272: invokeinterface 229 1 0
    //   277: aload 18
    //   279: invokeinterface 229 1 0
    //   284: invokevirtual 235	java/math/BigInteger:compareTo	(Ljava/math/BigInteger;)I
    //   287: ifeq +21 -> 308
    //   290: new 193	java/lang/InstantiationException
    //   293: dup
    //   294: invokespecial 194	java/lang/InstantiationException:<init>	()V
    //   297: athrow
    //   298: astore 10
    //   300: new 193	java/lang/InstantiationException
    //   303: dup
    //   304: invokespecial 194	java/lang/InstantiationException:<init>	()V
    //   307: athrow
    //   308: aload 17
    //   310: invokeinterface 238 1 0
    //   315: aload 18
    //   317: invokeinterface 238 1 0
    //   322: invokevirtual 235	java/math/BigInteger:compareTo	(Ljava/math/BigInteger;)I
    //   325: ifeq +21 -> 346
    //   328: new 193	java/lang/InstantiationException
    //   331: dup
    //   332: invokespecial 194	java/lang/InstantiationException:<init>	()V
    //   335: athrow
    //   336: astore 9
    //   338: new 193	java/lang/InstantiationException
    //   341: dup
    //   342: invokespecial 194	java/lang/InstantiationException:<init>	()V
    //   345: athrow
    //   346: aload_0
    //   347: new 240	com/avast/android/mobilesecurity/vps/d
    //   350: dup
    //   351: aload 4
    //   353: invokespecial 243	com/avast/android/mobilesecurity/vps/d:<init>	(Ljava/lang/Class;)V
    //   356: putfield 245	com/avast/android/mobilesecurity/vps/Interface:v	Lcom/avast/android/mobilesecurity/vps/d;
    //   359: aload_2
    //   360: invokestatic 250	com/avast/android/mobilesecurity/vps/a:a	(Landroid/content/Context;)V
    //   363: aload_0
    //   364: new 4	java/lang/Object
    //   367: dup
    //   368: invokespecial 156	java/lang/Object:<init>	()V
    //   371: putfield 196	com/avast/android/mobilesecurity/vps/Interface:t	Ljava/lang/Object;
    //   374: aload_0
    //   375: new 198	java/util/concurrent/Semaphore
    //   378: dup
    //   379: iconst_0
    //   380: iconst_1
    //   381: invokespecial 201	java/util/concurrent/Semaphore:<init>	(IZ)V
    //   384: putfield 203	com/avast/android/mobilesecurity/vps/Interface:u	Ljava/util/concurrent/Semaphore;
    //   387: return
    //   388: astore 7
    //   390: new 193	java/lang/InstantiationException
    //   393: dup
    //   394: invokespecial 194	java/lang/InstantiationException:<init>	()V
    //   397: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   41	105	105	java/util/zip/ZipException
    //   144	168	105	java/util/zip/ZipException
    //   178	202	105	java/util/zip/ZipException
    //   212	260	105	java/util/zip/ZipException
    //   270	298	105	java/util/zip/ZipException
    //   308	336	105	java/util/zip/ZipException
    //   346	363	105	java/util/zip/ZipException
    //   41	105	115	finally
    //   107	115	115	finally
    //   144	168	115	finally
    //   170	178	115	finally
    //   178	202	115	finally
    //   204	212	115	finally
    //   212	260	115	finally
    //   262	270	115	finally
    //   270	298	115	finally
    //   300	308	115	finally
    //   308	336	115	finally
    //   338	346	115	finally
    //   346	363	115	finally
    //   390	398	115	finally
    //   41	105	168	java/io/IOException
    //   144	168	168	java/io/IOException
    //   178	202	168	java/io/IOException
    //   212	260	168	java/io/IOException
    //   270	298	168	java/io/IOException
    //   308	336	168	java/io/IOException
    //   346	363	168	java/io/IOException
    //   41	105	202	java/security/cert/CertificateException
    //   144	168	202	java/security/cert/CertificateException
    //   178	202	202	java/security/cert/CertificateException
    //   212	260	202	java/security/cert/CertificateException
    //   270	298	202	java/security/cert/CertificateException
    //   308	336	202	java/security/cert/CertificateException
    //   346	363	202	java/security/cert/CertificateException
    //   41	105	260	java/lang/IndexOutOfBoundsException
    //   144	168	260	java/lang/IndexOutOfBoundsException
    //   178	202	260	java/lang/IndexOutOfBoundsException
    //   212	260	260	java/lang/IndexOutOfBoundsException
    //   270	298	260	java/lang/IndexOutOfBoundsException
    //   308	336	260	java/lang/IndexOutOfBoundsException
    //   346	363	260	java/lang/IndexOutOfBoundsException
    //   41	105	298	java/lang/SecurityException
    //   144	168	298	java/lang/SecurityException
    //   178	202	298	java/lang/SecurityException
    //   212	260	298	java/lang/SecurityException
    //   270	298	298	java/lang/SecurityException
    //   308	336	298	java/lang/SecurityException
    //   346	363	298	java/lang/SecurityException
    //   41	105	336	java/lang/NoSuchMethodException
    //   144	168	336	java/lang/NoSuchMethodException
    //   178	202	336	java/lang/NoSuchMethodException
    //   212	260	336	java/lang/NoSuchMethodException
    //   270	298	336	java/lang/NoSuchMethodException
    //   308	336	336	java/lang/NoSuchMethodException
    //   346	363	336	java/lang/NoSuchMethodException
    //   41	105	388	java/lang/ClassNotFoundException
    //   144	168	388	java/lang/ClassNotFoundException
    //   178	202	388	java/lang/ClassNotFoundException
    //   212	260	388	java/lang/ClassNotFoundException
    //   270	298	388	java/lang/ClassNotFoundException
    //   308	336	388	java/lang/ClassNotFoundException
    //   346	363	388	java/lang/ClassNotFoundException
  }

  private static X509Certificate a(ZipFile paramZipFile)
  {
    Enumeration localEnumeration = paramZipFile.entries();
    ZipEntry localZipEntry = null;
    do
    {
      if (!localEnumeration.hasMoreElements())
        break;
      localZipEntry = (ZipEntry)localEnumeration.nextElement();
    }
    while ((!localZipEntry.getName().startsWith("META-INF/")) || (!localZipEntry.getName().endsWith(".RSA")));
    InputStream localInputStream = paramZipFile.getInputStream(localZipEntry);
    List localList = (List)CertificateFactory.getInstance("X509").generateCertificates(localInputStream);
    if ((localList == null) || (localList.isEmpty()));
    for (X509Certificate localX509Certificate = null; ; localX509Certificate = (X509Certificate)localList.get(0))
      return localX509Certificate;
  }

  // ERROR //
  private byte[] a(String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_0
    //   3: getfield 188	com/avast/android/mobilesecurity/vps/Interface:w	Ljava/util/zip/ZipFile;
    //   6: ifnull +17 -> 23
    //   9: aload_1
    //   10: ifnull +13 -> 23
    //   13: ldc_w 306
    //   16: aload_1
    //   17: invokevirtual 225	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   20: ifeq +7 -> 27
    //   23: aconst_null
    //   24: astore_3
    //   25: aload_3
    //   26: areturn
    //   27: aload_0
    //   28: getfield 188	com/avast/android/mobilesecurity/vps/Interface:w	Ljava/util/zip/ZipFile;
    //   31: invokevirtual 254	java/util/zip/ZipFile:entries	()Ljava/util/Enumeration;
    //   34: astore 9
    //   36: aload 9
    //   38: invokeinterface 260 1 0
    //   43: ifeq +172 -> 215
    //   46: aload 9
    //   48: invokeinterface 264 1 0
    //   53: checkcast 266	java/util/zip/ZipEntry
    //   56: astore 10
    //   58: aload 10
    //   60: invokevirtual 269	java/util/zip/ZipEntry:getName	()Ljava/lang/String;
    //   63: aload_1
    //   64: invokevirtual 280	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   67: ifeq -31 -> 36
    //   70: aload_0
    //   71: getfield 188	com/avast/android/mobilesecurity/vps/Interface:w	Ljava/util/zip/ZipFile;
    //   74: aload 10
    //   76: invokevirtual 284	java/util/zip/ZipFile:getInputStream	(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    //   79: astore 11
    //   81: new 308	java/io/ByteArrayOutputStream
    //   84: dup
    //   85: sipush 1024
    //   88: invokespecial 311	java/io/ByteArrayOutputStream:<init>	(I)V
    //   91: astore 12
    //   93: sipush 1024
    //   96: newarray byte
    //   98: astore 14
    //   100: aload 11
    //   102: aload 14
    //   104: invokevirtual 317	java/io/InputStream:read	([B)I
    //   107: istore 15
    //   109: iload 15
    //   111: iflt +37 -> 148
    //   114: aload 12
    //   116: aload 14
    //   118: iconst_0
    //   119: iload 15
    //   121: invokevirtual 321	java/io/ByteArrayOutputStream:write	([BII)V
    //   124: goto -24 -> 100
    //   127: astore 13
    //   129: aload 12
    //   131: astore 5
    //   133: aload 5
    //   135: ifnull +8 -> 143
    //   138: aload 5
    //   140: invokevirtual 324	java/io/ByteArrayOutputStream:close	()V
    //   143: aconst_null
    //   144: astore_3
    //   145: goto -120 -> 25
    //   148: aload 11
    //   150: invokevirtual 325	java/io/InputStream:close	()V
    //   153: aload 12
    //   155: invokevirtual 329	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   158: astore 16
    //   160: aload 16
    //   162: astore_3
    //   163: aload 12
    //   165: invokevirtual 324	java/io/ByteArrayOutputStream:close	()V
    //   168: goto -143 -> 25
    //   171: astore 17
    //   173: goto -148 -> 25
    //   176: astore 7
    //   178: aload_2
    //   179: ifnull +7 -> 186
    //   182: aload_2
    //   183: invokevirtual 324	java/io/ByteArrayOutputStream:close	()V
    //   186: aload 7
    //   188: athrow
    //   189: astore 6
    //   191: goto -48 -> 143
    //   194: astore 8
    //   196: goto -10 -> 186
    //   199: astore 7
    //   201: aload 12
    //   203: astore_2
    //   204: goto -26 -> 178
    //   207: astore 4
    //   209: aconst_null
    //   210: astore 5
    //   212: goto -79 -> 133
    //   215: aconst_null
    //   216: astore 10
    //   218: goto -148 -> 70
    //
    // Exception table:
    //   from	to	target	type
    //   93	124	127	java/io/IOException
    //   148	160	127	java/io/IOException
    //   163	168	171	java/io/IOException
    //   27	93	176	finally
    //   138	143	189	java/io/IOException
    //   182	186	194	java/io/IOException
    //   93	124	199	finally
    //   148	160	199	finally
    //   27	93	207	java/io/IOException
  }

  private static byte[] a(List paramList, boolean paramBoolean1, boolean paramBoolean2)
  {
    if (paramList.size() > 1)
      paramList = e.b(paramList);
    HashSet localHashSet1 = new HashSet();
    HashSet localHashSet2 = new HashSet();
    label56: List localList;
    if (paramBoolean2)
    {
      localHashSet1.addAll(a);
      if (!paramBoolean1)
        break label99;
      localHashSet1.addAll(b);
      localList = e.a(paramList, localHashSet1, localHashSet2, paramBoolean1);
      if (!localList.isEmpty())
        break label111;
    }
    label99: label111: for (byte[] arrayOfByte = e.a(u.j); ; arrayOfByte = e.a(localList))
    {
      return arrayOfByte;
      localHashSet2.addAll(a);
      break;
      localHashSet2.addAll(b);
      break label56;
    }
  }

  private byte[] getData(short paramShort)
  {
    byte[] arrayOfByte;
    switch (c.e[com.avast.android.mobilesecurity.vps.b.g.a(paramShort).ordinal()])
    {
    default:
      arrayOfByte = null;
    case 1:
    case 2:
    case 3:
    case 4:
    }
    while (true)
    {
      return arrayOfByte;
      arrayOfByte = a(j);
      continue;
      arrayOfByte = a(i);
      continue;
      arrayOfByte = a(l);
      continue;
      arrayOfByte = a(k);
    }
  }

  public native int acquireScanContextJni();

  public byte[] acquireVpsContext(Map paramMap)
  {
    ByteBuffer localByteBuffer = ByteBuffer.allocate(15);
    localByteBuffer.order(null);
    localByteBuffer.putInt(11);
    localByteBuffer.putInt(7);
    localByteBuffer.putShort(new Integer(com.avast.android.mobilesecurity.vps.b.d.d.a()).shortValue());
    Integer.valueOf(-1);
    Integer localInteger;
    synchronized (this.t)
    {
      localInteger = Integer.valueOf(acquireScanContextJni());
      while ((localInteger.intValue() == -1) && (localInteger.intValue() == -1))
      {
        this.u.acquireUninterruptibly();
        synchronized (this.t)
        {
          localInteger = Integer.valueOf(acquireScanContextJni());
        }
      }
    }
    if (localInteger.intValue() < 0)
    {
      String str = "avc error " + localInteger;
      if (d)
        Log.d(e, str);
      localInteger = Integer.valueOf(-1);
    }
    localByteBuffer.putInt(localInteger.intValue());
    localByteBuffer.put((byte)-1);
    return localByteBuffer.array();
  }

  public byte[] checkUrl(Map paramMap)
  {
    String str = (String)paramMap.get(Short.valueOf(m.a.a()));
    Integer localInteger;
    switch (c.d[com.avast.android.mobilesecurity.vps.d.a.a(preCheckUrlJni()).ordinal()])
    {
    default:
      localInteger = (Integer)paramMap.get(Short.valueOf(com.avast.android.mobilesecurity.vps.b.d.b.a()));
      if (localInteger == null)
        localInteger = Integer.valueOf(-1);
      break;
    case 1:
    case 2:
    }
    HashMap localHashMap;
    for (byte[] arrayOfByte = checkUrlJni(str, localInteger.intValue()); ; arrayOfByte = b.a(localHashMap))
    {
      return arrayOfByte;
      localHashMap = new HashMap();
      localHashMap.put(v.a, Byte.valueOf((byte)w.d.a()));
    }
  }

  public native byte[] checkUrlJni(String paramString, int paramInt);

  public byte[] containsLibrary(Map paramMap)
  {
    Method[] arrayOfMethod = Interface.class.getDeclaredMethods();
    int i1 = 0;
    int i2 = 0;
    while (i1 < arrayOfMethod.length)
    {
      if (Modifier.isNative(arrayOfMethod[i1].getModifiers()))
        i2 = 1;
      i1++;
    }
    ByteBuffer localByteBuffer = ByteBuffer.allocate(12);
    localByteBuffer.order(null);
    localByteBuffer.putInt(8);
    localByteBuffer.putInt(4);
    localByteBuffer.putShort(p.a.a());
    if (i2 != 0)
      localByteBuffer.put((byte)1);
    while (true)
    {
      localByteBuffer.put((byte)-1);
      return localByteBuffer.array();
      localByteBuffer.put((byte)0);
    }
  }

  public byte[] getAdvertisementCampaignInfo(Map paramMap)
  {
    Context localContext = (Context)paramMap.get(Short.valueOf(com.avast.android.mobilesecurity.vps.b.d.c.a()));
    paramMap.get(Short.valueOf(com.avast.android.mobilesecurity.vps.b.d.d.a()));
    Integer localInteger = (Integer)paramMap.get(Short.valueOf(com.avast.android.mobilesecurity.vps.b.d.b.a()));
    String str1 = (String)paramMap.get(Short.valueOf(com.avast.android.mobilesecurity.vps.b.c.a.a()));
    String str2 = (String)paramMap.get(Short.valueOf(com.avast.android.mobilesecurity.vps.b.c.b.a()));
    String str3 = (String)paramMap.get(Short.valueOf(com.avast.android.mobilesecurity.vps.b.c.c.a()));
    paramMap.get(Short.valueOf(com.avast.android.mobilesecurity.vps.b.c.d.a()));
    Boolean localBoolean = (Boolean)paramMap.get(Short.valueOf(com.avast.android.mobilesecurity.vps.b.c.e.a()));
    paramMap.get(Short.valueOf(com.avast.android.mobilesecurity.vps.b.c.f.a()));
    localInteger.intValue();
    localBoolean.booleanValue();
    return com.avast.android.mobilesecurity.vps.a.a.a(localContext, str1, str2, str3);
  }

  public byte[] getDetectionPrefixes(Map paramMap)
  {
    String str = ((String)paramMap.get(Short.valueOf(f.a.a()))).toLowerCase();
    HashSet localHashSet;
    if ("addons".equals(str))
      localHashSet = a;
    while (true)
    {
      if (localHashSet == null);
      byte[] arrayOfByte1;
      for (Object localObject = null; ; localObject = arrayOfByte1)
      {
        return localObject;
        if (!"malware".equals(str))
          break label294;
        localHashSet = b;
        break;
        Iterator localIterator = localHashSet.iterator();
        byte[][] arrayOfByte = new byte[localHashSet.size()][];
        for (int i1 = 0; localIterator.hasNext(); i1++)
        {
          byte[] arrayOfByte2 = ((String)localIterator.next()).getBytes();
          int i6 = 1 + (10 + arrayOfByte2.length);
          ByteBuffer localByteBuffer = ByteBuffer.allocate(i6);
          localByteBuffer.order(null);
          localByteBuffer.putInt(i6 - 4);
          localByteBuffer.putInt(i6 - 8);
          localByteBuffer.putShort(Integer.valueOf(q.a.a()).shortValue());
          localByteBuffer.put(arrayOfByte2);
          localByteBuffer.put((byte)-1);
          arrayOfByte[i1] = localByteBuffer.array();
        }
        int i2 = 0;
        int i3 = 0;
        while (i2 < arrayOfByte.length)
        {
          i3 += arrayOfByte[i2].length;
          i2++;
        }
        arrayOfByte1 = new byte[i3];
        int i4 = 0;
        int i5 = 0;
        while (i4 < arrayOfByte.length)
        {
          System.arraycopy(arrayOfByte[i4], 0, arrayOfByte1, i5, arrayOfByte[i4].length);
          i5 += arrayOfByte[i4].length;
          i4++;
        }
      }
      label294: localHashSet = null;
    }
  }

  public byte[] getVersion(Map paramMap)
  {
    return c.getBytes();
  }

  public byte[] getVpsInformation(Map paramMap)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put(x.g, Long.valueOf(o));
    localHashMap.put(x.h, Long.valueOf(p));
    localHashMap.put(x.a, q);
    localHashMap.put(x.b, Integer.valueOf(1900 + r.getYear()));
    localHashMap.put(x.c, Integer.valueOf(r.getMonth()));
    localHashMap.put(x.d, Integer.valueOf(r.getDate()));
    localHashMap.put(x.e, Integer.valueOf(r.getHours()));
    localHashMap.put(x.f, Integer.valueOf(r.getMinutes()));
    return b.a(localHashMap);
  }

  public byte[] optionOverride(Map paramMap)
  {
    Short localShort = (Short)paramMap.get(Short.valueOf(com.avast.android.mobilesecurity.vps.b.d.a.a()));
    if (localShort == null);
    while (true)
    {
      return null;
      i.a(localShort.shortValue()).ordinal();
    }
  }

  public native int preCheckUrlJni();

  public native int preScanJni(int paramInt1, byte[] paramArrayOfByte, int paramInt2);

  public native void releaseScanContextJni(int paramInt);

  public byte[] releaseVpsContext(Map paramMap)
  {
    Integer localInteger = (Integer)paramMap.get(Short.valueOf(com.avast.android.mobilesecurity.vps.b.d.d.a()));
    if ((localInteger == null) || (localInteger.intValue() < 0));
    while (true)
    {
      return null;
      synchronized (this.t)
      {
        releaseScanContextJni(localInteger.intValue());
        this.u.release();
        g.a(localInteger.intValue());
      }
    }
  }

  public byte[] scan(Map paramMap)
  {
    Integer localInteger1 = (Integer)paramMap.get(Short.valueOf(com.avast.android.mobilesecurity.vps.b.d.d.a()));
    Integer localInteger2 = (Integer)paramMap.get(Short.valueOf(com.avast.android.mobilesecurity.vps.b.d.b.a()));
    Object localObject1;
    if ((localInteger1 == null) || (localInteger1.intValue() < 0) || (localInteger2 == null))
      localObject1 = e.a(u.a);
    Context localContext;
    File localFile;
    byte[] arrayOfByte1;
    String str1;
    Boolean localBoolean;
    LinkedList localLinkedList;
    label251: boolean bool3;
    boolean bool4;
    byte[] arrayOfByte2;
    label304: label343: label349: label355: String str2;
    String str3;
    label419: int i2;
    label491: Object localObject6;
    int i9;
    label650: int i11;
    int i12;
    Object localObject7;
    label742: Object localObject8;
    while (true)
    {
      return localObject1;
      localContext = (Context)paramMap.get(Short.valueOf(com.avast.android.mobilesecurity.vps.b.d.c.a()));
      localFile = (File)paramMap.get(Short.valueOf(l.a.a()));
      arrayOfByte1 = (byte[])paramMap.get(Short.valueOf(l.d.a()));
      str1 = (String)paramMap.get(Short.valueOf(l.b.a()));
      Long localLong = (Long)paramMap.get(Short.valueOf(l.e.a()));
      localBoolean = (Boolean)paramMap.get(Short.valueOf(l.i.a()));
      localLinkedList = new LinkedList();
      boolean bool1 = false;
      boolean bool2 = false;
      if (localLong != null)
      {
        localLong.longValue();
        localLong.longValue();
        localLong.longValue();
        localLong.longValue();
        localLong.longValue();
        if ((0x20 & localLong.longValue()) == 0L)
          break label343;
        bool1 = true;
        if ((0x40 & localLong.longValue()) == 0L)
          break label349;
      }
      for (bool2 = true; ; bool2 = false)
      {
        localLong.longValue();
        localLong.longValue();
        bool3 = bool2;
        bool4 = bool1;
        if (localFile == null)
          break label1673;
        arrayOfByte2 = g.a(localFile, localInteger1.intValue());
        if (arrayOfByte2 != null)
          break label355;
        localObject1 = scanJni(localInteger1.intValue(), null, -1, str1, localInteger2.intValue());
        if (localObject1 != null)
          break;
        localObject1 = e.a(u.a);
        break;
        bool1 = false;
        break label251;
      }
      int i1 = c.c[com.avast.android.mobilesecurity.vps.d.b.a(preScanJni(localInteger1.intValue(), arrayOfByte2, arrayOfByte2.length)).ordinal()];
      str2 = null;
      switch (i1)
      {
      default:
        str3 = null;
        if ((str1 != null) && (!"".equals(str1)))
          break;
      case 1:
      case 2:
      case 3:
      case 4:
      }
      try
      {
        Enumeration localEnumeration = new ZipFile(localFile).entries();
        while (true)
        {
          g localg2;
          while (true)
          {
            if (!localEnumeration.hasMoreElements())
              break label1660;
            boolean bool5 = "androidmanifest.xml".equals(((ZipEntry)localEnumeration.nextElement()).getName().toLowerCase());
            if (bool5)
            {
              i2 = 1;
              if (i2 != 0)
              {
                PackageInfo localPackageInfo = localContext.getPackageManager().getPackageArchiveInfo(localFile.getAbsolutePath(), 0);
                if (localPackageInfo != null)
                  str1 = localPackageInfo.packageName;
              }
              if (arrayOfByte1 == null)
                break label1017;
              localObject1 = e.a(u.d);
              break;
              localObject1 = e.a(u.j);
              break;
              if (arrayOfByte1 != null);
              try
              {
                localObject1 = scanJni(localInteger1.intValue(), arrayOfByte1, arrayOfByte1.length, str1, localInteger2.intValue());
                break;
                e.a(u.j);
                localObject6 = new com.avast.android.mobilesecurity.vps.d.c();
                ((com.avast.android.mobilesecurity.vps.d.c)localObject6).a = u.j;
                localg2 = new g(localInteger1.intValue());
                boolean bool6 = localg2.b(localFile);
                i9 = 0;
                if (!bool6)
                {
                  localg2.g();
                  localObject1 = e.a(u.d);
                  break;
                }
                if (localg2.e())
                  break label921;
                byte[] arrayOfByte9 = localg2.b();
                int i10 = localg2.c();
                if (i9 + i10 > s)
                  i10 = s - i9;
                i11 = i9 + i10;
                byte[] arrayOfByte10 = scanJni(localInteger1.intValue(), arrayOfByte9, i10, str1, localInteger2.intValue());
                if (arrayOfByte10 == null)
                  break label1705;
                List localList2 = e.a(arrayOfByte10);
                if (localList2 == null)
                  break label1705;
                i12 = 0;
                localObject7 = localObject6;
                if (i12 >= localList2.size())
                  break label913;
                localObject8 = (com.avast.android.mobilesecurity.vps.d.c)localList2.get(i12);
                if ((localObject8 == null) || (((com.avast.android.mobilesecurity.vps.d.c)localObject8).a == null))
                  break label1691;
                switch (c.b[localObject8.a.ordinal()])
                {
                case 1:
                  if (e.a(localObject7.a, ((com.avast.android.mobilesecurity.vps.d.c)localObject8).a) < 0)
                    localLinkedList.clear();
                  localLinkedList.add(localObject8);
                case 2:
                }
              }
              catch (InstantiationException localInstantiationException2)
              {
                localObject1 = e.a(u.a);
              }
            }
          }
          break;
          if (e.a(localObject7.a, ((com.avast.android.mobilesecurity.vps.d.c)localObject8).a) < 0)
            localLinkedList.clear();
          localLinkedList.add(localObject8);
          break label1695;
          label913: if (i11 < s)
            break label1680;
          label921: localg2.g();
          if ((bool4) && (localBoolean != null) && (localBoolean.booleanValue()))
            a.a(localContext, localFile, localLinkedList, paramMap, q);
          byte[] arrayOfByte8 = a(localLinkedList, bool4, bool3);
          localObject1 = arrayOfByte8;
          break;
          str2 = "";
          if (str2 != null)
            break label1666;
          str3 = "dex";
        }
      }
      catch (ZipException localZipException2)
      {
        while (true)
          i2 = 1;
      }
      catch (IOException localIOException)
      {
        while (true)
          i2 = 1;
      }
      catch (Exception localException)
      {
        while (true)
          i2 = 1;
      }
    }
    label1111: label1751: 
    while (true)
    {
      label1017: com.avast.android.mobilesecurity.vps.d.c localc;
      ArrayList localArrayList;
      g localg1;
      label1149: int i3;
      label1252: int i5;
      int i7;
      int i8;
      Object localObject3;
      Object localObject4;
      Object localObject5;
      try
      {
        while (true)
        {
          e.a(u.j);
          localc = new com.avast.android.mobilesecurity.vps.d.c();
          localc.a = u.j;
          localArrayList = new ArrayList();
          localg1 = new g(localInteger1.intValue());
          try
          {
            if (localg1.a(localFile))
              break label1111;
            localg1.g();
            byte[] arrayOfByte7 = e.a(u.d);
            localObject1 = arrayOfByte7;
          }
          catch (ZipException localZipException1)
          {
            localg1.g();
            localObject1 = e.a(u.j);
          }
        }
        break;
        byte[] arrayOfByte3 = localg1.a(str3);
        if ((arrayOfByte3 != null) || (localg1.f()))
          break label1712;
        localg1.g();
        localObject1 = e.a(u.b);
        break;
        if (arrayOfByte3 == null)
          break label1532;
        int i4 = i3 + 1;
        if (i4 % n == 0)
          System.gc();
        switch (c.c[com.avast.android.mobilesecurity.vps.d.b.a(preScanJni(localInteger1.intValue(), arrayOfByte3, localg1.d())).ordinal()])
        {
        default:
          arrayOfByte3 = localg1.a(str3);
          i3 = i4;
          break;
        case 1:
          arrayOfByte3 = localg1.a(str3);
          i3 = i4;
          continue;
          if (localg1.e())
            break label1646;
          byte[] arrayOfByte5 = localg1.a();
          int i6 = localg1.c();
          if (i5 + i6 > s)
            i6 = s - i5;
          i7 = i5 + i6;
          byte[] arrayOfByte6 = scanJni(localInteger1.intValue(), arrayOfByte5, i6, str1, localInteger2.intValue());
          if (arrayOfByte6 == null)
            break label1653;
          List localList1 = e.a(arrayOfByte6);
          if (localList1 == null)
            break label1653;
          i8 = 0;
          localObject4 = localObject3;
          if (i8 >= localList1.size())
            break label1746;
          localObject5 = (com.avast.android.mobilesecurity.vps.d.c)localList1.get(i8);
          if ((localObject5 == null) || (((com.avast.android.mobilesecurity.vps.d.c)localObject5).a == null))
            break label1732;
          switch (c.b[localObject5.a.ordinal()])
          {
          case 1:
            if (e.a(localObject4.a, ((com.avast.android.mobilesecurity.vps.d.c)localObject5).a) < 0)
              localLinkedList.clear();
            localLinkedList.add(localObject5);
          case 2:
          }
          break;
        case 2:
        }
      }
      catch (InstantiationException localInstantiationException1)
      {
        localObject1 = e.a(u.a);
      }
      break;
      if (e.a(localObject4.a, ((com.avast.android.mobilesecurity.vps.d.c)localObject5).a) < 0)
        localLinkedList.clear();
      localLinkedList.add(localObject5);
      while (true)
      {
        if (i7 >= s)
          break label1751;
        localObject3 = localObject2;
        i5 = i7;
        break label1252;
        label1532: if (localArrayList.isEmpty())
        {
          localg1.g();
          if ((bool4) && (localBoolean != null) && (localBoolean.booleanValue()))
            a.a(localContext, localFile, localLinkedList, paramMap, q);
          localObject1 = a(localLinkedList, bool4, bool3);
          break;
        }
        localg1.g();
        if ((bool4) && (localBoolean != null) && (localBoolean.booleanValue()))
          a.a(localContext, localFile, localLinkedList, paramMap, q);
        byte[] arrayOfByte4 = a(localLinkedList, bool4, bool3);
        localObject1 = arrayOfByte4;
        break;
        label1646: Object localObject2 = localObject3;
        break label1220;
        label1653: localObject2 = localObject3;
        continue;
        label1660: i2 = 0;
        break label491;
        str3 = str2;
        break label419;
        arrayOfByte2 = arrayOfByte1;
        break label304;
        localObject6 = localObject7;
        i9 = i11;
        break label650;
        localObject8 = localObject7;
        i12++;
        localObject7 = localObject8;
        break label742;
        localObject7 = localObject6;
        break label913;
        localObject2 = localc;
        i3 = 0;
        break label1149;
        localObject3 = localObject2;
        i5 = 0;
        break label1252;
        localObject5 = localObject4;
        i8++;
        localObject4 = localObject5;
        break label1344;
        localObject2 = localObject4;
      }
    }
  }

  public native byte[] scanJni(int paramInt1, byte[] paramArrayOfByte, int paramInt2, String paramString, int paramInt3);

  public byte[] scanMessage(Map paramMap)
  {
    Integer localInteger1 = (Integer)paramMap.get(Short.valueOf(com.avast.android.mobilesecurity.vps.b.d.d.a()));
    Integer localInteger2 = (Integer)paramMap.get(Short.valueOf(com.avast.android.mobilesecurity.vps.b.d.b.a()));
    HashMap localHashMap1;
    if ((localInteger1 == null) || (localInteger1.intValue() < 0) || (localInteger2 == null))
    {
      localHashMap1 = new HashMap();
      localHashMap1.put(r.a, Byte.valueOf((byte)s.a.a()));
    }
    HashMap localHashMap2;
    for (byte[] arrayOfByte = b.a(localHashMap1); ; arrayOfByte = b.a(localHashMap2))
    {
      return arrayOfByte;
      Short localShort = (Short)paramMap.get(Short.valueOf(k.a.a()));
      if (localShort != null)
        h.a(localShort.shortValue());
      paramMap.get(Short.valueOf(k.b.a()));
      paramMap.get(Short.valueOf(k.c.a()));
      paramMap.get(Short.valueOf(k.d.a()));
      paramMap.get(Short.valueOf(k.e.a()));
      localHashMap2 = new HashMap();
      localHashMap2.put(r.a, Byte.valueOf((byte)s.g.a()));
    }
  }

  public byte[] unloadVps(Map paramMap)
  {
    a.a((Context)paramMap.get(Short.valueOf(com.avast.android.mobilesecurity.vps.b.d.c.a())));
    return null;
  }

  public byte[] updateActionOnInfectedFile(Map paramMap)
  {
    Context localContext = (Context)paramMap.get(Short.valueOf(com.avast.android.mobilesecurity.vps.b.d.c.a()));
    Short localShort = (Short)paramMap.get(Short.valueOf(com.avast.android.mobilesecurity.vps.b.e.c.a()));
    String str1 = (String)paramMap.get(Short.valueOf(com.avast.android.mobilesecurity.vps.b.e.a.a()));
    String str2 = (String)paramMap.get(Short.valueOf(com.avast.android.mobilesecurity.vps.b.e.b.a()));
    if ((localContext == null) || (localShort == null) || ((str1 == null) && (str2 == null)));
    while (true)
    {
      return null;
      com.avast.android.mobilesecurity.vps.b.a locala = com.avast.android.mobilesecurity.vps.b.a.a(localShort.shortValue());
      if (locala != null)
        a.a(localContext, str1, str2, locala);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.vps.Interface
 * JD-Core Version:    0.6.2
 */