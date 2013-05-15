package com.avast.android.generic.c;

import com.android.org.bouncycastle.asn1.ASN1EncodableVector;
import com.android.org.bouncycastle.asn1.ASN1InputStream;
import com.android.org.bouncycastle.asn1.ASN1Sequence;
import com.android.org.bouncycastle.asn1.DEREncodableVector;
import com.android.org.bouncycastle.asn1.DERObject;
import com.android.org.bouncycastle.asn1.DERSequence;
import com.android.org.bouncycastle.asn1.DERSet;
import com.android.org.bouncycastle.asn1.DERTaggedObject;
import com.android.org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.Signature;
import java.security.cert.CRL;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;

public class g
  implements PKCSObjectIdentifiers, e
{
  private int a;
  private int b;
  private Set c;
  private Collection d;
  private Collection e;
  private X509Certificate f;
  private byte[] g;
  private String h;
  private String i;
  private Signature j;
  private transient PrivateKey k;
  private final String l = "1.2.840.113549.1.7.1";
  private final String m = "1.2.840.113549.1.7.2";
  private final String n = "1.2.840.113549.2.5";
  private final String o = "1.2.840.113549.2.2";
  private final String p = "1.3.14.3.2.26";
  private final String q = "1.2.840.113549.1.1.1";
  private final String r = "1.2.840.10040.4.1";

  public g(PrivateKey paramPrivateKey, Certificate[] paramArrayOfCertificate, String paramString)
  {
    this(paramPrivateKey, paramArrayOfCertificate, paramString, "BC");
  }

  public g(PrivateKey paramPrivateKey, Certificate[] paramArrayOfCertificate, String paramString1, String paramString2)
  {
    this(paramPrivateKey, paramArrayOfCertificate, null, paramString1, paramString2);
  }

  public g(PrivateKey paramPrivateKey, Certificate[] paramArrayOfCertificate, CRL[] paramArrayOfCRL, String paramString1, String paramString2)
  {
    this.k = paramPrivateKey;
    if (paramString1.equals("MD5"))
      this.h = "1.2.840.113549.2.5";
    while (true)
    {
      this.b = 1;
      this.a = 1;
      this.d = new ArrayList();
      this.e = new ArrayList();
      this.c = new HashSet();
      this.c.add(this.h);
      this.f = ((X509Certificate)paramArrayOfCertificate[0]);
      for (int i1 = 0; i1 < paramArrayOfCertificate.length; i1++)
        this.d.add(paramArrayOfCertificate[i1]);
      if (paramString1.equals("MD2"))
      {
        this.h = "1.2.840.113549.2.2";
      }
      else if (paramString1.equals("SHA"))
      {
        this.h = "1.3.14.3.2.26";
      }
      else
      {
        if (!paramString1.equals("SHA1"))
          break;
        this.h = "1.3.14.3.2.26";
      }
    }
    throw new NoSuchAlgorithmException("Unknown Hash Algorithm " + paramString1);
    int i2 = 0;
    if (paramArrayOfCRL != null)
      while (i2 < paramArrayOfCRL.length)
      {
        this.e.add(paramArrayOfCRL[i2]);
        i2++;
      }
    this.i = paramPrivateKey.getAlgorithm();
    if (this.i.equals("RSA"));
    for (this.i = "1.2.840.113549.1.1.1"; ; this.i = "1.2.840.10040.4.1")
    {
      this.j = Signature.getInstance(a(), paramString2);
      this.j.initSign(paramPrivateKey);
      return;
      if (!this.i.equals("DSA"))
        break;
    }
    throw new NoSuchAlgorithmException("Unknown Key Algorithm " + this.i);
  }

  private DERObject a(byte[] paramArrayOfByte)
  {
    try
    {
      ASN1Sequence localASN1Sequence = (ASN1Sequence)new ASN1InputStream(new ByteArrayInputStream(paramArrayOfByte)).readObject();
      if ((localASN1Sequence.getObjectAt(0) instanceof DERTaggedObject));
      for (int i1 = 3; ; i1 = 2)
      {
        DERObject localDERObject = (DERObject)localASN1Sequence.getObjectAt(i1);
        return localDERObject;
      }
    }
    catch (IOException localIOException)
    {
      throw new Error("IOException reading from ByteArray: " + localIOException);
    }
  }

  private DERSet a(ASN1EncodableVector paramASN1EncodableVector, DEREncodableVector paramDEREncodableVector)
  {
    try
    {
      localDERSet = new DERSet(paramASN1EncodableVector);
      return localDERSet;
    }
    catch (NoSuchMethodError localNoSuchMethodError)
    {
      while (true)
        DERSet localDERSet = (DERSet)DERSet.class.getConstructor(new Class[] { DEREncodableVector.class }).newInstance(new Object[] { paramDEREncodableVector });
    }
  }

  private DERSequence b(ASN1EncodableVector paramASN1EncodableVector, DEREncodableVector paramDEREncodableVector)
  {
    try
    {
      localDERSequence = new DERSequence(paramASN1EncodableVector);
      return localDERSequence;
    }
    catch (NoSuchMethodError localNoSuchMethodError)
    {
      while (true)
        DERSequence localDERSequence = (DERSequence)DERSequence.class.getConstructor(new Class[] { DEREncodableVector.class }).newInstance(new Object[] { paramDEREncodableVector });
    }
  }

  public String a()
  {
    String str1 = this.h;
    String str2 = this.i;
    if (this.h.equals("1.2.840.113549.2.5"))
    {
      str1 = "MD5";
      if (!this.i.equals("1.2.840.113549.1.1.1"))
        break label100;
      str2 = "RSA";
    }
    while (true)
    {
      return str1 + "with" + str2;
      if (this.h.equals("1.2.840.113549.2.2"))
      {
        str1 = "MD2";
        break;
      }
      if (!this.h.equals("1.3.14.3.2.26"))
        break;
      str1 = "SHA1";
      break;
      label100: if (this.i.equals("1.2.840.10040.4.1"))
        str2 = "DSA";
    }
  }

  // ERROR //
  public byte[] a(String paramString)
  {
    // Byte code:
    //   0: ldc 236
    //   2: invokestatic 240	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   5: astore_3
    //   6: aload_3
    //   7: ldc 242
    //   9: invokevirtual 246	java/lang/Class:getField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   12: astore 45
    //   14: aload 45
    //   16: astore 5
    //   18: aload 5
    //   20: aconst_null
    //   21: invokevirtual 252	java/lang/reflect/Field:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   24: checkcast 254	com/android/org/bouncycastle/asn1/ASN1Encodable
    //   27: astore 6
    //   29: ldc_w 256
    //   32: invokestatic 261	java/security/MessageDigest:getInstance	(Ljava/lang/String;)Ljava/security/MessageDigest;
    //   35: aload_1
    //   36: ldc_w 263
    //   39: invokevirtual 266	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   42: invokevirtual 270	java/security/MessageDigest:digest	([B)[B
    //   45: astore 7
    //   47: new 272	com/android/org/bouncycastle/asn1/x509/DigestInfo
    //   50: dup
    //   51: new 274	com/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier
    //   54: dup
    //   55: new 276	com/android/org/bouncycastle/asn1/DERObjectIdentifier
    //   58: dup
    //   59: ldc 65
    //   61: invokespecial 277	com/android/org/bouncycastle/asn1/DERObjectIdentifier:<init>	(Ljava/lang/String;)V
    //   64: aload 6
    //   66: invokespecial 280	com/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier:<init>	(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DEREncodable;)V
    //   69: aload 7
    //   71: invokespecial 283	com/android/org/bouncycastle/asn1/x509/DigestInfo:<init>	(Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V
    //   74: astore 8
    //   76: ldc_w 285
    //   79: invokestatic 290	javax/crypto/Cipher:getInstance	(Ljava/lang/String;)Ljavax/crypto/Cipher;
    //   82: astore 9
    //   84: aload 9
    //   86: iconst_1
    //   87: aload_0
    //   88: getfield 77	com/avast/android/generic/c/g:k	Ljava/security/PrivateKey;
    //   91: invokevirtual 294	javax/crypto/Cipher:init	(ILjava/security/Key;)V
    //   94: aload_0
    //   95: aload 9
    //   97: aload 8
    //   99: ldc_w 296
    //   102: invokevirtual 299	com/android/org/bouncycastle/asn1/x509/DigestInfo:getEncoded	(Ljava/lang/String;)[B
    //   105: invokevirtual 302	javax/crypto/Cipher:doFinal	([B)[B
    //   108: putfield 304	com/avast/android/generic/c/g:g	[B
    //   111: new 306	com/android/org/bouncycastle/asn1/ASN1EncodableVector
    //   114: dup
    //   115: invokespecial 307	com/android/org/bouncycastle/asn1/ASN1EncodableVector:<init>	()V
    //   118: astore 10
    //   120: new 213	com/android/org/bouncycastle/asn1/DEREncodableVector
    //   123: dup
    //   124: invokespecial 308	com/android/org/bouncycastle/asn1/DEREncodableVector:<init>	()V
    //   127: astore 11
    //   129: aload_0
    //   130: getfield 103	com/avast/android/generic/c/g:c	Ljava/util/Set;
    //   133: invokeinterface 312 1 0
    //   138: astore 12
    //   140: aload 12
    //   142: invokeinterface 318 1 0
    //   147: ifeq +75 -> 222
    //   150: new 274	com/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier
    //   153: dup
    //   154: new 276	com/android/org/bouncycastle/asn1/DERObjectIdentifier
    //   157: dup
    //   158: aload 12
    //   160: invokeinterface 322 1 0
    //   165: checkcast 81	java/lang/String
    //   168: invokespecial 277	com/android/org/bouncycastle/asn1/DERObjectIdentifier:<init>	(Ljava/lang/String;)V
    //   171: aload 6
    //   173: invokespecial 280	com/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier:<init>	(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DEREncodable;)V
    //   176: astore 13
    //   178: aload 10
    //   180: aload 13
    //   182: invokevirtual 325	com/android/org/bouncycastle/asn1/ASN1EncodableVector:add	(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V
    //   185: aload 11
    //   187: aload 13
    //   189: invokevirtual 326	com/android/org/bouncycastle/asn1/DEREncodableVector:add	(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V
    //   192: goto -52 -> 140
    //   195: astore_2
    //   196: new 328	java/lang/RuntimeException
    //   199: dup
    //   200: aload_2
    //   201: invokevirtual 329	java/lang/Exception:toString	()Ljava/lang/String;
    //   204: invokespecial 330	java/lang/RuntimeException:<init>	(Ljava/lang/String;)V
    //   207: athrow
    //   208: astore 4
    //   210: aload_3
    //   211: ldc_w 332
    //   214: invokevirtual 246	java/lang/Class:getField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   217: astore 5
    //   219: goto -201 -> 18
    //   222: aload_0
    //   223: aload 10
    //   225: aload 11
    //   227: invokespecial 334	com/avast/android/generic/c/g:a	(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;Lcom/android/org/bouncycastle/asn1/DEREncodableVector;)Lcom/android/org/bouncycastle/asn1/DERSet;
    //   230: astore 14
    //   232: new 226	com/android/org/bouncycastle/asn1/DERSequence
    //   235: dup
    //   236: new 276	com/android/org/bouncycastle/asn1/DERObjectIdentifier
    //   239: dup
    //   240: ldc 49
    //   242: invokespecial 277	com/android/org/bouncycastle/asn1/DERObjectIdentifier:<init>	(Ljava/lang/String;)V
    //   245: invokespecial 336	com/android/org/bouncycastle/asn1/DERSequence:<init>	(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V
    //   248: astore 15
    //   250: new 306	com/android/org/bouncycastle/asn1/ASN1EncodableVector
    //   253: dup
    //   254: invokespecial 307	com/android/org/bouncycastle/asn1/ASN1EncodableVector:<init>	()V
    //   257: astore 16
    //   259: new 213	com/android/org/bouncycastle/asn1/DEREncodableVector
    //   262: dup
    //   263: invokespecial 308	com/android/org/bouncycastle/asn1/DEREncodableVector:<init>	()V
    //   266: astore 17
    //   268: aload_0
    //   269: getfield 96	com/avast/android/generic/c/g:d	Ljava/util/Collection;
    //   272: invokeinterface 337 1 0
    //   277: astore 18
    //   279: aload 18
    //   281: invokeinterface 318 1 0
    //   286: ifeq +52 -> 338
    //   289: new 171	com/android/org/bouncycastle/asn1/ASN1InputStream
    //   292: dup
    //   293: new 173	java/io/ByteArrayInputStream
    //   296: dup
    //   297: aload 18
    //   299: invokeinterface 322 1 0
    //   304: checkcast 110	java/security/cert/X509Certificate
    //   307: invokevirtual 340	java/security/cert/X509Certificate:getEncoded	()[B
    //   310: invokespecial 176	java/io/ByteArrayInputStream:<init>	([B)V
    //   313: invokespecial 179	com/android/org/bouncycastle/asn1/ASN1InputStream:<init>	(Ljava/io/InputStream;)V
    //   316: invokevirtual 183	com/android/org/bouncycastle/asn1/ASN1InputStream:readObject	()Lcom/android/org/bouncycastle/asn1/DERObject;
    //   319: astore 44
    //   321: aload 16
    //   323: aload 44
    //   325: invokevirtual 325	com/android/org/bouncycastle/asn1/ASN1EncodableVector:add	(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V
    //   328: aload 17
    //   330: aload 44
    //   332: invokevirtual 326	com/android/org/bouncycastle/asn1/DEREncodableVector:add	(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V
    //   335: goto -56 -> 279
    //   338: aload_0
    //   339: aload 16
    //   341: aload 17
    //   343: invokespecial 334	com/avast/android/generic/c/g:a	(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;Lcom/android/org/bouncycastle/asn1/DEREncodableVector;)Lcom/android/org/bouncycastle/asn1/DERSet;
    //   346: astore 19
    //   348: new 306	com/android/org/bouncycastle/asn1/ASN1EncodableVector
    //   351: dup
    //   352: invokespecial 307	com/android/org/bouncycastle/asn1/ASN1EncodableVector:<init>	()V
    //   355: astore 20
    //   357: new 213	com/android/org/bouncycastle/asn1/DEREncodableVector
    //   360: dup
    //   361: invokespecial 308	com/android/org/bouncycastle/asn1/DEREncodableVector:<init>	()V
    //   364: astore 21
    //   366: new 342	com/android/org/bouncycastle/asn1/DERInteger
    //   369: dup
    //   370: aload_0
    //   371: getfield 89	com/avast/android/generic/c/g:b	I
    //   374: invokespecial 345	com/android/org/bouncycastle/asn1/DERInteger:<init>	(I)V
    //   377: astore 22
    //   379: aload 20
    //   381: aload 22
    //   383: invokevirtual 325	com/android/org/bouncycastle/asn1/ASN1EncodableVector:add	(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V
    //   386: aload 21
    //   388: aload 22
    //   390: invokevirtual 326	com/android/org/bouncycastle/asn1/DEREncodableVector:add	(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V
    //   393: new 347	com/android/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber
    //   396: dup
    //   397: new 349	com/android/org/bouncycastle/asn1/x509/X509Name
    //   400: dup
    //   401: aload_0
    //   402: aload_0
    //   403: getfield 112	com/avast/android/generic/c/g:f	Ljava/security/cert/X509Certificate;
    //   406: invokevirtual 352	java/security/cert/X509Certificate:getTBSCertificate	()[B
    //   409: invokespecial 354	com/avast/android/generic/c/g:a	([B)Lcom/android/org/bouncycastle/asn1/DERObject;
    //   412: checkcast 185	com/android/org/bouncycastle/asn1/ASN1Sequence
    //   415: invokespecial 357	com/android/org/bouncycastle/asn1/x509/X509Name:<init>	(Lcom/android/org/bouncycastle/asn1/ASN1Sequence;)V
    //   418: new 342	com/android/org/bouncycastle/asn1/DERInteger
    //   421: dup
    //   422: aload_0
    //   423: getfield 112	com/avast/android/generic/c/g:f	Ljava/security/cert/X509Certificate;
    //   426: invokevirtual 361	java/security/cert/X509Certificate:getSerialNumber	()Ljava/math/BigInteger;
    //   429: invokespecial 364	com/android/org/bouncycastle/asn1/DERInteger:<init>	(Ljava/math/BigInteger;)V
    //   432: invokespecial 367	com/android/org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber:<init>	(Lcom/android/org/bouncycastle/asn1/x509/X509Name;Lcom/android/org/bouncycastle/asn1/DERInteger;)V
    //   435: astore 23
    //   437: aload 20
    //   439: aload 23
    //   441: invokevirtual 325	com/android/org/bouncycastle/asn1/ASN1EncodableVector:add	(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V
    //   444: aload 21
    //   446: aload 23
    //   448: invokevirtual 326	com/android/org/bouncycastle/asn1/DEREncodableVector:add	(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V
    //   451: new 274	com/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier
    //   454: dup
    //   455: new 276	com/android/org/bouncycastle/asn1/DERObjectIdentifier
    //   458: dup
    //   459: aload_0
    //   460: getfield 87	com/avast/android/generic/c/g:h	Ljava/lang/String;
    //   463: invokespecial 277	com/android/org/bouncycastle/asn1/DERObjectIdentifier:<init>	(Ljava/lang/String;)V
    //   466: aload 6
    //   468: invokespecial 280	com/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier:<init>	(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DEREncodable;)V
    //   471: astore 24
    //   473: aload 20
    //   475: aload 24
    //   477: invokevirtual 325	com/android/org/bouncycastle/asn1/ASN1EncodableVector:add	(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V
    //   480: aload 21
    //   482: aload 24
    //   484: invokevirtual 326	com/android/org/bouncycastle/asn1/DEREncodableVector:add	(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V
    //   487: new 274	com/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier
    //   490: dup
    //   491: new 276	com/android/org/bouncycastle/asn1/DERObjectIdentifier
    //   494: dup
    //   495: aload_0
    //   496: getfield 146	com/avast/android/generic/c/g:i	Ljava/lang/String;
    //   499: invokespecial 277	com/android/org/bouncycastle/asn1/DERObjectIdentifier:<init>	(Ljava/lang/String;)V
    //   502: aload 6
    //   504: invokespecial 280	com/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier:<init>	(Lcom/android/org/bouncycastle/asn1/DERObjectIdentifier;Lcom/android/org/bouncycastle/asn1/DEREncodable;)V
    //   507: astore 25
    //   509: aload 20
    //   511: aload 25
    //   513: invokevirtual 325	com/android/org/bouncycastle/asn1/ASN1EncodableVector:add	(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V
    //   516: aload 21
    //   518: aload 25
    //   520: invokevirtual 326	com/android/org/bouncycastle/asn1/DEREncodableVector:add	(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V
    //   523: new 369	com/android/org/bouncycastle/asn1/DEROctetString
    //   526: dup
    //   527: aload_0
    //   528: getfield 304	com/avast/android/generic/c/g:g	[B
    //   531: invokespecial 370	com/android/org/bouncycastle/asn1/DEROctetString:<init>	([B)V
    //   534: astore 26
    //   536: aload 20
    //   538: aload 26
    //   540: invokevirtual 325	com/android/org/bouncycastle/asn1/ASN1EncodableVector:add	(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V
    //   543: aload 21
    //   545: aload 26
    //   547: invokevirtual 326	com/android/org/bouncycastle/asn1/DEREncodableVector:add	(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V
    //   550: new 306	com/android/org/bouncycastle/asn1/ASN1EncodableVector
    //   553: dup
    //   554: invokespecial 307	com/android/org/bouncycastle/asn1/ASN1EncodableVector:<init>	()V
    //   557: astore 27
    //   559: new 213	com/android/org/bouncycastle/asn1/DEREncodableVector
    //   562: dup
    //   563: invokespecial 308	com/android/org/bouncycastle/asn1/DEREncodableVector:<init>	()V
    //   566: astore 28
    //   568: new 342	com/android/org/bouncycastle/asn1/DERInteger
    //   571: dup
    //   572: aload_0
    //   573: getfield 91	com/avast/android/generic/c/g:a	I
    //   576: invokespecial 345	com/android/org/bouncycastle/asn1/DERInteger:<init>	(I)V
    //   579: astore 29
    //   581: aload 27
    //   583: aload 29
    //   585: invokevirtual 325	com/android/org/bouncycastle/asn1/ASN1EncodableVector:add	(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V
    //   588: aload 28
    //   590: aload 29
    //   592: invokevirtual 326	com/android/org/bouncycastle/asn1/DEREncodableVector:add	(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V
    //   595: aload 27
    //   597: aload 14
    //   599: invokevirtual 325	com/android/org/bouncycastle/asn1/ASN1EncodableVector:add	(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V
    //   602: aload 28
    //   604: aload 14
    //   606: invokevirtual 326	com/android/org/bouncycastle/asn1/DEREncodableVector:add	(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V
    //   609: aload 27
    //   611: aload 15
    //   613: invokevirtual 325	com/android/org/bouncycastle/asn1/ASN1EncodableVector:add	(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V
    //   616: aload 28
    //   618: aload 15
    //   620: invokevirtual 326	com/android/org/bouncycastle/asn1/DEREncodableVector:add	(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V
    //   623: new 191	com/android/org/bouncycastle/asn1/DERTaggedObject
    //   626: dup
    //   627: iconst_0
    //   628: iconst_0
    //   629: aload 19
    //   631: invokespecial 373	com/android/org/bouncycastle/asn1/DERTaggedObject:<init>	(ZILcom/android/org/bouncycastle/asn1/DEREncodable;)V
    //   634: astore 30
    //   636: aload 27
    //   638: aload 30
    //   640: invokevirtual 325	com/android/org/bouncycastle/asn1/ASN1EncodableVector:add	(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V
    //   643: aload 28
    //   645: aload 30
    //   647: invokevirtual 326	com/android/org/bouncycastle/asn1/DEREncodableVector:add	(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V
    //   650: aload_0
    //   651: getfield 98	com/avast/android/generic/c/g:e	Ljava/util/Collection;
    //   654: invokeinterface 377 1 0
    //   659: ifle +124 -> 783
    //   662: new 306	com/android/org/bouncycastle/asn1/ASN1EncodableVector
    //   665: dup
    //   666: invokespecial 307	com/android/org/bouncycastle/asn1/ASN1EncodableVector:<init>	()V
    //   669: astore 31
    //   671: new 213	com/android/org/bouncycastle/asn1/DEREncodableVector
    //   674: dup
    //   675: invokespecial 308	com/android/org/bouncycastle/asn1/DEREncodableVector:<init>	()V
    //   678: astore 32
    //   680: aload_0
    //   681: getfield 98	com/avast/android/generic/c/g:e	Ljava/util/Collection;
    //   684: invokeinterface 337 1 0
    //   689: astore 33
    //   691: aload 33
    //   693: invokeinterface 318 1 0
    //   698: ifeq +52 -> 750
    //   701: new 171	com/android/org/bouncycastle/asn1/ASN1InputStream
    //   704: dup
    //   705: new 173	java/io/ByteArrayInputStream
    //   708: dup
    //   709: aload 33
    //   711: invokeinterface 322 1 0
    //   716: checkcast 379	java/security/cert/X509CRL
    //   719: invokevirtual 380	java/security/cert/X509CRL:getEncoded	()[B
    //   722: invokespecial 176	java/io/ByteArrayInputStream:<init>	([B)V
    //   725: invokespecial 179	com/android/org/bouncycastle/asn1/ASN1InputStream:<init>	(Ljava/io/InputStream;)V
    //   728: invokevirtual 183	com/android/org/bouncycastle/asn1/ASN1InputStream:readObject	()Lcom/android/org/bouncycastle/asn1/DERObject;
    //   731: astore 43
    //   733: aload 31
    //   735: aload 43
    //   737: invokevirtual 325	com/android/org/bouncycastle/asn1/ASN1EncodableVector:add	(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V
    //   740: aload 32
    //   742: aload 43
    //   744: invokevirtual 326	com/android/org/bouncycastle/asn1/DEREncodableVector:add	(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V
    //   747: goto -56 -> 691
    //   750: new 191	com/android/org/bouncycastle/asn1/DERTaggedObject
    //   753: dup
    //   754: iconst_0
    //   755: iconst_1
    //   756: aload_0
    //   757: aload 31
    //   759: aload 32
    //   761: invokespecial 334	com/avast/android/generic/c/g:a	(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;Lcom/android/org/bouncycastle/asn1/DEREncodableVector;)Lcom/android/org/bouncycastle/asn1/DERSet;
    //   764: invokespecial 373	com/android/org/bouncycastle/asn1/DERTaggedObject:<init>	(ZILcom/android/org/bouncycastle/asn1/DEREncodable;)V
    //   767: astore 34
    //   769: aload 27
    //   771: aload 34
    //   773: invokevirtual 325	com/android/org/bouncycastle/asn1/ASN1EncodableVector:add	(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V
    //   776: aload 28
    //   778: aload 34
    //   780: invokevirtual 326	com/android/org/bouncycastle/asn1/DEREncodableVector:add	(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V
    //   783: new 206	com/android/org/bouncycastle/asn1/DERSet
    //   786: dup
    //   787: aload_0
    //   788: aload 20
    //   790: aload 21
    //   792: invokespecial 382	com/avast/android/generic/c/g:b	(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;Lcom/android/org/bouncycastle/asn1/DEREncodableVector;)Lcom/android/org/bouncycastle/asn1/DERSequence;
    //   795: invokespecial 383	com/android/org/bouncycastle/asn1/DERSet:<init>	(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V
    //   798: astore 35
    //   800: aload 27
    //   802: aload 35
    //   804: invokevirtual 325	com/android/org/bouncycastle/asn1/ASN1EncodableVector:add	(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V
    //   807: aload 28
    //   809: aload 35
    //   811: invokevirtual 326	com/android/org/bouncycastle/asn1/DEREncodableVector:add	(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V
    //   814: new 306	com/android/org/bouncycastle/asn1/ASN1EncodableVector
    //   817: dup
    //   818: invokespecial 307	com/android/org/bouncycastle/asn1/ASN1EncodableVector:<init>	()V
    //   821: astore 36
    //   823: new 213	com/android/org/bouncycastle/asn1/DEREncodableVector
    //   826: dup
    //   827: invokespecial 308	com/android/org/bouncycastle/asn1/DEREncodableVector:<init>	()V
    //   830: astore 37
    //   832: new 276	com/android/org/bouncycastle/asn1/DERObjectIdentifier
    //   835: dup
    //   836: ldc 53
    //   838: invokespecial 277	com/android/org/bouncycastle/asn1/DERObjectIdentifier:<init>	(Ljava/lang/String;)V
    //   841: astore 38
    //   843: aload 36
    //   845: aload 38
    //   847: invokevirtual 325	com/android/org/bouncycastle/asn1/ASN1EncodableVector:add	(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V
    //   850: aload 37
    //   852: aload 38
    //   854: invokevirtual 326	com/android/org/bouncycastle/asn1/DEREncodableVector:add	(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V
    //   857: new 191	com/android/org/bouncycastle/asn1/DERTaggedObject
    //   860: dup
    //   861: iconst_0
    //   862: aload_0
    //   863: aload 27
    //   865: aload 28
    //   867: invokespecial 382	com/avast/android/generic/c/g:b	(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;Lcom/android/org/bouncycastle/asn1/DEREncodableVector;)Lcom/android/org/bouncycastle/asn1/DERSequence;
    //   870: invokespecial 386	com/android/org/bouncycastle/asn1/DERTaggedObject:<init>	(ILcom/android/org/bouncycastle/asn1/DEREncodable;)V
    //   873: astore 39
    //   875: aload 36
    //   877: aload 39
    //   879: invokevirtual 325	com/android/org/bouncycastle/asn1/ASN1EncodableVector:add	(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V
    //   882: aload 37
    //   884: aload 39
    //   886: invokevirtual 326	com/android/org/bouncycastle/asn1/DEREncodableVector:add	(Lcom/android/org/bouncycastle/asn1/DEREncodable;)V
    //   889: new 388	java/io/ByteArrayOutputStream
    //   892: dup
    //   893: invokespecial 389	java/io/ByteArrayOutputStream:<init>	()V
    //   896: astore 40
    //   898: new 391	com/android/org/bouncycastle/asn1/DEROutputStream
    //   901: dup
    //   902: aload 40
    //   904: invokespecial 394	com/android/org/bouncycastle/asn1/DEROutputStream:<init>	(Ljava/io/OutputStream;)V
    //   907: astore 41
    //   909: aload 41
    //   911: aload_0
    //   912: aload 36
    //   914: aload 37
    //   916: invokespecial 382	com/avast/android/generic/c/g:b	(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;Lcom/android/org/bouncycastle/asn1/DEREncodableVector;)Lcom/android/org/bouncycastle/asn1/DERSequence;
    //   919: invokevirtual 398	com/android/org/bouncycastle/asn1/DEROutputStream:writeObject	(Ljava/lang/Object;)V
    //   922: aload 41
    //   924: invokevirtual 401	com/android/org/bouncycastle/asn1/DEROutputStream:close	()V
    //   927: aload 40
    //   929: invokevirtual 404	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   932: astore 42
    //   934: aload 42
    //   936: areturn
    //
    // Exception table:
    //   from	to	target	type
    //   0	6	195	java/lang/Exception
    //   6	14	195	java/lang/Exception
    //   18	192	195	java/lang/Exception
    //   210	934	195	java/lang/Exception
    //   6	14	208	java/lang/NoSuchFieldException
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.c.g
 * JD-Core Version:    0.6.2
 */