.class public final Lcom/ijinshan/kinghelper/a/j;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final a:[B

.field private static final b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 190
    const-string v0, "kinsoft_ijinshan"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lking/org/apache/commons/codec/digest/DigestUtils;->md5([B)[B

    move-result-object v0

    sput-object v0, Lcom/ijinshan/kinghelper/a/j;->a:[B

    .line 191
    const-string v0, "ijinshan_sync_compress"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lking/org/apache/commons/codec/digest/DigestUtils;->md5([B)[B

    move-result-object v0

    sput-object v0, Lcom/ijinshan/kinghelper/a/j;->b:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()J
    .locals 4

    .prologue
    .line 63
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/os/StatFs;

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 361
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 362
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 363
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 99
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    const-string v0, ""

    .line 120
    :goto_0
    return-object v0

    .line 103
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    const-string v0, ""

    goto :goto_0

    .line 107
    :cond_1
    invoke-static {p1}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x4

    if-le v1, v3, :cond_2

    sget-object v1, Lcom/ijinshan/kinghelper/a/e;->c:Landroid/net/Uri;

    :goto_1
    invoke-static {v1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 111
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_3

    .line 114
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 115
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    const-string v1, "display_name"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 117
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    .line 118
    goto :goto_0

    .line 110
    :cond_2
    sget-object v1, Landroid/provider/Contacts$People;->CONTENT_FILTER_URI:Landroid/net/Uri;

    goto :goto_1

    :cond_3
    move-object v0, v2

    .line 120
    goto :goto_0

    :cond_4
    move-object v1, v2

    goto :goto_2
.end method

.method private static a([B)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    .line 367
    const-string v0, ""

    .line 371
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 373
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 374
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 376
    const/4 v3, 0x0

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 377
    aget-byte v4, v1, v3

    and-int/lit16 v4, v4, 0xff

    .line 378
    const/16 v5, 0x10

    if-ge v4, v5, :cond_0

    .line 379
    const-string v5, "0"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 380
    :cond_0
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 376
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 382
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 386
    :goto_1
    return-object v0

    .line 383
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_1
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 79
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 80
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 81
    const/16 v2, 0x200

    new-array v2, v2, [B

    .line 83
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    .line 84
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    const-string v1, "zy>>Utils>>copyAssertToFile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v5

    .line 92
    :goto_1
    return v0

    .line 86
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 87
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 88
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 89
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static a(Ljava/io/File;Ljava/io/File;)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 250
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v6

    .line 284
    :goto_0
    return v0

    .line 255
    :cond_1
    :try_start_0
    sget-object v0, Lcom/ijinshan/kinghelper/a/j;->a:[B

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    .line 256
    new-array v1, v0, [B

    .line 257
    new-array v2, v0, [B

    .line 258
    sget-object v3, Lcom/ijinshan/kinghelper/a/j;->a:[B

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 259
    sget-object v3, Lcom/ijinshan/kinghelper/a/j;->a:[B

    const/4 v4, 0x0

    invoke-static {v3, v0, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 261
    const-string v0, "DES"

    invoke-static {v0}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v0

    new-instance v3, Ljavax/crypto/spec/DESKeySpec;

    invoke-direct {v3, v1}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    invoke-virtual {v0, v3}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v0

    .line 262
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 264
    const-string v2, "DES/CBC/PKCS5Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 265
    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 267
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 268
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 269
    new-instance v3, Ljavax/crypto/CipherInputStream;

    invoke-direct {v3, v0, v2}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    .line 271
    sget-object v2, Lcom/ijinshan/kinghelper/a/j;->b:[B

    const/4 v4, 0x0

    sget-object v5, Lcom/ijinshan/kinghelper/a/j;->b:[B

    array-length v5, v5

    invoke-virtual {v1, v2, v4, v5}, Ljava/util/zip/GZIPOutputStream;->write([BII)V

    .line 272
    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 274
    :goto_1
    invoke-virtual {v3, v2}, Ljavax/crypto/CipherInputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_2

    .line 275
    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5, v4}, Ljava/util/zip/GZIPOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 282
    :catch_0
    move-exception v0

    .line 283
    const-string v1, "Utils>>encryptFile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "des failer:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v6

    .line 284
    goto :goto_0

    .line 277
    :cond_2
    :try_start_1
    invoke-virtual {v3}, Ljavax/crypto/CipherInputStream;->close()V

    .line 278
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 279
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v7

    .line 281
    goto/16 :goto_0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 446
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const-string v0, "125201"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 451
    :goto_0
    return v0

    .line 448
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x13

    if-ne v0, v1, :cond_1

    const-string v0, "125200261"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    .line 449
    goto :goto_0

    .line 451
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a([B[B)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 334
    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_0

    move v0, v3

    .line 338
    :goto_0
    return v0

    :cond_0
    move v0, v3

    .line 335
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 336
    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    if-eq v1, v2, :cond_1

    move v0, v3

    goto :goto_0

    .line 335
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 338
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static a([C[B)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 347
    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_0

    move v0, v3

    .line 351
    :goto_0
    return v0

    :cond_0
    move v0, v3

    .line 348
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 349
    aget-char v1, p0, v0

    aget-byte v2, p1, v0

    if-eq v1, v2, :cond_1

    move v0, v3

    goto :goto_0

    .line 348
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 351
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)I
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 144
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v6

    .line 159
    :goto_0
    return v0

    .line 148
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v6

    .line 149
    goto :goto_0

    .line 153
    :cond_1
    sget-object v0, Landroid/provider/CallLog$Calls;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 154
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v6

    const-string v3, "type=2"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 155
    if-eqz v0, :cond_2

    .line 156
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 157
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v6

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)J
    .locals 5
    .parameter

    .prologue
    .line 70
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v1, v1

    .line 72
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v3, v0

    .line 73
    mul-long v0, v3, v1

    return-wide v0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 390
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 391
    if-nez p0, :cond_0

    .line 392
    const-string v0, "-1"

    .line 396
    :goto_0
    return-object v0

    .line 393
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 394
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 395
    const-string v0, "-1"

    goto :goto_0

    .line 396
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static b()Z
    .locals 2

    .prologue
    .line 458
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 459
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static b(Ljava/io/File;Ljava/io/File;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 291
    :try_start_0
    sget-object v0, Lcom/ijinshan/kinghelper/a/j;->a:[B

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    .line 292
    new-array v1, v0, [B

    .line 293
    new-array v2, v0, [B

    .line 294
    sget-object v3, Lcom/ijinshan/kinghelper/a/j;->a:[B

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 295
    sget-object v3, Lcom/ijinshan/kinghelper/a/j;->a:[B

    const/4 v4, 0x0

    invoke-static {v3, v0, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 297
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v0, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 298
    const-string v2, "DES"

    invoke-static {v2}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v2

    new-instance v3, Ljavax/crypto/spec/DESKeySpec;

    invoke-direct {v3, v1}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    invoke-virtual {v2, v3}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 300
    const-string v2, "DES/CBC/PKCS5Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    .line 301
    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 303
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .line 304
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 305
    new-instance v3, Ljavax/crypto/CipherOutputStream;

    invoke-direct {v3, v1, v2}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .line 306
    sget-object v2, Lcom/ijinshan/kinghelper/a/j;->b:[B

    array-length v2, v2

    new-array v2, v2, [B

    .line 307
    const/4 v4, 0x0

    sget-object v5, Lcom/ijinshan/kinghelper/a/j;->b:[B

    array-length v5, v5

    invoke-virtual {v0, v2, v4, v5}, Ljava/io/InputStream;->read([BII)I

    .line 309
    sget-object v4, Lcom/ijinshan/kinghelper/a/j;->b:[B

    invoke-static {v2, v4}, Lcom/ijinshan/kinghelper/a/j;->a([B[B)Z

    move-result v4

    if-nez v4, :cond_0

    .line 310
    const/4 v4, 0x0

    array-length v5, v2

    invoke-virtual {v3, v2, v4, v5}, Ljavax/crypto/CipherOutputStream;->write([BII)V

    .line 312
    :cond_0
    const/16 v2, 0x400

    new-array v2, v2, [B

    .line 314
    :goto_0
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-ltz v4, :cond_1

    .line 315
    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5, v4}, Ljavax/crypto/CipherOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 321
    :catch_0
    move-exception v0

    .line 322
    const-string v1, "Utils>>decryptFile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "des failer:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v6

    .line 323
    :goto_1
    return v0

    .line 317
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Ljavax/crypto/CipherOutputStream;->close()V

    .line 318
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 319
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 320
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)I
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 164
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v7

    .line 186
    :goto_0
    return v0

    .line 168
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isGlobalPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v7

    .line 169
    goto :goto_0

    .line 173
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Landroid/a/t;->a(Landroid/content/ContentResolver;)Landroid/database/Cursor;

    move-result-object v0

    .line 174
    if-eqz v0, :cond_6

    .line 175
    const-string v1, "address"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 176
    const-string v2, "type"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move v3, v7

    .line 177
    :cond_2
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 178
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 179
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 180
    invoke-static {v5}, Landroid/a/t;->a(I)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v4}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    move v4, v7

    :goto_2
    if-eqz v4, :cond_2

    .line 181
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 180
    :cond_4
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_2

    .line 184
    :cond_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v3

    goto :goto_0

    :cond_6
    move v0, v7

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter

    .prologue
    .line 194
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    const-string v0, ""

    .line 220
    :goto_0
    return-object v0

    .line 197
    :cond_0
    invoke-static {p0}, Lking/org/apache/commons/codec/binary/Base64;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v0

    .line 198
    if-nez v0, :cond_1

    .line 199
    const-string v0, ""

    goto :goto_0

    .line 202
    :cond_1
    :try_start_0
    sget-object v1, Lcom/ijinshan/kinghelper/a/j;->a:[B

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    .line 203
    new-array v2, v1, [B

    .line 204
    new-array v3, v1, [B

    .line 205
    sget-object v4, Lcom/ijinshan/kinghelper/a/j;->a:[B

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v2, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 206
    sget-object v4, Lcom/ijinshan/kinghelper/a/j;->a:[B

    const/4 v5, 0x0

    invoke-static {v4, v1, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 208
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 209
    const-string v3, "DES"

    invoke-static {v3}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v3

    new-instance v4, Ljavax/crypto/spec/DESKeySpec;

    invoke-direct {v4, v2}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    invoke-virtual {v3, v4}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v2

    .line 211
    const-string v3, "DES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 212
    const/4 v4, 0x2

    invoke-virtual {v3, v4, v2, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 213
    invoke-virtual {v3, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 218
    if-nez v0, :cond_2

    .line 219
    const-string v0, ""

    goto :goto_0

    .line 214
    :catch_0
    move-exception v0

    .line 215
    const-string v1, "Utils>>decrypt"

    const-string v2, "des failer:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 216
    const-string v0, ""

    goto :goto_0

    .line 220
    :cond_2
    invoke-static {v0}, Lking/org/apache/commons/codec/binary/StringUtils;->newStringUtf8([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 3
    .parameter

    .prologue
    .line 403
    const-string v0, "IsNetworkAvailable"

    const-string v1, "begin"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 405
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 406
    const-string v1, "IsNetworkAvailable"

    const-string v2, "end"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static d(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x4

    const/4 v2, 0x0

    .line 126
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-le v0, v6, :cond_0

    sget-object v0, Lcom/ijinshan/kinghelper/a/e;->c:Landroid/net/Uri;

    .line 127
    :goto_0
    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 128
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 129
    if-eqz v0, :cond_2

    .line 131
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 133
    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 134
    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-le v2, v6, :cond_1

    sget-object v2, Lcom/ijinshan/kinghelper/a/e;->d:Landroid/net/Uri;

    :goto_1
    invoke-static {v2, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 136
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    .line 139
    :goto_3
    return-object v0

    .line 126
    :cond_0
    sget-object v0, Landroid/provider/Contacts$Phones;->CONTENT_FILTER_URL:Landroid/net/Uri;

    goto :goto_0

    .line 134
    :cond_1
    sget-object v2, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_1

    :cond_2
    move-object v0, v2

    .line 139
    goto :goto_3

    :cond_3
    move-object v1, v2

    goto :goto_2
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter

    .prologue
    .line 224
    if-nez p0, :cond_0

    .line 225
    const/4 v0, 0x0

    .line 245
    :goto_0
    return-object v0

    .line 226
    :cond_0
    invoke-static {p0}, Lking/org/apache/commons/codec/binary/StringUtils;->getBytesUtf8(Ljava/lang/String;)[B

    move-result-object v0

    .line 229
    :try_start_0
    sget-object v1, Lcom/ijinshan/kinghelper/a/j;->a:[B

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    .line 230
    new-array v2, v1, [B

    .line 231
    new-array v3, v1, [B

    .line 232
    sget-object v4, Lcom/ijinshan/kinghelper/a/j;->a:[B

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v2, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 233
    sget-object v4, Lcom/ijinshan/kinghelper/a/j;->a:[B

    const/4 v5, 0x0

    invoke-static {v4, v1, v3, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 235
    const-string v1, "DES"

    invoke-static {v1}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v1

    new-instance v4, Ljavax/crypto/spec/DESKeySpec;

    invoke-direct {v4, v2}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    invoke-virtual {v1, v4}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 236
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 238
    const-string v3, "DES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    .line 239
    const/4 v4, 0x1

    invoke-virtual {v3, v4, v1, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 240
    invoke-virtual {v3, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 245
    invoke-static {v0}, Lking/org/apache/commons/codec/binary/Base64;->encodeBase64String([B)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\+"

    const-string v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\/"

    const-string v2, "_"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 241
    :catch_0
    move-exception v0

    .line 242
    const-string v1, "Utils>>encrypt"

    const-string v2, "des failer:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 243
    const-string v0, ""

    goto :goto_0
.end method

.method private static d(Landroid/content/Context;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 414
    const-string v0, "IsNetworkAvailable"

    const-string v1, "begin"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 416
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 417
    const-string v1, "IsNetworkAvailable"

    const-string v2, "end"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-ne v0, v3, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static e(Ljava/lang/String;)Z
    .locals 4
    .parameter

    .prologue
    .line 429
    const-string v0, "IsFileExist"

    const-string v1, "begin"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 433
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 434
    const/4 v0, 0x0

    .line 439
    :goto_0
    const-string v1, "IsFileExist"

    const-string v2, "end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    return v0

    .line 436
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static f(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 465
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    move v0, v2

    .line 482
    :goto_0
    return v0

    .line 468
    :cond_0
    const-string v0, "10"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 469
    goto :goto_0

    .line 470
    :cond_1
    const-string v0, "12"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 473
    invoke-static {p0}, Lcom/ijinshan/kinghelper/a/j;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    .line 474
    goto :goto_0

    :cond_2
    move v0, v1

    .line 476
    goto :goto_0

    .line 477
    :cond_3
    const-string v0, "9"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 478
    goto :goto_0

    .line 479
    :cond_4
    const-string v0, "4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    .line 480
    goto :goto_0

    :cond_5
    move v0, v2

    .line 482
    goto :goto_0
.end method
