.class public final Lcom/jxphone/b/b/a;
.super Ljava/lang/Object;
.source "AESHepler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/io/FileInputStream;Ljavax/crypto/CipherOutputStream;)Ljava/io/IOException;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 115
    const/4 v0, 0x0

    .line 117
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    :try_start_1
    invoke-virtual {p1}, Ljavax/crypto/CipherOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 127
    :cond_1
    :goto_1
    return-object v0

    .line 118
    :catch_0
    move-exception v0

    goto :goto_0

    .line 124
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;Ljava/io/File;)Ljava/io/InputStream;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 38
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/jxphone/b/b/a;->a(Ljava/lang/String;I)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 39
    new-instance v1, Ljavax/crypto/CipherInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2, v0}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    return-object v1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 62
    invoke-static {p0, v6}, Lcom/jxphone/b/b/a;->a(Ljava/lang/String;I)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 63
    const-string v1, "utf8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 64
    array-length v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-byte v4, v0, v3

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v6, :cond_0

    const/16 v5, 0x30

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a([B)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    .line 74
    array-length v0, p0

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 76
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 77
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 78
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    const/16 v4, 0x30

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 81
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;I)Ljavax/crypto/Cipher;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 97
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 98
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const/4 v2, 0x0

    const/16 v3, 0x10

    const-string v4, "AES"

    invoke-direct {v1, v0, v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BIILjava/lang/String;)V

    .line 99
    const-string v2, "AES/CBC/PKCS5Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 100
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    const/16 v4, 0x10

    const/16 v5, 0x10

    invoke-direct {v3, v0, v4, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([BII)V

    .line 101
    invoke-virtual {v2, p1, v1, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_3

    .line 102
    return-object v2

    .line 103
    :catch_0
    move-exception v0

    .line 104
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 105
    :catch_1
    move-exception v0

    .line 106
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 107
    :catch_2
    move-exception v0

    .line 108
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 109
    :catch_3
    move-exception v0

    .line 110
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static a(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 30
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/jxphone/b/b/a;->a(Ljava/lang/String;Ljava/io/File;Ljava/io/File;I)V

    .line 31
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/io/File;Ljava/io/File;I)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 43
    .line 46
    :try_start_0
    invoke-static {p0, p3}, Lcom/jxphone/b/b/a;->a(Ljava/lang/String;I)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 47
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 48
    :try_start_1
    new-instance v2, Ljavax/crypto/CipherOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3, v0}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 50
    const/16 v0, 0x400

    :try_start_2
    new-array v0, v0, [B

    .line 52
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    if-ltz v3, :cond_0

    .line 53
    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Ljavax/crypto/CipherOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 56
    :catchall_0
    move-exception v0

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    :goto_1
    invoke-static {v2, v1}, Lcom/jxphone/b/b/a;->a(Ljava/io/FileInputStream;Ljavax/crypto/CipherOutputStream;)Ljava/io/IOException;

    move-result-object v1

    .line 57
    if-eqz v1, :cond_1

    throw v1

    .line 56
    :cond_0
    invoke-static {v1, v2}, Lcom/jxphone/b/b/a;->a(Ljava/io/FileInputStream;Ljavax/crypto/CipherOutputStream;)Ljava/io/IOException;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_2

    throw v0

    .line 58
    :cond_1
    throw v0

    :cond_2
    return-void

    .line 56
    :catchall_1
    move-exception v0

    move-object v1, v4

    move-object v2, v4

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v2, v1

    move-object v1, v4

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;)[B
    .locals 7
    .parameter

    .prologue
    const/16 v6, 0x10

    .line 85
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 86
    new-array v1, v0, [B

    .line 87
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 88
    mul-int/lit8 v3, v2, 0x2

    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 89
    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    mul-int/lit8 v5, v2, 0x2

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    .line 90
    mul-int/lit8 v3, v3, 0x10

    add-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 87
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 92
    :cond_0
    return-object v1
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/16 v7, 0x10

    .line 68
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/jxphone/b/b/a;->a(Ljava/lang/String;I)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 69
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    new-array v2, v1, [B

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    mul-int/lit8 v4, v3, 0x2

    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v5, v5, 0x1

    mul-int/lit8 v6, v3, 0x2

    add-int/lit8 v6, v6, 0x2

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    mul-int/lit8 v4, v4, 0x10

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 70
    new-instance v1, Ljava/lang/String;

    const-string v2, "utf8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method private static b(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 34
    const/4 v0, 0x2

    invoke-static {p0, p1, p2, v0}, Lcom/jxphone/b/b/a;->a(Ljava/lang/String;Ljava/io/File;Ljava/io/File;I)V

    .line 35
    return-void
.end method
