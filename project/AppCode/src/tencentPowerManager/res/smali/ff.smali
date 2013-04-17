.class final Lff;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lfh;",
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
.field private c:Lfh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Z

.field private f:Lev;

.field private g:Lfd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfd",
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

    sput-object v0, Lff;->a:Ljava/util/HashMap;

    const/4 v0, 0x3

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lff;->b:[S

    return-void

    :array_0
    .array-data 0x2
        0x8t 0x0t
        0x40t 0x0t
        0x80t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lfh;ZLjava/lang/String;)V
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

    iput v0, p0, Lff;->d:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lff;->e:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lff;->f:Lev;

    iput-byte v1, p0, Lff;->k:B

    iput-object p1, p0, Lff;->c:Lfh;

    iput-object p3, p0, Lff;->h:Ljava/lang/String;

    iput-boolean p2, p0, Lff;->j:Z

    sget-object v1, Lff;->a:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lff;->a:Ljava/util/HashMap;

    iget-object v2, p1, Lfh;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [B

    sget-object v2, Lff;->a:Ljava/util/HashMap;

    iget-object v3, p1, Lfh;->e:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iput-object v0, p0, Lff;->i:[B

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
            Leq;
        }
    .end annotation

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    :try_start_0
    sget-object v1, Lff;->b:[S

    const/4 v5, 0x1

    aget-short v1, v1, v5

    shl-int/lit8 v1, v1, 0xa

    new-array v6, v1, [B

    move-object/from16 v0, p0

    iget-object v1, v0, Lff;->f:Lev;

    if-nez v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lff;->c:Lfh;

    iget-wide v7, v1, Lfh;->h:J

    const-wide/16 v9, 0x0

    cmp-long v1, v7, v9

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lff;->c:Lfh;

    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lff;->c:Lfh;

    iget-object v1, v1, Lfh;->b:Ljava/lang/String;

    invoke-static {v1}, Lev;->a(Ljava/lang/String;)Lev;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lff;->f:Lev;

    move-object/from16 v0, p0

    iget-object v1, v0, Lff;->f:Lev;

    invoke-virtual {v1}, Lev;->a()I

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lff;->f:Lev;

    invoke-virtual {v1}, Lev;->c()I

    move-result v1

    const/16 v5, 0xc8

    if-eq v1, v5, :cond_4

    new-instance v1, Leq;

    move-object/from16 v0, p0

    iget-object v5, v0, Lff;->f:Lev;

    invoke-virtual {v5}, Lev;->c()I

    move-result v5

    add-int/lit16 v5, v5, -0xbb8

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "unbreakable download response code is not 200 error, but "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lff;->f:Lev;

    invoke-virtual {v7}, Lev;->c()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Leq;-><init>(ILjava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Leq; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    :catch_0
    move-exception v1

    :goto_0
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    move-object v5, v4

    :goto_1
    if-eqz v5, :cond_2

    :try_start_2
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    :cond_2
    :goto_2
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_3

    invoke-static {}, Lfj;->a()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Lfj;->a(J)V

    :cond_3
    throw v1

    :cond_4
    :try_start_3
    new-instance v5, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p0

    iget-object v1, v0, Lff;->f:Lev;

    invoke-virtual {v1}, Lev;->b()Ljava/io/InputStream;

    move-result-object v1

    array-length v7, v6

    invoke-direct {v5, v1, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Leq; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    move-object/from16 v0, p0

    iget-object v1, v0, Lff;->c:Lfh;

    iget-wide v11, v1, Lfh;->h:J

    const/4 v4, 0x0

    invoke-static {}, Lbk;->a()LQQPIM/ConnectType;

    move-result-object v1

    sget-object v7, LQQPIM/ConnectType;->CT_WIFI:LQQPIM/ConnectType;

    if-eq v1, v7, :cond_8

    const/4 v1, 0x1

    :goto_3
    move/from16 v17, v4

    move-object v4, v6

    move/from16 v6, v17

    :cond_5
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lff;->e:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Leq; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7

    if-nez v7, :cond_9

    :cond_6
    :goto_5
    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    :goto_6
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_7

    invoke-static {}, Lfj;->a()J

    move-result-wide v4

    add-long v1, v4, v2

    invoke-static {v1, v2}, Lfj;->a(J)V

    :cond_7
    return-void

    :cond_8
    const/4 v1, 0x0

    goto :goto_3

    :cond_9
    :try_start_6
    invoke-virtual {v5, v4}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v7

    if-gtz v7, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lff;->c:Lfh;

    iget-wide v6, v1, Lfh;->h:J

    move-object/from16 v0, p0

    iget-object v1, v0, Lff;->c:Lfh;

    iget-wide v8, v1, Lfh;->g:J

    cmp-long v1, v6, v8

    if-lez v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lff;->c:Lfh;

    iget-wide v6, v1, Lfh;->g:J

    const-wide/16 v8, 0x0

    cmp-long v1, v6, v8

    if-lez v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lff;->c:Lfh;

    move-object/from16 v0, p0

    iget-object v4, v0, Lff;->c:Lfh;

    iget-wide v6, v4, Lfh;->h:J

    iput-wide v6, v1, Lfh;->g:J

    goto :goto_5

    :catch_1
    move-exception v1

    move-object v4, v5

    goto/16 :goto_0

    :cond_a
    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v8, v7}, Ljava/io/FileOutputStream;->write([BII)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lff;->c:Lfh;

    iget-wide v13, v8, Lfh;->h:J

    int-to-long v15, v7

    add-long/2addr v13, v15

    iput-wide v13, v8, Lfh;->h:J

    add-int/2addr v6, v7

    if-eqz v1, :cond_b

    int-to-long v7, v7

    add-long/2addr v2, v7

    :cond_b
    move-object/from16 v0, p0

    iget-object v7, v0, Lff;->c:Lfh;

    iget-wide v7, v7, Lfh;->g:J

    move-object/from16 v0, p0

    iget-object v13, v0, Lff;->c:Lfh;

    iget-wide v13, v13, Lfh;->h:J

    cmp-long v7, v7, v13

    if-nez v7, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lff;->c:Lfh;

    const/high16 v4, 0x3f80

    iput v4, v1, Lfh;->i:F
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Leq; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    goto :goto_5

    :catch_2
    move-exception v1

    :goto_7
    :try_start_7
    new-instance v4, Leq;

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

    invoke-direct {v4, v6, v1}, Leq;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v1

    goto/16 :goto_1

    :cond_c
    :try_start_8
    move-object/from16 v0, p0

    iget-object v7, v0, Lff;->c:Lfh;

    iget-wide v7, v7, Lfh;->g:J

    const-wide/16 v13, 0x0

    cmp-long v7, v7, v13

    if-lez v7, :cond_d

    move-object/from16 v0, p0

    iget-object v7, v0, Lff;->c:Lfh;

    move-object/from16 v0, p0

    iget-object v8, v0, Lff;->c:Lfh;

    iget-wide v13, v8, Lfh;->h:J

    long-to-float v8, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lff;->c:Lfh;

    iget-wide v13, v13, Lfh;->g:J

    long-to-float v13, v13

    div-float/2addr v8, v13

    iput v8, v7, Lfh;->i:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lff;->g:Lfd;

    move-object/from16 v0, p0

    iget-object v8, v0, Lff;->c:Lfh;

    invoke-virtual {v7, v8}, Lfd;->e(Lfh;)V

    :cond_d
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lff;->e:Z

    if-eqz v7, :cond_6

    move-object/from16 v0, p0

    iget v7, v0, Lff;->d:I

    if-le v6, v7, :cond_5

    const/4 v8, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v9

    const-wide/16 v13, 0x0

    cmp-long v13, v6, v13

    if-gtz v13, :cond_e

    const-wide/16 v6, 0x1

    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lff;->c:Lfh;

    iget-wide v13, v13, Lfh;->h:J

    sub-long/2addr v13, v11

    div-long v6, v13, v6

    long-to-int v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lff;->c:Lfh;

    iget v7, v7, Lfh;->j:I

    if-nez v7, :cond_10

    move-object/from16 v0, p0

    iget-object v7, v0, Lff;->c:Lfh;

    iput v6, v7, Lfh;->j:I

    :goto_8
    const/16 v7, 0x21

    if-ge v6, v7, :cond_11

    array-length v6, v4

    sget-object v7, Lff;->b:[S

    const/4 v13, 0x0

    aget-short v7, v7, v13

    shl-int/lit8 v7, v7, 0xa

    if-eq v6, v7, :cond_f

    sget-object v4, Lff;->b:[S

    const/4 v6, 0x0

    aget-short v4, v4, v6

    shl-int/lit8 v4, v4, 0xa

    new-array v4, v4, [B

    :cond_f
    :goto_9
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_13

    invoke-static {}, Lfj;->a()J

    move-result-wide v6

    add-long/2addr v6, v2

    invoke-static {v6, v7}, Lfj;->a(J)V

    const-wide/16 v2, 0x0

    move v6, v8

    goto/16 :goto_4

    :cond_10
    move-object/from16 v0, p0

    iget-object v7, v0, Lff;->c:Lfh;

    move-object/from16 v0, p0

    iget-object v13, v0, Lff;->c:Lfh;

    iget v13, v13, Lfh;->j:I

    add-int/2addr v13, v6

    div-int/lit8 v13, v13, 0x2

    iput v13, v7, Lfh;->j:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Leq; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_8

    :catch_3
    move-exception v1

    :goto_a
    :try_start_9
    new-instance v4, Leq;

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

    invoke-direct {v4, v6, v1}, Leq;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_11
    const/16 v7, 0x41

    if-ge v6, v7, :cond_12

    :try_start_a
    array-length v6, v4

    sget-object v7, Lff;->b:[S

    const/4 v13, 0x1

    aget-short v7, v7, v13

    shl-int/lit8 v7, v7, 0xa

    if-eq v6, v7, :cond_f

    sget-object v4, Lff;->b:[S

    const/4 v6, 0x1

    aget-short v4, v4, v6

    shl-int/lit8 v4, v4, 0xa

    new-array v4, v4, [B

    goto :goto_9

    :cond_12
    array-length v6, v4

    sget-object v7, Lff;->b:[S

    const/4 v13, 0x2

    aget-short v7, v7, v13

    shl-int/lit8 v7, v7, 0xa

    if-eq v6, v7, :cond_f

    sget-object v4, Lff;->b:[S

    const/4 v6, 0x2

    aget-short v4, v4, v6

    shl-int/lit8 v4, v4, 0xa

    new-array v4, v4, [B
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Leq; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_9

    :catch_4
    move-exception v1

    move-object v5, v4

    :goto_b
    :try_start_b
    new-instance v4, Leq;

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

    invoke-direct {v4, v6, v1}, Leq;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :catch_5
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    :catch_6
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_6

    :catchall_2
    move-exception v1

    move-object v5, v4

    goto/16 :goto_1

    :catch_7
    move-exception v1

    goto :goto_b

    :catch_8
    move-exception v1

    move-object v5, v4

    goto :goto_a

    :catch_9
    move-exception v1

    move-object v5, v4

    goto/16 :goto_7

    :cond_13
    move v6, v8

    goto/16 :goto_4
.end method

.method private b(Ljava/io/FileOutputStream;)V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Leq;
        }
    .end annotation

    const/4 v5, 0x0

    const-wide/16 v3, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    :try_start_0
    sget-object v2, Lff;->b:[S

    const/4 v7, 0x1

    aget-short v2, v2, v7

    shl-int/lit8 v2, v2, 0xa

    new-array v2, v2, [B

    const/4 v11, 0x1

    move v7, v11

    :goto_0
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lff;->e:Z

    if-eqz v10, :cond_0

    move-object/from16 v0, p0

    iget-object v10, v0, Lff;->c:Lfh;

    iget v10, v10, Lfh;->i:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Leq; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_b

    const/high16 v11, 0x3f80

    cmpl-float v10, v10, v11

    if-nez v10, :cond_3

    :cond_0
    move-object/from16 v0, p0

    iget-byte v2, v0, Lff;->k:B

    if-lez v2, :cond_1

    if-eqz p1, :cond_1

    :try_start_1
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_f

    :cond_1
    :goto_1
    const-wide/16 v5, 0x0

    cmp-long v2, v3, v5

    if-lez v2, :cond_2

    invoke-static {}, Lfj;->a()J

    move-result-wide v5

    add-long v2, v5, v3

    invoke-static {v2, v3}, Lfj;->a(J)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    :try_start_2
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    move-object/from16 v0, p0

    iget-object v10, v0, Lff;->c:Lfh;

    iget-wide v12, v10, Lfh;->h:J

    const-wide/16 v14, 0x1

    move-object/from16 v0, p0

    iget v10, v0, Lff;->d:I

    int-to-long v0, v10

    move-wide/from16 v16, v0

    mul-long v14, v14, v16

    int-to-long v9, v9

    mul-long/2addr v9, v14

    add-long/2addr v9, v12

    const-wide/16 v14, 0x1

    sub-long/2addr v9, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lff;->c:Lfh;

    iget-wide v14, v14, Lfh;->g:J

    cmp-long v14, v9, v14

    if-ltz v14, :cond_4

    move-object/from16 v0, p0

    iget-object v9, v0, Lff;->c:Lfh;

    iget-wide v9, v9, Lfh;->g:J

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

    iget-boolean v6, v0, Lff;->e:Z

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lff;->f:Lev;

    if-nez v9, :cond_a

    move-object/from16 v0, p0

    iget-object v9, v0, Lff;->c:Lfh;

    move-object/from16 v0, p0

    iget-object v9, v0, Lff;->c:Lfh;

    iget-object v9, v9, Lfh;->b:Ljava/lang/String;

    invoke-static {v9}, Lev;->a(Ljava/lang/String;)Lev;

    move-result-object v9

    move-object/from16 v0, p0

    iput-object v9, v0, Lff;->f:Lev;

    move-object/from16 v0, p0

    iget-object v9, v0, Lff;->f:Lev;

    const-string v10, "Range"

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lev;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lff;->f:Lev;

    invoke-virtual {v9}, Lev;->a()I

    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v9, v0, Lff;->e:Z

    if-eqz v9, :cond_0

    move-object/from16 v0, p0

    iget-object v9, v0, Lff;->f:Lev;

    invoke-virtual {v9}, Lev;->c()I

    move-result v9

    const/16 v10, 0xce

    if-eq v9, v10, :cond_b

    new-instance v2, Leq;

    move-object/from16 v0, p0

    iget-object v7, v0, Lff;->f:Lev;

    invoke-virtual {v7}, Lev;->c()I

    move-result v7

    add-int/lit16 v7, v7, -0xbb8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "breakable download response code is not 206 error, but "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lff;->f:Lev;

    invoke-virtual {v10}, Lev;->c()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v7, v9}, Leq;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Leq; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_13
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b

    :catch_0
    move-exception v2

    :goto_4
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v2

    :goto_5
    if-eqz v5, :cond_6

    :try_start_4
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_c

    :cond_6
    :goto_6
    move-object/from16 v0, p0

    iget-byte v5, v0, Lff;->k:B

    if-lez v5, :cond_7

    if-eqz p1, :cond_7

    :try_start_5
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_d

    :cond_7
    :goto_7
    if-eqz v8, :cond_8

    :try_start_6
    invoke-virtual {v8}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_e

    :cond_8
    :goto_8
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_9

    invoke-static {}, Lfj;->a()J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-static {v3, v4}, Lfj;->a(J)V

    :cond_9
    throw v2

    :cond_a
    if-nez v7, :cond_5

    :try_start_7
    move-object/from16 v0, p0

    iget-object v9, v0, Lff;->f:Lev;

    invoke-virtual {v9}, Lev;->d()V

    move-object/from16 v0, p0

    iget-object v9, v0, Lff;->f:Lev;

    invoke-static {v9}, Lev;->a(Lev;)Lev;

    move-result-object v9

    move-object/from16 v0, p0

    iput-object v9, v0, Lff;->f:Lev;

    move-object/from16 v0, p0

    iget-object v9, v0, Lff;->f:Lev;

    const-string v10, "Range"

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lev;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lff;->f:Lev;

    invoke-virtual {v9}, Lev;->a()I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Leq; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_13
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_b

    goto/16 :goto_3

    :catch_1
    move-exception v2

    :goto_9
    :try_start_8
    new-instance v6, Leq;

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

    invoke-direct {v6, v7, v2}, Leq;-><init>(ILjava/lang/String;)V

    throw v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_b
    if-eqz v7, :cond_1c

    const/4 v7, 0x0

    move v11, v7

    :goto_a
    :try_start_9
    invoke-static {}, Lbk;->a()LQQPIM/ConnectType;

    move-result-object v7

    sget-object v9, LQQPIM/ConnectType;->CT_WIFI:LQQPIM/ConnectType;

    if-eq v7, v9, :cond_e

    const/4 v7, 0x1

    move v9, v7

    :goto_b
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lff;->e:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Leq; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_13
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_b

    if-eqz v6, :cond_0

    const/4 v7, 0x1

    :try_start_a
    new-instance v6, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p0

    iget-object v10, v0, Lff;->f:Lev;

    invoke-virtual {v10}, Lev;->b()Ljava/io/InputStream;

    move-result-object v10

    array-length v14, v2

    invoke-direct {v6, v10, v14}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Leq; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_b

    :try_start_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3
    .catch Leq; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_14
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_10

    move-result-wide v14

    move v5, v7

    :goto_c
    :try_start_c
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lff;->e:Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3
    .catch Leq; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_15
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_10

    if-nez v7, :cond_f

    :cond_c
    move v7, v5

    :goto_d
    :try_start_d
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4
    .catch Leq; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_14

    :goto_e
    const/4 v5, 0x0

    :try_start_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v14

    const-wide/16 v14, 0x0

    cmp-long v6, v9, v14

    if-gtz v6, :cond_d

    const-wide/16 v9, 0x1

    :cond_d
    move-object/from16 v0, p0

    iget-object v6, v0, Lff;->c:Lfh;

    iget-wide v14, v6, Lfh;->h:J

    sub-long v12, v14, v12

    div-long v9, v12, v9

    long-to-int v6, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lff;->c:Lfh;

    iget v9, v9, Lfh;->j:I

    if-nez v9, :cond_13

    move-object/from16 v0, p0

    iget-object v9, v0, Lff;->c:Lfh;

    iput v6, v9, Lfh;->j:I

    :goto_f
    const/16 v9, 0x21

    if-ge v6, v9, :cond_17

    const/4 v6, 0x1

    array-length v9, v2

    sget-object v10, Lff;->b:[S

    const/4 v12, 0x0

    aget-short v10, v10, v12

    shl-int/lit8 v10, v10, 0xa

    if-eq v9, v10, :cond_1b

    sget-object v2, Lff;->b:[S

    const/4 v9, 0x0

    aget-short v2, v2, v9

    shl-int/lit8 v2, v2, 0xa

    new-array v2, v2, [B
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Leq; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_b

    move v9, v6

    :goto_10
    const-wide/16 v12, 0x0

    cmp-long v6, v3, v12

    if-lez v6, :cond_1a

    const/4 v6, 0x6

    :try_start_f
    invoke-static {}, Lfj;->a()J

    move-result-wide v12

    add-long/2addr v12, v3

    invoke-static {v12, v13}, Lfj;->a(J)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Leq; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_f .. :try_end_f} :catch_1
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_13
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_b

    const-wide/16 v3, 0x0

    const/4 v6, 0x7

    move v7, v11

    goto/16 :goto_0

    :cond_e
    const/4 v7, 0x0

    move v9, v7

    goto :goto_b

    :cond_f
    const/4 v5, 0x2

    :try_start_10
    invoke-virtual {v6, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v7

    if-gtz v7, :cond_10

    move-object/from16 v0, p0

    iget-object v7, v0, Lff;->c:Lfh;

    iget-wide v9, v7, Lfh;->h:J

    move-object/from16 v0, p0

    iget-object v7, v0, Lff;->c:Lfh;

    iget-wide v0, v7, Lfh;->g:J

    move-wide/from16 v16, v0

    cmp-long v7, v9, v16

    if-lez v7, :cond_c

    move-object/from16 v0, p0

    iget-object v7, v0, Lff;->c:Lfh;

    iget-wide v9, v7, Lfh;->g:J

    const-wide/16 v16, 0x0

    cmp-long v7, v9, v16

    if-lez v7, :cond_c

    move-object/from16 v0, p0

    iget-object v7, v0, Lff;->c:Lfh;

    move-object/from16 v0, p0

    iget-object v9, v0, Lff;->c:Lfh;

    iget-wide v9, v9, Lfh;->h:J

    iput-wide v9, v7, Lfh;->g:J

    move-object/from16 v0, p0

    iget-object v7, v0, Lff;->c:Lfh;

    const/high16 v9, 0x3f80

    iput v9, v7, Lfh;->i:F

    move v7, v5

    goto/16 :goto_d

    :cond_10
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lff;->e:Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3
    .catch Leq; {:try_start_10 .. :try_end_10} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_10 .. :try_end_10} :catch_5
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_10

    if-eqz v10, :cond_c

    const/4 v5, 0x3

    const/4 v10, 0x0

    :try_start_11
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v10, v7}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/FileOutputStream;->flush()V

    move-object/from16 v0, p0

    iget-object v10, v0, Lff;->c:Lfh;

    iget-wide v0, v10, Lfh;->h:J

    move-wide/from16 v16, v0

    int-to-long v0, v7

    move-wide/from16 v18, v0

    add-long v16, v16, v18

    move-wide/from16 v0, v16

    iput-wide v0, v10, Lfh;->h:J
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_2
    .catch Leq; {:try_start_11 .. :try_end_11} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_11 .. :try_end_11} :catch_5
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_10

    if-eqz v9, :cond_11

    int-to-long v0, v7

    move-wide/from16 v16, v0

    add-long v3, v3, v16

    :cond_11
    :try_start_12
    move-object/from16 v0, p0

    iget-object v7, v0, Lff;->c:Lfh;

    iget-wide v0, v7, Lfh;->g:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lff;->c:Lfh;

    iget-wide v0, v7, Lfh;->h:J

    move-wide/from16 v18, v0

    cmp-long v7, v16, v18

    if-nez v7, :cond_12

    move-object/from16 v0, p0

    iget-object v7, v0, Lff;->c:Lfh;

    const/high16 v9, 0x3f80

    iput v9, v7, Lfh;->i:F

    move v7, v5

    goto/16 :goto_d

    :catch_2
    move-exception v2

    new-instance v7, Leq;

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

    invoke-direct {v7, v9, v2}, Leq;-><init>(ILjava/lang/String;)V

    throw v7

    :catch_3
    move-exception v2

    move-object v5, v6

    goto/16 :goto_4

    :cond_12
    move-object/from16 v0, p0

    iget-object v7, v0, Lff;->c:Lfh;

    move-object/from16 v0, p0

    iget-object v10, v0, Lff;->c:Lfh;

    iget-wide v0, v10, Lfh;->h:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-float v10, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lff;->c:Lfh;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lfh;->g:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-float v0, v0

    move/from16 v16, v0

    div-float v10, v10, v16

    iput v10, v7, Lfh;->i:F

    const/4 v5, 0x4

    move-object/from16 v0, p0

    iget-object v7, v0, Lff;->g:Lfd;

    move-object/from16 v0, p0

    iget-object v10, v0, Lff;->c:Lfh;

    invoke-virtual {v7, v10}, Lfd;->e(Lfh;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3
    .catch Leq; {:try_start_12 .. :try_end_12} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_12 .. :try_end_12} :catch_5
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_15
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_10

    const/4 v5, 0x5

    goto/16 :goto_c

    :catch_4
    move-exception v5

    :try_start_13
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3
    .catch Leq; {:try_start_13 .. :try_end_13} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_13 .. :try_end_13} :catch_5
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_14
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_10

    goto/16 :goto_e

    :catch_5
    move-exception v2

    move-object v5, v6

    goto/16 :goto_9

    :cond_13
    :try_start_14
    move-object/from16 v0, p0

    iget-object v9, v0, Lff;->c:Lfh;

    move-object/from16 v0, p0

    iget-object v10, v0, Lff;->c:Lfh;

    iget v10, v10, Lfh;->j:I

    add-int/2addr v10, v6

    div-int/lit8 v10, v10, 0x2

    iput v10, v9, Lfh;->j:I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0
    .catch Leq; {:try_start_14 .. :try_end_14} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_14 .. :try_end_14} :catch_1
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_6
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_b

    goto/16 :goto_f

    :catch_6
    move-exception v2

    move-object v6, v5

    move-wide/from16 v20, v3

    move-wide/from16 v4, v20

    move v3, v7

    :goto_11
    :try_start_15
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lff;->e:Z

    if-eqz v7, :cond_19

    move-object/from16 v0, p0

    iget-byte v7, v0, Lff;->k:B

    add-int/lit8 v9, v7, 0x1

    int-to-byte v9, v9

    move-object/from16 v0, p0

    iput-byte v9, v0, Lff;->k:B
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    const/16 v9, 0xa

    if-ge v7, v9, :cond_19

    :try_start_16
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual/range {p1 .. p1}, Ljava/io/FileOutputStream;->close()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lff;->f:Lev;

    invoke-virtual {v2}, Lev;->d()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lff;->f:Lev;

    move-object/from16 v0, p0

    iget-object v2, v0, Lff;->c:Lfh;

    new-instance v3, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v7, v0, Lff;->h:Ljava/lang/String;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v9

    iput-wide v9, v2, Lfh;->h:J

    new-instance v7, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v2, v0, Lff;->h:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v7, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_7

    :try_start_17
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_11

    move-result-object v3

    :try_start_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lff;->c:Lfh;

    iget-wide v8, v2, Lfh;->h:J

    invoke-virtual {v3, v8, v9}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lff;->b(Ljava/io/FileOutputStream;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_5
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_12

    if-eqz v6, :cond_14

    :try_start_19
    invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_8

    :cond_14
    :goto_12
    move-object/from16 v0, p0

    iget-byte v2, v0, Lff;->k:B

    if-lez v2, :cond_15

    :try_start_1a
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_9

    :cond_15
    :goto_13
    if-eqz v3, :cond_16

    :try_start_1b
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_a

    :cond_16
    :goto_14
    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-lez v2, :cond_2

    invoke-static {}, Lfj;->a()J

    move-result-wide v2

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Lfj;->a(J)V

    goto/16 :goto_2

    :cond_17
    const/16 v9, 0x41

    if-ge v6, v9, :cond_18

    const/4 v6, 0x2

    :try_start_1c
    array-length v9, v2

    sget-object v10, Lff;->b:[S

    const/4 v12, 0x1

    aget-short v10, v10, v12

    shl-int/lit8 v10, v10, 0xa

    if-eq v9, v10, :cond_1b

    sget-object v2, Lff;->b:[S

    const/4 v9, 0x1

    aget-short v2, v2, v9

    shl-int/lit8 v2, v2, 0xa

    new-array v2, v2, [B

    move v9, v6

    goto/16 :goto_10

    :cond_18
    const/4 v6, 0x3

    array-length v9, v2

    sget-object v10, Lff;->b:[S

    const/4 v12, 0x2

    aget-short v10, v10, v12

    shl-int/lit8 v10, v10, 0xa

    if-eq v9, v10, :cond_1b

    sget-object v2, Lff;->b:[S

    const/4 v9, 0x2

    aget-short v2, v2, v9

    shl-int/lit8 v2, v2, 0xa

    new-array v2, v2, [B
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0
    .catch Leq; {:try_start_1c .. :try_end_1c} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1c .. :try_end_1c} :catch_1
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_b

    move v9, v6

    goto/16 :goto_10

    :catch_7
    move-exception v2

    move-object v3, v8

    :goto_15
    :try_start_1d
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    new-instance v7, Leq;

    const/16 v8, -0x1b90

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "breakable download IOException on try "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-byte v10, v0, Lff;->k:B

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

    invoke-direct {v7, v8, v2}, Leq;-><init>(ILjava/lang/String;)V

    throw v7
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1

    :catchall_1
    move-exception v2

    move-object v8, v3

    move-wide/from16 v20, v4

    move-wide/from16 v3, v20

    move-object v5, v6

    goto/16 :goto_5

    :cond_19
    :try_start_1e
    new-instance v7, Leq;

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

    invoke-direct {v7, v9, v2}, Leq;-><init>(ILjava/lang/String;)V

    throw v7
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_2

    :catchall_2
    move-exception v2

    move-wide/from16 v20, v4

    move-wide/from16 v3, v20

    move-object v5, v6

    goto/16 :goto_5

    :catch_8
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_12

    :catch_9
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_13

    :catch_a
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_14

    :catch_b
    move-exception v2

    :goto_16
    :try_start_1f
    new-instance v6, Leq;

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

    invoke-direct {v6, v7, v2}, Leq;-><init>(ILjava/lang/String;)V

    throw v6
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    :catch_c
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_6

    :catch_d
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_7

    :catch_e
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_8

    :catch_f
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    :catchall_3
    move-exception v2

    move-object v5, v6

    goto/16 :goto_5

    :catchall_4
    move-exception v2

    move-object/from16 p1, v7

    move-wide/from16 v20, v4

    move-wide/from16 v3, v20

    move-object v5, v6

    goto/16 :goto_5

    :catchall_5
    move-exception v2

    move-object v8, v3

    move-object/from16 p1, v7

    move-wide/from16 v20, v4

    move-wide/from16 v3, v20

    move-object v5, v6

    goto/16 :goto_5

    :catch_10
    move-exception v2

    move-object v5, v6

    goto :goto_16

    :catch_11
    move-exception v2

    move-object v3, v8

    move-object/from16 p1, v7

    goto/16 :goto_15

    :catch_12
    move-exception v2

    move-object/from16 p1, v7

    goto/16 :goto_15

    :catch_13
    move-exception v2

    move/from16 v20, v6

    move-object v6, v5

    move-wide/from16 v21, v3

    move-wide/from16 v4, v21

    move/from16 v3, v20

    goto/16 :goto_11

    :catch_14
    move-exception v2

    move-wide/from16 v20, v3

    move-wide/from16 v4, v20

    move v3, v7

    goto/16 :goto_11

    :catch_15
    move-exception v2

    move/from16 v20, v5

    move-wide/from16 v21, v3

    move-wide/from16 v4, v21

    move/from16 v3, v20

    goto/16 :goto_11

    :cond_1a
    move v6, v7

    move v7, v11

    goto/16 :goto_0

    :cond_1b
    move v9, v6

    goto/16 :goto_10

    :cond_1c
    move v11, v7

    goto/16 :goto_a
.end method


# virtual methods
.method final a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lff;->e:Z

    iget-object v0, p0, Lff;->f:Lev;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lff;->f:Lev;

    invoke-virtual {v0}, Lev;->d()V

    const/4 v0, 0x0

    iput-object v0, p0, Lff;->f:Lev;
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

.method final a(Lfd;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfd",
            "<TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lff;->g:Lfd;

    return-void
.end method

.method public final run()V
    .locals 11

    const/4 v4, 0x1

    const/4 v1, 0x0

    const-wide/16 v9, 0x0

    const/4 v8, 0x2

    iget-object v3, p0, Lff;->i:[B

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lff;->c:Lfh;

    invoke-static {}, Lbk;->a()LQQPIM/ConnectType;

    iget-object v0, p0, Lff;->c:Lfh;

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v2, v4, :cond_7

    invoke-static {}, Lbk;->b()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lff;->c:Lfh;

    iget-wide v4, v0, Lfh;->h:J

    iget-object v0, p0, Lff;->c:Lfh;

    iget-wide v6, v0, Lfh;->g:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_a

    iget-object v0, p0, Lff;->c:Lfh;

    iget-wide v4, v0, Lfh;->h:J

    cmp-long v0, v4, v9

    if-lez v0, :cond_a

    iget-object v0, p0, Lff;->c:Lfh;

    const/4 v2, 0x3

    iput v2, v0, Lfh;->d:I

    iget-object v0, p0, Lff;->c:Lfh;

    iget-object v0, p0, Lff;->c:Lfh;

    iget-object v0, p0, Lff;->c:Lfh;

    iget-object v0, p0, Lff;->c:Lfh;

    const/high16 v2, 0x3f80

    iput v2, v0, Lfh;->i:F

    iget-object v0, p0, Lff;->g:Lfd;

    iget-object v2, p0, Lff;->c:Lfh;

    invoke-virtual {v0, v2}, Lfd;->d(Lfh;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Leq; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9

    :try_start_2
    iget-object v0, p0, Lff;->c:Lfh;

    iget-wide v0, v0, Lfh;->h:J

    iget-object v2, p0, Lff;->c:Lfh;

    iget-wide v4, v2, Lfh;->g:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    iget-object v0, p0, Lff;->c:Lfh;

    iget-wide v0, v0, Lfh;->h:J

    cmp-long v0, v0, v9

    if-gtz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lff;->c:Lfh;

    iget v0, v0, Lfh;->d:I

    if-eq v0, v8, :cond_8

    iget-boolean v0, p0, Lff;->e:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lff;->c:Lfh;

    iget-boolean v0, v0, Lfh;->c:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lff;->c:Lfh;

    iget-wide v0, v0, Lfh;->g:J

    cmp-long v0, v0, v9

    if-gtz v0, :cond_8

    iget-object v0, p0, Lff;->c:Lfh;

    iget-wide v0, v0, Lfh;->h:J

    cmp-long v0, v0, v9

    if-lez v0, :cond_8

    :cond_2
    iget-object v0, p0, Lff;->c:Lfh;

    iget v0, v0, Lfh;->d:I

    if-eq v0, v8, :cond_3

    iget-object v0, p0, Lff;->c:Lfh;

    iget-object v0, p0, Lff;->c:Lfh;

    :cond_3
    iget-object v0, p0, Lff;->c:Lfh;

    iget-object v0, p0, Lff;->c:Lfh;

    const/4 v1, 0x3

    iput v1, v0, Lfh;->d:I

    :cond_4
    :goto_1
    iget-object v0, p0, Lff;->c:Lfh;

    iget-object v0, p0, Lff;->f:Lev;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lff;->c:Lfh;

    iget-object v1, p0, Lff;->f:Lev;

    invoke-virtual {v1}, Lev;->h()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lfh;->l:Ljava/lang/String;

    const-string v0, "127.0.0.1"

    iget-object v1, p0, Lff;->c:Lfh;

    iget-object v1, v1, Lfh;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lff;->c:Lfh;

    iget v0, v0, Lfh;->d:I

    if-ne v0, v8, :cond_5

    iget-object v0, p0, Lff;->c:Lfh;

    iget-object v0, p0, Lff;->f:Lev;

    invoke-virtual {v0}, Lev;->g()Ljava/lang/String;

    :cond_5
    :goto_2
    iget-object v0, p0, Lff;->g:Lfd;

    iget-object v1, p0, Lff;->c:Lfh;

    invoke-virtual {v0, v1}, Lfd;->d(Lfh;)V

    iget-object v0, p0, Lff;->f:Lev;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lff;->f:Lev;

    invoke-virtual {v0}, Lev;->d()V

    const/4 v0, 0x0

    iput-object v0, p0, Lff;->f:Lev;

    :cond_6
    monitor-exit v3

    :goto_3
    return-void

    :cond_7
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_8
    :try_start_3
    iget-object v0, p0, Lff;->c:Lfh;

    iget v0, v0, Lfh;->d:I

    if-ne v0, v8, :cond_4

    iget-object v0, p0, Lff;->c:Lfh;

    invoke-static {}, Lbk;->c()I

    goto :goto_1

    :cond_9
    iget-object v0, p0, Lff;->c:Lfh;

    const-string v1, ""

    iput-object v1, v0, Lfh;->l:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :cond_a
    :try_start_4
    iget-boolean v0, p0, Lff;->j:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Leq; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_9

    if-nez v0, :cond_c

    :try_start_5
    iget-object v0, p0, Lff;->c:Lfh;

    iget-object v0, p0, Lff;->c:Lfh;

    iget-object v0, v0, Lfh;->b:Ljava/lang/String;

    invoke-static {v0}, Lev;->a(Ljava/lang/String;)Lev;

    move-result-object v0

    iput-object v0, p0, Lff;->f:Lev;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "bytes=0"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x2d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lff;->d:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lff;->f:Lev;

    const-string v4, "Range"

    invoke-virtual {v2, v4, v0}, Lev;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lff;->f:Lev;

    invoke-virtual {v0}, Lev;->a()I

    move-result v0

    const/16 v2, 0xce

    if-eq v0, v2, :cond_b

    iget-object v0, p0, Lff;->f:Lev;

    invoke-virtual {v0}, Lev;->d()V

    iget-object v0, p0, Lff;->c:Lfh;

    iget-object v0, v0, Lfh;->b:Ljava/lang/String;

    invoke-static {v0}, Lev;->a(Ljava/lang/String;)Lev;

    move-result-object v0

    iput-object v0, p0, Lff;->f:Lev;

    iget-object v0, p0, Lff;->f:Lev;

    invoke-virtual {v0}, Lev;->a()I

    :cond_b
    iget-object v0, p0, Lff;->f:Lev;

    invoke-virtual {v0}, Lev;->c()I

    move-result v0

    const/16 v2, 0xce

    if-ne v0, v2, :cond_14

    iget-object v0, p0, Lff;->c:Lfh;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lfh;->c:Z

    iget-object v0, p0, Lff;->c:Lfh;

    iget-object v2, p0, Lff;->f:Lev;

    invoke-virtual {v2}, Lev;->e()J

    move-result-wide v4

    iput-wide v4, v0, Lfh;->g:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Leq; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_c
    :goto_4
    :try_start_6
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v0, p0, Lff;->h:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {v2, v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Leq; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_9

    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    iget-object v0, p0, Lff;->c:Lfh;

    iget-wide v4, v0, Lfh;->h:J

    invoke-virtual {v1, v4, v5}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    iget-object v0, p0, Lff;->c:Lfh;

    iget-boolean v0, v0, Lfh;->c:Z

    if-nez v0, :cond_25

    invoke-direct {p0, v2}, Lff;->a(Ljava/io/FileOutputStream;)V

    :goto_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Leq; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_11
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_10

    :try_start_8
    iget-object v0, p0, Lff;->c:Lfh;

    iget-wide v4, v0, Lfh;->h:J

    iget-object v0, p0, Lff;->c:Lfh;

    iget-wide v6, v0, Lfh;->g:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_d

    iget-object v0, p0, Lff;->c:Lfh;

    iget-wide v4, v0, Lfh;->h:J

    cmp-long v0, v4, v9

    if-gtz v0, :cond_e

    :cond_d
    iget-object v0, p0, Lff;->c:Lfh;

    iget v0, v0, Lfh;->d:I

    if-eq v0, v8, :cond_3e

    iget-boolean v0, p0, Lff;->e:Z

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lff;->c:Lfh;

    iget-boolean v0, v0, Lfh;->c:Z

    if-nez v0, :cond_3e

    iget-object v0, p0, Lff;->c:Lfh;

    iget-wide v4, v0, Lfh;->g:J

    cmp-long v0, v4, v9

    if-gtz v0, :cond_3e

    iget-object v0, p0, Lff;->c:Lfh;

    iget-wide v4, v0, Lfh;->h:J

    cmp-long v0, v4, v9

    if-lez v0, :cond_3e

    :cond_e
    iget-object v0, p0, Lff;->c:Lfh;

    iget v0, v0, Lfh;->d:I

    if-eq v0, v8, :cond_f

    iget-object v0, p0, Lff;->c:Lfh;

    iget-object v0, p0, Lff;->c:Lfh;

    :cond_f
    iget-object v0, p0, Lff;->c:Lfh;

    iget-object v0, p0, Lff;->c:Lfh;

    const/4 v4, 0x3

    iput v4, v0, Lfh;->d:I

    :cond_10
    :goto_6
    iget-object v0, p0, Lff;->c:Lfh;

    iget-object v0, p0, Lff;->f:Lev;

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lff;->c:Lfh;

    iget-object v4, p0, Lff;->f:Lev;

    invoke-virtual {v4}, Lev;->h()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lfh;->l:Ljava/lang/String;

    const-string v0, "127.0.0.1"

    iget-object v4, p0, Lff;->c:Lfh;

    iget-object v4, v4, Lfh;->l:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lff;->c:Lfh;

    iget v0, v0, Lfh;->d:I

    if-ne v0, v8, :cond_11

    iget-object v0, p0, Lff;->c:Lfh;

    iget-object v0, p0, Lff;->f:Lev;

    invoke-virtual {v0}, Lev;->g()Ljava/lang/String;

    :cond_11
    :goto_7
    iget-object v0, p0, Lff;->g:Lfd;

    iget-object v4, p0, Lff;->c:Lfh;

    invoke-virtual {v0, v4}, Lfd;->d(Lfh;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v1, :cond_12

    :try_start_9
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_e

    :cond_12
    :goto_8
    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_f

    :goto_9
    :try_start_b
    iget-object v0, p0, Lff;->f:Lev;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lff;->f:Lev;

    invoke-virtual {v0}, Lev;->d()V

    const/4 v0, 0x0

    iput-object v0, p0, Lff;->f:Lev;

    :cond_13
    :goto_a
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_3

    :cond_14
    const/16 v2, 0xc8

    if-ne v0, v2, :cond_c

    :try_start_c
    iget-object v0, p0, Lff;->c:Lfh;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lfh;->c:Z

    iget-object v0, p0, Lff;->c:Lfh;

    iget-object v2, p0, Lff;->f:Lev;

    invoke-virtual {v2}, Lev;->f()J

    move-result-wide v4

    iput-wide v4, v0, Lfh;->g:J
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Leq; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_3

    goto/16 :goto_4

    :catch_0
    move-exception v0

    :try_start_d
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1
    .catch Leq; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    :catch_1
    move-exception v0

    move-object v2, v1

    :goto_b
    :try_start_e
    invoke-virtual {v0}, Leq;->printStackTrace()V

    iget-boolean v4, p0, Lff;->e:Z

    if-eqz v4, :cond_15

    iget-object v4, p0, Lff;->c:Lfh;

    const/4 v5, 0x2

    iput v5, v4, Lfh;->d:I

    iget-object v4, p0, Lff;->c:Lfh;

    invoke-virtual {v0}, Leq;->a()I

    iget-object v4, p0, Lff;->c:Lfh;

    invoke-virtual {v0}, Leq;->b()Ljava/lang/String;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :cond_15
    :try_start_f
    iget-object v0, p0, Lff;->c:Lfh;

    iget-wide v4, v0, Lfh;->h:J

    iget-object v0, p0, Lff;->c:Lfh;

    iget-wide v6, v0, Lfh;->g:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_16

    iget-object v0, p0, Lff;->c:Lfh;

    iget-wide v4, v0, Lfh;->h:J

    cmp-long v0, v4, v9

    if-gtz v0, :cond_17

    :cond_16
    iget-object v0, p0, Lff;->c:Lfh;

    iget v0, v0, Lfh;->d:I

    if-eq v0, v8, :cond_26

    iget-boolean v0, p0, Lff;->e:Z

    if-eqz v0, :cond_26

    iget-object v0, p0, Lff;->c:Lfh;

    iget-boolean v0, v0, Lfh;->c:Z

    if-nez v0, :cond_26

    iget-object v0, p0, Lff;->c:Lfh;

    iget-wide v4, v0, Lfh;->g:J

    cmp-long v0, v4, v9

    if-gtz v0, :cond_26

    iget-object v0, p0, Lff;->c:Lfh;

    iget-wide v4, v0, Lfh;->h:J

    cmp-long v0, v4, v9

    if-lez v0, :cond_26

    :cond_17
    iget-object v0, p0, Lff;->c:Lfh;

    iget v0, v0, Lfh;->d:I

    if-eq v0, v8, :cond_18

    iget-object v0, p0, Lff;->c:Lfh;

    iget-object v0, p0, Lff;->c:Lfh;

    :cond_18
    iget-object v0, p0, Lff;->c:Lfh;

    iget-object v0, p0, Lff;->c:Lfh;

    const/4 v4, 0x3

    iput v4, v0, Lfh;->d:I

    :cond_19
    :goto_c
    iget-object v0, p0, Lff;->c:Lfh;

    iget-object v0, p0, Lff;->f:Lev;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lff;->c:Lfh;

    iget-object v4, p0, Lff;->f:Lev;

    invoke-virtual {v4}, Lev;->h()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lfh;->l:Ljava/lang/String;

    const-string v0, "127.0.0.1"

    iget-object v4, p0, Lff;->c:Lfh;

    iget-object v4, v4, Lfh;->l:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lff;->c:Lfh;

    iget v0, v0, Lfh;->d:I

    if-ne v0, v8, :cond_1a

    iget-object v0, p0, Lff;->c:Lfh;

    iget-object v0, p0, Lff;->f:Lev;

    invoke-virtual {v0}, Lev;->g()Ljava/lang/String;

    :cond_1a
    :goto_d
    iget-object v0, p0, Lff;->g:Lfd;

    iget-object v4, p0, Lff;->c:Lfh;

    invoke-virtual {v0, v4}, Lfd;->d(Lfh;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    if-eqz v1, :cond_1b

    :try_start_10
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_5

    :cond_1b
    :goto_e
    if-eqz v2, :cond_1c

    :try_start_11
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_6

    :cond_1c
    :goto_f
    :try_start_12
    iget-object v0, p0, Lff;->f:Lev;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lff;->f:Lev;

    invoke-virtual {v0}, Lev;->d()V

    const/4 v0, 0x0

    iput-object v0, p0, Lff;->f:Lev;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_a

    :catch_2
    move-exception v0

    :try_start_13
    new-instance v2, Leq;

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

    invoke-direct {v2, v4, v0}, Leq;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1
    .catch Leq; {:try_start_13 .. :try_end_13} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_13} :catch_3
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_9

    :catch_3
    move-exception v0

    move-object v2, v1

    :goto_10
    :try_start_14
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    iget-boolean v4, p0, Lff;->e:Z

    if-eqz v4, :cond_1d

    iget-object v4, p0, Lff;->c:Lfh;

    const/4 v5, 0x2

    iput v5, v4, Lfh;->d:I

    iget-object v4, p0, Lff;->c:Lfh;

    iget-object v4, p0, Lff;->c:Lfh;

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    :cond_1d
    :try_start_15
    iget-object v0, p0, Lff;->c:Lfh;

    iget-wide v4, v0, Lfh;->h:J

    iget-object v0, p0, Lff;->c:Lfh;

    iget-wide v6, v0, Lfh;->g:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_1e

    iget-object v0, p0, Lff;->c:Lfh;

    iget-wide v4, v0, Lfh;->h:J

    cmp-long v0, v4, v9

    if-gtz v0, :cond_1f

    :cond_1e
    iget-object v0, p0, Lff;->c:Lfh;

    iget v0, v0, Lfh;->d:I

    if-eq v0, v8, :cond_28

    iget-boolean v0, p0, Lff;->e:Z

    if-eqz v0, :cond_28

    iget-object v0, p0, Lff;->c:Lfh;

    iget-boolean v0, v0, Lfh;->c:Z

    if-nez v0, :cond_28

    iget-object v0, p0, Lff;->c:Lfh;

    iget-wide v4, v0, Lfh;->g:J

    cmp-long v0, v4, v9

    if-gtz v0, :cond_28

    iget-object v0, p0, Lff;->c:Lfh;

    iget-wide v4, v0, Lfh;->h:J

    cmp-long v0, v4, v9

    if-lez v0, :cond_28

    :cond_1f
    iget-object v0, p0, Lff;->c:Lfh;

    iget v0, v0, Lfh;->d:I

    if-eq v0, v8, :cond_20

    iget-object v0, p0, Lff;->c:Lfh;

    iget-object v0, p0, Lff;->c:Lfh;

    :cond_20
    iget-object v0, p0, Lff;->c:Lfh;

    iget-object v0, p0, Lff;->c:Lfh;

    const/4 v4, 0x3

    iput v4, v0, Lfh;->d:I

    :cond_21
    :goto_11
    iget-object v0, p0, Lff;->c:Lfh;

    iget-object v0, p0, Lff;->f:Lev;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lff;->c:Lfh;

    iget-object v4, p0, Lff;->f:Lev;

    invoke-virtual {v4}, Lev;->h()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lfh;->l:Ljava/lang/String;

    const-string v0, "127.0.0.1"

    iget-object v4, p0, Lff;->c:Lfh;

    iget-object v4, v4, Lfh;->l:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lff;->c:Lfh;

    iget v0, v0, Lfh;->d:I

    if-ne v0, v8, :cond_22

    iget-object v0, p0, Lff;->c:Lfh;

    iget-object v0, p0, Lff;->f:Lev;

    invoke-virtual {v0}, Lev;->g()Ljava/lang/String;

    :cond_22
    :goto_12
    iget-object v0, p0, Lff;->g:Lfd;

    iget-object v4, p0, Lff;->c:Lfh;

    invoke-virtual {v0, v4}, Lfd;->d(Lfh;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    if-eqz v1, :cond_23

    :try_start_16
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_7

    :cond_23
    :goto_13
    if-eqz v2, :cond_24

    :try_start_17
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_8

    :cond_24
    :goto_14
    :try_start_18
    iget-object v0, p0, Lff;->f:Lev;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lff;->f:Lev;

    invoke-virtual {v0}, Lev;->d()V

    const/4 v0, 0x0

    iput-object v0, p0, Lff;->f:Lev;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    goto/16 :goto_a

    :cond_25
    :try_start_19
    invoke-direct {p0, v2}, Lff;->b(Ljava/io/FileOutputStream;)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_2
    .catch Leq; {:try_start_19 .. :try_end_19} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_19} :catch_11
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_10

    goto/16 :goto_5

    :catch_4
    move-exception v0

    goto/16 :goto_b

    :cond_26
    :try_start_1a
    iget-object v0, p0, Lff;->c:Lfh;

    iget v0, v0, Lfh;->d:I

    if-ne v0, v8, :cond_19

    iget-object v0, p0, Lff;->c:Lfh;

    invoke-static {}, Lbk;->c()I

    goto/16 :goto_c

    :cond_27
    iget-object v0, p0, Lff;->c:Lfh;

    const-string v4, ""

    iput-object v4, v0, Lfh;->l:Ljava/lang/String;

    goto/16 :goto_d

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_e

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_f

    :cond_28
    iget-object v0, p0, Lff;->c:Lfh;

    iget v0, v0, Lfh;->d:I

    if-ne v0, v8, :cond_21

    iget-object v0, p0, Lff;->c:Lfh;

    invoke-static {}, Lbk;->c()I

    goto :goto_11

    :cond_29
    iget-object v0, p0, Lff;->c:Lfh;

    const-string v4, ""

    iput-object v4, v0, Lfh;->l:Ljava/lang/String;

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

    iget-boolean v4, p0, Lff;->e:Z

    if-eqz v4, :cond_2a

    iget-object v4, p0, Lff;->c:Lfh;

    const/4 v5, 0x2

    iput v5, v4, Lfh;->d:I

    iget-object v4, p0, Lff;->c:Lfh;

    iget-object v4, p0, Lff;->c:Lfh;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "final exception "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2

    :cond_2a
    :try_start_1c
    iget-object v0, p0, Lff;->c:Lfh;

    iget-wide v4, v0, Lfh;->h:J

    iget-object v0, p0, Lff;->c:Lfh;

    iget-wide v6, v0, Lfh;->g:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_2b

    iget-object v0, p0, Lff;->c:Lfh;

    iget-wide v4, v0, Lfh;->h:J

    cmp-long v0, v4, v9

    if-gtz v0, :cond_2c

    :cond_2b
    iget-object v0, p0, Lff;->c:Lfh;

    iget v0, v0, Lfh;->d:I

    if-eq v0, v8, :cond_32

    iget-boolean v0, p0, Lff;->e:Z

    if-eqz v0, :cond_32

    iget-object v0, p0, Lff;->c:Lfh;

    iget-boolean v0, v0, Lfh;->c:Z

    if-nez v0, :cond_32

    iget-object v0, p0, Lff;->c:Lfh;

    iget-wide v4, v0, Lfh;->g:J

    cmp-long v0, v4, v9

    if-gtz v0, :cond_32

    iget-object v0, p0, Lff;->c:Lfh;

    iget-wide v4, v0, Lfh;->h:J

    cmp-long v0, v4, v9

    if-lez v0, :cond_32

    :cond_2c
    iget-object v0, p0, Lff;->c:Lfh;

    iget v0, v0, Lfh;->d:I

    if-eq v0, v8, :cond_2d

    iget-object v0, p0, Lff;->c:Lfh;

    iget-object v0, p0, Lff;->c:Lfh;

    :cond_2d
    iget-object v0, p0, Lff;->c:Lfh;

    iget-object v0, p0, Lff;->c:Lfh;

    const/4 v4, 0x3

    iput v4, v0, Lfh;->d:I

    :cond_2e
    :goto_16
    iget-object v0, p0, Lff;->c:Lfh;

    iget-object v0, p0, Lff;->f:Lev;

    if-eqz v0, :cond_33

    iget-object v0, p0, Lff;->c:Lfh;

    iget-object v4, p0, Lff;->f:Lev;

    invoke-virtual {v4}, Lev;->h()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lfh;->l:Ljava/lang/String;

    const-string v0, "127.0.0.1"

    iget-object v4, p0, Lff;->c:Lfh;

    iget-object v4, v4, Lfh;->l:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lff;->c:Lfh;

    iget v0, v0, Lfh;->d:I

    if-ne v0, v8, :cond_2f

    iget-object v0, p0, Lff;->c:Lfh;

    iget-object v0, p0, Lff;->f:Lev;

    invoke-virtual {v0}, Lev;->g()Ljava/lang/String;

    :cond_2f
    :goto_17
    iget-object v0, p0, Lff;->g:Lfd;

    iget-object v4, p0, Lff;->c:Lfh;

    invoke-virtual {v0, v4}, Lfd;->d(Lfh;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    if-eqz v1, :cond_30

    :try_start_1d
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_a

    :cond_30
    :goto_18
    if-eqz v2, :cond_31

    :try_start_1e
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_b

    :cond_31
    :goto_19
    :try_start_1f
    iget-object v0, p0, Lff;->f:Lev;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lff;->f:Lev;

    invoke-virtual {v0}, Lev;->d()V

    const/4 v0, 0x0

    iput-object v0, p0, Lff;->f:Lev;

    goto/16 :goto_a

    :cond_32
    iget-object v0, p0, Lff;->c:Lfh;

    iget v0, v0, Lfh;->d:I

    if-ne v0, v8, :cond_2e

    iget-object v0, p0, Lff;->c:Lfh;

    invoke-static {}, Lbk;->c()I

    goto :goto_16

    :cond_33
    iget-object v0, p0, Lff;->c:Lfh;

    const-string v4, ""

    iput-object v4, v0, Lfh;->l:Ljava/lang/String;

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
    iget-object v4, p0, Lff;->c:Lfh;

    iget-wide v4, v4, Lfh;->h:J

    iget-object v6, p0, Lff;->c:Lfh;

    iget-wide v6, v6, Lfh;->g:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_34

    iget-object v4, p0, Lff;->c:Lfh;

    iget-wide v4, v4, Lfh;->h:J

    cmp-long v4, v4, v9

    if-gtz v4, :cond_35

    :cond_34
    iget-object v4, p0, Lff;->c:Lfh;

    iget v4, v4, Lfh;->d:I

    if-eq v4, v8, :cond_3c

    iget-boolean v4, p0, Lff;->e:Z

    if-eqz v4, :cond_3c

    iget-object v4, p0, Lff;->c:Lfh;

    iget-boolean v4, v4, Lfh;->c:Z

    if-nez v4, :cond_3c

    iget-object v4, p0, Lff;->c:Lfh;

    iget-wide v4, v4, Lfh;->g:J

    cmp-long v4, v4, v9

    if-gtz v4, :cond_3c

    iget-object v4, p0, Lff;->c:Lfh;

    iget-wide v4, v4, Lfh;->h:J

    cmp-long v4, v4, v9

    if-lez v4, :cond_3c

    :cond_35
    iget-object v4, p0, Lff;->c:Lfh;

    iget v4, v4, Lfh;->d:I

    if-eq v4, v8, :cond_36

    iget-object v4, p0, Lff;->c:Lfh;

    iget-object v4, p0, Lff;->c:Lfh;

    :cond_36
    iget-object v4, p0, Lff;->c:Lfh;

    iget-object v4, p0, Lff;->c:Lfh;

    const/4 v5, 0x3

    iput v5, v4, Lfh;->d:I

    :cond_37
    :goto_1b
    iget-object v4, p0, Lff;->c:Lfh;

    iget-object v4, p0, Lff;->f:Lev;

    if-eqz v4, :cond_3d

    iget-object v4, p0, Lff;->c:Lfh;

    iget-object v5, p0, Lff;->f:Lev;

    invoke-virtual {v5}, Lev;->h()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lfh;->l:Ljava/lang/String;

    const-string v4, "127.0.0.1"

    iget-object v5, p0, Lff;->c:Lfh;

    iget-object v5, v5, Lfh;->l:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    iget-object v4, p0, Lff;->c:Lfh;

    iget v4, v4, Lfh;->d:I

    if-ne v4, v8, :cond_38

    iget-object v4, p0, Lff;->c:Lfh;

    iget-object v4, p0, Lff;->f:Lev;

    invoke-virtual {v4}, Lev;->g()Ljava/lang/String;

    :cond_38
    :goto_1c
    iget-object v4, p0, Lff;->g:Lfd;

    iget-object v5, p0, Lff;->c:Lfh;

    invoke-virtual {v4, v5}, Lfd;->d(Lfh;)V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    if-eqz v1, :cond_39

    :try_start_20
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_0
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_c

    :cond_39
    :goto_1d
    if-eqz v2, :cond_3a

    :try_start_21
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_0
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_d

    :cond_3a
    :goto_1e
    :try_start_22
    iget-object v1, p0, Lff;->f:Lev;

    if-eqz v1, :cond_3b

    iget-object v1, p0, Lff;->f:Lev;

    invoke-virtual {v1}, Lev;->d()V

    const/4 v1, 0x0

    iput-object v1, p0, Lff;->f:Lev;

    :cond_3b
    throw v0

    :cond_3c
    iget-object v4, p0, Lff;->c:Lfh;

    iget v4, v4, Lfh;->d:I

    if-ne v4, v8, :cond_37

    iget-object v4, p0, Lff;->c:Lfh;

    invoke-static {}, Lbk;->c()I

    goto :goto_1b

    :cond_3d
    iget-object v4, p0, Lff;->c:Lfh;

    const-string v5, ""

    iput-object v5, v4, Lfh;->l:Ljava/lang/String;

    goto :goto_1c

    :catch_c
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1d

    :catch_d
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1e

    :cond_3e
    iget-object v0, p0, Lff;->c:Lfh;

    iget v0, v0, Lfh;->d:I

    if-ne v0, v8, :cond_10

    iget-object v0, p0, Lff;->c:Lfh;

    invoke-static {}, Lbk;->c()I

    goto/16 :goto_6

    :cond_3f
    iget-object v0, p0, Lff;->c:Lfh;

    const-string v4, ""

    iput-object v4, v0, Lfh;->l:Ljava/lang/String;

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
