.class public Lcom/avast/android/mobilesecurity/engine/internal/ab;
.super Ljava/lang/Object;
.source "VpsVerifier.java"


# instance fields
.field private final a:Ljava/util/zip/ZipFile;

.field private final b:Ljava/util/zip/ZipFile;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/ab;->b:Ljava/util/zip/ZipFile;

    .line 64
    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-direct {v0, p2}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/ab;->a:Ljava/util/zip/ZipFile;

    .line 65
    return-void
.end method

.method private a(Ljava/util/zip/ZipEntry;)Ljava/lang/String;
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 287
    :try_start_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/ab;->b:Ljava/util/zip/ZipFile;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/avast/android/mobilesecurity/engine/internal/ab;->a(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 289
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/ab;->a:Ljava/util/zip/ZipFile;

    invoke-direct {p0, v1, p1}, Lcom/avast/android/mobilesecurity/engine/internal/ab;->a(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)Ljava/security/cert/X509Certificate;

    move-result-object v3

    .line 291
    if-eqz v0, :cond_0

    if-nez v3, :cond_2

    :cond_0
    move-object v0, v2

    .line 349
    :cond_1
    :goto_0
    return-object v0

    .line 295
    :cond_2
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v1

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    move-object v0, v2

    .line 297
    goto :goto_0

    .line 299
    :cond_3
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v1

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    move-object v0, v2

    .line 301
    goto :goto_0

    .line 304
    :cond_4
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    .line 306
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/RSAPublicKey;

    .line 308
    invoke-interface {v0}, Ljava/security/interfaces/RSAPublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Ljava/security/interfaces/RSAPublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    move-object v0, v2

    .line 309
    goto :goto_0

    .line 311
    :cond_5
    invoke-interface {v0}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v4

    invoke-interface {v1}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-eqz v4, :cond_6

    move-object v0, v2

    .line 312
    goto :goto_0

    .line 314
    :cond_6
    invoke-interface {v0}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v0

    invoke-interface {v1}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-eqz v0, :cond_7

    move-object v0, v2

    .line 316
    goto :goto_0

    .line 320
    :cond_7
    invoke-direct {p0, p1}, Lcom/avast/android/mobilesecurity/engine/internal/ab;->b(Ljava/util/zip/ZipEntry;)[B

    move-result-object v0

    .line 323
    const-string v1, "RSA/None/PKCS1Padding"

    const-string v4, "BC"

    invoke-static {v1, v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 324
    const/4 v4, 0x2

    invoke-virtual {v1, v4, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/cert/Certificate;)V

    .line 326
    invoke-virtual {v1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v4

    .line 327
    const-string v1, ""

    .line 328
    const/4 v0, 0x0

    move v6, v0

    move-object v0, v1

    move v1, v6

    :goto_1
    array-length v3, v4

    if-ge v1, v3, :cond_1

    .line 329
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-byte v3, v4, v1

    and-int/lit16 v3, v3, 0xff

    add-int/lit16 v3, v3, 0x100

    const/16 v5, 0x10

    invoke-static {v3, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_7

    move-result-object v3

    .line 328
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v3

    goto :goto_1

    .line 334
    :catch_0
    move-exception v0

    move-object v0, v2

    .line 335
    goto/16 :goto_0

    .line 336
    :catch_1
    move-exception v0

    move-object v0, v2

    .line 337
    goto/16 :goto_0

    .line 338
    :catch_2
    move-exception v0

    move-object v0, v2

    .line 339
    goto/16 :goto_0

    .line 340
    :catch_3
    move-exception v0

    move-object v0, v2

    .line 341
    goto/16 :goto_0

    .line 342
    :catch_4
    move-exception v0

    move-object v0, v2

    .line 343
    goto/16 :goto_0

    .line 344
    :catch_5
    move-exception v0

    move-object v0, v2

    .line 345
    goto/16 :goto_0

    .line 346
    :catch_6
    move-exception v0

    move-object v0, v2

    .line 347
    goto/16 :goto_0

    .line 348
    :catch_7
    move-exception v0

    move-object v0, v2

    .line 349
    goto/16 :goto_0
.end method

.method private a(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)Ljava/security/cert/X509Certificate;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 371
    invoke-virtual {p1}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    .line 374
    if-nez p2, :cond_4

    move-object v0, p2

    .line 375
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 376
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 377
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "META-INF/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".RSA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 383
    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    .line 384
    const-string v1, "X509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 390
    invoke-virtual {v1, v0}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 392
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 393
    :cond_2
    const/4 v0, 0x0

    .line 394
    :goto_1
    return-object v0

    :cond_3
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    goto :goto_1

    :cond_4
    move-object v0, p2

    goto :goto_0
.end method

.method private b(Ljava/util/zip/ZipEntry;)[B
    .locals 5
    .parameter

    .prologue
    .line 409
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/ab;->a:Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    .line 411
    if-nez p1, :cond_1

    move-object v0, p1

    .line 412
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 413
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 414
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "META-INF/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".RSA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 419
    :cond_2
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/engine/internal/ab;->a:Ljava/util/zip/ZipFile;

    invoke-virtual {v1, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    .line 421
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 424
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v3

    long-to-int v0, v3

    new-array v0, v0, [B

    .line 426
    :goto_1
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-ltz v3, :cond_3

    .line 427
    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    .line 430
    :cond_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 433
    new-instance v1, Lcom/avast/android/mobilesecurity/engine/internal/a;

    invoke-direct {v1, v0}, Lcom/avast/android/mobilesecurity/engine/internal/a;-><init>([B)V

    .line 434
    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/engine/internal/a;->a()[B

    move-result-object v0

    return-object v0
.end method

.method private c(Ljava/util/zip/ZipEntry;)Lcom/avast/android/mobilesecurity/engine/internal/m;
    .locals 5
    .parameter

    .prologue
    .line 449
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/engine/internal/ab;->a:Ljava/util/zip/ZipFile;

    invoke-virtual {v2, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 452
    new-instance v2, Lcom/avast/android/mobilesecurity/engine/internal/m;

    invoke-direct {v2}, Lcom/avast/android/mobilesecurity/engine/internal/m;-><init>()V

    .line 453
    const-string v0, ""

    .line 454
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 455
    const-string v4, "SHA1-Digest-Manifest:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 456
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/avast/android/generic/c/b;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/avast/android/mobilesecurity/engine/internal/m;->a([B)V

    goto :goto_0

    .line 460
    :cond_1
    const-string v4, "Name:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 461
    const-string v0, ":"

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 464
    :cond_2
    const-string v4, "SHA1-Digest:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 465
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/avast/android/generic/c/b;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/avast/android/mobilesecurity/engine/internal/m;->a(Ljava/lang/String;[B)V

    goto :goto_0

    .line 470
    :cond_3
    return-object v2
.end method


# virtual methods
.method public a()Z
    .locals 11

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 76
    :try_start_0
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/engine/internal/ab;->a:Ljava/util/zip/ZipFile;

    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v6

    move-object v5, v0

    move-object v3, v0

    move-object v4, v0

    .line 82
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 83
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 84
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "META-INF/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".RSA"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    move-object v4, v0

    .line 88
    :cond_1
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "META-INF/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".SF"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v3, v0

    .line 92
    :cond_2
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "META-INF/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".MF"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v5, v0

    .line 94
    goto :goto_0

    .line 97
    :cond_3
    if-eqz v4, :cond_4

    if-eqz v3, :cond_4

    if-nez v5, :cond_5

    :cond_4
    move v0, v1

    .line 273
    :goto_1
    return v0

    .line 155
    :cond_5
    invoke-direct {p0, v4}, Lcom/avast/android/mobilesecurity/engine/internal/ab;->a(Ljava/util/zip/ZipEntry;)Ljava/lang/String;

    move-result-object v0

    .line 158
    sget-object v4, Lcom/avast/android/mobilesecurity/engine/internal/g;->a:Lcom/avast/android/mobilesecurity/engine/internal/g;

    iget-object v6, p0, Lcom/avast/android/mobilesecurity/engine/internal/ab;->a:Ljava/util/zip/ZipFile;

    invoke-virtual {v6, v3}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v4, v6, v7}, Lcom/avast/android/mobilesecurity/engine/internal/f;->a(Lcom/avast/android/mobilesecurity/engine/internal/g;Ljava/io/InputStream;I)Ljava/lang/String;

    move-result-object v4

    .line 163
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "3021300906052b0e03021a05000414"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 166
    if-eqz v0, :cond_6

    invoke-virtual {v0, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    move v0, v1

    .line 168
    goto :goto_1

    .line 185
    :cond_7
    invoke-direct {p0, v3}, Lcom/avast/android/mobilesecurity/engine/internal/ab;->c(Ljava/util/zip/ZipEntry;)Lcom/avast/android/mobilesecurity/engine/internal/m;

    move-result-object v6

    .line 188
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/g;->a:Lcom/avast/android/mobilesecurity/engine/internal/g;

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/engine/internal/ab;->a:Ljava/util/zip/ZipFile;

    invoke-virtual {v3, v5}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/avast/android/mobilesecurity/engine/internal/f;->a(Lcom/avast/android/mobilesecurity/engine/internal/g;Ljava/io/InputStream;)[B

    move-result-object v3

    .line 192
    if-eqz v3, :cond_8

    invoke-virtual {v6}, Lcom/avast/android/mobilesecurity/engine/internal/m;->a()[B

    move-result-object v0

    if-eqz v0, :cond_8

    array-length v0, v3

    invoke-virtual {v6}, Lcom/avast/android/mobilesecurity/engine/internal/m;->a()[B

    move-result-object v4

    array-length v4, v4

    if-eq v0, v4, :cond_9

    :cond_8
    move v0, v1

    .line 195
    goto :goto_1

    :cond_9
    move v0, v1

    .line 197
    :goto_2
    array-length v4, v3

    if-ge v0, v4, :cond_b

    .line 198
    aget-byte v4, v3, v0

    invoke-virtual {v6}, Lcom/avast/android/mobilesecurity/engine/internal/m;->a()[B

    move-result-object v7

    aget-byte v7, v7, v0

    if-eq v4, v7, :cond_a

    move v0, v1

    .line 200
    goto :goto_1

    .line 197
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 207
    :cond_b
    new-instance v7, Lcom/avast/android/mobilesecurity/engine/internal/h;

    invoke-direct {v7}, Lcom/avast/android/mobilesecurity/engine/internal/h;-><init>()V

    .line 208
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/engine/internal/ab;->a:Ljava/util/zip/ZipFile;

    invoke-virtual {v3, v5}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 210
    const-string v3, ""

    .line 211
    const-string v0, ""

    .line 212
    const-string v4, ""

    .line 213
    const-string v4, ""

    .line 214
    :cond_c
    :goto_3
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_11

    .line 216
    const-string v5, "Name:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 217
    const-string v3, ":"

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v4, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 218
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\r\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 221
    :cond_d
    const-string v5, "SHA1-Digest:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 222
    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/avast/android/generic/c/b;->a(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v7, v3, v5}, Lcom/avast/android/mobilesecurity/engine/internal/h;->a(Ljava/lang/String;[B)V

    .line 224
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\r\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 227
    :cond_e
    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v4, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 228
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\r\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 229
    sget-object v4, Lcom/avast/android/mobilesecurity/engine/internal/g;->a:Lcom/avast/android/mobilesecurity/engine/internal/g;

    const/4 v5, 0x0

    invoke-static {v4, v0, v5}, Lcom/avast/android/mobilesecurity/engine/internal/f;->a(Lcom/avast/android/mobilesecurity/engine/internal/g;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 231
    const-string v4, ""

    .line 232
    invoke-virtual {v6, v3}, Lcom/avast/android/mobilesecurity/engine/internal/m;->a(Ljava/lang/String;)[B

    move-result-object v9

    if-eqz v9, :cond_c

    move v0, v1

    .line 235
    :goto_4
    invoke-virtual {v6, v3}, Lcom/avast/android/mobilesecurity/engine/internal/m;->a(Ljava/lang/String;)[B

    move-result-object v9

    array-length v9, v9

    if-ge v0, v9, :cond_f

    .line 236
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v6, v3}, Lcom/avast/android/mobilesecurity/engine/internal/m;->a(Ljava/lang/String;)[B

    move-result-object v9

    aget-byte v9, v9, v0

    and-int/lit16 v9, v9, 0xff

    add-int/lit16 v9, v9, 0x100

    const/16 v10, 0x10

    invoke-static {v9, v10}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 235
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 241
    :cond_f
    invoke-virtual {v5, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_10

    move v0, v1

    .line 242
    goto/16 :goto_1

    .line 244
    :cond_10
    const-string v0, ""

    goto/16 :goto_3

    .line 251
    :cond_11
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/engine/internal/ab;->a:Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    .line 252
    :cond_12
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 253
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 254
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "META-INF/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 256
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/avast/android/mobilesecurity/engine/internal/g;->a:Lcom/avast/android/mobilesecurity/engine/internal/g;

    iget-object v6, p0, Lcom/avast/android/mobilesecurity/engine/internal/ab;->a:Ljava/util/zip/ZipFile;

    invoke-virtual {v6, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/avast/android/mobilesecurity/engine/internal/f;->a(Lcom/avast/android/mobilesecurity/engine/internal/g;Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-virtual {v7, v4, v0}, Lcom/avast/android/mobilesecurity/engine/internal/h;->b(Ljava/lang/String;[B)Z
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    if-nez v0, :cond_12

    move v0, v1

    .line 259
    goto/16 :goto_1

    .line 263
    :catch_0
    move-exception v0

    move v0, v1

    .line 265
    goto/16 :goto_1

    .line 266
    :catch_1
    move-exception v0

    move v0, v1

    .line 268
    goto/16 :goto_1

    .line 269
    :catch_2
    move-exception v0

    move v0, v1

    .line 271
    goto/16 :goto_1

    :cond_13
    move v0, v2

    .line 273
    goto/16 :goto_1
.end method
