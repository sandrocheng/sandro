.class public final Lcom/tencent/feedback/common/f;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(J)J
    .locals 2
    .parameter

    .prologue
    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "serverTimeGap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->a(Ljava/lang/String;)V

    .line 122
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    add-long/2addr v0, p0

    .line 124
    return-wide v0
.end method

.method public static a(ILcom/tencent/feedback/common/CommonInfo;[BBB)Lcommon/RequestPackage;
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 447
    const-string v1, "Utils.encode2RequestPackage() start"

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    .line 448
    if-nez p1, :cond_0

    .line 481
    :goto_0
    return-object v0

    .line 453
    :cond_0
    :try_start_0
    new-instance v1, Lcommon/RequestPackage;

    invoke-direct {v1}, Lcommon/RequestPackage;-><init>()V

    .line 455
    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    :try_start_1
    invoke-virtual {p1}, Lcom/tencent/feedback/common/CommonInfo;->getHardware_os()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcommon/RequestPackage;->e(Ljava/lang/String;)V

    .line 458
    invoke-virtual {p1}, Lcom/tencent/feedback/common/CommonInfo;->getPlatformId()B

    move-result v2

    invoke-virtual {v1, v2}, Lcommon/RequestPackage;->a(B)V

    .line 459
    invoke-virtual {p1}, Lcom/tencent/feedback/common/CommonInfo;->getProductId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcommon/RequestPackage;->a(Ljava/lang/String;)V

    .line 460
    invoke-virtual {p1}, Lcom/tencent/feedback/common/CommonInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcommon/RequestPackage;->b(Ljava/lang/String;)V

    .line 461
    invoke-virtual {p1}, Lcom/tencent/feedback/common/CommonInfo;->getSdkId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcommon/RequestPackage;->c(Ljava/lang/String;)V

    .line 462
    invoke-virtual {p1}, Lcom/tencent/feedback/common/CommonInfo;->getSdkVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcommon/RequestPackage;->d(Ljava/lang/String;)V

    .line 463
    invoke-virtual {p1}, Lcom/tencent/feedback/common/CommonInfo;->getUserid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcommon/RequestPackage;->f(Ljava/lang/String;)V

    .line 464
    invoke-virtual {p1}, Lcom/tencent/feedback/common/CommonInfo;->getUUId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcommon/RequestPackage;->g(Ljava/lang/String;)V

    .line 465
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 467
    :try_start_2
    invoke-virtual {v1, p0}, Lcommon/RequestPackage;->a(I)V

    .line 468
    invoke-virtual {v1, p4}, Lcommon/RequestPackage;->b(B)V

    .line 469
    invoke-virtual {v1, p3}, Lcommon/RequestPackage;->c(B)V

    .line 471
    if-nez p2, :cond_1

    .line 473
    const-string v2, ""

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    .line 475
    :cond_1
    invoke-virtual {v1, p2}, Lcommon/RequestPackage;->a([B)V

    .line 477
    const-string v2, "Utils.encode2RequestPackage() end"

    invoke-static {v2}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    move-object v0, v1

    .line 478
    goto :goto_0

    .line 465
    :catchall_0
    move-exception v1

    monitor-exit p1

    throw v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 479
    :catch_0
    move-exception v1

    .line 480
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static a([B)Ljava/lang/Object;
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 177
    const-string v1, "Utils.deSerializable() start"

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    .line 179
    if-eqz p0, :cond_0

    array-length v1, p0

    if-gez v1, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-object v0

    .line 182
    :cond_1
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 188
    :try_start_0
    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 189
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_7

    move-result-object v0

    .line 199
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 207
    :goto_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 214
    :goto_2
    const-string v1, "Utils.deSerializable() end"

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 202
    :catch_0
    move-exception v1

    .line 203
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 210
    :catch_1
    move-exception v1

    .line 211
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 191
    :catch_2
    move-exception v1

    move-object v2, v0

    .line 193
    :goto_3
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 194
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->b(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 195
    if-eqz v2, :cond_2

    .line 201
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 207
    :cond_2
    :goto_4
    :try_start_6
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 214
    :goto_5
    const-string v1, "Utils.deSerializable() end"

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 202
    :catch_3
    move-exception v1

    .line 203
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 210
    :catch_4
    move-exception v1

    .line 211
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 199
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_6
    if-eqz v2, :cond_3

    .line 201
    :try_start_7
    invoke-virtual {v2}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 207
    :cond_3
    :goto_7
    :try_start_8
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 214
    :goto_8
    const-string v1, "Utils.deSerializable() end"

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    throw v0

    .line 202
    :catch_5
    move-exception v1

    .line 203
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 210
    :catch_6
    move-exception v1

    .line 211
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 199
    :catchall_1
    move-exception v0

    goto :goto_6

    .line 191
    :catch_7
    move-exception v1

    goto :goto_3
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "U["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 101
    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 59
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-object v0

    .line 64
    :cond_1
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 74
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 75
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    if-nez v1, :cond_2

    const-string v0, ""

    goto :goto_0

    .line 69
    :catch_0
    move-exception v1

    .line 71
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_2
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_4

    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/lang/Object;)[B
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 130
    const-string v1, "Utils.getSerializableData() start"

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    .line 132
    if-eqz p0, :cond_0

    const-class v1, Ljava/io/Serializable;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 133
    :cond_0
    const-string v1, "object == null or is not serializable!"

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->b(Ljava/lang/String;)V

    .line 172
    :goto_0
    return-object v0

    .line 137
    :cond_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 142
    :try_start_0
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 143
    :try_start_1
    invoke-virtual {v2, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 144
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V

    .line 146
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_7

    move-result-object v0

    .line 157
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 165
    :goto_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 172
    :goto_2
    const-string v1, "Utils.getSerializableData() end"

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 160
    :catch_0
    move-exception v1

    .line 161
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 168
    :catch_1
    move-exception v1

    .line 169
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 148
    :catch_2
    move-exception v1

    move-object v2, v0

    .line 150
    :goto_3
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 151
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->b(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 153
    if-eqz v2, :cond_2

    .line 159
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 165
    :cond_2
    :goto_4
    :try_start_6
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 172
    :goto_5
    const-string v1, "Utils.getSerializableData() end"

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 160
    :catch_3
    move-exception v1

    .line 161
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 168
    :catch_4
    move-exception v1

    .line 169
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 157
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_6
    if-eqz v2, :cond_3

    .line 159
    :try_start_7
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 165
    :cond_3
    :goto_7
    :try_start_8
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 172
    :goto_8
    const-string v1, "Utils.getSerializableData() end"

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    throw v0

    .line 160
    :catch_5
    move-exception v1

    .line 161
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 168
    :catch_6
    move-exception v1

    .line 169
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 157
    :catchall_1
    move-exception v0

    goto :goto_6

    .line 148
    :catch_7
    move-exception v1

    goto :goto_3
.end method

.method private static a([BI)[B
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 391
    const-string v1, "RQDUploadImp.zipDatas() start "

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    .line 393
    if-eqz p0, :cond_0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 413
    :cond_0
    :goto_0
    return-object p0

    .line 396
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zipType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dataslength: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    .line 402
    :try_start_0
    invoke-static {p1}, Lmqq/sdet/server/compress/a;->a(I)Lmqq/sdet/server/compress/CompressInterface;

    move-result-object v1

    .line 403
    if-nez v1, :cond_2

    move-object p0, v0

    .line 404
    goto :goto_0

    .line 406
    :cond_2
    invoke-interface {v1, p0}, Lmqq/sdet/server/compress/CompressInterface;->a([B)[B

    move-result-object p0

    .line 407
    const-string v1, "RQDUploadImp.zipDatas() end"

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 410
    :catch_0
    move-exception v1

    .line 411
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 412
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uncompress wrong"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->b(Ljava/lang/String;)V

    move-object p0, v0

    .line 413
    goto :goto_0
.end method

.method public static a([BIILjava/lang/String;)[B
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 487
    const-string v1, "Utils.encodeDatasByZipAndEncry() start"

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    .line 488
    if-nez p0, :cond_0

    .line 500
    :goto_0
    return-object v0

    .line 491
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Lcom/tencent/feedback/common/f;->a([BI)[B

    move-result-object v1

    .line 493
    invoke-static {v1, p2, p3}, Lcom/tencent/feedback/common/f;->a([BILjava/lang/String;)[B

    move-result-object v1

    .line 495
    const-string v2, "Utils.encodeDatasByZipAndEncry() end"

    invoke-static {v2}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 496
    goto :goto_0

    .line 497
    :catch_0
    move-exception v1

    .line 498
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 499
    const-string v1, "zip or encry fail!"

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a([BILjava/lang/String;)[B
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 333
    const-string v1, "RQDUploadImp.encryDatas() start "

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    .line 335
    if-eqz p0, :cond_0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 356
    :cond_0
    :goto_0
    return-object p0

    .line 338
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encryType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dataslength: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    .line 343
    :try_start_0
    invoke-static {p1}, Lmqq/sdet/server/a/a;->a(I)Lmqq/sdet/server/a/b;

    move-result-object v1

    .line 344
    if-nez v1, :cond_2

    move-object p0, v0

    .line 345
    goto :goto_0

    .line 347
    :cond_2
    invoke-virtual {v1, p2}, Lmqq/sdet/server/a/b;->a(Ljava/lang/String;)V

    .line 348
    invoke-virtual {v1, p0}, Lmqq/sdet/server/a/b;->b([B)[B

    move-result-object p0

    .line 350
    const-string v1, "RQDUploadImp.encryDatas() end "

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 353
    :catch_0
    move-exception v1

    .line 354
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 355
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encry wrong"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->b(Ljava/lang/String;)V

    move-object p0, v0

    .line 356
    goto :goto_0
.end method

.method private static b([BI)[B
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 419
    const-string v1, "RQDUploadImp.unzipDatas() start "

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    .line 421
    if-eqz p0, :cond_0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 441
    :cond_0
    :goto_0
    return-object p0

    .line 424
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "zipType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dataslength: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    .line 430
    :try_start_0
    invoke-static {p1}, Lmqq/sdet/server/compress/a;->a(I)Lmqq/sdet/server/compress/CompressInterface;

    move-result-object v1

    .line 431
    if-nez v1, :cond_2

    move-object p0, v0

    .line 432
    goto :goto_0

    .line 434
    :cond_2
    invoke-interface {v1, p0}, Lmqq/sdet/server/compress/CompressInterface;->b([B)[B

    move-result-object p0

    .line 435
    const-string v1, "RQDUploadImp.unzipDatas() end"

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 438
    :catch_0
    move-exception v1

    .line 439
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 440
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uncompress wrong"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->b(Ljava/lang/String;)V

    move-object p0, v0

    .line 441
    goto :goto_0
.end method

.method public static b([BIILjava/lang/String;)[B
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 505
    const-string v0, "Utils.decodeDatasByUnZipAndUnEncry() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    .line 508
    :try_start_0
    invoke-static {p0, p2, p3}, Lcom/tencent/feedback/common/f;->b([BILjava/lang/String;)[B

    move-result-object v0

    .line 510
    invoke-static {v0, p1}, Lcom/tencent/feedback/common/f;->b([BI)[B

    move-result-object v0

    .line 511
    const-string v1, "Utils.decodeDatasByUnZipAndUnEncry() end"

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    :goto_0
    return-object v0

    .line 513
    :catch_0
    move-exception v0

    .line 514
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 515
    const-string v0, "unzip or unencry fail!"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->b(Ljava/lang/String;)V

    .line 516
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b([BILjava/lang/String;)[B
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 362
    const-string v1, "RQDUploadImp.unencryDatas() start "

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    .line 364
    if-eqz p0, :cond_0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    .line 385
    :cond_0
    :goto_0
    return-object p0

    .line 367
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encryType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dataslength: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    .line 372
    :try_start_0
    invoke-static {p1}, Lmqq/sdet/server/a/a;->a(I)Lmqq/sdet/server/a/b;

    move-result-object v1

    .line 373
    if-nez v1, :cond_2

    move-object p0, v0

    .line 374
    goto :goto_0

    .line 376
    :cond_2
    invoke-virtual {v1, p2}, Lmqq/sdet/server/a/b;->a(Ljava/lang/String;)V

    .line 377
    invoke-virtual {v1, p0}, Lmqq/sdet/server/a/b;->a([B)[B

    move-result-object p0

    .line 379
    const-string v1, "RQDUploadImp.unencryDatas() end "

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 382
    :catch_0
    move-exception v1

    .line 383
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 384
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unencry wrong"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->b(Ljava/lang/String;)V

    move-object p0, v0

    .line 385
    goto :goto_0
.end method
