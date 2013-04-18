.class public Lking/org/apache/commons/codec/digest/DigestUtils;
.super Ljava/lang/Object;
.source "DigestUtils.java"


# static fields
.field private static final STREAM_BUFFER_LENGTH:I = 0x400


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static digest(Ljava/security/MessageDigest;Ljava/io/InputStream;)[B
    .locals 4
    .parameter
    .parameter

    .prologue
    const/16 v3, 0x400

    const/4 v2, 0x0

    .line 52
    new-array v0, v3, [B

    .line 53
    invoke-virtual {p1, v0, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 55
    :goto_0
    if-ltz v1, :cond_0

    .line 56
    invoke-virtual {p0, v0, v2, v1}, Ljava/security/MessageDigest;->update([BII)V

    .line 57
    invoke-virtual {p1, v0, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    return-object v0
.end method

.method private static getBytesUtf8(Ljava/lang/String;)[B
    .locals 1
    .parameter

    .prologue
    .line 71
    invoke-static {p0}, Lking/org/apache/commons/codec/binary/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method static getDigest(Ljava/lang/String;)Ljava/security/MessageDigest;
    .locals 2
    .parameter

    .prologue
    .line 89
    :try_start_0
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static getMd5Digest()Ljava/security/MessageDigest;
    .locals 1

    .prologue
    .line 103
    const-string v0, "MD5"

    invoke-static {v0}, Lking/org/apache/commons/codec/digest/DigestUtils;->getDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0
.end method

.method private static getSha256Digest()Ljava/security/MessageDigest;
    .locals 1

    .prologue
    .line 117
    const-string v0, "SHA-256"

    invoke-static {v0}, Lking/org/apache/commons/codec/digest/DigestUtils;->getDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0
.end method

.method private static getSha384Digest()Ljava/security/MessageDigest;
    .locals 1

    .prologue
    .line 131
    const-string v0, "SHA-384"

    invoke-static {v0}, Lking/org/apache/commons/codec/digest/DigestUtils;->getDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0
.end method

.method private static getSha512Digest()Ljava/security/MessageDigest;
    .locals 1

    .prologue
    .line 145
    const-string v0, "SHA-512"

    invoke-static {v0}, Lking/org/apache/commons/codec/digest/DigestUtils;->getDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0
.end method

.method private static getShaDigest()Ljava/security/MessageDigest;
    .locals 1

    .prologue
    .line 156
    const-string v0, "SHA"

    invoke-static {v0}, Lking/org/apache/commons/codec/digest/DigestUtils;->getDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0
.end method

.method public static md5(Ljava/io/InputStream;)[B
    .locals 1
    .parameter

    .prologue
    .line 181
    invoke-static {}, Lking/org/apache/commons/codec/digest/DigestUtils;->getMd5Digest()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-static {v0, p0}, Lking/org/apache/commons/codec/digest/DigestUtils;->digest(Ljava/security/MessageDigest;Ljava/io/InputStream;)[B

    move-result-object v0

    return-object v0
.end method

.method public static md5(Ljava/lang/String;)[B
    .locals 1
    .parameter

    .prologue
    .line 192
    invoke-static {p0}, Lking/org/apache/commons/codec/digest/DigestUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lking/org/apache/commons/codec/digest/DigestUtils;->md5([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static md5([B)[B
    .locals 1
    .parameter

    .prologue
    .line 167
    invoke-static {}, Lking/org/apache/commons/codec/digest/DigestUtils;->getMd5Digest()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static md5Hex(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 217
    invoke-static {p0}, Lking/org/apache/commons/codec/digest/DigestUtils;->md5(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-static {v0}, Lking/org/apache/commons/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static md5Hex(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 228
    invoke-static {p0}, Lking/org/apache/commons/codec/digest/DigestUtils;->md5(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lking/org/apache/commons/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static md5Hex([B)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 203
    invoke-static {p0}, Lking/org/apache/commons/codec/digest/DigestUtils;->md5([B)[B

    move-result-object v0

    invoke-static {v0}, Lking/org/apache/commons/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sha(Ljava/io/InputStream;)[B
    .locals 1
    .parameter

    .prologue
    .line 253
    invoke-static {}, Lking/org/apache/commons/codec/digest/DigestUtils;->getShaDigest()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-static {v0, p0}, Lking/org/apache/commons/codec/digest/DigestUtils;->digest(Ljava/security/MessageDigest;Ljava/io/InputStream;)[B

    move-result-object v0

    return-object v0
.end method

.method public static sha(Ljava/lang/String;)[B
    .locals 1
    .parameter

    .prologue
    .line 264
    invoke-static {p0}, Lking/org/apache/commons/codec/digest/DigestUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lking/org/apache/commons/codec/digest/DigestUtils;->sha([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static sha([B)[B
    .locals 1
    .parameter

    .prologue
    .line 239
    invoke-static {}, Lking/org/apache/commons/codec/digest/DigestUtils;->getShaDigest()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static sha256(Ljava/io/InputStream;)[B
    .locals 1
    .parameter

    .prologue
    .line 296
    invoke-static {}, Lking/org/apache/commons/codec/digest/DigestUtils;->getSha256Digest()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-static {v0, p0}, Lking/org/apache/commons/codec/digest/DigestUtils;->digest(Ljava/security/MessageDigest;Ljava/io/InputStream;)[B

    move-result-object v0

    return-object v0
.end method

.method public static sha256(Ljava/lang/String;)[B
    .locals 1
    .parameter

    .prologue
    .line 311
    invoke-static {p0}, Lking/org/apache/commons/codec/digest/DigestUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lking/org/apache/commons/codec/digest/DigestUtils;->sha256([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static sha256([B)[B
    .locals 1
    .parameter

    .prologue
    .line 279
    invoke-static {}, Lking/org/apache/commons/codec/digest/DigestUtils;->getSha256Digest()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static sha256Hex(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 343
    invoke-static {p0}, Lking/org/apache/commons/codec/digest/DigestUtils;->sha256(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-static {v0}, Lking/org/apache/commons/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sha256Hex(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 358
    invoke-static {p0}, Lking/org/apache/commons/codec/digest/DigestUtils;->sha256(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lking/org/apache/commons/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sha256Hex([B)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 326
    invoke-static {p0}, Lking/org/apache/commons/codec/digest/DigestUtils;->sha256([B)[B

    move-result-object v0

    invoke-static {v0}, Lking/org/apache/commons/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sha384(Ljava/io/InputStream;)[B
    .locals 1
    .parameter

    .prologue
    .line 390
    invoke-static {}, Lking/org/apache/commons/codec/digest/DigestUtils;->getSha384Digest()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-static {v0, p0}, Lking/org/apache/commons/codec/digest/DigestUtils;->digest(Ljava/security/MessageDigest;Ljava/io/InputStream;)[B

    move-result-object v0

    return-object v0
.end method

.method public static sha384(Ljava/lang/String;)[B
    .locals 1
    .parameter

    .prologue
    .line 405
    invoke-static {p0}, Lking/org/apache/commons/codec/digest/DigestUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lking/org/apache/commons/codec/digest/DigestUtils;->sha384([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static sha384([B)[B
    .locals 1
    .parameter

    .prologue
    .line 373
    invoke-static {}, Lking/org/apache/commons/codec/digest/DigestUtils;->getSha384Digest()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static sha384Hex(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 437
    invoke-static {p0}, Lking/org/apache/commons/codec/digest/DigestUtils;->sha384(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-static {v0}, Lking/org/apache/commons/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sha384Hex(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 452
    invoke-static {p0}, Lking/org/apache/commons/codec/digest/DigestUtils;->sha384(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lking/org/apache/commons/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sha384Hex([B)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 420
    invoke-static {p0}, Lking/org/apache/commons/codec/digest/DigestUtils;->sha384([B)[B

    move-result-object v0

    invoke-static {v0}, Lking/org/apache/commons/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sha512(Ljava/io/InputStream;)[B
    .locals 1
    .parameter

    .prologue
    .line 484
    invoke-static {}, Lking/org/apache/commons/codec/digest/DigestUtils;->getSha512Digest()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-static {v0, p0}, Lking/org/apache/commons/codec/digest/DigestUtils;->digest(Ljava/security/MessageDigest;Ljava/io/InputStream;)[B

    move-result-object v0

    return-object v0
.end method

.method public static sha512(Ljava/lang/String;)[B
    .locals 1
    .parameter

    .prologue
    .line 499
    invoke-static {p0}, Lking/org/apache/commons/codec/digest/DigestUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lking/org/apache/commons/codec/digest/DigestUtils;->sha512([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static sha512([B)[B
    .locals 1
    .parameter

    .prologue
    .line 467
    invoke-static {}, Lking/org/apache/commons/codec/digest/DigestUtils;->getSha512Digest()Ljava/security/MessageDigest;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    return-object v0
.end method

.method public static sha512Hex(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 531
    invoke-static {p0}, Lking/org/apache/commons/codec/digest/DigestUtils;->sha512(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-static {v0}, Lking/org/apache/commons/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sha512Hex(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 546
    invoke-static {p0}, Lking/org/apache/commons/codec/digest/DigestUtils;->sha512(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lking/org/apache/commons/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sha512Hex([B)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 514
    invoke-static {p0}, Lking/org/apache/commons/codec/digest/DigestUtils;->sha512([B)[B

    move-result-object v0

    invoke-static {v0}, Lking/org/apache/commons/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static shaHex(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 571
    invoke-static {p0}, Lking/org/apache/commons/codec/digest/DigestUtils;->sha(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-static {v0}, Lking/org/apache/commons/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static shaHex(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 582
    invoke-static {p0}, Lking/org/apache/commons/codec/digest/DigestUtils;->sha(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lking/org/apache/commons/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static shaHex([B)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 557
    invoke-static {p0}, Lking/org/apache/commons/codec/digest/DigestUtils;->sha([B)[B

    move-result-object v0

    invoke-static {v0}, Lking/org/apache/commons/codec/binary/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
