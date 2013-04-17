.class final Lbww;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;",
        ">",
        "Ljava/lang/Thread;"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private static final b:[S


# instance fields
.field private c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Z

.field private f:Lbtg;

.field private g:Lbwv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbwv",
            "<TT;>;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/String;

.field private i:[B

.field private j:Z

.field private k:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lbww;->a:Ljava/util/HashMap;

    const/4 v0, 0x3

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lbww;->b:[S

    return-void

    :array_0
    .array-data 0x2
        0x8t 0x0t
        0x40t 0x0t
        0x80t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;ZLjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const v0, 0x4b000

    iput v0, p0, Lbww;->d:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbww;->e:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lbww;->f:Lbtg;

    iput-byte v1, p0, Lbww;->k:B

    iput-object p1, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iput-object p3, p0, Lbww;->h:Ljava/lang/String;

    iput-boolean p2, p0, Lbww;->j:Z

    sget-object v1, Lbww;->a:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lbww;->a:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [B

    sget-object v2, Lbww;->a:Ljava/util/HashMap;

    iget-object v3, p1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iput-object v0, p0, Lbww;->i:[B

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Ljava/io/FileOutputStream;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/tmsecure/exception/NetWorkException;
        }
    .end annotation

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    :try_start_0
    sget-object v1, Lbww;->b:[S

    const/4 v5, 0x1

    aget-short v1, v1, v5

    shl-int/lit8 v1, v1, 0xa

    new-array v6, v1, [B

    move-object/from16 v0, p0

    iget-object v1, v0, Lbww;->f:Lbtg;

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-boolean v1, v1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->isOnChangeRetry:Z

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-object v1, v1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mChangeUrl:Ljava/lang/String;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-object v1, v1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mChangeUrl:Ljava/lang/String;

    :goto_0
    invoke-static {v1}, Lbtg;->a(Ljava/lang/String;)Lbtg;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lbww;->f:Lbtg;

    move-object/from16 v0, p0

    iget-object v1, v0, Lbww;->f:Lbtg;

    invoke-virtual {v1}, Lbtg;->a()I

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lbww;->f:Lbtg;

    invoke-virtual {v1}, Lbtg;->c()I

    move-result v1

    const/16 v5, 0xc8

    if-eq v1, v5, :cond_4

    new-instance v1, Lcom/tencent/tmsecure/exception/NetWorkException;

    move-object/from16 v0, p0

    iget-object v5, v0, Lbww;->f:Lbtg;

    invoke-virtual {v5}, Lbtg;->c()I

    move-result v5

    add-int/lit16 v5, v5, -0xbb8

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "unbreakable download response code is not 200 error, but "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lbww;->f:Lbtg;

    invoke-virtual {v7}, Lbtg;->c()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Lcom/tencent/tmsecure/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7

    :catch_0
    move-exception v1

    :goto_1
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    move-object v5, v4

    :goto_2
    if-eqz v5, :cond_1

    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    :cond_1
    :goto_3
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    invoke-static {}, Lcom/tencent/tmsecure/module/networkload/NetworkloadProperties;->getSelfMobileDownloadBytes()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Lcom/tencent/tmsecure/module/networkload/NetworkloadProperties;->updateSelfMobileDownloadBytes(J)V

    :cond_2
    throw v1

    :cond_3
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-object v1, v1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mUrl:Ljava/lang/String;

    goto :goto_0

    :cond_4
    new-instance v5, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p0

    iget-object v1, v0, Lbww;->f:Lbtg;

    invoke-virtual {v1}, Lbtg;->b()Ljava/io/InputStream;

    move-result-object v1

    array-length v7, v6

    invoke-direct {v5, v1, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    move-object/from16 v0, p0

    iget-object v1, v0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v11, v1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mCurrentSize:J

    const/4 v4, 0x0

    invoke-static {}, Lcom/tencent/tmsecure/utils/NetworkUtil;->getNetworkType()LQQPIM/ConnectType;

    move-result-object v1

    sget-object v7, LQQPIM/ConnectType;->CT_WIFI:LQQPIM/ConnectType;

    if-eq v1, v7, :cond_8

    const/4 v1, 0x1

    :goto_4
    move/from16 v17, v4

    move-object v4, v6

    move/from16 v6, v17

    :cond_5
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lbww;->e:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    if-nez v7, :cond_9

    :cond_6
    :goto_6
    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    :goto_7
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_7

    invoke-static {}, Lcom/tencent/tmsecure/module/networkload/NetworkloadProperties;->getSelfMobileDownloadBytes()J

    move-result-wide v4

    add-long v1, v4, v2

    invoke-static {v1, v2}, Lcom/tencent/tmsecure/module/networkload/NetworkloadProperties;->updateSelfMobileDownloadBytes(J)V

    :cond_7
    return-void

    :cond_8
    const/4 v1, 0x0

    goto :goto_4

    :cond_9
    :try_start_6
    move-object/from16 v0, p0

    iget-object v7, v0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-object v7, v7, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mNetworkType:LQQPIM/ConnectType;

    invoke-static {}, Lcom/tencent/tmsecure/utils/NetworkUtil;->getNetworkType()LQQPIM/ConnectType;

    move-result-object v8

    if-eq v7, v8, :cond_a

    new-instance v1, Lcom/tencent/tmsecure/exception/NetWorkException;

    const/16 v4, -0x1b8c

    const-string v6, "network changes"

    invoke-direct {v1, v4, v6}, Lcom/tencent/tmsecure/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v1

    :catch_1
    move-exception v1

    move-object v4, v5

    goto :goto_1

    :cond_a
    invoke-virtual {v5, v4}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v7

    if-gtz v7, :cond_b

    move-object/from16 v0, p0

    iget-object v1, v0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v6, v1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mCurrentSize:J

    move-object/from16 v0, p0

    iget-object v1, v0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v8, v1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mSize:J

    cmp-long v1, v6, v8

    if-lez v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v6, v1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mSize:J

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-lez v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    move-object/from16 v0, p0

    iget-object v4, v0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v6, v4, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mCurrentSize:J

    iput-wide v6, v1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mSize:J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_6

    :catch_2
    move-exception v1

    :goto_8
    :try_start_7
    new-instance v4, Lcom/tencent/tmsecure/exception/NetWorkException;

    const/16 v6, -0x3b

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "unbreakable download unsupported encoding: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v6, v1}, Lcom/tencent/tmsecure/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v1

    goto/16 :goto_2

    :cond_b
    const/4 v8, 0x0

    :try_start_8
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v8, v7}, Ljava/io/FileOutputStream;->write([BII)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v13, v8, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mCurrentSize:J

    int-to-long v15, v7

    add-long/2addr v13, v15

    iput-wide v13, v8, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mCurrentSize:J

    add-int/2addr v6, v7

    if-eqz v1, :cond_c

    int-to-long v7, v7

    add-long/2addr v2, v7

    :cond_c
    move-object/from16 v0, p0

    iget-object v7, v0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v7, v7, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mSize:J

    move-object/from16 v0, p0

    iget-object v13, v0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v13, v13, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mCurrentSize:J

    cmp-long v7, v7, v13

    if-nez v7, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const/high16 v4, 0x3f80

    iput v4, v1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mProgress:F
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_6

    :catch_3
    move-exception v1

    :goto_9
    :try_start_9
    new-instance v4, Lcom/tencent/tmsecure/exception/NetWorkException;

    const/16 v6, -0x1b90

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "unbreakable download IOException: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v6, v1}, Lcom/tencent/tmsecure/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_d
    :try_start_a
    move-object/from16 v0, p0

    iget-object v7, v0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v7, v7, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mSize:J

    const-wide/16 v13, 0x0

    cmp-long v7, v7, v13

    if-lez v7, :cond_e

    move-object/from16 v0, p0

    iget-object v7, v0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    move-object/from16 v0, p0

    iget-object v8, v0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v13, v8, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mCurrentSize:J

    long-to-float v8, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v13, v13, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mSize:J

    long-to-float v13, v13

    div-float/2addr v8, v13

    iput v8, v7, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mProgress:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lbww;->g:Lbwv;

    move-object/from16 v0, p0

    iget-object v8, v0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    invoke-virtual {v7, v8}, Lbwv;->b(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V

    :cond_e
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lbww;->e:Z

    if-eqz v7, :cond_6

    move-object/from16 v0, p0

    iget v7, v0, Lbww;->d:I

    if-le v6, v7, :cond_5

    const/4 v8, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v9

    const-wide/16 v13, 0x0

    cmp-long v13, v6, v13

    if-gtz v13, :cond_f

    const-wide/16 v6, 0x1

    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v13, v13, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mCurrentSize:J

    sub-long/2addr v13, v11

    div-long v6, v13, v6

    long-to-int v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget v7, v7, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mSpeed:I

    if-nez v7, :cond_11

    move-object/from16 v0, p0

    iget-object v7, v0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iput v6, v7, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mSpeed:I

    :goto_a
    const/16 v7, 0x21

    if-ge v6, v7, :cond_12

    array-length v6, v4

    sget-object v7, Lbww;->b:[S

    const/4 v13, 0x0

    aget-short v7, v7, v13

    shl-int/lit8 v7, v7, 0xa

    if-eq v6, v7, :cond_10

    sget-object v4, Lbww;->b:[S

    const/4 v6, 0x0

    aget-short v4, v4, v6

    shl-int/lit8 v4, v4, 0xa

    new-array v4, v4, [B

    :cond_10
    :goto_b
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_14

    invoke-static {}, Lcom/tencent/tmsecure/module/networkload/NetworkloadProperties;->getSelfMobileDownloadBytes()J

    move-result-wide v6

    add-long/2addr v6, v2

    invoke-static {v6, v7}, Lcom/tencent/tmsecure/module/networkload/NetworkloadProperties;->updateSelfMobileDownloadBytes(J)V

    const-wide/16 v2, 0x0

    move v6, v8

    goto/16 :goto_5

    :cond_11
    move-object/from16 v0, p0

    iget-object v7, v0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    move-object/from16 v0, p0

    iget-object v13, v0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget v13, v13, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mSpeed:I

    add-int/2addr v13, v6

    div-int/lit8 v13, v13, 0x2

    iput v13, v7, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mSpeed:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_a

    :catch_4
    move-exception v1

    :goto_c
    :try_start_b
    new-instance v4, Lcom/tencent/tmsecure/exception/NetWorkException;

    const/4 v6, -0x2

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "unbreakable download Exception: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v6, v1}, Lcom/tencent/tmsecure/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :cond_12
    const/16 v7, 0x41

    if-ge v6, v7, :cond_13

    :try_start_c
    array-length v6, v4

    sget-object v7, Lbww;->b:[S

    const/4 v13, 0x1

    aget-short v7, v7, v13

    shl-int/lit8 v7, v7, 0xa

    if-eq v6, v7, :cond_10

    sget-object v4, Lbww;->b:[S

    const/4 v6, 0x1

    aget-short v4, v4, v6

    shl-int/lit8 v4, v4, 0xa

    new-array v4, v4, [B

    goto :goto_b

    :cond_13
    array-length v6, v4

    sget-object v7, Lbww;->b:[S

    const/4 v13, 0x2

    aget-short v7, v7, v13

    shl-int/lit8 v7, v7, 0xa

    if-eq v6, v7, :cond_10

    sget-object v4, Lbww;->b:[S

    const/4 v6, 0x2

    aget-short v4, v4, v6

    shl-int/lit8 v4, v4, 0xa

    new-array v4, v4, [B
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    goto :goto_b

    :catch_5
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    :catch_6
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_7

    :catchall_2
    move-exception v1

    move-object v5, v4

    goto/16 :goto_2

    :catch_7
    move-exception v1

    move-object v5, v4

    goto :goto_c

    :catch_8
    move-exception v1

    move-object v5, v4

    goto/16 :goto_9

    :catch_9
    move-exception v1

    move-object v5, v4

    goto/16 :goto_8

    :cond_14
    move v6, v8

    goto/16 :goto_5
.end method

.method private b(Ljava/io/FileOutputStream;)V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/tmsecure/exception/NetWorkException;
        }
    .end annotation

    const/4 v5, 0x0

    const-wide/16 v3, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    :try_start_0
    sget-object v2, Lbww;->b:[S

    const/4 v7, 0x1

    aget-short v2, v2, v7

    shl-int/lit8 v2, v2, 0xa

    new-array v2, v2, [B

    const/4 v11, 0x1

    move v7, v11

    :goto_0
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lbww;->e:Z

    if-eqz v10, :cond_0

    move-object/from16 v0, p0

    iget-object v10, v0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget v10, v10, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mProgress:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_d

    const/high16 v11, 0x3f80

    cmpl-float v10, v10, v11

    if-nez v10, :cond_3

    :cond_0
    move-object/from16 v0, p0

    iget-byte v2, v0, Lbww;->k:B

    if-lez v2, :cond_1

    if-eqz p1, :cond_1

    :try_start_1
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_11

    :cond_1
    :goto_1
    const-wide/16 v5, 0x0

    cmp-long v2, v3, v5

    if-lez v2, :cond_2

    invoke-static {}, Lcom/tencent/tmsecure/module/networkload/NetworkloadProperties;->getSelfMobileDownloadBytes()J

    move-result-wide v5

    add-long v2, v5, v3

    invoke-static {v2, v3}, Lcom/tencent/tmsecure/module/networkload/NetworkloadProperties;->updateSelfMobileDownloadBytes(J)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    :try_start_2
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, p0

    iget-object v10, v0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v12, v10, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mCurrentSize:J

    const-wide/16 v14, 0x1

    move-object/from16 v0, p0

    iget v10, v0, Lbww;->d:I

    int-to-long v0, v10

    move-wide/from16 v16, v0

    mul-long v14, v14, v16

    int-to-long v9, v9

    mul-long/2addr v9, v14

    add-long/2addr v9, v12

    const-wide/16 v14, 0x1

    sub-long/2addr v9, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v14, v14, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mSize:J

    cmp-long v14, v9, v14

    if-ltz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v9, v0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v9, v9, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mSize:J

    const-wide/16 v14, 0x1

    sub-long/2addr v9, v14

    :cond_4
    cmp-long v14, v12, v9

    if-gez v14, :cond_0

    const-string v14, "bytes="

    invoke-virtual {v11, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14, v12, v13}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v14

    const/16 v15, 0x2d

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14, v9, v10}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lbww;->e:Z

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lbww;->f:Lbtg;

    if-nez v9, :cond_b

    move-object/from16 v0, p0

    iget-object v9, v0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-boolean v9, v9, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->isOnChangeRetry:Z

    if-eqz v9, :cond_a

    move-object/from16 v0, p0

    iget-object v9, v0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-object v9, v9, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mChangeUrl:Ljava/lang/String;

    if-eqz v9, :cond_a

    move-object/from16 v0, p0

    iget-object v9, v0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-object v9, v9, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mChangeUrl:Ljava/lang/String;

    :goto_3
    invoke-static {v9}, Lbtg;->a(Ljava/lang/String;)Lbtg;

    move-result-object v9

    move-object/from16 v0, p0

    iput-object v9, v0, Lbww;->f:Lbtg;

    move-object/from16 v0, p0

    iget-object v9, v0, Lbww;->f:Lbtg;

    const-string v10, "Range"

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lbtg;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lbww;->f:Lbtg;

    invoke-virtual {v9}, Lbtg;->a()I

    :cond_5
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lbww;->e:Z

    if-eqz v9, :cond_0

    move-object/from16 v0, p0

    iget-object v9, v0, Lbww;->f:Lbtg;

    invoke-virtual {v9}, Lbtg;->c()I

    move-result v9

    const/16 v10, 0xce

    if-eq v9, v10, :cond_c

    new-instance v2, Lcom/tencent/tmsecure/exception/NetWorkException;

    move-object/from16 v0, p0

    iget-object v7, v0, Lbww;->f:Lbtg;

    invoke-virtual {v7}, Lbtg;->c()I

    move-result v7

    add-int/lit16 v7, v7, -0xbb8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "breakable download response code is not 206 error, but "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lbww;->f:Lbtg;

    invoke-virtual {v10}, Lbtg;->c()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v7, v9}, Lcom/tencent/tmsecure/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_d

    :catch_0
    move-exception v2

    :goto_5
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v2

    :goto_6
    if-eqz v5, :cond_6

    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_e

    :cond_6
    :goto_7
    move-object/from16 v0, p0

    iget-byte v5, v0, Lbww;->k:B

    if-lez v5, :cond_7

    if-eqz p1, :cond_7

    :try_start_5
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_f

    :cond_7
    :goto_8
    if-eqz v8, :cond_8

    :try_start_6
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_10

    :cond_8
    :goto_9
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_9

    invoke-static {}, Lcom/tencent/tmsecure/module/networkload/NetworkloadProperties;->getSelfMobileDownloadBytes()J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-static {v3, v4}, Lcom/tencent/tmsecure/module/networkload/NetworkloadProperties;->updateSelfMobileDownloadBytes(J)V

    :cond_9
    throw v2

    :cond_a
    :try_start_7
    move-object/from16 v0, p0

    iget-object v9, v0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-object v9, v9, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mUrl:Ljava/lang/String;

    goto/16 :goto_3

    :cond_b
    if-nez v7, :cond_5

    move-object/from16 v0, p0

    iget-object v9, v0, Lbww;->f:Lbtg;

    invoke-virtual {v9}, Lbtg;->d()V

    move-object/from16 v0, p0

    iget-object v9, v0, Lbww;->f:Lbtg;

    invoke-static {v9}, Lbtg;->a(Lbtg;)Lbtg;

    move-result-object v9

    move-object/from16 v0, p0

    iput-object v9, v0, Lbww;->f:Lbtg;

    move-object/from16 v0, p0

    iget-object v9, v0, Lbww;->f:Lbtg;

    const-string v10, "Range"

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lbtg;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lbww;->f:Lbtg;

    invoke-virtual {v9}, Lbtg;->a()I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_d

    goto/16 :goto_4

    :catch_1
    move-exception v2

    :goto_a
    :try_start_8
    new-instance v6, Lcom/tencent/tmsecure/exception/NetWorkException;

    const/16 v7, -0x3b

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "breakable download UnsupportedEncodingException encoding: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v7, v2}, Lcom/tencent/tmsecure/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_c
    :try_start_9
    move-object/from16 v0, p0

    iget-object v9, v0, Lbww;->f:Lbtg;

    invoke-virtual {v9}, Lbtg;->e()J

    move-result-wide v9

    const-wide/16 v14, 0x0

    cmp-long v11, v9, v14

    if-lez v11, :cond_10

    move-object/from16 v0, p0

    iget-object v11, v0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v14, v11, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mSize:J

    cmp-long v9, v9, v14

    if-eqz v9, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const/4 v7, 0x0

    iput-boolean v7, v2, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->isSupportRange:Z

    new-instance v2, Lcom/tencent/tmsecure/exception/NetWorkException;

    const/16 v7, -0x38

    const-string v9, "inconsistent total size!"

    invoke-direct {v2, v7, v9}, Lcom/tencent/tmsecure/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_d

    :catch_2
    move-exception v2

    move/from16 v20, v6

    move-object v6, v5

    move-wide/from16 v21, v3

    move-wide/from16 v4, v21

    move/from16 v3, v20

    :goto_b
    :try_start_a
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lbww;->e:Z

    if-eqz v7, :cond_1c

    move-object/from16 v0, p0

    iget-byte v7, v0, Lbww;->k:B

    add-int/lit8 v9, v7, 0x1

    int-to-byte v9, v9

    move-object/from16 v0, p0

    iput-byte v9, v0, Lbww;->k:B
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    const/16 v9, 0xa

    if-ge v7, v9, :cond_1c

    :try_start_b
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual/range {p1 .. p1}, Ljava/io/FileOutputStream;->close()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lbww;->f:Lbtg;

    invoke-virtual {v2}, Lbtg;->d()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lbww;->f:Lbtg;

    move-object/from16 v0, p0

    iget-object v2, v0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v7, v0, Lbww;->h:Ljava/lang/String;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v9

    iput-wide v9, v2, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mCurrentSize:J

    new-instance v7, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v2, v0, Lbww;->h:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v7, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    :try_start_c
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_13

    move-result-object v3

    :try_start_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v8, v2, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mCurrentSize:J

    invoke-virtual {v3, v8, v9}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lbww;->b(Ljava/io/FileOutputStream;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_14

    if-eqz v6, :cond_d

    :try_start_e
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_a

    :cond_d
    :goto_c
    move-object/from16 v0, p0

    iget-byte v2, v0, Lbww;->k:B

    if-lez v2, :cond_e

    :try_start_f
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_b

    :cond_e
    :goto_d
    if-eqz v3, :cond_f

    :try_start_10
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_c

    :cond_f
    :goto_e
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-lez v2, :cond_2

    invoke-static {}, Lcom/tencent/tmsecure/module/networkload/NetworkloadProperties;->getSelfMobileDownloadBytes()J

    move-result-wide v2

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Lcom/tencent/tmsecure/module/networkload/NetworkloadProperties;->updateSelfMobileDownloadBytes(J)V

    goto/16 :goto_2

    :cond_10
    if-eqz v7, :cond_1f

    const/4 v7, 0x0

    move v11, v7

    :goto_f
    :try_start_11
    invoke-static {}, Lcom/tencent/tmsecure/utils/NetworkUtil;->getNetworkType()LQQPIM/ConnectType;

    move-result-object v7

    sget-object v9, LQQPIM/ConnectType;->CT_WIFI:LQQPIM/ConnectType;

    if-eq v7, v9, :cond_13

    const/4 v7, 0x1

    move v9, v7

    :goto_10
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lbww;->e:Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_11 .. :try_end_11} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_11 .. :try_end_11} :catch_1
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_2
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_d

    if-eqz v6, :cond_0

    const/4 v7, 0x1

    :try_start_12
    new-instance v6, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p0

    iget-object v10, v0, Lbww;->f:Lbtg;

    invoke-virtual {v10}, Lbtg;->b()Ljava/io/InputStream;

    move-result-object v10

    array-length v14, v2

    invoke-direct {v6, v10, v14}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_12 .. :try_end_12} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_12 .. :try_end_12} :catch_1
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_8
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_d

    :try_start_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_13 .. :try_end_13} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_13 .. :try_end_13} :catch_5
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_7
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_12

    move-result-wide v14

    move v5, v7

    :goto_11
    :try_start_14
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lbww;->e:Z
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_14 .. :try_end_14} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_14 .. :try_end_14} :catch_5
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_15
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_12

    if-nez v7, :cond_14

    :cond_11
    move v7, v5

    :goto_12
    :try_start_15
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_6
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_15 .. :try_end_15} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_15 .. :try_end_15} :catch_5
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_7

    :goto_13
    const/4 v5, 0x0

    :try_start_16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v14

    const-wide/16 v14, 0x0

    cmp-long v6, v9, v14

    if-gtz v6, :cond_12

    const-wide/16 v9, 0x1

    :cond_12
    move-object/from16 v0, p0

    iget-object v6, v0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v14, v6, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mCurrentSize:J

    sub-long v12, v14, v12

    div-long v9, v12, v9

    long-to-int v6, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget v9, v9, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mSpeed:I

    if-nez v9, :cond_19

    move-object/from16 v0, p0

    iget-object v9, v0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iput v6, v9, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mSpeed:I

    :goto_14
    const/16 v9, 0x21

    if-ge v6, v9, :cond_1a

    const/4 v6, 0x1

    array-length v9, v2

    sget-object v10, Lbww;->b:[S

    const/4 v12, 0x0

    aget-short v10, v10, v12

    shl-int/lit8 v10, v10, 0xa

    if-eq v9, v10, :cond_1e

    sget-object v2, Lbww;->b:[S

    const/4 v9, 0x0

    aget-short v2, v2, v9

    shl-int/lit8 v2, v2, 0xa

    new-array v2, v2, [B
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_16 .. :try_end_16} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_16 .. :try_end_16} :catch_1
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_8
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_d

    move v9, v6

    :goto_15
    const-wide/16 v12, 0x0

    cmp-long v6, v3, v12

    if-lez v6, :cond_1d

    const/4 v6, 0x6

    :try_start_17
    invoke-static {}, Lcom/tencent/tmsecure/module/networkload/NetworkloadProperties;->getSelfMobileDownloadBytes()J

    move-result-wide v12

    add-long/2addr v12, v3

    invoke-static {v12, v13}, Lcom/tencent/tmsecure/module/networkload/NetworkloadProperties;->updateSelfMobileDownloadBytes(J)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_17 .. :try_end_17} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_17 .. :try_end_17} :catch_1
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_2
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_d

    const-wide/16 v3, 0x0

    const/4 v6, 0x7

    move v7, v11

    goto/16 :goto_0

    :cond_13
    const/4 v7, 0x0

    move v9, v7

    goto :goto_10

    :cond_14
    const/4 v5, 0x2

    :try_start_18
    move-object/from16 v0, p0

    iget-object v7, v0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-object v7, v7, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mNetworkType:LQQPIM/ConnectType;

    invoke-static {}, Lcom/tencent/tmsecure/utils/NetworkUtil;->getNetworkType()LQQPIM/ConnectType;

    move-result-object v10

    if-eq v7, v10, :cond_15

    new-instance v2, Lcom/tencent/tmsecure/exception/NetWorkException;

    const/16 v7, -0x1b8c

    const-string v9, "network changes"

    invoke-direct {v2, v7, v9}, Lcom/tencent/tmsecure/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v2

    :catch_3
    move-exception v2

    move-object v5, v6

    goto/16 :goto_5

    :cond_15
    invoke-virtual {v6, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v7

    if-gtz v7, :cond_16

    move-object/from16 v0, p0

    iget-object v7, v0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v9, v7, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mCurrentSize:J

    move-object/from16 v0, p0

    iget-object v7, v0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v0, v7, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mSize:J

    move-wide/from16 v16, v0

    cmp-long v7, v9, v16

    if-lez v7, :cond_11

    move-object/from16 v0, p0

    iget-object v7, v0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v9, v7, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mSize:J

    const-wide/16 v16, 0x0

    cmp-long v7, v9, v16

    if-lez v7, :cond_11

    move-object/from16 v0, p0

    iget-object v7, v0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    move-object/from16 v0, p0

    iget-object v9, v0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v9, v9, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mCurrentSize:J

    iput-wide v9, v7, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mSize:J

    move-object/from16 v0, p0

    iget-object v7, v0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const/high16 v9, 0x3f80

    iput v9, v7, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mProgress:F

    move v7, v5

    goto/16 :goto_12

    :cond_16
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lbww;->e:Z
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_3
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_18 .. :try_end_18} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_18 .. :try_end_18} :catch_5
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_15
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_12

    if-eqz v10, :cond_11

    const/4 v5, 0x3

    const/4 v10, 0x0

    :try_start_19
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v10, v7}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/FileOutputStream;->flush()V

    move-object/from16 v0, p0

    iget-object v10, v0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v0, v10, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mCurrentSize:J

    move-wide/from16 v16, v0

    int-to-long v0, v7

    move-wide/from16 v18, v0

    add-long v16, v16, v18

    move-wide/from16 v0, v16

    iput-wide v0, v10, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mCurrentSize:J
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_3
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_4
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_19 .. :try_end_19} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_19 .. :try_end_19} :catch_5
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_12

    if-eqz v9, :cond_17

    int-to-long v0, v7

    move-wide/from16 v16, v0

    add-long v3, v3, v16

    :cond_17
    :try_start_1a
    move-object/from16 v0, p0

    iget-object v7, v0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v0, v7, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mSize:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v0, v7, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mCurrentSize:J

    move-wide/from16 v18, v0

    cmp-long v7, v16, v18

    if-nez v7, :cond_18

    move-object/from16 v0, p0

    iget-object v7, v0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const/high16 v9, 0x3f80

    iput v9, v7, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mProgress:F

    move v7, v5

    goto/16 :goto_12

    :catch_4
    move-exception v2

    new-instance v7, Lcom/tencent/tmsecure/exception/NetWorkException;

    const/16 v9, -0x1b90

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "breakable download write file IOException:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v9, v2}, Lcom/tencent/tmsecure/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v7

    :catch_5
    move-exception v2

    move-object v5, v6

    goto/16 :goto_a

    :cond_18
    move-object/from16 v0, p0

    iget-object v7, v0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    move-object/from16 v0, p0

    iget-object v10, v0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v0, v10, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mCurrentSize:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-float v10, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mSize:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-float v0, v0

    move/from16 v16, v0

    div-float v10, v10, v16

    iput v10, v7, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mProgress:F

    const/4 v5, 0x4

    move-object/from16 v0, p0

    iget-object v7, v0, Lbww;->g:Lbwv;

    move-object/from16 v0, p0

    iget-object v10, v0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    invoke-virtual {v7, v10}, Lbwv;->b(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_1a .. :try_end_1a} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1a .. :try_end_1a} :catch_5
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_15
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_12

    const/4 v5, 0x5

    goto/16 :goto_11

    :catch_6
    move-exception v5

    :try_start_1b
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_3
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_1b .. :try_end_1b} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1b .. :try_end_1b} :catch_5
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_12

    goto/16 :goto_13

    :catch_7
    move-exception v2

    move-wide/from16 v20, v3

    move-wide/from16 v4, v20

    move v3, v7

    goto/16 :goto_b

    :cond_19
    :try_start_1c
    move-object/from16 v0, p0

    iget-object v9, v0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    move-object/from16 v0, p0

    iget-object v10, v0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget v10, v10, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mSpeed:I

    add-int/2addr v10, v6

    div-int/lit8 v10, v10, 0x2

    iput v10, v9, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mSpeed:I

    goto/16 :goto_14

    :catch_8
    move-exception v2

    move-object v6, v5

    move-wide/from16 v20, v3

    move-wide/from16 v4, v20

    move v3, v7

    goto/16 :goto_b

    :cond_1a
    const/16 v9, 0x41

    if-ge v6, v9, :cond_1b

    const/4 v6, 0x2

    array-length v9, v2

    sget-object v10, Lbww;->b:[S

    const/4 v12, 0x1

    aget-short v10, v10, v12

    shl-int/lit8 v10, v10, 0xa

    if-eq v9, v10, :cond_1e

    sget-object v2, Lbww;->b:[S

    const/4 v9, 0x1

    aget-short v2, v2, v9

    shl-int/lit8 v2, v2, 0xa

    new-array v2, v2, [B

    move v9, v6

    goto/16 :goto_15

    :cond_1b
    const/4 v6, 0x3

    array-length v9, v2

    sget-object v10, Lbww;->b:[S

    const/4 v12, 0x2

    aget-short v10, v10, v12

    shl-int/lit8 v10, v10, 0xa

    if-eq v9, v10, :cond_1e

    sget-object v2, Lbww;->b:[S

    const/4 v9, 0x2

    aget-short v2, v2, v9

    shl-int/lit8 v2, v2, 0xa

    new-array v2, v2, [B
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_1c .. :try_end_1c} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1c .. :try_end_1c} :catch_1
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_8
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_d

    move v9, v6

    goto/16 :goto_15

    :catch_9
    move-exception v2

    move-object v3, v8

    :goto_16
    :try_start_1d
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    new-instance v7, Lcom/tencent/tmsecure/exception/NetWorkException;

    const/16 v8, -0x1b90

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "breakable download IOException on try "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-byte v10, v0, Lbww;->k:B

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " IOException:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v8, v2}, Lcom/tencent/tmsecure/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v7
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1

    :catchall_1
    move-exception v2

    move-object v8, v3

    move-wide/from16 v20, v4

    move-wide/from16 v3, v20

    move-object v5, v6

    goto/16 :goto_6

    :cond_1c
    :try_start_1e
    new-instance v7, Lcom/tencent/tmsecure/exception/NetWorkException;

    const/16 v9, -0x1b90

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "breakable download IOException: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v10, " pos:"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v9, v2}, Lcom/tencent/tmsecure/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v7
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_2

    :catchall_2
    move-exception v2

    move-wide/from16 v20, v4

    move-wide/from16 v3, v20

    move-object v5, v6

    goto/16 :goto_6

    :catch_a
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_c

    :catch_b
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_d

    :catch_c
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_e

    :catch_d
    move-exception v2

    :goto_17
    :try_start_1f
    new-instance v6, Lcom/tencent/tmsecure/exception/NetWorkException;

    const/4 v7, -0x2

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "breakable download Exception "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v7, v2}, Lcom/tencent/tmsecure/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v6
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    :catch_e
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_7

    :catch_f
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_8

    :catch_10
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_9

    :catch_11
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    :catchall_3
    move-exception v2

    move-object v5, v6

    goto/16 :goto_6

    :catchall_4
    move-exception v2

    move-object/from16 p1, v7

    move-wide/from16 v20, v4

    move-wide/from16 v3, v20

    move-object v5, v6

    goto/16 :goto_6

    :catchall_5
    move-exception v2

    move-object v8, v3

    move-object/from16 p1, v7

    move-wide/from16 v20, v4

    move-wide/from16 v3, v20

    move-object v5, v6

    goto/16 :goto_6

    :catch_12
    move-exception v2

    move-object v5, v6

    goto :goto_17

    :catch_13
    move-exception v2

    move-object v3, v8

    move-object/from16 p1, v7

    goto/16 :goto_16

    :catch_14
    move-exception v2

    move-object/from16 p1, v7

    goto/16 :goto_16

    :catch_15
    move-exception v2

    move/from16 v20, v5

    move-wide/from16 v21, v3

    move-wide/from16 v4, v21

    move/from16 v3, v20

    goto/16 :goto_b

    :cond_1d
    move v6, v7

    move v7, v11

    goto/16 :goto_0

    :cond_1e
    move v9, v6

    goto/16 :goto_15

    :cond_1f
    move v11, v7

    goto/16 :goto_f
.end method


# virtual methods
.method final a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbww;->e:Z

    iget-object v0, p0, Lbww;->f:Lbtg;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lbww;->f:Lbtg;

    invoke-virtual {v0}, Lbtg;->d()V

    const/4 v0, 0x0

    iput-object v0, p0, Lbww;->f:Lbtg;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method final a(Lbwv;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbwv",
            "<TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lbww;->g:Lbwv;

    return-void
.end method

.method public final run()V
    .locals 11

    const/4 v1, 0x0

    const-wide/16 v9, 0x0

    const/4 v8, 0x2

    iget-object v3, p0, Lbww;->i:[B

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    invoke-static {}, Lcom/tencent/tmsecure/utils/NetworkUtil;->getNetworkType()LQQPIM/ConnectType;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mNetworkType:LQQPIM/ConnectType;

    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    invoke-static {}, Lcom/tencent/tmsecure/utils/NetworkUtil;->getNetworkName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mNetworkName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v4, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mCurrentSize:J

    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v6, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mSize:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_8

    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v4, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mCurrentSize:J

    cmp-long v0, v4, v9

    if-lez v0, :cond_8

    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const/4 v2, 0x3

    iput v2, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mState:I

    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const/4 v2, 0x0

    iput v2, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mErrorCode:I

    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const-string v2, ""

    iput-object v2, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mErrorMsg:Ljava/lang/String;

    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const/4 v2, -0x1

    iput v2, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mErrorRssi:I

    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const/high16 v2, 0x3f80

    iput v2, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mProgress:F

    iget-object v0, p0, Lbww;->g:Lbwv;

    iget-object v2, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    invoke-virtual {v0, v2}, Lbwv;->a(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9

    :try_start_2
    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v0, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mCurrentSize:J

    iget-object v2, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v4, v2, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mSize:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v0, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mCurrentSize:J

    cmp-long v0, v0, v9

    if-gtz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget v0, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mState:I

    if-eq v0, v8, :cond_6

    iget-boolean v0, p0, Lbww;->e:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-boolean v0, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->isSupportRange:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v0, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mSize:J

    cmp-long v0, v0, v9

    if-gtz v0, :cond_6

    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v0, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mCurrentSize:J

    cmp-long v0, v0, v9

    if-lez v0, :cond_6

    :cond_1
    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget v0, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mState:I

    if-eq v0, v8, :cond_2

    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const/4 v1, 0x0

    iput v1, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mErrorCode:I

    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const-string v1, ""

    iput-object v1, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mErrorMsg:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const/4 v1, -0x1

    iput v1, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mErrorRssi:I

    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const/4 v1, 0x3

    iput v1, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mState:I

    :cond_3
    :goto_0
    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mRedirectUrl:Ljava/lang/String;

    iget-object v0, p0, Lbww;->f:Lbtg;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-object v1, p0, Lbww;->f:Lbtg;

    invoke-virtual {v1}, Lbtg;->h()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mHostAddress:Ljava/lang/String;

    const-string v0, "127.0.0.1"

    iget-object v1, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-object v1, v1, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mHostAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget v0, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mState:I

    if-ne v0, v8, :cond_4

    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-object v1, p0, Lbww;->f:Lbtg;

    invoke-virtual {v1}, Lbtg;->g()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mRedirectUrl:Ljava/lang/String;

    :cond_4
    :goto_1
    iget-object v0, p0, Lbww;->g:Lbwv;

    iget-object v1, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    invoke-virtual {v0, v1}, Lbwv;->a(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V

    iget-object v0, p0, Lbww;->f:Lbtg;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lbww;->f:Lbtg;

    invoke-virtual {v0}, Lbtg;->d()V

    const/4 v0, 0x0

    iput-object v0, p0, Lbww;->f:Lbtg;

    :cond_5
    monitor-exit v3

    :goto_2
    return-void

    :cond_6
    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget v0, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mState:I

    if-ne v0, v8, :cond_3

    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/tencent/tmsecure/utils/WifiUtil;->calculateSignalLevel(I)I

    move-result v1

    iput v1, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mErrorRssi:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_7
    :try_start_3
    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const-string v1, ""

    iput-object v1, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mHostAddress:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :cond_8
    :try_start_4
    iget-boolean v0, p0, Lbww;->j:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_9

    if-nez v0, :cond_a

    :try_start_5
    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-boolean v0, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->isOnChangeRetry:Z

    if-eqz v0, :cond_12

    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-object v0, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mChangeUrl:Ljava/lang/String;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-object v0, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mChangeUrl:Ljava/lang/String;

    :goto_3
    invoke-static {v0}, Lbtg;->a(Ljava/lang/String;)Lbtg;

    move-result-object v0

    iput-object v0, p0, Lbww;->f:Lbtg;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "bytes=0"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x2d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lbww;->d:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lbww;->f:Lbtg;

    const-string v4, "Range"

    invoke-virtual {v2, v4, v0}, Lbtg;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lbww;->f:Lbtg;

    invoke-virtual {v0}, Lbtg;->a()I

    move-result v0

    const/16 v2, 0xce

    if-eq v0, v2, :cond_9

    iget-object v0, p0, Lbww;->f:Lbtg;

    invoke-virtual {v0}, Lbtg;->d()V

    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-object v0, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mUrl:Ljava/lang/String;

    invoke-static {v0}, Lbtg;->a(Ljava/lang/String;)Lbtg;

    move-result-object v0

    iput-object v0, p0, Lbww;->f:Lbtg;

    iget-object v0, p0, Lbww;->f:Lbtg;

    invoke-virtual {v0}, Lbtg;->a()I

    :cond_9
    iget-object v0, p0, Lbww;->f:Lbtg;

    invoke-virtual {v0}, Lbtg;->c()I

    move-result v0

    const/16 v2, 0xce

    if-ne v0, v2, :cond_13

    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->isSupportRange:Z

    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-object v2, p0, Lbww;->f:Lbtg;

    invoke-virtual {v2}, Lbtg;->e()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mSize:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_a
    :goto_4
    :try_start_6
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v0, p0, Lbww;->h:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {v2, v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9

    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v4, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mCurrentSize:J

    invoke-virtual {v1, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-boolean v0, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->isSupportRange:Z

    if-nez v0, :cond_24

    invoke-direct {p0, v2}, Lbww;->a(Ljava/io/FileOutputStream;)V

    :goto_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_11
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_10

    :try_start_8
    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v4, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mCurrentSize:J

    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v6, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mSize:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_b

    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v4, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mCurrentSize:J

    cmp-long v0, v4, v9

    if-gtz v0, :cond_c

    :cond_b
    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget v0, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mState:I

    if-eq v0, v8, :cond_3d

    iget-boolean v0, p0, Lbww;->e:Z

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-boolean v0, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->isSupportRange:Z

    if-nez v0, :cond_3d

    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v4, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mSize:J

    cmp-long v0, v4, v9

    if-gtz v0, :cond_3d

    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v4, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mCurrentSize:J

    cmp-long v0, v4, v9

    if-lez v0, :cond_3d

    :cond_c
    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget v0, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mState:I

    if-eq v0, v8, :cond_d

    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const/4 v4, 0x0

    iput v4, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mErrorCode:I

    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const-string v4, ""

    iput-object v4, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mErrorMsg:Ljava/lang/String;

    :cond_d
    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const/4 v4, -0x1

    iput v4, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mErrorRssi:I

    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const/4 v4, 0x3

    iput v4, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mState:I

    :cond_e
    :goto_6
    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mRedirectUrl:Ljava/lang/String;

    iget-object v0, p0, Lbww;->f:Lbtg;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-object v4, p0, Lbww;->f:Lbtg;

    invoke-virtual {v4}, Lbtg;->h()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mHostAddress:Ljava/lang/String;

    const-string v0, "127.0.0.1"

    iget-object v4, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-object v4, v4, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mHostAddress:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget v0, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mState:I

    if-ne v0, v8, :cond_f

    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-object v4, p0, Lbww;->f:Lbtg;

    invoke-virtual {v4}, Lbtg;->g()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mRedirectUrl:Ljava/lang/String;

    :cond_f
    :goto_7
    iget-object v0, p0, Lbww;->g:Lbwv;

    iget-object v4, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    invoke-virtual {v0, v4}, Lbwv;->a(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v1, :cond_10

    :try_start_9
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_e

    :cond_10
    :goto_8
    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_f

    :goto_9
    :try_start_b
    iget-object v0, p0, Lbww;->f:Lbtg;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lbww;->f:Lbtg;

    invoke-virtual {v0}, Lbtg;->d()V

    const/4 v0, 0x0

    iput-object v0, p0, Lbww;->f:Lbtg;

    :cond_11
    :goto_a
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_2

    :cond_12
    :try_start_c
    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-object v0, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mUrl:Ljava/lang/String;

    goto/16 :goto_3

    :cond_13
    const/16 v2, 0xc8

    if-ne v0, v2, :cond_a

    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->isSupportRange:Z

    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-object v2, p0, Lbww;->f:Lbtg;

    invoke-virtual {v2}, Lbtg;->f()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mSize:J
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_3

    goto/16 :goto_4

    :catch_0
    move-exception v0

    :try_start_d
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    :catch_1
    move-exception v0

    move-object v2, v1

    :goto_b
    :try_start_e
    invoke-virtual {v0}, Lcom/tencent/tmsecure/exception/NetWorkException;->printStackTrace()V

    iget-boolean v4, p0, Lbww;->e:Z

    if-eqz v4, :cond_14

    iget-object v4, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const/4 v5, 0x2

    iput v5, v4, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mState:I

    iget-object v4, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/exception/NetWorkException;->getErrCode()I

    move-result v5

    iput v5, v4, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mErrorCode:I

    iget-object v4, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/exception/NetWorkException;->getErrMsg()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mErrorMsg:Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :cond_14
    :try_start_f
    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v4, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mCurrentSize:J

    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v6, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mSize:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_15

    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v4, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mCurrentSize:J

    cmp-long v0, v4, v9

    if-gtz v0, :cond_16

    :cond_15
    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget v0, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mState:I

    if-eq v0, v8, :cond_25

    iget-boolean v0, p0, Lbww;->e:Z

    if-eqz v0, :cond_25

    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-boolean v0, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->isSupportRange:Z

    if-nez v0, :cond_25

    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v4, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mSize:J

    cmp-long v0, v4, v9

    if-gtz v0, :cond_25

    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v4, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mCurrentSize:J

    cmp-long v0, v4, v9

    if-lez v0, :cond_25

    :cond_16
    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget v0, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mState:I

    if-eq v0, v8, :cond_17

    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const/4 v4, 0x0

    iput v4, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mErrorCode:I

    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const-string v4, ""

    iput-object v4, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mErrorMsg:Ljava/lang/String;

    :cond_17
    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const/4 v4, -0x1

    iput v4, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mErrorRssi:I

    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const/4 v4, 0x3

    iput v4, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mState:I

    :cond_18
    :goto_c
    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mRedirectUrl:Ljava/lang/String;

    iget-object v0, p0, Lbww;->f:Lbtg;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-object v4, p0, Lbww;->f:Lbtg;

    invoke-virtual {v4}, Lbtg;->h()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mHostAddress:Ljava/lang/String;

    const-string v0, "127.0.0.1"

    iget-object v4, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-object v4, v4, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mHostAddress:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget v0, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mState:I

    if-ne v0, v8, :cond_19

    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-object v4, p0, Lbww;->f:Lbtg;

    invoke-virtual {v4}, Lbtg;->g()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mRedirectUrl:Ljava/lang/String;

    :cond_19
    :goto_d
    iget-object v0, p0, Lbww;->g:Lbwv;

    iget-object v4, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    invoke-virtual {v0, v4}, Lbwv;->a(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    if-eqz v1, :cond_1a

    :try_start_10
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_5

    :cond_1a
    :goto_e
    if-eqz v2, :cond_1b

    :try_start_11
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_6

    :cond_1b
    :goto_f
    :try_start_12
    iget-object v0, p0, Lbww;->f:Lbtg;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lbww;->f:Lbtg;

    invoke-virtual {v0}, Lbtg;->d()V

    const/4 v0, 0x0

    iput-object v0, p0, Lbww;->f:Lbtg;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_a

    :catch_2
    move-exception v0

    :try_start_13
    new-instance v2, Lcom/tencent/tmsecure/exception/NetWorkException;

    const/4 v4, -0x2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "init download task exception "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " errormsg:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v4, v0}, Lcom/tencent/tmsecure/exception/NetWorkException;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_13 .. :try_end_13} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_13} :catch_3
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_9

    :catch_3
    move-exception v0

    move-object v2, v1

    :goto_10
    :try_start_14
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    iget-boolean v4, p0, Lbww;->e:Z

    if-eqz v4, :cond_1c

    iget-object v4, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const/4 v5, 0x2

    iput v5, v4, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mState:I

    iget-object v4, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const/16 v5, -0x1b59

    iput v5, v4, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mErrorCode:I

    iget-object v4, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mErrorMsg:Ljava/lang/String;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    :cond_1c
    :try_start_15
    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v4, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mCurrentSize:J

    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v6, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mSize:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_1d

    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v4, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mCurrentSize:J

    cmp-long v0, v4, v9

    if-gtz v0, :cond_1e

    :cond_1d
    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget v0, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mState:I

    if-eq v0, v8, :cond_27

    iget-boolean v0, p0, Lbww;->e:Z

    if-eqz v0, :cond_27

    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-boolean v0, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->isSupportRange:Z

    if-nez v0, :cond_27

    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v4, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mSize:J

    cmp-long v0, v4, v9

    if-gtz v0, :cond_27

    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v4, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mCurrentSize:J

    cmp-long v0, v4, v9

    if-lez v0, :cond_27

    :cond_1e
    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget v0, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mState:I

    if-eq v0, v8, :cond_1f

    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const/4 v4, 0x0

    iput v4, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mErrorCode:I

    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const-string v4, ""

    iput-object v4, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mErrorMsg:Ljava/lang/String;

    :cond_1f
    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const/4 v4, -0x1

    iput v4, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mErrorRssi:I

    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const/4 v4, 0x3

    iput v4, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mState:I

    :cond_20
    :goto_11
    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mRedirectUrl:Ljava/lang/String;

    iget-object v0, p0, Lbww;->f:Lbtg;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-object v4, p0, Lbww;->f:Lbtg;

    invoke-virtual {v4}, Lbtg;->h()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mHostAddress:Ljava/lang/String;

    const-string v0, "127.0.0.1"

    iget-object v4, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-object v4, v4, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mHostAddress:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget v0, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mState:I

    if-ne v0, v8, :cond_21

    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-object v4, p0, Lbww;->f:Lbtg;

    invoke-virtual {v4}, Lbtg;->g()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mRedirectUrl:Ljava/lang/String;

    :cond_21
    :goto_12
    iget-object v0, p0, Lbww;->g:Lbwv;

    iget-object v4, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    invoke-virtual {v0, v4}, Lbwv;->a(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    if-eqz v1, :cond_22

    :try_start_16
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_7

    :cond_22
    :goto_13
    if-eqz v2, :cond_23

    :try_start_17
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_8

    :cond_23
    :goto_14
    :try_start_18
    iget-object v0, p0, Lbww;->f:Lbtg;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lbww;->f:Lbtg;

    invoke-virtual {v0}, Lbtg;->d()V

    const/4 v0, 0x0

    iput-object v0, p0, Lbww;->f:Lbtg;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    goto/16 :goto_a

    :cond_24
    :try_start_19
    invoke-direct {p0, v2}, Lbww;->b(Ljava/io/FileOutputStream;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_2
    .catch Lcom/tencent/tmsecure/exception/NetWorkException; {:try_start_19 .. :try_end_19} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_19} :catch_11
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_10

    goto/16 :goto_5

    :catch_4
    move-exception v0

    goto/16 :goto_b

    :cond_25
    :try_start_1a
    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget v0, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mState:I

    if-ne v0, v8, :cond_18

    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const/4 v4, 0x5

    invoke-static {v4}, Lcom/tencent/tmsecure/utils/WifiUtil;->calculateSignalLevel(I)I

    move-result v4

    iput v4, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mErrorRssi:I

    goto/16 :goto_c

    :cond_26
    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const-string v4, ""

    iput-object v4, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mHostAddress:Ljava/lang/String;

    goto/16 :goto_d

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_e

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_f

    :cond_27
    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget v0, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mState:I

    if-ne v0, v8, :cond_20

    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const/4 v4, 0x5

    invoke-static {v4}, Lcom/tencent/tmsecure/utils/WifiUtil;->calculateSignalLevel(I)I

    move-result v4

    iput v4, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mErrorRssi:I

    goto/16 :goto_11

    :cond_28
    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const-string v4, ""

    iput-object v4, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mHostAddress:Ljava/lang/String;

    goto :goto_12

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_13

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    goto :goto_14

    :catch_9
    move-exception v0

    move-object v2, v1

    :goto_15
    :try_start_1b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-boolean v4, p0, Lbww;->e:Z

    if-eqz v4, :cond_29

    iget-object v4, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const/4 v5, 0x2

    iput v5, v4, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mState:I

    iget-object v4, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const/16 v5, -0x1b5a

    iput v5, v4, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mErrorCode:I

    iget-object v4, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "final exception "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mErrorMsg:Ljava/lang/String;
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2

    :cond_29
    :try_start_1c
    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v4, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mCurrentSize:J

    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v6, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mSize:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_2a

    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v4, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mCurrentSize:J

    cmp-long v0, v4, v9

    if-gtz v0, :cond_2b

    :cond_2a
    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget v0, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mState:I

    if-eq v0, v8, :cond_31

    iget-boolean v0, p0, Lbww;->e:Z

    if-eqz v0, :cond_31

    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-boolean v0, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->isSupportRange:Z

    if-nez v0, :cond_31

    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v4, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mSize:J

    cmp-long v0, v4, v9

    if-gtz v0, :cond_31

    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v4, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mCurrentSize:J

    cmp-long v0, v4, v9

    if-lez v0, :cond_31

    :cond_2b
    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget v0, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mState:I

    if-eq v0, v8, :cond_2c

    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const/4 v4, 0x0

    iput v4, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mErrorCode:I

    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const-string v4, ""

    iput-object v4, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mErrorMsg:Ljava/lang/String;

    :cond_2c
    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const/4 v4, -0x1

    iput v4, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mErrorRssi:I

    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const/4 v4, 0x3

    iput v4, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mState:I

    :cond_2d
    :goto_16
    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mRedirectUrl:Ljava/lang/String;

    iget-object v0, p0, Lbww;->f:Lbtg;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-object v4, p0, Lbww;->f:Lbtg;

    invoke-virtual {v4}, Lbtg;->h()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mHostAddress:Ljava/lang/String;

    const-string v0, "127.0.0.1"

    iget-object v4, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-object v4, v4, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mHostAddress:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget v0, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mState:I

    if-ne v0, v8, :cond_2e

    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-object v4, p0, Lbww;->f:Lbtg;

    invoke-virtual {v4}, Lbtg;->g()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mRedirectUrl:Ljava/lang/String;

    :cond_2e
    :goto_17
    iget-object v0, p0, Lbww;->g:Lbwv;

    iget-object v4, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    invoke-virtual {v0, v4}, Lbwv;->a(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    if-eqz v1, :cond_2f

    :try_start_1d
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_a

    :cond_2f
    :goto_18
    if-eqz v2, :cond_30

    :try_start_1e
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_b

    :cond_30
    :goto_19
    :try_start_1f
    iget-object v0, p0, Lbww;->f:Lbtg;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lbww;->f:Lbtg;

    invoke-virtual {v0}, Lbtg;->d()V

    const/4 v0, 0x0

    iput-object v0, p0, Lbww;->f:Lbtg;

    goto/16 :goto_a

    :cond_31
    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget v0, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mState:I

    if-ne v0, v8, :cond_2d

    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const/4 v4, 0x5

    invoke-static {v4}, Lcom/tencent/tmsecure/utils/WifiUtil;->calculateSignalLevel(I)I

    move-result v4

    iput v4, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mErrorRssi:I

    goto :goto_16

    :cond_32
    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const-string v4, ""

    iput-object v4, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mHostAddress:Ljava/lang/String;

    goto :goto_17

    :catch_a
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_18

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_19

    :catchall_1
    move-exception v0

    move-object v2, v1

    :goto_1a
    iget-object v4, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v4, v4, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mCurrentSize:J

    iget-object v6, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v6, v6, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mSize:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_33

    iget-object v4, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v4, v4, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mCurrentSize:J

    cmp-long v4, v4, v9

    if-gtz v4, :cond_34

    :cond_33
    iget-object v4, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget v4, v4, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mState:I

    if-eq v4, v8, :cond_3b

    iget-boolean v4, p0, Lbww;->e:Z

    if-eqz v4, :cond_3b

    iget-object v4, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-boolean v4, v4, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->isSupportRange:Z

    if-nez v4, :cond_3b

    iget-object v4, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v4, v4, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mSize:J

    cmp-long v4, v4, v9

    if-gtz v4, :cond_3b

    iget-object v4, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-wide v4, v4, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mCurrentSize:J

    cmp-long v4, v4, v9

    if-lez v4, :cond_3b

    :cond_34
    iget-object v4, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget v4, v4, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mState:I

    if-eq v4, v8, :cond_35

    iget-object v4, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const/4 v5, 0x0

    iput v5, v4, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mErrorCode:I

    iget-object v4, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const-string v5, ""

    iput-object v5, v4, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mErrorMsg:Ljava/lang/String;

    :cond_35
    iget-object v4, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const/4 v5, -0x1

    iput v5, v4, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mErrorRssi:I

    iget-object v4, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const/4 v5, 0x3

    iput v5, v4, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mState:I

    :cond_36
    :goto_1b
    iget-object v4, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mRedirectUrl:Ljava/lang/String;

    iget-object v4, p0, Lbww;->f:Lbtg;

    if-eqz v4, :cond_3c

    iget-object v4, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-object v5, p0, Lbww;->f:Lbtg;

    invoke-virtual {v5}, Lbtg;->h()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mHostAddress:Ljava/lang/String;

    const-string v4, "127.0.0.1"

    iget-object v5, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-object v5, v5, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mHostAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_37

    iget-object v4, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget v4, v4, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mState:I

    if-ne v4, v8, :cond_37

    iget-object v4, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget-object v5, p0, Lbww;->f:Lbtg;

    invoke-virtual {v5}, Lbtg;->g()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mRedirectUrl:Ljava/lang/String;

    :cond_37
    :goto_1c
    iget-object v4, p0, Lbww;->g:Lbwv;

    iget-object v5, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    invoke-virtual {v4, v5}, Lbwv;->a(Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    if-eqz v1, :cond_38

    :try_start_20
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_0
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_c

    :cond_38
    :goto_1d
    if-eqz v2, :cond_39

    :try_start_21
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_0
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_d

    :cond_39
    :goto_1e
    :try_start_22
    iget-object v1, p0, Lbww;->f:Lbtg;

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lbww;->f:Lbtg;

    invoke-virtual {v1}, Lbtg;->d()V

    const/4 v1, 0x0

    iput-object v1, p0, Lbww;->f:Lbtg;

    :cond_3a
    throw v0

    :cond_3b
    iget-object v4, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget v4, v4, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mState:I

    if-ne v4, v8, :cond_36

    iget-object v4, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const/4 v5, 0x5

    invoke-static {v5}, Lcom/tencent/tmsecure/utils/WifiUtil;->calculateSignalLevel(I)I

    move-result v5

    iput v5, v4, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mErrorRssi:I

    goto :goto_1b

    :cond_3c
    iget-object v4, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const-string v5, ""

    iput-object v5, v4, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mHostAddress:Ljava/lang/String;

    goto :goto_1c

    :catch_c
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1d

    :catch_d
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1e

    :cond_3d
    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    iget v0, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mState:I

    if-ne v0, v8, :cond_e

    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const/4 v4, 0x5

    invoke-static {v4}, Lcom/tencent/tmsecure/utils/WifiUtil;->calculateSignalLevel(I)I

    move-result v4

    iput v4, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mErrorRssi:I

    goto/16 :goto_6

    :cond_3e
    iget-object v0, p0, Lbww;->c:Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;

    const-string v4, ""

    iput-object v4, v0, Lcom/tencent/tmsecure/module/networkload/NetworkLoadTask;->mHostAddress:Ljava/lang/String;

    goto/16 :goto_7

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_8

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_0

    goto/16 :goto_9

    :catchall_2
    move-exception v0

    goto/16 :goto_1a

    :catch_10
    move-exception v0

    goto/16 :goto_15

    :catch_11
    move-exception v0

    goto/16 :goto_10
.end method
