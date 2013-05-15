package com.avast.android.generic.c;

import java.io.ByteArrayInputStream;
import java.io.IOException;
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
import org.bouncycastle.asn1.ASN1InputStream;
import org.bouncycastle.asn1.ASN1Sequence;
import org.bouncycastle.asn1.DERObject;
import org.bouncycastle.asn1.DERTaggedObject;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;

public class f
  implements e, PKCSObjectIdentifiers
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

  public f(PrivateKey paramPrivateKey, Certificate[] paramArrayOfCertificate, String paramString)
  {
    this(paramPrivateKey, paramArrayOfCertificate, paramString, "BC");
  }

  public f(PrivateKey paramPrivateKey, Certificate[] paramArrayOfCertificate, String paramString1, String paramString2)
  {
    this(paramPrivateKey, paramArrayOfCertificate, null, paramString1, paramString2);
  }

  public f(PrivateKey paramPrivateKey, Certificate[] paramArrayOfCertificate, CRL[] paramArrayOfCRL, String paramString1, String paramString2)
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
    //   0: ldc 210
    //   2: invokestatic 216	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   5: astore_3
    //   6: aload_3
    //   7: ldc 218
    //   9: invokevirtual 222	java/lang/Class:getField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   12: astore 25
    //   14: aload 25
    //   16: astore 5
    //   18: aload 5
    //   20: aconst_null
    //   21: invokevirtual 228	java/lang/reflect/Field:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   24: checkcast 230	org/bouncycastle/asn1/ASN1Encodable
    //   27: astore 6
    //   29: ldc 232
    //   31: invokestatic 237	java/security/MessageDigest:getInstance	(Ljava/lang/String;)Ljava/security/MessageDigest;
    //   34: aload_1
    //   35: ldc 239
    //   37: invokevirtual 242	java/lang/String:getBytes	(Ljava/lang/String;)[B
    //   40: invokevirtual 246	java/security/MessageDigest:digest	([B)[B
    //   43: astore 7
    //   45: new 248	org/bouncycastle/asn1/x509/DigestInfo
    //   48: dup
    //   49: new 250	org/bouncycastle/asn1/x509/AlgorithmIdentifier
    //   52: dup
    //   53: new 252	org/bouncycastle/asn1/DERObjectIdentifier
    //   56: dup
    //   57: ldc 65
    //   59: invokespecial 253	org/bouncycastle/asn1/DERObjectIdentifier:<init>	(Ljava/lang/String;)V
    //   62: aload 6
    //   64: invokespecial 256	org/bouncycastle/asn1/x509/AlgorithmIdentifier:<init>	(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DEREncodable;)V
    //   67: aload 7
    //   69: invokespecial 259	org/bouncycastle/asn1/x509/DigestInfo:<init>	(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V
    //   72: astore 8
    //   74: ldc_w 261
    //   77: invokestatic 266	javax/crypto/Cipher:getInstance	(Ljava/lang/String;)Ljavax/crypto/Cipher;
    //   80: astore 9
    //   82: aload 9
    //   84: iconst_1
    //   85: aload_0
    //   86: getfield 77	com/avast/android/generic/c/f:k	Ljava/security/PrivateKey;
    //   89: invokevirtual 270	javax/crypto/Cipher:init	(ILjava/security/Key;)V
    //   92: aload_0
    //   93: aload 9
    //   95: aload 8
    //   97: ldc_w 272
    //   100: invokevirtual 275	org/bouncycastle/asn1/x509/DigestInfo:getEncoded	(Ljava/lang/String;)[B
    //   103: invokevirtual 278	javax/crypto/Cipher:doFinal	([B)[B
    //   106: putfield 280	com/avast/android/generic/c/f:g	[B
    //   109: new 282	org/bouncycastle/asn1/ASN1EncodableVector
    //   112: dup
    //   113: invokespecial 283	org/bouncycastle/asn1/ASN1EncodableVector:<init>	()V
    //   116: astore 10
    //   118: aload_0
    //   119: getfield 103	com/avast/android/generic/c/f:c	Ljava/util/Set;
    //   122: invokeinterface 287 1 0
    //   127: astore 11
    //   129: aload 11
    //   131: invokeinterface 293 1 0
    //   136: ifeq +64 -> 200
    //   139: aload 10
    //   141: new 250	org/bouncycastle/asn1/x509/AlgorithmIdentifier
    //   144: dup
    //   145: new 252	org/bouncycastle/asn1/DERObjectIdentifier
    //   148: dup
    //   149: aload 11
    //   151: invokeinterface 297 1 0
    //   156: checkcast 81	java/lang/String
    //   159: invokespecial 253	org/bouncycastle/asn1/DERObjectIdentifier:<init>	(Ljava/lang/String;)V
    //   162: aload 6
    //   164: invokespecial 256	org/bouncycastle/asn1/x509/AlgorithmIdentifier:<init>	(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DEREncodable;)V
    //   167: invokevirtual 300	org/bouncycastle/asn1/ASN1EncodableVector:add	(Lorg/bouncycastle/asn1/DEREncodable;)V
    //   170: goto -41 -> 129
    //   173: astore_2
    //   174: new 302	java/lang/RuntimeException
    //   177: dup
    //   178: aload_2
    //   179: invokevirtual 303	java/lang/Exception:toString	()Ljava/lang/String;
    //   182: invokespecial 304	java/lang/RuntimeException:<init>	(Ljava/lang/String;)V
    //   185: athrow
    //   186: astore 4
    //   188: aload_3
    //   189: ldc_w 306
    //   192: invokevirtual 222	java/lang/Class:getField	(Ljava/lang/String;)Ljava/lang/reflect/Field;
    //   195: astore 5
    //   197: goto -179 -> 18
    //   200: new 308	org/bouncycastle/asn1/DERSet
    //   203: dup
    //   204: aload 10
    //   206: invokespecial 311	org/bouncycastle/asn1/DERSet:<init>	(Lorg/bouncycastle/asn1/DEREncodableVector;)V
    //   209: astore 12
    //   211: new 313	org/bouncycastle/asn1/DERSequence
    //   214: dup
    //   215: new 252	org/bouncycastle/asn1/DERObjectIdentifier
    //   218: dup
    //   219: ldc 49
    //   221: invokespecial 253	org/bouncycastle/asn1/DERObjectIdentifier:<init>	(Ljava/lang/String;)V
    //   224: invokespecial 315	org/bouncycastle/asn1/DERSequence:<init>	(Lorg/bouncycastle/asn1/DEREncodable;)V
    //   227: astore 13
    //   229: new 282	org/bouncycastle/asn1/ASN1EncodableVector
    //   232: dup
    //   233: invokespecial 283	org/bouncycastle/asn1/ASN1EncodableVector:<init>	()V
    //   236: astore 14
    //   238: aload_0
    //   239: getfield 96	com/avast/android/generic/c/f:d	Ljava/util/Collection;
    //   242: invokeinterface 316 1 0
    //   247: astore 15
    //   249: aload 15
    //   251: invokeinterface 293 1 0
    //   256: ifeq +41 -> 297
    //   259: aload 14
    //   261: new 171	org/bouncycastle/asn1/ASN1InputStream
    //   264: dup
    //   265: new 173	java/io/ByteArrayInputStream
    //   268: dup
    //   269: aload 15
    //   271: invokeinterface 297 1 0
    //   276: checkcast 110	java/security/cert/X509Certificate
    //   279: invokevirtual 319	java/security/cert/X509Certificate:getEncoded	()[B
    //   282: invokespecial 176	java/io/ByteArrayInputStream:<init>	([B)V
    //   285: invokespecial 179	org/bouncycastle/asn1/ASN1InputStream:<init>	(Ljava/io/InputStream;)V
    //   288: invokevirtual 183	org/bouncycastle/asn1/ASN1InputStream:readObject	()Lorg/bouncycastle/asn1/DERObject;
    //   291: invokevirtual 300	org/bouncycastle/asn1/ASN1EncodableVector:add	(Lorg/bouncycastle/asn1/DEREncodable;)V
    //   294: goto -45 -> 249
    //   297: new 308	org/bouncycastle/asn1/DERSet
    //   300: dup
    //   301: aload 14
    //   303: invokespecial 311	org/bouncycastle/asn1/DERSet:<init>	(Lorg/bouncycastle/asn1/DEREncodableVector;)V
    //   306: astore 16
    //   308: new 282	org/bouncycastle/asn1/ASN1EncodableVector
    //   311: dup
    //   312: invokespecial 283	org/bouncycastle/asn1/ASN1EncodableVector:<init>	()V
    //   315: astore 17
    //   317: aload 17
    //   319: new 321	org/bouncycastle/asn1/DERInteger
    //   322: dup
    //   323: aload_0
    //   324: getfield 89	com/avast/android/generic/c/f:b	I
    //   327: invokespecial 324	org/bouncycastle/asn1/DERInteger:<init>	(I)V
    //   330: invokevirtual 300	org/bouncycastle/asn1/ASN1EncodableVector:add	(Lorg/bouncycastle/asn1/DEREncodable;)V
    //   333: aload 17
    //   335: new 326	org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber
    //   338: dup
    //   339: new 328	org/bouncycastle/asn1/x509/X509Name
    //   342: dup
    //   343: aload_0
    //   344: aload_0
    //   345: getfield 112	com/avast/android/generic/c/f:f	Ljava/security/cert/X509Certificate;
    //   348: invokevirtual 331	java/security/cert/X509Certificate:getTBSCertificate	()[B
    //   351: invokespecial 333	com/avast/android/generic/c/f:a	([B)Lorg/bouncycastle/asn1/DERObject;
    //   354: checkcast 185	org/bouncycastle/asn1/ASN1Sequence
    //   357: invokespecial 336	org/bouncycastle/asn1/x509/X509Name:<init>	(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    //   360: new 321	org/bouncycastle/asn1/DERInteger
    //   363: dup
    //   364: aload_0
    //   365: getfield 112	com/avast/android/generic/c/f:f	Ljava/security/cert/X509Certificate;
    //   368: invokevirtual 340	java/security/cert/X509Certificate:getSerialNumber	()Ljava/math/BigInteger;
    //   371: invokespecial 343	org/bouncycastle/asn1/DERInteger:<init>	(Ljava/math/BigInteger;)V
    //   374: invokespecial 346	org/bouncycastle/asn1/pkcs/IssuerAndSerialNumber:<init>	(Lorg/bouncycastle/asn1/x509/X509Name;Lorg/bouncycastle/asn1/DERInteger;)V
    //   377: invokevirtual 300	org/bouncycastle/asn1/ASN1EncodableVector:add	(Lorg/bouncycastle/asn1/DEREncodable;)V
    //   380: aload 17
    //   382: new 250	org/bouncycastle/asn1/x509/AlgorithmIdentifier
    //   385: dup
    //   386: new 252	org/bouncycastle/asn1/DERObjectIdentifier
    //   389: dup
    //   390: aload_0
    //   391: getfield 87	com/avast/android/generic/c/f:h	Ljava/lang/String;
    //   394: invokespecial 253	org/bouncycastle/asn1/DERObjectIdentifier:<init>	(Ljava/lang/String;)V
    //   397: aload 6
    //   399: invokespecial 256	org/bouncycastle/asn1/x509/AlgorithmIdentifier:<init>	(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DEREncodable;)V
    //   402: invokevirtual 300	org/bouncycastle/asn1/ASN1EncodableVector:add	(Lorg/bouncycastle/asn1/DEREncodable;)V
    //   405: aload 17
    //   407: new 250	org/bouncycastle/asn1/x509/AlgorithmIdentifier
    //   410: dup
    //   411: new 252	org/bouncycastle/asn1/DERObjectIdentifier
    //   414: dup
    //   415: aload_0
    //   416: getfield 146	com/avast/android/generic/c/f:i	Ljava/lang/String;
    //   419: invokespecial 253	org/bouncycastle/asn1/DERObjectIdentifier:<init>	(Ljava/lang/String;)V
    //   422: aload 6
    //   424: invokespecial 256	org/bouncycastle/asn1/x509/AlgorithmIdentifier:<init>	(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DEREncodable;)V
    //   427: invokevirtual 300	org/bouncycastle/asn1/ASN1EncodableVector:add	(Lorg/bouncycastle/asn1/DEREncodable;)V
    //   430: aload 17
    //   432: new 348	org/bouncycastle/asn1/DEROctetString
    //   435: dup
    //   436: aload_0
    //   437: getfield 280	com/avast/android/generic/c/f:g	[B
    //   440: invokespecial 349	org/bouncycastle/asn1/DEROctetString:<init>	([B)V
    //   443: invokevirtual 300	org/bouncycastle/asn1/ASN1EncodableVector:add	(Lorg/bouncycastle/asn1/DEREncodable;)V
    //   446: new 282	org/bouncycastle/asn1/ASN1EncodableVector
    //   449: dup
    //   450: invokespecial 283	org/bouncycastle/asn1/ASN1EncodableVector:<init>	()V
    //   453: astore 18
    //   455: aload 18
    //   457: new 321	org/bouncycastle/asn1/DERInteger
    //   460: dup
    //   461: aload_0
    //   462: getfield 91	com/avast/android/generic/c/f:a	I
    //   465: invokespecial 324	org/bouncycastle/asn1/DERInteger:<init>	(I)V
    //   468: invokevirtual 300	org/bouncycastle/asn1/ASN1EncodableVector:add	(Lorg/bouncycastle/asn1/DEREncodable;)V
    //   471: aload 18
    //   473: aload 12
    //   475: invokevirtual 300	org/bouncycastle/asn1/ASN1EncodableVector:add	(Lorg/bouncycastle/asn1/DEREncodable;)V
    //   478: aload 18
    //   480: aload 13
    //   482: invokevirtual 300	org/bouncycastle/asn1/ASN1EncodableVector:add	(Lorg/bouncycastle/asn1/DEREncodable;)V
    //   485: aload 18
    //   487: new 191	org/bouncycastle/asn1/DERTaggedObject
    //   490: dup
    //   491: iconst_0
    //   492: iconst_0
    //   493: aload 16
    //   495: invokespecial 352	org/bouncycastle/asn1/DERTaggedObject:<init>	(ZILorg/bouncycastle/asn1/DEREncodable;)V
    //   498: invokevirtual 300	org/bouncycastle/asn1/ASN1EncodableVector:add	(Lorg/bouncycastle/asn1/DEREncodable;)V
    //   501: aload_0
    //   502: getfield 98	com/avast/android/generic/c/f:e	Ljava/util/Collection;
    //   505: invokeinterface 356 1 0
    //   510: ifle +94 -> 604
    //   513: new 282	org/bouncycastle/asn1/ASN1EncodableVector
    //   516: dup
    //   517: invokespecial 283	org/bouncycastle/asn1/ASN1EncodableVector:<init>	()V
    //   520: astore 19
    //   522: aload_0
    //   523: getfield 98	com/avast/android/generic/c/f:e	Ljava/util/Collection;
    //   526: invokeinterface 316 1 0
    //   531: astore 20
    //   533: aload 20
    //   535: invokeinterface 293 1 0
    //   540: ifeq +41 -> 581
    //   543: aload 19
    //   545: new 171	org/bouncycastle/asn1/ASN1InputStream
    //   548: dup
    //   549: new 173	java/io/ByteArrayInputStream
    //   552: dup
    //   553: aload 20
    //   555: invokeinterface 297 1 0
    //   560: checkcast 358	java/security/cert/X509CRL
    //   563: invokevirtual 359	java/security/cert/X509CRL:getEncoded	()[B
    //   566: invokespecial 176	java/io/ByteArrayInputStream:<init>	([B)V
    //   569: invokespecial 179	org/bouncycastle/asn1/ASN1InputStream:<init>	(Ljava/io/InputStream;)V
    //   572: invokevirtual 183	org/bouncycastle/asn1/ASN1InputStream:readObject	()Lorg/bouncycastle/asn1/DERObject;
    //   575: invokevirtual 300	org/bouncycastle/asn1/ASN1EncodableVector:add	(Lorg/bouncycastle/asn1/DEREncodable;)V
    //   578: goto -45 -> 533
    //   581: aload 18
    //   583: new 191	org/bouncycastle/asn1/DERTaggedObject
    //   586: dup
    //   587: iconst_0
    //   588: iconst_1
    //   589: new 308	org/bouncycastle/asn1/DERSet
    //   592: dup
    //   593: aload 19
    //   595: invokespecial 311	org/bouncycastle/asn1/DERSet:<init>	(Lorg/bouncycastle/asn1/DEREncodableVector;)V
    //   598: invokespecial 352	org/bouncycastle/asn1/DERTaggedObject:<init>	(ZILorg/bouncycastle/asn1/DEREncodable;)V
    //   601: invokevirtual 300	org/bouncycastle/asn1/ASN1EncodableVector:add	(Lorg/bouncycastle/asn1/DEREncodable;)V
    //   604: aload 18
    //   606: new 308	org/bouncycastle/asn1/DERSet
    //   609: dup
    //   610: new 313	org/bouncycastle/asn1/DERSequence
    //   613: dup
    //   614: aload 17
    //   616: invokespecial 360	org/bouncycastle/asn1/DERSequence:<init>	(Lorg/bouncycastle/asn1/DEREncodableVector;)V
    //   619: invokespecial 361	org/bouncycastle/asn1/DERSet:<init>	(Lorg/bouncycastle/asn1/DEREncodable;)V
    //   622: invokevirtual 300	org/bouncycastle/asn1/ASN1EncodableVector:add	(Lorg/bouncycastle/asn1/DEREncodable;)V
    //   625: new 282	org/bouncycastle/asn1/ASN1EncodableVector
    //   628: dup
    //   629: invokespecial 283	org/bouncycastle/asn1/ASN1EncodableVector:<init>	()V
    //   632: astore 21
    //   634: aload 21
    //   636: new 252	org/bouncycastle/asn1/DERObjectIdentifier
    //   639: dup
    //   640: ldc 53
    //   642: invokespecial 253	org/bouncycastle/asn1/DERObjectIdentifier:<init>	(Ljava/lang/String;)V
    //   645: invokevirtual 300	org/bouncycastle/asn1/ASN1EncodableVector:add	(Lorg/bouncycastle/asn1/DEREncodable;)V
    //   648: aload 21
    //   650: new 191	org/bouncycastle/asn1/DERTaggedObject
    //   653: dup
    //   654: iconst_0
    //   655: new 313	org/bouncycastle/asn1/DERSequence
    //   658: dup
    //   659: aload 18
    //   661: invokespecial 360	org/bouncycastle/asn1/DERSequence:<init>	(Lorg/bouncycastle/asn1/DEREncodableVector;)V
    //   664: invokespecial 364	org/bouncycastle/asn1/DERTaggedObject:<init>	(ILorg/bouncycastle/asn1/DEREncodable;)V
    //   667: invokevirtual 300	org/bouncycastle/asn1/ASN1EncodableVector:add	(Lorg/bouncycastle/asn1/DEREncodable;)V
    //   670: new 366	java/io/ByteArrayOutputStream
    //   673: dup
    //   674: invokespecial 367	java/io/ByteArrayOutputStream:<init>	()V
    //   677: astore 22
    //   679: new 369	org/bouncycastle/asn1/DEROutputStream
    //   682: dup
    //   683: aload 22
    //   685: invokespecial 372	org/bouncycastle/asn1/DEROutputStream:<init>	(Ljava/io/OutputStream;)V
    //   688: astore 23
    //   690: aload 23
    //   692: new 313	org/bouncycastle/asn1/DERSequence
    //   695: dup
    //   696: aload 21
    //   698: invokespecial 360	org/bouncycastle/asn1/DERSequence:<init>	(Lorg/bouncycastle/asn1/DEREncodableVector;)V
    //   701: invokevirtual 376	org/bouncycastle/asn1/DEROutputStream:writeObject	(Ljava/lang/Object;)V
    //   704: aload 23
    //   706: invokevirtual 379	org/bouncycastle/asn1/DEROutputStream:close	()V
    //   709: aload 22
    //   711: invokevirtual 382	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   714: astore 24
    //   716: aload 24
    //   718: areturn
    //
    // Exception table:
    //   from	to	target	type
    //   0	6	173	java/lang/Exception
    //   6	14	173	java/lang/Exception
    //   18	170	173	java/lang/Exception
    //   188	716	173	java/lang/Exception
    //   6	14	186	java/lang/NoSuchFieldException
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.c.f
 * JD-Core Version:    0.6.2
 */