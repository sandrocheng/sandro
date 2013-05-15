.class public Lcom/avast/android/generic/c/d;
.super Ljava/lang/Object;
.source "JarSigner.java"


# direct methods
.method private static a(Ljava/util/jar/JarFile;)Ljava/lang/String;
    .locals 8
    .parameter

    .prologue
    .line 101
    const-string v0, ""

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Manifest-Version: 1.0\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Created-By: 1.0 (Android SignApk)\r\n\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 105
    const-string v0, "SHA1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 106
    const/16 v0, 0x1000

    new-array v3, v0, [B

    .line 113
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    .line 115
    invoke-virtual {p0}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/JarEntry;

    .line 117
    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 120
    :cond_0
    invoke-virtual {v4}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/JarEntry;

    .line 121
    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v5

    .line 122
    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "META-INF/MANIFEST.MF"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "META-INF/CERT.SF"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "META-INF/CERT.RSA"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 124
    invoke-virtual {p0, v0}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    .line 125
    :goto_2
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_1

    .line 126
    const/4 v7, 0x0

    invoke-virtual {v2, v3, v7, v6}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_2

    .line 129
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SHA1-Digest: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lcom/avast/android/generic/c/b;->a([B)[C

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    :goto_3
    move-object v1, v0

    .line 132
    goto/16 :goto_1

    .line 134
    :cond_2
    return-object v1

    :cond_3
    move-object v0, v1

    goto :goto_3
.end method

.method private static a(Ljava/util/jar/JarFile;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter
    .parameter

    .prologue
    .line 139
    const-string v0, "Signature-Version: 1.0\r\n"

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Created-By: 1.0 (Android SignApk)\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    const-string v1, "SHA1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 143
    const/16 v1, 0x1000

    new-array v3, v1, [B

    .line 146
    const-string v1, "SHA1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 147
    new-instance v5, Ljava/io/PrintStream;

    new-instance v1, Ljava/security/DigestOutputStream;

    new-instance v6, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v6}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-direct {v1, v6, v4}, Ljava/security/DigestOutputStream;-><init>(Ljava/io/OutputStream;Ljava/security/MessageDigest;)V

    const/4 v6, 0x1

    const-string v7, "UTF-8"

    invoke-direct {v5, v1, v6, v7}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    .line 152
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/io/PrintStream;->write([B)V

    .line 153
    invoke-virtual {v5}, Ljava/io/PrintStream;->flush()V

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SHA1-Digest-Manifest: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lcom/avast/android/generic/c/b;->a([B)[C

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 157
    new-instance v6, Ljava/util/TreeMap;

    invoke-direct {v6}, Ljava/util/TreeMap;-><init>()V

    .line 159
    invoke-virtual {p0}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/JarEntry;

    .line 161
    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 164
    :cond_0
    invoke-virtual {v6}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/JarEntry;

    .line 165
    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v7

    .line 166
    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "META-INF/MANIFEST.MF"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "META-INF/CERT.SF"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "META-INF/CERT.RSA"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 169
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Name: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0, v0}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    .line 171
    :goto_2
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v8

    if-lez v8, :cond_1

    .line 172
    const/4 v9, 0x0

    invoke-virtual {v2, v3, v9, v8}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_2

    .line 174
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SHA1-Digest: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v8

    invoke-static {v8}, Lcom/avast/android/generic/c/b;->a([B)[C

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "\r\n\r\n"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "SHA1-Digest: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lcom/avast/android/generic/c/b;->a([B)[C

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    :goto_3
    move-object v1, v0

    .line 179
    goto/16 :goto_1

    .line 181
    :cond_2
    return-object v1

    :cond_3
    move-object v0, v1

    goto :goto_3
.end method

.method private static a(Ljava/io/InputStream;)Ljava/security/cert/X509Certificate;
    .locals 1
    .parameter

    .prologue
    .line 44
    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 45
    invoke-virtual {v0, p0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 45
    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    throw v0
.end method

.method public static a(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)V
    .locals 17
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 231
    const/4 v4, 0x0

    .line 232
    const/4 v5, 0x0

    .line 234
    const/4 v3, 0x0

    .line 238
    :try_start_0
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p3

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 240
    if-nez p4, :cond_4

    .line 242
    const-string v1, "apk"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 252
    :goto_0
    :try_start_1
    new-instance v2, Ljava/io/DataInputStream;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 255
    :try_start_2
    invoke-static {v2}, Lcom/avast/android/generic/c/d;->a(Ljava/io/InputStream;)Ljava/security/cert/X509Certificate;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_e

    move-result-object v8

    .line 258
    const/4 v3, 0x1

    :try_start_3
    new-array v3, v3, [Ljava/io/Closeable;

    const/4 v6, 0x0

    aput-object v2, v3, v6

    invoke-static {v3}, Lcom/avast/android/generic/util/af;->a([Ljava/io/Closeable;)V

    .line 259
    const/4 v3, 0x0

    .line 263
    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-wide v9

    const-wide/32 v11, 0x36ee80

    add-long/2addr v9, v11

    .line 269
    :try_start_4
    new-instance v2, Ljava/io/DataInputStream;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move/from16 v0, p2

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 272
    :try_start_5
    invoke-static {v2}, Lcom/avast/android/generic/c/d;->b(Ljava/io/InputStream;)Ljava/security/PrivateKey;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_d

    move-result-object v11

    .line 275
    const/4 v3, 0x1

    :try_start_6
    new-array v3, v3, [Ljava/io/Closeable;

    const/4 v6, 0x0

    aput-object v2, v3, v6

    invoke-static {v3}, Lcom/avast/android/generic/util/af;->a([Ljava/io/Closeable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 276
    const/4 v3, 0x0

    .line 281
    :try_start_7
    new-instance v6, Ljava/util/jar/JarFile;

    const/4 v2, 0x0

    invoke-direct {v6, v7, v2}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_a

    .line 282
    :try_start_8
    new-instance v4, Ljava/util/jar/JarOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v2}, Ljava/util/jar/JarOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_b

    .line 283
    const/16 v2, 0x9

    :try_start_9
    invoke-virtual {v4, v2}, Ljava/util/jar/JarOutputStream;->setLevel(I)V

    .line 288
    invoke-static {v6}, Lcom/avast/android/generic/c/d;->a(Ljava/util/jar/JarFile;)Ljava/lang/String;

    move-result-object v12

    .line 289
    new-instance v2, Ljava/util/jar/JarEntry;

    const-string v5, "META-INF/MANIFEST.MF"

    invoke-direct {v2, v5}, Ljava/util/jar/JarEntry;-><init>(Ljava/lang/String;)V

    .line 290
    invoke-virtual {v2, v9, v10}, Ljava/util/jar/JarEntry;->setTime(J)V

    .line 291
    invoke-virtual {v4, v2}, Ljava/util/jar/JarOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 292
    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/jar/JarOutputStream;->write([B)V

    .line 294
    const/4 v5, 0x0

    .line 297
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    const/16 v13, 0x11

    if-ge v2, v13, :cond_7

    .line 307
    :try_start_a
    new-instance v2, Lcom/avast/android/generic/c/f;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/security/cert/X509Certificate;

    const/4 v14, 0x0

    aput-object v8, v13, v14

    const-string v14, "SHA1"

    invoke-direct {v2, v11, v13, v14}, Lcom/avast/android/generic/c/f;-><init>(Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1

    .line 319
    :goto_1
    :try_start_b
    invoke-static {v6, v12}, Lcom/avast/android/generic/c/d;->a(Ljava/util/jar/JarFile;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 321
    invoke-static {v13, v2, v11, v8}, Lcom/avast/android/generic/c/d;->a(Ljava/lang/String;Lcom/avast/android/generic/c/e;Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;)[B

    move-result-object v2

    .line 323
    new-instance v8, Ljava/util/jar/JarEntry;

    const-string v14, "META-INF/CERT.SF"

    invoke-direct {v8, v14}, Ljava/util/jar/JarEntry;-><init>(Ljava/lang/String;)V

    .line 324
    invoke-virtual {v8, v9, v10}, Ljava/util/jar/JarEntry;->setTime(J)V

    .line 325
    invoke-virtual {v4, v8}, Ljava/util/jar/JarOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 327
    new-instance v8, Ljava/io/PrintStream;

    const/4 v14, 0x1

    const-string v15, "UTF-8"

    invoke-direct {v8, v4, v14, v15}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    .line 328
    invoke-virtual {v8, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 329
    invoke-virtual {v8}, Ljava/io/PrintStream;->flush()V

    .line 332
    new-instance v8, Ljava/util/jar/JarEntry;

    const-string v13, "META-INF/CERT.RSA"

    invoke-direct {v8, v13}, Ljava/util/jar/JarEntry;-><init>(Ljava/lang/String;)V

    .line 333
    invoke-virtual {v8, v9, v10}, Ljava/util/jar/JarEntry;->setTime(J)V

    .line 334
    invoke-virtual {v4, v8}, Ljava/util/jar/JarOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 336
    invoke-virtual {v4, v2}, Ljava/util/jar/JarOutputStream;->write([B)V

    .line 337
    invoke-virtual {v4}, Ljava/util/jar/JarOutputStream;->flush()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_3

    .line 339
    const/4 v2, 0x1

    .line 346
    :goto_2
    if-nez v2, :cond_0

    .line 353
    :try_start_c
    new-instance v2, Ljava/io/DataInputStream;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v8, Lcom/avast/android/generic/y;->b:I

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 356
    :try_start_d
    invoke-static {v2}, Lcom/avast/android/generic/c/d;->c(Ljava/io/InputStream;)[B
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_c

    move-result-object v3

    .line 359
    const/4 v5, 0x1

    :try_start_e
    new-array v5, v5, [Ljava/io/Closeable;

    const/4 v8, 0x0

    aput-object v2, v5, v8

    invoke-static {v5}, Lcom/avast/android/generic/util/af;->a([Ljava/io/Closeable;)V

    .line 363
    new-instance v2, Lcom/avast/android/generic/c/h;

    invoke-direct {v2}, Lcom/avast/android/generic/c/h;-><init>()V

    .line 364
    invoke-virtual {v2, v11}, Lcom/avast/android/generic/c/h;->a(Ljava/security/PrivateKey;)V

    .line 366
    invoke-static {v6, v12}, Lcom/avast/android/generic/c/d;->a(Ljava/util/jar/JarFile;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 368
    const-string v8, "UTF-8"

    invoke-virtual {v5, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    .line 369
    invoke-virtual {v2, v8}, Lcom/avast/android/generic/c/h;->a([B)V

    .line 370
    invoke-virtual {v2}, Lcom/avast/android/generic/c/h;->a()[B

    move-result-object v2

    .line 372
    new-instance v8, Ljava/util/jar/JarEntry;

    const-string v11, "META-INF/CERT.SF"

    invoke-direct {v8, v11}, Ljava/util/jar/JarEntry;-><init>(Ljava/lang/String;)V

    .line 373
    invoke-virtual {v8, v9, v10}, Ljava/util/jar/JarEntry;->setTime(J)V

    .line 374
    invoke-virtual {v4, v8}, Ljava/util/jar/JarOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 376
    new-instance v8, Ljava/io/PrintStream;

    const/4 v11, 0x1

    const-string v12, "UTF-8"

    invoke-direct {v8, v4, v11, v12}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    .line 377
    invoke-virtual {v8, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 378
    invoke-virtual {v8}, Ljava/io/PrintStream;->flush()V

    .line 381
    new-instance v5, Ljava/util/jar/JarEntry;

    const-string v8, "META-INF/CERT.RSA"

    invoke-direct {v5, v8}, Ljava/util/jar/JarEntry;-><init>(Ljava/lang/String;)V

    .line 382
    invoke-virtual {v5, v9, v10}, Ljava/util/jar/JarEntry;->setTime(J)V

    .line 383
    invoke-virtual {v4, v5}, Ljava/util/jar/JarOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 385
    invoke-virtual {v4, v3}, Ljava/util/jar/JarOutputStream;->write([B)V

    .line 386
    invoke-virtual {v4, v2}, Ljava/util/jar/JarOutputStream;->write([B)V

    .line 388
    invoke-virtual {v4}, Ljava/util/jar/JarOutputStream;->flush()V

    .line 392
    :cond_0
    invoke-static {v6, v4}, Lcom/avast/android/generic/c/d;->a(Ljava/util/jar/JarFile;Ljava/util/jar/JarOutputStream;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 397
    :try_start_f
    invoke-virtual {v6}, Ljava/util/jar/JarFile;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_8

    .line 402
    :goto_3
    const/4 v2, 0x0

    .line 404
    const/4 v3, 0x1

    :try_start_10
    new-array v3, v3, [Ljava/io/Closeable;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v3}, Lcom/avast/android/generic/util/af;->a([Ljava/io/Closeable;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_b

    .line 405
    const/4 v6, 0x0

    .line 406
    const/4 v5, 0x0

    .line 409
    if-nez p4, :cond_1

    .line 411
    :try_start_11
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 412
    invoke-virtual {v1, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_5

    move-result v2

    .line 413
    if-nez v2, :cond_1

    .line 415
    const/4 v2, 0x0

    .line 416
    const/4 v3, 0x0

    .line 420
    :try_start_12
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_4

    .line 421
    :try_start_13
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_c

    .line 422
    :try_start_14
    invoke-static {v2, v4}, Lcom/avast/android/generic/util/ag;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 424
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/io/Closeable;

    const/4 v7, 0x0

    aput-object v2, v3, v7

    const/4 v7, 0x1

    aput-object v4, v3, v7

    invoke-static {v3}, Lcom/avast/android/generic/util/af;->a([Ljava/io/Closeable;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_d

    .line 425
    const/4 v2, 0x0

    .line 426
    const/4 v3, 0x0

    .line 428
    :try_start_15
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_e

    .line 446
    :cond_1
    if-eqz v6, :cond_2

    :try_start_16
    invoke-virtual {v6}, Ljava/util/jar/JarFile;->close()V

    .line 447
    :cond_2
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/util/jar/JarOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_9

    .line 454
    :cond_3
    return-void

    .line 245
    :cond_4
    :try_start_17
    new-instance v1, Ljava/io/File;

    move-object/from16 v0, p4

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_0

    goto/16 :goto_0

    .line 439
    :catch_0
    move-exception v1

    .line 441
    :goto_4
    :try_start_18
    throw v1
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 444
    :catchall_0
    move-exception v1

    .line 446
    :goto_5
    if-eqz v4, :cond_5

    :try_start_19
    invoke-virtual {v4}, Ljava/util/jar/JarFile;->close()V

    .line 447
    :cond_5
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/util/jar/JarOutputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_6

    .line 444
    :cond_6
    throw v1

    .line 258
    :catchall_1
    move-exception v1

    move-object v2, v3

    :goto_6
    const/4 v3, 0x1

    :try_start_1a
    new-array v3, v3, [Ljava/io/Closeable;

    const/4 v6, 0x0

    aput-object v2, v3, v6

    invoke-static {v3}, Lcom/avast/android/generic/util/af;->a([Ljava/io/Closeable;)V

    throw v1

    .line 275
    :catchall_2
    move-exception v1

    move-object v2, v3

    :goto_7
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/io/Closeable;

    const/4 v6, 0x0

    aput-object v2, v3, v6

    invoke-static {v3}, Lcom/avast/android/generic/util/af;->a([Ljava/io/Closeable;)V

    throw v1
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_0

    .line 308
    :catch_1
    move-exception v2

    .line 312
    :try_start_1b
    new-instance v2, Lcom/avast/android/generic/c/g;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/security/cert/X509Certificate;

    const/4 v14, 0x0

    aput-object v8, v13, v14

    const-string v14, "SHA1"

    invoke-direct {v2, v11, v13, v14}, Lcom/avast/android/generic/c/g;-><init>(Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_4
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_2

    goto/16 :goto_1

    .line 313
    :catch_2
    move-exception v2

    .line 315
    :try_start_1c
    new-instance v8, Ljava/lang/Exception;

    invoke-direct {v8, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v8
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_4
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_3

    .line 340
    :catch_3
    move-exception v2

    move v2, v5

    goto/16 :goto_2

    .line 359
    :catchall_3
    move-exception v1

    move-object v2, v3

    :goto_8
    const/4 v3, 0x1

    :try_start_1d
    new-array v3, v3, [Ljava/io/Closeable;

    const/4 v5, 0x0

    aput-object v2, v3, v5

    invoke-static {v3}, Lcom/avast/android/generic/util/af;->a([Ljava/io/Closeable;)V

    throw v1
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_4

    .line 395
    :catchall_4
    move-exception v1

    move-object v2, v4

    move-object v3, v6

    .line 397
    :goto_9
    :try_start_1e
    invoke-virtual {v3}, Ljava/util/jar/JarFile;->close()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_6
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_7

    .line 402
    :goto_a
    const/4 v4, 0x0

    .line 404
    const/4 v3, 0x1

    :try_start_1f
    new-array v3, v3, [Ljava/io/Closeable;

    const/4 v5, 0x0

    aput-object v2, v3, v5

    invoke-static {v3}, Lcom/avast/android/generic/util/af;->a([Ljava/io/Closeable;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_7
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_a

    .line 405
    const/4 v4, 0x0

    .line 406
    const/4 v5, 0x0

    .line 395
    :try_start_20
    throw v1
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_0

    .line 429
    :catch_4
    move-exception v1

    move-object/from16 v16, v3

    move-object v3, v2

    move-object/from16 v2, v16

    .line 431
    :goto_b
    const/4 v4, 0x2

    :try_start_21
    new-array v4, v4, [Ljava/io/Closeable;

    const/4 v7, 0x0

    aput-object v2, v4, v7

    const/4 v2, 0x1

    aput-object v3, v4, v2

    invoke-static {v4}, Lcom/avast/android/generic/util/af;->a([Ljava/io/Closeable;)V

    .line 435
    throw v1
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_5
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_5

    .line 439
    :catch_5
    move-exception v1

    move-object v4, v6

    goto :goto_4

    .line 448
    :catch_6
    move-exception v1

    .line 450
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 451
    throw v1

    .line 398
    :catch_7
    move-exception v3

    goto :goto_a

    :catch_8
    move-exception v2

    goto/16 :goto_3

    .line 448
    :catch_9
    move-exception v1

    .line 450
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 451
    throw v1

    .line 444
    :catchall_5
    move-exception v1

    move-object v4, v6

    goto/16 :goto_5

    :catchall_6
    move-exception v1

    move-object v5, v2

    move-object v4, v3

    goto/16 :goto_5

    :catchall_7
    move-exception v1

    move-object v5, v2

    goto/16 :goto_5

    :catchall_8
    move-exception v1

    move-object v5, v4

    move-object v4, v6

    goto/16 :goto_5

    :catchall_9
    move-exception v1

    move-object v5, v4

    move-object v4, v2

    goto/16 :goto_5

    .line 439
    :catch_a
    move-exception v1

    move-object v5, v2

    goto/16 :goto_4

    :catch_b
    move-exception v1

    move-object v5, v4

    move-object v4, v2

    goto/16 :goto_4

    .line 429
    :catch_c
    move-exception v1

    move-object v2, v3

    move-object v3, v4

    goto :goto_b

    :catch_d
    move-exception v1

    move-object v3, v4

    goto :goto_b

    :catch_e
    move-exception v1

    goto :goto_b

    .line 395
    :catchall_a
    move-exception v1

    move-object v2, v5

    move-object v3, v4

    goto :goto_9

    :catchall_b
    move-exception v1

    move-object v2, v5

    move-object v3, v6

    goto :goto_9

    .line 359
    :catchall_c
    move-exception v1

    goto :goto_8

    .line 275
    :catchall_d
    move-exception v1

    goto/16 :goto_7

    .line 258
    :catchall_e
    move-exception v1

    goto/16 :goto_6

    :cond_7
    move v2, v5

    goto/16 :goto_2
.end method

.method private static a(Ljava/util/jar/JarFile;Ljava/util/jar/JarOutputStream;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 195
    const/16 v0, 0x1000

    new-array v1, v0, [B

    .line 198
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 200
    invoke-virtual {p0}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/JarEntry;

    .line 202
    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 205
    :cond_0
    invoke-virtual {v2}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/jar/JarEntry;

    .line 206
    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v3

    .line 207
    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "META-INF/MANIFEST.MF"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "META-INF/CERT.SF"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "META-INF/CERT.RSA"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 210
    invoke-virtual {p0, v3}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v0

    .line 211
    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->getMethod()I

    move-result v4

    if-nez v4, :cond_2

    .line 213
    new-instance v3, Ljava/util/jar/JarEntry;

    invoke-direct {v3, v0}, Ljava/util/jar/JarEntry;-><init>(Ljava/util/jar/JarEntry;)V

    invoke-virtual {p1, v3}, Ljava/util/jar/JarOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 221
    :goto_2
    invoke-virtual {p0, v0}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v0

    .line 222
    :goto_3
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_3

    .line 223
    const/4 v4, 0x0

    invoke-virtual {p1, v1, v4, v3}, Ljava/util/jar/JarOutputStream;->write([BII)V

    goto :goto_3

    .line 216
    :cond_2
    new-instance v4, Ljava/util/jar/JarEntry;

    invoke-direct {v4, v3}, Ljava/util/jar/JarEntry;-><init>(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->getTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/jar/JarEntry;->setTime(J)V

    .line 218
    invoke-virtual {p1, v4}, Ljava/util/jar/JarOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    goto :goto_2

    .line 225
    :cond_3
    invoke-virtual {p1}, Ljava/util/jar/JarOutputStream;->flush()V

    goto :goto_1

    .line 228
    :cond_4
    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/avast/android/generic/c/e;Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;)[B
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 189
    invoke-interface {p1, p0}, Lcom/avast/android/generic/c/e;->a(Ljava/lang/String;)[B

    move-result-object v0

    .line 191
    return-object v0
.end method

.method private static b(Ljava/io/InputStream;)Ljava/security/PrivateKey;
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 53
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 55
    const/16 v2, 0x2710

    :try_start_0
    new-array v2, v2, [B

    .line 57
    :goto_0
    rsub-int v3, v0, 0x2710

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/DataInputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 59
    add-int/2addr v0, v3

    goto :goto_0

    .line 62
    :cond_0
    new-array v3, v0, [B

    .line 63
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v4, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    new-instance v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v0, v3}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :try_start_1
    const-string v2, "RSA"

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 74
    :goto_1
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 71
    return-object v0

    .line 70
    :catch_0
    move-exception v2

    .line 71
    :try_start_2
    const-string v2, "DSA"

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_1

    .line 74
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    throw v0
.end method

.method private static c(Ljava/io/InputStream;)[B
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 80
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, p0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 82
    const/16 v2, 0x2710

    :try_start_0
    new-array v2, v2, [B

    .line 84
    :goto_0
    rsub-int v3, v0, 0x2710

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/DataInputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 86
    add-int/2addr v0, v3

    goto :goto_0

    .line 89
    :cond_0
    new-array v3, v0, [B

    .line 90
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v4, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 93
    return-object v3

    .line 95
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    throw v0
.end method
