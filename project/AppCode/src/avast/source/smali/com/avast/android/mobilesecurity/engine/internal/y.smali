.class public Lcom/avast/android/mobilesecurity/engine/internal/y;
.super Ljava/lang/Object;
.source "VpsUpdater.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:[B

.field private static final c:[B

.field private static final d:[B

.field private static final e:[B

.field private static final f:[B

.field private static final g:Ljava/lang/String;

.field private static final h:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x80

    .line 90
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/y;->b:[B

    .line 92
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/y;->c:[B

    .line 125
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/y;->d:[B

    .line 158
    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/y;->e:[B

    .line 166
    new-array v0, v1, [B

    fill-array-data v0, :array_4

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/y;->f:[B

    .line 199
    const-string v0, "utmp"

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/y;->a:Ljava/lang/String;

    .line 201
    const-string v0, "vps_v2_info.vpx"

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/internal/y;->g:Ljava/lang/String;

    .line 203
    const/16 v0, 0xf0

    sput v0, Lcom/avast/android/mobilesecurity/engine/internal/y;->h:I

    .line 204
    return-void

    .line 90
    :array_0
    .array-data 0x1
        0x41t
        0x53t
        0x57t
        0x53t
        0x69t
        0x67t
        0x6et
        0x64t
    .end array-data

    .line 92
    :array_1
    .array-data 0x1
        0x10t
        0x3ct
        0x1t
        0xbct
        0x95t
        0x75t
        0x20t
        0xebt
        0x21t
        0xe1t
        0x64t
        0x12t
        0x89t
        0x2t
        0xb3t
        0x2at
        0x3et
        0xd8t
        0xcct
        0xft
        0x12t
        0x5ct
        0x9bt
        0xb2t
        0x12t
        0xft
        0xe0t
        0xbat
        0x1et
        0xcbt
        0x82t
        0xdbt
        0xbbt
        0x2ft
        0x8et
        0xc7t
        0x8ct
        0x4ct
        0x3t
        0xbt
        0x34t
        0x32t
        0x21t
        0xc0t
        0xddt
        0x65t
        0x2at
        0x3et
        0x72t
        0xcet
        0x30t
        0x6ct
        0xbct
        0x85t
        0x9et
        0x29t
        0x5dt
        0xdet
        0x2at
        0x1t
        0xdet
        0xdct
        0x89t
        0xe6t
        0xet
        0xc1t
        0xa9t
        0x6ft
        0x6dt
        0x88t
        0x1at
        0xadt
        0x5bt
        0x6t
        0x83t
        0x5bt
        0x56t
        0xe3t
        0x13t
        0x2at
        0x5at
        0x61t
        0xbt
        0x91t
        0x11t
        0x4bt
        0x1dt
        0x12t
        0x94t
        0x73t
        0x59t
        0xd3t
        0x3at
        0x6ft
        0x83t
        0xa4t
        0x56t
        0x41t
        0x93t
        0x59t
        0x8ct
        0xf3t
        0x4at
        0xe8t
        0x67t
        0xe3t
        0x26t
        0xe7t
        0x85t
        0xfct
        0x8dt
        0xe5t
        0xf7t
        0x88t
        0x2dt
        0x8et
        0x48t
        0x20t
        0x4bt
        0xa1t
        0xcdt
        0x58t
        0x8ct
        0x4et
        0xb4t
        0x1dt
        0x97t
        0xf9t
    .end array-data

    .line 125
    :array_2
    .array-data 0x1
        0xd0t
        0x0t
        0x16t
        0x17t
        0x7dt
        0x94t
        0x2ct
        0xdet
        0x3et
        0xf2t
        0x53t
        0x13t
        0x95t
        0x75t
        0x5ft
        0xect
        0xd0t
        0xeft
        0xd7t
        0x3t
        0x38t
        0x21t
        0xdet
        0x4ct
        0x45t
        0x1dt
        0x30t
        0x2t
        0x3dt
        0xf6t
        0x9ft
        0x33t
        0xbft
        0xfdt
        0xf4t
        0x45t
        0xe4t
        0x4dt
        0x31t
        0x54t
        0xd6t
        0x12t
        0x10t
        0x99t
        0xbet
        0x94t
        0x36t
        0x7dt
        0xcat
        0x54t
        0x6et
        0x83t
        0xf0t
        0x70t
        0x2t
        0x9ft
        0x6et
        0x34t
        0x22t
        0x22t
        0xabt
        0xfat
        0x2t
        0xe3t
        0x63t
        0x1ct
        0xb2t
        0x7dt
        0x9ct
        0x3et
        0xf5t
        0x64t
        0x62t
        0xd9t
        0xcdt
        0x30t
        0xc1t
        0x9dt
        0x4at
        0xeet
        0x33t
        0xa4t
        0xb5t
        0xd2t
        0x1bt
        0xbet
        0xa1t
        0x77t
        0x9bt
        0x5bt
        0x7ft
        0x9ct
        0xa4t
        0x7bt
        0x12t
        0x75t
        0x21t
        0x66t
        0x7at
        0xb3t
        0x6ft
        0xaat
        0xfat
        0xbt
        0xadt
        0x95t
        0xa2t
        0x1t
        0xedt
        0x8ft
        0x25t
        0xa9t
        0x8ft
        0xe4t
        0xe5t
        0xaat
        0x73t
        0xa1t
        0x36t
        0xe8t
        0x67t
        0x83t
        0x6at
        0x33t
        0x14t
        0x4et
        0xd5t
        0x99t
    .end array-data

    .line 158
    :array_3
    .array-data 0x1
        0xadt
        0x53t
        0x19t
        0x5t
        0x4bt
        0xd2t
        0x9at
        0x20t
        0x42t
        0x5t
        0xbat
        0x31t
        0x1et
        0xe3t
        0x8ct
        0xd7t
        0x33t
        0xect
        0x60t
        0x7dt
    .end array-data

    .line 166
    :array_4
    .array-data 0x1
        0x32t
        0x21t
        0xbt
        0xbet
        0x3bt
        0x69t
        0x18t
        0xabt
        0x9ft
        0xedt
        0xcdt
        0x8at
        0x33t
        0x83t
        0xebt
        0x62t
        0xa1t
        0x5t
        0x48t
        0xc3t
        0x67t
        0xcct
        0xeat
        0x3et
        0xd6t
        0xdbt
        0xdct
        0x81t
        0xbt
        0x46t
        0x78t
        0x7ct
        0x2at
        0x3et
        0x91t
        0x2ct
        0xb4t
        0x15t
        0x3bt
        0x84t
        0x51t
        0xbct
        0x88t
        0x34t
        0x5dt
        0xet
        0xa2t
        0x7dt
        0x7dt
        0x94t
        0x99t
        0xdbt
        0x62t
        0xa1t
        0x96t
        0x4ft
        0x6bt
        0x27t
        0x3et
        0x7ct
        0xaft
        0xf5t
        0x54t
        0x63t
        0xc8t
        0xedt
        0x83t
        0x68t
        0xb7t
        0x26t
        0xdft
        0x4bt
        0xddt
        0x2dt
        0xa2t
        0x2bt
        0x18t
        0xb5t
        0xdbt
        0x54t
        0x19t
        0x66t
        0x99t
        0xbdt
        0xat
        0xebt
        0x9t
        0x46t
        0xbdt
        0x24t
        0x2et
        0x4at
        0x86t
        0x91t
        0xebt
        0x1ct
        0xd1t
        0x59t
        0x37t
        0x3bt
        0x2at
        0x3et
        0x52t
        0xf0t
        0x8et
        0x16t
        0xdt
        0xat
        0x89t
        0x92t
        0x24t
        0x46t
        0x10t
        0xeet
        0xcat
        0xdat
        0xd6t
        0x97t
        0x60t
        0x94t
        0xf0t
        0xb1t
        0xf7t
        0x57t
        0x62t
        0x77t
        0xd5t
        0xebt
    .end array-data
.end method

.method public static a(Landroid/content/Context;)Lcom/avast/android/mobilesecurity/engine/ad;
    .locals 14
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 219
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/avast/android/mobilesecurity/engine/internal/n;->c(Landroid/content/Context;Ljava/lang/Integer;)Lcom/avast/android/mobilesecurity/engine/y;

    move-result-object v0

    .line 221
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/y;->a()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v6

    .line 222
    const-string v0, "avdroid"

    invoke-static {v0}, Landroid/b/a/a;->a(Ljava/lang/String;)Landroid/b/a/a;

    move-result-object v9

    .line 223
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/internal/y;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 224
    const/4 v4, 0x0

    .line 225
    const/4 v2, 0x0

    .line 226
    const/4 v0, 0x0

    .line 227
    new-instance v1, Lcom/avast/android/mobilesecurity/engine/ad;

    invoke-direct {v1}, Lcom/avast/android/mobilesecurity/engine/ad;-><init>()V

    .line 229
    :try_start_0
    invoke-virtual {v9, v3}, Landroid/b/a/a;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_31

    move-result-object v3

    .line 230
    if-nez v3, :cond_4

    .line 231
    :try_start_1
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 444
    :catch_0
    move-exception v2

    move-object v2, v3

    move-object v3, v4

    .line 445
    :goto_0
    :try_start_2
    sget-object v4, Lcom/avast/android/mobilesecurity/engine/ae;->d:Lcom/avast/android/mobilesecurity/engine/ae;

    iput-object v4, v1, Lcom/avast/android/mobilesecurity/engine/ad;->a:Lcom/avast/android/mobilesecurity/engine/ae;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 454
    if-eqz v3, :cond_0

    .line 456
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    .line 460
    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 462
    :try_start_4
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2f

    .line 466
    :cond_1
    :goto_2
    if-eqz v0, :cond_2

    .line 468
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    .line 472
    :cond_2
    :goto_3
    if-eqz v9, :cond_3

    .line 473
    invoke-virtual {v9}, Landroid/b/a/a;->a()V

    :cond_3
    move-object v0, v1

    .line 446
    :goto_4
    return-object v0

    .line 233
    :cond_4
    :try_start_6
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 234
    if-nez v2, :cond_9

    .line 235
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 454
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_5
    if-eqz v4, :cond_5

    .line 456
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 460
    :cond_5
    :goto_6
    if-eqz v3, :cond_6

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 462
    :try_start_8
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_30

    .line 466
    :cond_6
    :goto_7
    if-eqz v2, :cond_7

    .line 468
    :try_start_9
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 472
    :cond_7
    :goto_8
    if-eqz v9, :cond_8

    .line 473
    invoke-virtual {v9}, Landroid/b/a/a;->a()V

    .line 454
    :cond_8
    throw v0

    .line 237
    :cond_9
    :try_start_a
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    move-result-object v4

    .line 238
    const/4 v2, 0x0

    .line 239
    :try_start_b
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v7

    const-wide/16 v10, 0x0

    cmp-long v5, v7, v10

    if-lez v5, :cond_52

    .line 240
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v7

    long-to-int v2, v7

    .line 241
    int-to-long v7, v2

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v10

    cmp-long v5, v7, v10

    if-eqz v5, :cond_52

    .line 242
    const/4 v2, 0x0

    move v5, v2

    .line 246
    :goto_9
    if-lez v5, :cond_a

    .line 247
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    .line 252
    :goto_a
    const/16 v0, 0x1000

    :try_start_c
    new-array v0, v0, [B

    .line 254
    :goto_b
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-ltz v5, :cond_b

    .line 255
    const/4 v7, 0x0

    invoke-virtual {v2, v0, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1

    goto :goto_b

    .line 444
    :catch_1
    move-exception v0

    move-object v0, v2

    move-object v2, v3

    move-object v3, v4

    goto/16 :goto_0

    .line 249
    :cond_a
    :try_start_d
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2

    goto :goto_a

    .line 444
    :catch_2
    move-exception v2

    move-object v2, v3

    move-object v3, v4

    goto/16 :goto_0

    .line 257
    :cond_b
    :try_start_e
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 258
    array-length v0, v5

    sget-object v7, Lcom/avast/android/mobilesecurity/engine/internal/y;->b:[B

    array-length v7, v7

    add-int/lit8 v7, v7, 0x28

    if-ge v0, v7, :cond_10

    .line 259
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/ae;->f:Lcom/avast/android/mobilesecurity/engine/ae;

    iput-object v0, v1, Lcom/avast/android/mobilesecurity/engine/ad;->a:Lcom/avast/android/mobilesecurity/engine/ae;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_1

    .line 454
    if-eqz v4, :cond_c

    .line 456
    :try_start_f
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8

    .line 460
    :cond_c
    :goto_c
    if-eqz v3, :cond_d

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 462
    :try_start_10
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_2e

    .line 466
    :cond_d
    :goto_d
    if-eqz v2, :cond_e

    .line 468
    :try_start_11
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_9

    .line 472
    :cond_e
    :goto_e
    if-eqz v9, :cond_f

    .line 473
    invoke-virtual {v9}, Landroid/b/a/a;->a()V

    :cond_f
    move-object v0, v1

    .line 260
    goto/16 :goto_4

    .line 262
    :cond_10
    :try_start_12
    array-length v0, v5

    sget-object v7, Lcom/avast/android/mobilesecurity/engine/internal/y;->b:[B

    array-length v7, v7

    sub-int/2addr v0, v7

    :goto_f
    array-length v7, v5

    if-ge v0, v7, :cond_16

    .line 263
    aget-byte v7, v5, v0

    sget-object v8, Lcom/avast/android/mobilesecurity/engine/internal/y;->b:[B

    array-length v10, v5

    sget-object v11, Lcom/avast/android/mobilesecurity/engine/internal/y;->b:[B

    array-length v11, v11

    sub-int/2addr v10, v11

    sub-int v10, v0, v10

    aget-byte v8, v8, v10

    if-eq v7, v8, :cond_15

    .line 266
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/ae;->e:Lcom/avast/android/mobilesecurity/engine/ae;

    iput-object v0, v1, Lcom/avast/android/mobilesecurity/engine/ad;->a:Lcom/avast/android/mobilesecurity/engine/ae;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_1

    .line 454
    if-eqz v4, :cond_11

    .line 456
    :try_start_13
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_a

    .line 460
    :cond_11
    :goto_10
    if-eqz v3, :cond_12

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 462
    :try_start_14
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_2d

    .line 466
    :cond_12
    :goto_11
    if-eqz v2, :cond_13

    .line 468
    :try_start_15
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_b

    .line 472
    :cond_13
    :goto_12
    if-eqz v9, :cond_14

    .line 473
    invoke-virtual {v9}, Landroid/b/a/a;->a()V

    :cond_14
    move-object v0, v1

    .line 267
    goto/16 :goto_4

    .line 262
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 271
    :cond_16
    :try_start_16
    array-length v0, v5

    sget-object v7, Lcom/avast/android/mobilesecurity/engine/internal/y;->b:[B

    array-length v7, v7

    sub-int/2addr v0, v7

    add-int/lit8 v0, v0, -0x28

    if-gez v0, :cond_1b

    .line 272
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/ae;->f:Lcom/avast/android/mobilesecurity/engine/ae;

    iput-object v0, v1, Lcom/avast/android/mobilesecurity/engine/ad;->a:Lcom/avast/android/mobilesecurity/engine/ae;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_1

    .line 454
    if-eqz v4, :cond_17

    .line 456
    :try_start_17
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_c

    .line 460
    :cond_17
    :goto_13
    if-eqz v3, :cond_18

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 462
    :try_start_18
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_2c

    .line 466
    :cond_18
    :goto_14
    if-eqz v2, :cond_19

    .line 468
    :try_start_19
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_d

    .line 472
    :cond_19
    :goto_15
    if-eqz v9, :cond_1a

    .line 473
    invoke-virtual {v9}, Landroid/b/a/a;->a()V

    :cond_1a
    move-object v0, v1

    .line 273
    goto/16 :goto_4

    .line 276
    :cond_1b
    const/16 v0, 0x28

    :try_start_1a
    new-array v0, v0, [B

    .line 277
    array-length v7, v5

    sget-object v8, Lcom/avast/android/mobilesecurity/engine/internal/y;->b:[B

    array-length v8, v8

    sub-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x28

    const/4 v8, 0x0

    const/16 v10, 0x28

    invoke-static {v5, v7, v0, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 279
    array-length v0, v5

    sget-object v7, Lcom/avast/android/mobilesecurity/engine/internal/y;->b:[B

    array-length v7, v7

    sub-int/2addr v0, v7

    add-int/lit8 v0, v0, -0x28

    new-array v0, v0, [B

    .line 281
    const/4 v7, 0x0

    const/4 v8, 0x0

    array-length v10, v5

    sget-object v11, Lcom/avast/android/mobilesecurity/engine/internal/y;->b:[B

    array-length v11, v11

    sub-int/2addr v10, v11

    add-int/lit8 v10, v10, -0x28

    invoke-static {v5, v7, v0, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 345
    invoke-static {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/o;->a([B)Lcom/avast/android/mobilesecurity/engine/internal/a/o;

    move-result-object v0

    .line 346
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/o;->d()Z

    move-result v5

    if-nez v5, :cond_20

    .line 347
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/ae;->f:Lcom/avast/android/mobilesecurity/engine/ae;

    iput-object v0, v1, Lcom/avast/android/mobilesecurity/engine/ad;->a:Lcom/avast/android/mobilesecurity/engine/ae;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_1

    .line 454
    if-eqz v4, :cond_1c

    .line 456
    :try_start_1b
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_e

    .line 460
    :cond_1c
    :goto_16
    if-eqz v3, :cond_1d

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 462
    :try_start_1c
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_2b

    .line 466
    :cond_1d
    :goto_17
    if-eqz v2, :cond_1e

    .line 468
    :try_start_1d
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_f

    .line 472
    :cond_1e
    :goto_18
    if-eqz v9, :cond_1f

    .line 473
    invoke-virtual {v9}, Landroid/b/a/a;->a()V

    :cond_1f
    move-object v0, v1

    .line 348
    goto/16 :goto_4

    .line 350
    :cond_20
    :try_start_1e
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/o;->e()Lcom/avast/android/mobilesecurity/engine/internal/a/q;

    move-result-object v0

    .line 351
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/q;->d()Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/q;->f()Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/q;->b()Z

    move-result v5

    if-nez v5, :cond_26

    .line 353
    :cond_21
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/ae;->f:Lcom/avast/android/mobilesecurity/engine/ae;

    iput-object v0, v1, Lcom/avast/android/mobilesecurity/engine/ad;->a:Lcom/avast/android/mobilesecurity/engine/ae;
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_2
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_1

    .line 454
    if-eqz v4, :cond_22

    .line 456
    :try_start_1f
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_10

    .line 460
    :cond_22
    :goto_19
    if-eqz v3, :cond_23

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 462
    :try_start_20
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_2a

    .line 466
    :cond_23
    :goto_1a
    if-eqz v2, :cond_24

    .line 468
    :try_start_21
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_11

    .line 472
    :cond_24
    :goto_1b
    if-eqz v9, :cond_25

    .line 473
    invoke-virtual {v9}, Landroid/b/a/a;->a()V

    :cond_25
    move-object v0, v1

    .line 354
    goto/16 :goto_4

    .line 358
    :cond_26
    :try_start_22
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/q;->c()Ljava/lang/String;

    move-result-object v5

    const-string v7, "-"

    const-string v8, ""

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 359
    const-string v7, "-"

    const-string v8, ""

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_2
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_1

    move-result-object v5

    .line 362
    :try_start_23
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_2
    .catch Ljava/lang/NumberFormatException; {:try_start_23 .. :try_end_23} :catch_3
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_1

    move-result-object v5

    .line 369
    const/4 v7, 0x0

    :try_start_24
    invoke-static {p0, v7}, Lcom/avast/android/mobilesecurity/engine/i;->a(Landroid/content/Context;Ljava/lang/Integer;)Lcom/avast/android/mobilesecurity/engine/al;

    move-result-object v7

    .line 371
    if-eqz v7, :cond_2f

    .line 372
    iget-object v7, v7, Lcom/avast/android/mobilesecurity/engine/al;->a:Ljava/lang/String;

    const-string v8, "-"

    const-string v10, ""

    invoke-virtual {v7, v8, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 374
    const-string v8, "-"

    const-string v10, ""

    invoke-virtual {v7, v8, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 375
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 377
    invoke-virtual {v5, v7}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v5

    if-gtz v5, :cond_2f

    .line 378
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/ae;->b:Lcom/avast/android/mobilesecurity/engine/ae;

    iput-object v0, v1, Lcom/avast/android/mobilesecurity/engine/ad;->a:Lcom/avast/android/mobilesecurity/engine/ae;
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_2
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_1

    .line 454
    if-eqz v4, :cond_27

    .line 456
    :try_start_25
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_14

    .line 460
    :cond_27
    :goto_1c
    if-eqz v3, :cond_28

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 462
    :try_start_26
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_28

    .line 466
    :cond_28
    :goto_1d
    if-eqz v2, :cond_29

    .line 468
    :try_start_27
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_15

    .line 472
    :cond_29
    :goto_1e
    if-eqz v9, :cond_2a

    .line 473
    invoke-virtual {v9}, Landroid/b/a/a;->a()V

    :cond_2a
    move-object v0, v1

    .line 379
    goto/16 :goto_4

    .line 364
    :catch_3
    move-exception v0

    .line 365
    :try_start_28
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/ae;->f:Lcom/avast/android/mobilesecurity/engine/ae;

    iput-object v0, v1, Lcom/avast/android/mobilesecurity/engine/ad;->a:Lcom/avast/android/mobilesecurity/engine/ae;
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_2
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_28} :catch_1

    .line 454
    if-eqz v4, :cond_2b

    .line 456
    :try_start_29
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_29} :catch_12

    .line 460
    :cond_2b
    :goto_1f
    if-eqz v3, :cond_2c

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 462
    :try_start_2a
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2a} :catch_29

    .line 466
    :cond_2c
    :goto_20
    if-eqz v2, :cond_2d

    .line 468
    :try_start_2b
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2b} :catch_13

    .line 472
    :cond_2d
    :goto_21
    if-eqz v9, :cond_2e

    .line 473
    invoke-virtual {v9}, Landroid/b/a/a;->a()V

    :cond_2e
    move-object v0, v1

    .line 366
    goto/16 :goto_4

    .line 384
    :cond_2f
    :try_start_2c
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/s;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/q;->g()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4c

    .line 387
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/s;->a()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 389
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/q;->g()Ljava/lang/String;

    move-result-object v0

    const-string v5, "_"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 391
    const/4 v0, 0x0

    move v8, v0

    :goto_22
    array-length v0, v10

    if-ge v8, v0, :cond_47

    .line 392
    aget-object v0, v10, v8

    const-string v5, "-"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 394
    array-length v5, v0

    const/4 v6, 0x2

    if-ge v5, v6, :cond_51

    .line 395
    aget-object v0, v10, v8

    const-string v5, "-"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 397
    :goto_23
    array-length v0, v7

    const/4 v5, 0x2

    if-ge v0, v5, :cond_34

    .line 398
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/ae;->g:Lcom/avast/android/mobilesecurity/engine/ae;

    iput-object v0, v1, Lcom/avast/android/mobilesecurity/engine/ad;->a:Lcom/avast/android/mobilesecurity/engine/ae;
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2c} :catch_1

    .line 454
    if-eqz v4, :cond_30

    .line 456
    :try_start_2d
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_2d} :catch_16

    .line 460
    :cond_30
    :goto_24
    if-eqz v3, :cond_31

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 462
    :try_start_2e
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_2e} :catch_27

    .line 466
    :cond_31
    :goto_25
    if-eqz v2, :cond_32

    .line 468
    :try_start_2f
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_2f} :catch_17

    .line 472
    :cond_32
    :goto_26
    if-eqz v9, :cond_33

    .line 473
    invoke-virtual {v9}, Landroid/b/a/a;->a()V

    :cond_33
    move-object v0, v1

    .line 399
    goto/16 :goto_4

    .line 401
    :cond_34
    const/4 v5, 0x0

    .line 402
    const/4 v0, 0x0

    move v6, v0

    move v0, v5

    :goto_27
    :try_start_30
    array-length v5, v11

    if-ge v6, v5, :cond_41

    .line 403
    aget-object v5, v11, v6

    const-string v12, "-"

    invoke-virtual {v5, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 405
    array-length v12, v5

    const/4 v13, 0x2

    if-ge v12, v13, :cond_35

    .line 406
    aget-object v5, v11, v8

    const-string v12, "-"

    invoke-virtual {v5, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 408
    :cond_35
    array-length v12, v5

    const/4 v13, 0x2

    if-ge v12, v13, :cond_3a

    .line 409
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/ae;->g:Lcom/avast/android/mobilesecurity/engine/ae;

    iput-object v0, v1, Lcom/avast/android/mobilesecurity/engine/ad;->a:Lcom/avast/android/mobilesecurity/engine/ae;
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_2
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_30} :catch_1

    .line 454
    if-eqz v4, :cond_36

    .line 456
    :try_start_31
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_31} :catch_18

    .line 460
    :cond_36
    :goto_28
    if-eqz v3, :cond_37

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 462
    :try_start_32
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_32} :catch_26

    .line 466
    :cond_37
    :goto_29
    if-eqz v2, :cond_38

    .line 468
    :try_start_33
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_33} :catch_19

    .line 472
    :cond_38
    :goto_2a
    if-eqz v9, :cond_39

    .line 473
    invoke-virtual {v9}, Landroid/b/a/a;->a()V

    :cond_39
    move-object v0, v1

    .line 410
    goto/16 :goto_4

    .line 412
    :cond_3a
    const/4 v12, 0x0

    :try_start_34
    aget-object v12, v5, v12

    const/4 v13, 0x0

    aget-object v13, v7, v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_40

    .line 414
    const/4 v0, 0x1

    aget-object v0, v5, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 416
    const/4 v5, 0x1

    aget-object v5, v7, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    if-lez v0, :cond_3f

    .line 418
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/ae;->c:Lcom/avast/android/mobilesecurity/engine/ae;

    iput-object v0, v1, Lcom/avast/android/mobilesecurity/engine/ad;->a:Lcom/avast/android/mobilesecurity/engine/ae;
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_2
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_34} :catch_1

    .line 454
    if-eqz v4, :cond_3b

    .line 456
    :try_start_35
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_35} :catch_1a

    .line 460
    :cond_3b
    :goto_2b
    if-eqz v3, :cond_3c

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 462
    :try_start_36
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_36} :catch_25

    .line 466
    :cond_3c
    :goto_2c
    if-eqz v2, :cond_3d

    .line 468
    :try_start_37
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_37} :catch_1b

    .line 472
    :cond_3d
    :goto_2d
    if-eqz v9, :cond_3e

    .line 473
    invoke-virtual {v9}, Landroid/b/a/a;->a()V

    :cond_3e
    move-object v0, v1

    .line 419
    goto/16 :goto_4

    .line 421
    :cond_3f
    const/4 v0, 0x1

    .line 402
    :cond_40
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto/16 :goto_27

    .line 428
    :cond_41
    if-nez v0, :cond_46

    .line 429
    :try_start_38
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/ae;->c:Lcom/avast/android/mobilesecurity/engine/ae;

    iput-object v0, v1, Lcom/avast/android/mobilesecurity/engine/ad;->a:Lcom/avast/android/mobilesecurity/engine/ae;
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_2
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_38} :catch_1

    .line 454
    if-eqz v4, :cond_42

    .line 456
    :try_start_39
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_39} :catch_1c

    .line 460
    :cond_42
    :goto_2e
    if-eqz v3, :cond_43

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_43

    .line 462
    :try_start_3a
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3a} :catch_24

    .line 466
    :cond_43
    :goto_2f
    if-eqz v2, :cond_44

    .line 468
    :try_start_3b
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_3b .. :try_end_3b} :catch_1d

    .line 472
    :cond_44
    :goto_30
    if-eqz v9, :cond_45

    .line 473
    invoke-virtual {v9}, Landroid/b/a/a;->a()V

    :cond_45
    move-object v0, v1

    .line 430
    goto/16 :goto_4

    .line 391
    :cond_46
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto/16 :goto_22

    .line 437
    :cond_47
    :try_start_3c
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/ae;->b:Lcom/avast/android/mobilesecurity/engine/ae;

    iput-object v0, v1, Lcom/avast/android/mobilesecurity/engine/ad;->a:Lcom/avast/android/mobilesecurity/engine/ae;
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_2
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3c} :catch_1

    .line 454
    if-eqz v4, :cond_48

    .line 456
    :try_start_3d
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_3d} :catch_1e

    .line 460
    :cond_48
    :goto_31
    if-eqz v3, :cond_49

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 462
    :try_start_3e
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_3e} :catch_23

    .line 466
    :cond_49
    :goto_32
    if-eqz v2, :cond_4a

    .line 468
    :try_start_3f
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_3f} :catch_1f

    .line 472
    :cond_4a
    :goto_33
    if-eqz v9, :cond_4b

    .line 473
    invoke-virtual {v9}, Landroid/b/a/a;->a()V

    :cond_4b
    move-object v0, v1

    .line 438
    goto/16 :goto_4

    .line 441
    :cond_4c
    :try_start_40
    sget-object v5, Lcom/avast/android/mobilesecurity/engine/ae;->a:Lcom/avast/android/mobilesecurity/engine/ae;

    iput-object v5, v1, Lcom/avast/android/mobilesecurity/engine/ad;->a:Lcom/avast/android/mobilesecurity/engine/ae;

    .line 442
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/internal/a/q;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/avast/android/mobilesecurity/engine/ad;->b:Ljava/lang/String;
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_2
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_40} :catch_1

    .line 454
    if-eqz v4, :cond_4d

    .line 456
    :try_start_41
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_41} :catch_20

    .line 460
    :cond_4d
    :goto_34
    if-eqz v3, :cond_4e

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_4e

    .line 462
    :try_start_42
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_42} :catch_22

    .line 466
    :cond_4e
    :goto_35
    if-eqz v2, :cond_4f

    .line 468
    :try_start_43
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_43} :catch_21

    .line 472
    :cond_4f
    :goto_36
    if-eqz v9, :cond_50

    .line 473
    invoke-virtual {v9}, Landroid/b/a/a;->a()V

    :cond_50
    move-object v0, v1

    .line 443
    goto/16 :goto_4

    .line 457
    :catch_4
    move-exception v1

    goto/16 :goto_6

    .line 469
    :catch_5
    move-exception v1

    goto/16 :goto_8

    .line 457
    :catch_6
    move-exception v3

    goto/16 :goto_1

    .line 469
    :catch_7
    move-exception v0

    goto/16 :goto_3

    .line 457
    :catch_8
    move-exception v0

    goto/16 :goto_c

    .line 469
    :catch_9
    move-exception v0

    goto/16 :goto_e

    .line 457
    :catch_a
    move-exception v0

    goto/16 :goto_10

    .line 469
    :catch_b
    move-exception v0

    goto/16 :goto_12

    .line 457
    :catch_c
    move-exception v0

    goto/16 :goto_13

    .line 469
    :catch_d
    move-exception v0

    goto/16 :goto_15

    .line 457
    :catch_e
    move-exception v0

    goto/16 :goto_16

    .line 469
    :catch_f
    move-exception v0

    goto/16 :goto_18

    .line 457
    :catch_10
    move-exception v0

    goto/16 :goto_19

    .line 469
    :catch_11
    move-exception v0

    goto/16 :goto_1b

    .line 457
    :catch_12
    move-exception v0

    goto/16 :goto_1f

    .line 469
    :catch_13
    move-exception v0

    goto/16 :goto_21

    .line 457
    :catch_14
    move-exception v0

    goto/16 :goto_1c

    .line 469
    :catch_15
    move-exception v0

    goto/16 :goto_1e

    .line 457
    :catch_16
    move-exception v0

    goto/16 :goto_24

    .line 469
    :catch_17
    move-exception v0

    goto/16 :goto_26

    .line 457
    :catch_18
    move-exception v0

    goto/16 :goto_28

    .line 469
    :catch_19
    move-exception v0

    goto/16 :goto_2a

    .line 457
    :catch_1a
    move-exception v0

    goto/16 :goto_2b

    .line 469
    :catch_1b
    move-exception v0

    goto/16 :goto_2d

    .line 457
    :catch_1c
    move-exception v0

    goto/16 :goto_2e

    .line 469
    :catch_1d
    move-exception v0

    goto/16 :goto_30

    .line 457
    :catch_1e
    move-exception v0

    goto/16 :goto_31

    .line 469
    :catch_1f
    move-exception v0

    goto/16 :goto_33

    .line 457
    :catch_20
    move-exception v0

    goto :goto_34

    .line 469
    :catch_21
    move-exception v0

    goto :goto_36

    .line 463
    :catch_22
    move-exception v0

    goto :goto_35

    :catch_23
    move-exception v0

    goto/16 :goto_32

    :catch_24
    move-exception v0

    goto/16 :goto_2f

    :catch_25
    move-exception v0

    goto/16 :goto_2c

    :catch_26
    move-exception v0

    goto/16 :goto_29

    :catch_27
    move-exception v0

    goto/16 :goto_25

    :catch_28
    move-exception v0

    goto/16 :goto_1d

    :catch_29
    move-exception v0

    goto/16 :goto_20

    :catch_2a
    move-exception v0

    goto/16 :goto_1a

    :catch_2b
    move-exception v0

    goto/16 :goto_17

    :catch_2c
    move-exception v0

    goto/16 :goto_14

    :catch_2d
    move-exception v0

    goto/16 :goto_11

    :catch_2e
    move-exception v0

    goto/16 :goto_d

    :catch_2f
    move-exception v2

    goto/16 :goto_2

    :catch_30
    move-exception v1

    goto/16 :goto_7

    .line 454
    :catchall_1
    move-exception v1

    move-object v3, v2

    move-object v2, v0

    move-object v0, v1

    goto/16 :goto_5

    :catchall_2
    move-exception v0

    goto/16 :goto_5

    :catchall_3
    move-exception v1

    move-object v4, v3

    move-object v3, v2

    move-object v2, v0

    move-object v0, v1

    goto/16 :goto_5

    .line 444
    :catch_31
    move-exception v3

    move-object v3, v4

    goto/16 :goto_0

    :cond_51
    move-object v7, v0

    goto/16 :goto_23

    :cond_52
    move v5, v2

    goto/16 :goto_9
.end method

.method public static a(Landroid/content/Context;Ljava/io/File;)Lcom/avast/android/mobilesecurity/engine/af;
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 633
    new-instance v2, Lcom/avast/android/mobilesecurity/engine/af;

    invoke-direct {v2}, Lcom/avast/android/mobilesecurity/engine/af;-><init>()V

    .line 634
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/s;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    .line 636
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 637
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/aa;->a:[I

    invoke-static {p0}, Lcom/avast/android/mobilesecurity/engine/internal/s;->a(Landroid/content/Context;)Lcom/avast/android/mobilesecurity/engine/internal/w;

    move-result-object v5

    invoke-virtual {v5}, Lcom/avast/android/mobilesecurity/engine/internal/w;->ordinal()I

    move-result v5

    aget v0, v0, v5

    packed-switch v0, :pswitch_data_0

    .line 646
    if-eqz v4, :cond_1

    move v0, v1

    .line 647
    :goto_0
    array-length v5, v4

    if-ge v0, v5, :cond_1

    .line 648
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v4, v0

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_old"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 650
    aget-object v6, v4, v0

    invoke-virtual {v6, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 651
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/ag;->g:Lcom/avast/android/mobilesecurity/engine/ag;

    iput-object v0, v2, Lcom/avast/android/mobilesecurity/engine/af;->a:Lcom/avast/android/mobilesecurity/engine/ag;

    move-object v0, v2

    .line 697
    :goto_1
    return-object v0

    .line 639
    :pswitch_0
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/ag;->g:Lcom/avast/android/mobilesecurity/engine/ag;

    iput-object v0, v2, Lcom/avast/android/mobilesecurity/engine/af;->a:Lcom/avast/android/mobilesecurity/engine/ag;

    move-object v0, v2

    .line 640
    goto :goto_1

    .line 647
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 656
    :cond_1
    new-instance v0, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 657
    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 663
    invoke-static {p0, v0}, Lcom/avast/android/mobilesecurity/engine/internal/y;->c(Landroid/content/Context;Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    .line 664
    if-nez v4, :cond_3

    .line 665
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/ag;->e:Lcom/avast/android/mobilesecurity/engine/ag;

    iput-object v0, v2, Lcom/avast/android/mobilesecurity/engine/af;->a:Lcom/avast/android/mobilesecurity/engine/ag;

    move-object v0, v2

    .line 666
    goto :goto_1

    .line 660
    :cond_2
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/ag;->g:Lcom/avast/android/mobilesecurity/engine/ag;

    iput-object v0, v2, Lcom/avast/android/mobilesecurity/engine/af;->a:Lcom/avast/android/mobilesecurity/engine/ag;

    move-object v0, v2

    .line 661
    goto :goto_1

    .line 668
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5, v4}, Lcom/avast/android/mobilesecurity/engine/internal/s;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/avast/android/mobilesecurity/engine/internal/v;

    move-result-object v4

    .line 670
    sget-object v5, Lcom/avast/android/mobilesecurity/engine/internal/aa;->b:[I

    invoke-virtual {v4}, Lcom/avast/android/mobilesecurity/engine/internal/v;->ordinal()I

    move-result v4

    aget v4, v5, v4

    packed-switch v4, :pswitch_data_1

    .line 674
    invoke-static {p0}, Lcom/avast/android/mobilesecurity/engine/internal/s;->a(Landroid/content/Context;)Lcom/avast/android/mobilesecurity/engine/internal/w;

    .line 675
    invoke-static {p0}, Lcom/avast/android/mobilesecurity/engine/internal/y;->d(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 676
    sget-object v4, Lcom/avast/android/mobilesecurity/engine/ag;->g:Lcom/avast/android/mobilesecurity/engine/ag;

    iput-object v4, v2, Lcom/avast/android/mobilesecurity/engine/af;->a:Lcom/avast/android/mobilesecurity/engine/ag;

    .line 677
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 678
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 679
    if-eqz v4, :cond_5

    move v0, v1

    .line 680
    :goto_2
    array-length v5, v4

    if-ge v0, v5, :cond_5

    .line 681
    aget-object v5, v4, v0

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "_old"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 682
    aget-object v5, v4, v0

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 683
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x5

    invoke-virtual {v5, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 687
    aget-object v5, v4, v0

    invoke-virtual {v5, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 680
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    move-object v0, v2

    .line 691
    goto/16 :goto_1

    .line 693
    :cond_6
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/ag;->f:Lcom/avast/android/mobilesecurity/engine/ag;

    iput-object v0, v2, Lcom/avast/android/mobilesecurity/engine/af;->a:Lcom/avast/android/mobilesecurity/engine/ag;

    move-object v0, v2

    .line 694
    goto/16 :goto_1

    .line 696
    :pswitch_1
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/ag;->b:Lcom/avast/android/mobilesecurity/engine/ag;

    iput-object v0, v2, Lcom/avast/android/mobilesecurity/engine/af;->a:Lcom/avast/android/mobilesecurity/engine/ag;

    move-object v0, v2

    .line 697
    goto/16 :goto_1

    .line 637
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    .line 670
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/avast/android/mobilesecurity/engine/r;)Ljava/io/File;
    .locals 10
    .parameter
    .parameter
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 508
    :try_start_0
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 512
    const-string v3, "avdroid"

    invoke-static {v3}, Landroid/b/a/a;->a(Ljava/lang/String;)Landroid/b/a/a;

    move-result-object v6

    .line 520
    :try_start_1
    invoke-virtual {v6, v2}, Landroid/b/a/a;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 522
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_15

    move-result-object v5

    .line 523
    if-nez v5, :cond_5

    .line 524
    :try_start_2
    new-instance v0, Lorg/apache/http/HttpException;

    const-string v2, "Response entity is null"

    invoke-direct {v0, v2}, Lorg/apache/http/HttpException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 575
    :catch_0
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    move-object v3, v5

    .line 576
    :goto_0
    :try_start_3
    new-instance v4, Lorg/apache/http/HttpException;

    invoke-direct {v4}, Lorg/apache/http/HttpException;-><init>()V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 579
    :catchall_0
    move-exception v4

    move-object v5, v3

    move-object v3, v0

    move-object v0, v4

    move-object v4, v2

    :goto_1
    if-eqz v3, :cond_0

    .line 581
    :try_start_4
    invoke-virtual {v3}, Lcom/avast/android/mobilesecurity/engine/internal/k;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 585
    :cond_0
    :goto_2
    if-eqz v5, :cond_1

    .line 587
    :try_start_5
    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 591
    :cond_1
    :goto_3
    if-eqz v4, :cond_2

    .line 593
    :try_start_6
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    .line 597
    :cond_2
    :goto_4
    if-eqz v1, :cond_3

    .line 599
    :try_start_7
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    .line 603
    :cond_3
    :goto_5
    if-eqz v6, :cond_4

    .line 604
    invoke-virtual {v6}, Landroid/b/a/a;->a()V

    .line 579
    :cond_4
    throw v0

    .line 509
    :catch_1
    move-exception v0

    .line 510
    new-instance v0, Lorg/apache/http/HttpException;

    invoke-direct {v0}, Lorg/apache/http/HttpException;-><init>()V

    throw v0

    .line 526
    :cond_5
    :try_start_8
    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    const-wide/16 v7, 0x0

    cmp-long v2, v2, v7

    if-lez v2, :cond_6

    .line 527
    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    long-to-int v2, v2

    .line 528
    int-to-long v3, v2

    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v7

    cmp-long v3, v3, v7

    if-eqz v3, :cond_18

    .line 533
    :cond_6
    :goto_6
    if-lez v0, :cond_7

    .line 534
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 538
    :goto_7
    :try_start_9
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/internal/z;

    invoke-direct {v0, p2}, Lcom/avast/android/mobilesecurity/engine/internal/z;-><init>(Lcom/avast/android/mobilesecurity/engine/r;)V

    .line 550
    new-instance v3, Lcom/avast/android/mobilesecurity/engine/internal/k;

    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v7

    invoke-direct {v3, v2, v7, v8, v0}, Lcom/avast/android/mobilesecurity/engine/internal/k;-><init>(Ljava/io/InputStream;JLcom/avast/android/mobilesecurity/engine/r;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_16

    .line 554
    const/16 v0, 0x1000

    :try_start_a
    new-array v0, v0, [B

    .line 556
    :goto_8
    invoke-virtual {v3, v0}, Lcom/avast/android/mobilesecurity/engine/internal/k;->read([B)I

    move-result v2

    if-ltz v2, :cond_8

    .line 557
    const/4 v7, 0x0

    invoke-virtual {v4, v0, v7, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_8

    .line 575
    :catch_2
    move-exception v0

    move-object v0, v3

    move-object v2, v4

    move-object v3, v5

    goto :goto_0

    .line 536
    :cond_7
    :try_start_b
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0

    goto :goto_7

    .line 579
    :catchall_1
    move-exception v0

    move-object v3, v1

    move-object v4, v1

    goto :goto_1

    .line 559
    :cond_8
    :try_start_c
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    move-result-object v7

    .line 562
    :try_start_d
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/avast/android/mobilesecurity/engine/internal/y;->a:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "/"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "/"

    invoke-virtual {p1, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 565
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_4

    .line 566
    :try_start_e
    invoke-virtual {v2, v7}, Ljava/io/FileOutputStream;->write([B)V

    .line 567
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_18
    .catch Ljava/lang/NullPointerException; {:try_start_e .. :try_end_e} :catch_17

    .line 579
    if-eqz v3, :cond_9

    .line 581
    :try_start_f
    invoke-virtual {v3}, Lcom/avast/android/mobilesecurity/engine/internal/k;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_11

    .line 585
    :cond_9
    :goto_9
    if-eqz v5, :cond_a

    .line 587
    :try_start_10
    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_12

    .line 591
    :cond_a
    :goto_a
    if-eqz v4, :cond_b

    .line 593
    :try_start_11
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_13

    .line 597
    :cond_b
    :goto_b
    if-eqz v2, :cond_c

    .line 599
    :try_start_12
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_14

    .line 603
    :cond_c
    :goto_c
    if-eqz v6, :cond_d

    .line 604
    invoke-virtual {v6}, Landroid/b/a/a;->a()V

    .line 607
    :cond_d
    :goto_d
    return-object v0

    .line 568
    :catch_3
    move-exception v0

    move-object v0, v1

    .line 579
    :goto_e
    if-eqz v3, :cond_e

    .line 581
    :try_start_13
    invoke-virtual {v3}, Lcom/avast/android/mobilesecurity/engine/internal/k;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_9

    .line 585
    :cond_e
    :goto_f
    if-eqz v5, :cond_f

    .line 587
    :try_start_14
    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_a

    .line 591
    :cond_f
    :goto_10
    if-eqz v4, :cond_10

    .line 593
    :try_start_15
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_b

    .line 597
    :cond_10
    :goto_11
    if-eqz v0, :cond_11

    .line 599
    :try_start_16
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_c

    .line 603
    :cond_11
    :goto_12
    if-eqz v6, :cond_12

    .line 604
    invoke-virtual {v6}, Landroid/b/a/a;->a()V

    :cond_12
    move-object v0, v1

    .line 569
    goto :goto_d

    .line 570
    :catch_4
    move-exception v0

    move-object v2, v1

    .line 579
    :goto_13
    if-eqz v3, :cond_13

    .line 581
    :try_start_17
    invoke-virtual {v3}, Lcom/avast/android/mobilesecurity/engine/internal/k;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_d

    .line 585
    :cond_13
    :goto_14
    if-eqz v5, :cond_14

    .line 587
    :try_start_18
    invoke-interface {v5}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_e

    .line 591
    :cond_14
    :goto_15
    if-eqz v4, :cond_15

    .line 593
    :try_start_19
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_f

    .line 597
    :cond_15
    :goto_16
    if-eqz v2, :cond_16

    .line 599
    :try_start_1a
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_10

    .line 603
    :cond_16
    :goto_17
    if-eqz v6, :cond_17

    .line 604
    invoke-virtual {v6}, Landroid/b/a/a;->a()V

    :cond_17
    move-object v0, v1

    .line 573
    goto :goto_d

    .line 582
    :catch_5
    move-exception v2

    goto/16 :goto_2

    .line 588
    :catch_6
    move-exception v2

    goto/16 :goto_3

    .line 594
    :catch_7
    move-exception v2

    goto/16 :goto_4

    .line 600
    :catch_8
    move-exception v1

    goto/16 :goto_5

    .line 582
    :catch_9
    move-exception v2

    goto :goto_f

    .line 588
    :catch_a
    move-exception v2

    goto :goto_10

    .line 594
    :catch_b
    move-exception v2

    goto :goto_11

    .line 600
    :catch_c
    move-exception v0

    goto :goto_12

    .line 582
    :catch_d
    move-exception v0

    goto :goto_14

    .line 588
    :catch_e
    move-exception v0

    goto :goto_15

    .line 594
    :catch_f
    move-exception v0

    goto :goto_16

    .line 600
    :catch_10
    move-exception v0

    goto :goto_17

    .line 582
    :catch_11
    move-exception v1

    goto :goto_9

    .line 588
    :catch_12
    move-exception v1

    goto :goto_a

    .line 594
    :catch_13
    move-exception v1

    goto :goto_b

    .line 600
    :catch_14
    move-exception v1

    goto :goto_c

    .line 579
    :catchall_2
    move-exception v0

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    goto/16 :goto_1

    :catchall_3
    move-exception v0

    move-object v3, v1

    goto/16 :goto_1

    :catchall_4
    move-exception v0

    goto/16 :goto_1

    :catchall_5
    move-exception v0

    move-object v1, v2

    goto/16 :goto_1

    .line 575
    :catch_15
    move-exception v0

    move-object v0, v1

    move-object v2, v1

    move-object v3, v1

    goto/16 :goto_0

    :catch_16
    move-exception v0

    move-object v0, v1

    move-object v2, v4

    move-object v3, v5

    goto/16 :goto_0

    .line 570
    :catch_17
    move-exception v0

    goto :goto_13

    .line 568
    :catch_18
    move-exception v0

    move-object v0, v2

    goto :goto_e

    :cond_18
    move v0, v2

    goto/16 :goto_6
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 617
    const/4 v0, 0x1

    return v0
.end method

.method public static b()I
    .locals 1

    .prologue
    .line 852
    sget v0, Lcom/avast/android/mobilesecurity/engine/internal/y;->h:I

    return v0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 789
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/s;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 791
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 792
    const/4 v0, 0x1

    .line 793
    if-eqz v3, :cond_1

    move v2, v0

    move v0, v1

    .line 794
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 795
    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "_old"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 796
    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v1

    .line 794
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v2, v0

    .line 802
    :cond_2
    invoke-static {p0}, Lcom/avast/android/mobilesecurity/engine/internal/y;->c(Landroid/content/Context;)V

    .line 803
    return v2
.end method

.method public static b(Landroid/content/Context;Ljava/io/File;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 837
    :try_start_0
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/internal/ab;

    invoke-direct {v0, p0, p1}, Lcom/avast/android/mobilesecurity/engine/internal/ab;-><init>(Landroid/content/Context;Ljava/io/File;)V

    .line 838
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/internal/ab;->a()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 840
    :goto_0
    return v0

    .line 839
    :catch_0
    move-exception v0

    .line 840
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;Ljava/io/File;)Ljava/lang/String;
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 710
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/s;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v6

    .line 717
    :try_start_0
    new-instance v7, Ljava/util/zip/ZipFile;

    invoke-direct {v7, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 718
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    move-object v1, v5

    move-object v2, v5

    move-object v4, v5

    .line 719
    :goto_0
    :try_start_1
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 720
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 721
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v9, "\\."

    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 722
    if-eqz v3, :cond_2

    array-length v9, v3

    add-int/lit8 v9, v9, -0x1

    aget-object v3, v3, v9

    const-string v9, "so"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 725
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 726
    new-instance v1, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v3

    add-int/lit8 v10, v10, -0x1

    aget-object v3, v3, v10

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 728
    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v9, Ljava/io/FileOutputStream;

    const/4 v10, 0x0

    invoke-direct {v9, v1, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct {v3, v9}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/util/zip/ZipException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b

    .line 730
    :try_start_2
    invoke-virtual {v7, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3
    .catch Ljava/util/zip/ZipException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c

    move-result-object v0

    .line 731
    const/16 v2, 0x400

    :try_start_3
    new-array v2, v2, [B

    .line 733
    :goto_1
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-ltz v4, :cond_a

    .line 734
    const/4 v9, 0x0

    invoke-virtual {v3, v2, v9, v4}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/util/zip/ZipException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_a

    goto :goto_1

    .line 737
    :catch_0
    move-exception v1

    move-object v2, v0

    move-object v4, v3

    .line 742
    :goto_2
    if-eqz v4, :cond_0

    .line 744
    :try_start_4
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 747
    :cond_0
    :goto_3
    if-eqz v2, :cond_1

    .line 749
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_1
    :goto_4
    move-object v0, v5

    .line 754
    :goto_5
    return-object v0

    :cond_2
    move-object v0, v1

    move-object v1, v2

    move-object v2, v4

    :goto_6
    move-object v4, v2

    move-object v2, v1

    move-object v1, v0

    .line 736
    goto/16 :goto_0

    .line 739
    :catch_1
    move-exception v0

    move-object v2, v5

    move-object v4, v5

    .line 742
    :goto_7
    if-eqz v4, :cond_3

    .line 744
    :try_start_6
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 747
    :cond_3
    :goto_8
    if-eqz v2, :cond_4

    .line 749
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_4
    :goto_9
    move-object v0, v5

    .line 740
    goto :goto_5

    .line 742
    :catchall_0
    move-exception v0

    move-object v2, v5

    move-object v4, v5

    :goto_a
    if-eqz v4, :cond_5

    .line 744
    :try_start_8
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 747
    :cond_5
    :goto_b
    if-eqz v2, :cond_6

    .line 749
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 742
    :cond_6
    :goto_c
    throw v0

    :cond_7
    if-eqz v4, :cond_8

    .line 744
    :try_start_a
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 747
    :cond_8
    :goto_d
    if-eqz v2, :cond_9

    .line 749
    :try_start_b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    .line 754
    :cond_9
    :goto_e
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 745
    :catch_2
    move-exception v0

    goto :goto_3

    .line 750
    :catch_3
    move-exception v0

    goto :goto_4

    .line 745
    :catch_4
    move-exception v0

    goto :goto_8

    .line 750
    :catch_5
    move-exception v0

    goto :goto_9

    .line 745
    :catch_6
    move-exception v1

    goto :goto_b

    .line 750
    :catch_7
    move-exception v1

    goto :goto_c

    .line 745
    :catch_8
    move-exception v0

    goto :goto_d

    .line 750
    :catch_9
    move-exception v0

    goto :goto_e

    .line 742
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v4, v3

    move-object v0, v1

    goto :goto_a

    :catchall_2
    move-exception v0

    goto :goto_a

    :catchall_3
    move-exception v0

    move-object v4, v3

    goto :goto_a

    .line 739
    :catch_a
    move-exception v1

    move-object v2, v0

    move-object v4, v3

    goto :goto_7

    :catch_b
    move-exception v0

    goto :goto_7

    :catch_c
    move-exception v0

    move-object v4, v3

    goto :goto_7

    .line 737
    :catch_d
    move-exception v0

    move-object v2, v5

    move-object v4, v5

    goto :goto_2

    :catch_e
    move-exception v0

    goto :goto_2

    :catch_f
    move-exception v0

    move-object v4, v3

    goto :goto_2

    :cond_a
    move-object v2, v3

    move-object v11, v0

    move-object v0, v1

    move-object v1, v11

    goto :goto_6
.end method

.method public static c(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 813
    sget-object v1, Lcom/avast/android/mobilesecurity/engine/internal/y;->a:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 815
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 816
    if-eqz v2, :cond_0

    .line 817
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 818
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 817
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 821
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 822
    return-void
.end method

.method private static d(Landroid/content/Context;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 765
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/s;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 767
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 768
    const/4 v0, 0x1

    .line 769
    if-eqz v3, :cond_1

    move v2, v0

    move v0, v1

    .line 770
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 771
    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "_old"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 772
    aget-object v4, v3, v0

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v1

    .line 770
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v2, v0

    .line 778
    :cond_2
    return v2
.end method
