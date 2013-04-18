.class public final Lcom/keniu/security/sync/d/a/b;
.super Ljava/lang/Object;
.source "FudAction.java"


# static fields
.field private static final a:Ljava/lang/String; = "TpanServ.FudAction"

.field private static final b:Ljava/lang/String; = "http://fud%d.cloud2.1tpan.com"

.field private static final c:Ljava/lang/String; = "/query"

.field private static final d:Ljava/lang/String; = "/read"

.field private static final e:Ljava/lang/String; = "/write"

.field private static final f:Ljava/lang/String; = ".tmp"

.field private static final g:I = 0x6

.field private static final h:J = 0x7d000L


# instance fields
.field private i:Ljava/util/Map;

.field private j:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/sync/d/a/b;->i:Ljava/util/Map;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/sync/d/a/b;->j:Ljava/util/Map;

    .line 52
    return-void
.end method

.method private a(I)I
    .locals 3
    .parameter

    .prologue
    .line 415
    iget-object v0, p0, Lcom/keniu/security/sync/d/a/b;->i:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/sync/d/a/b;->i:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/keniu/security/sync/d/a/b;->i:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static a(J)J
    .locals 2
    .parameter

    .prologue
    .line 681
    const-wide/32 v0, 0x7d000

    div-long v0, p0, v0

    long-to-int v0, v0

    .line 682
    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    .line 683
    int-to-long v0, v0

    div-long v0, p0, v0

    .line 685
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x64

    div-long v0, p0, v0

    goto :goto_0
.end method

.method public static a(Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/hm;
    .locals 1
    .parameter

    .prologue
    .line 55
    :try_start_0
    invoke-static {p0}, Lcom/keniu/security/sync/d/a/b;->b(Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/hm;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 61
    :goto_0
    return-object v0

    .line 59
    :catch_0
    move-exception v0

    invoke-static {p0}, Lcom/keniu/security/sync/d/a/b;->c(Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/hm;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Lcom/keniu/security/sync/d/d/a/gn;Ljava/io/File;)Lcom/keniu/security/sync/d/d/a/ie;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 426
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ib;->q()Lcom/keniu/security/sync/d/d/a/ic;

    move-result-object v0

    .line 429
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/sync/d/d/a/ic;->a(J)Lcom/keniu/security/sync/d/d/a/ic;

    .line 430
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/ic;->a(Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/ic;

    .line 431
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ic;->i()Lcom/keniu/security/sync/d/d/a/ib;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/ib;->d()[B

    move-result-object v0

    .line 432
    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/hoi/a/a;->a([BI)Ljava/lang/String;

    move-result-object v0

    .line 435
    :try_start_0
    new-instance v1, Lcom/keniu/security/sync/d/e/a;

    const-string v2, "http://fud%d.cloud2.1tpan.com/write"

    invoke-direct {v1, v2}, Lcom/keniu/security/sync/d/e/a;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    :try_start_1
    const-string v2, "c"

    invoke-virtual {v1, v2, v0}, Lcom/keniu/security/sync/d/e/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    invoke-virtual {v1, p1}, Lcom/keniu/security/sync/d/e/a;->a(Ljava/io/File;)Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 445
    invoke-static {v1}, Lcom/keniu/security/sync/d/a/b;->a(Lcom/keniu/security/sync/d/e/a;)Lcom/keniu/security/sync/d/e/a;

    .line 448
    return-object v3

    .line 445
    :catchall_0
    move-exception v0

    move-object v1, v3

    :goto_0
    invoke-static {v1}, Lcom/keniu/security/sync/d/a/b;->a(Lcom/keniu/security/sync/d/e/a;)Lcom/keniu/security/sync/d/e/a;

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method private static a(Lcom/keniu/security/sync/d/e/a;)Lcom/keniu/security/sync/d/e/a;
    .locals 1
    .parameter

    .prologue
    .line 668
    if-eqz p0, :cond_0

    .line 669
    invoke-virtual {p0}, Lcom/keniu/security/sync/d/e/a;->d()V

    .line 670
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static a(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 3
    .parameter

    .prologue
    .line 644
    if-eqz p0, :cond_0

    .line 646
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 650
    :goto_0
    const/4 v0, 0x0

    .line 652
    :goto_1
    return-object v0

    .line 647
    :catch_0
    move-exception v0

    .line 648
    const-string v1, "TpanServ.FudAction"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    move-object v0, p0

    goto :goto_1
.end method

.method private static a(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 3
    .parameter

    .prologue
    .line 656
    if-eqz p0, :cond_0

    .line 658
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 662
    :goto_0
    const/4 v0, 0x0

    .line 664
    :goto_1
    return-object v0

    .line 659
    :catch_0
    move-exception v0

    .line 660
    const-string v1, "TpanServ.FudAction"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    move-object v0, p0

    goto :goto_1
.end method

.method private static a(Lcom/keniu/security/sync/d/d/a/gn;I)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 201
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hp;->u()Lcom/keniu/security/sync/d/d/a/hq;

    move-result-object v0

    .line 202
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/hq;->a(Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/hq;

    .line 203
    invoke-virtual {v0, p1}, Lcom/keniu/security/sync/d/d/a/hq;->a(I)Lcom/keniu/security/sync/d/d/a/hq;

    .line 205
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/hq;->i()Lcom/keniu/security/sync/d/d/a/hp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/hp;->d()[B

    move-result-object v0

    .line 206
    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/hoi/a/a;->a([BI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    const-string v1, "http://fud%d.cloud2.1tpan.com"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/gn;->q()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/read"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?c="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 211
    return-object v0
.end method

.method private b(I)I
    .locals 3
    .parameter

    .prologue
    .line 569
    iget-object v0, p0, Lcom/keniu/security/sync/d/a/b;->j:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/sync/d/a/b;->j:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/keniu/security/sync/d/a/b;->j:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static b(Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/hm;
    .locals 7
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 65
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hj;->m()Lcom/keniu/security/sync/d/d/a/hk;

    move-result-object v0

    .line 66
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/hk;->a(Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/hk;

    .line 68
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/hk;->i()Lcom/keniu/security/sync/d/d/a/hj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/hj;->d()[B

    move-result-object v0

    .line 69
    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/hoi/a/a;->a([BI)Ljava/lang/String;

    move-result-object v0

    .line 75
    :try_start_0
    const-string v1, "http://fud%d.cloud2.1tpan.com"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/gn;->q()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 76
    new-instance v2, Lcom/keniu/security/sync/d/e/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/query"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/keniu/security/sync/d/e/a;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :try_start_1
    const-string v1, "c"

    invoke-virtual {v2, v1, v0}, Lcom/keniu/security/sync/d/e/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const-string v0, "application/x-www-form-urlencoded"

    .line 80
    const-string v1, "UTF-8"

    .line 81
    const-string v3, "key1=test"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 83
    const-string v4, "Charset"

    invoke-virtual {v2, v4, v1}, Lcom/keniu/security/sync/d/e/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v1, "Content-Type"

    invoke-virtual {v2, v1, v0}, Lcom/keniu/security/sync/d/e/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v0, "Content-Length"

    array-length v1, v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/keniu/security/sync/d/e/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {v2}, Lcom/keniu/security/sync/d/e/a;->b()Ljava/io/OutputStream;

    move-result-object v0

    .line 88
    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write([B)V

    .line 89
    invoke-virtual {v2}, Lcom/keniu/security/sync/d/e/a;->c()Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 91
    :try_start_2
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/hm;->a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/hm;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v1

    .line 93
    invoke-static {v0}, Lcom/keniu/security/sync/d/a/b;->a(Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 94
    invoke-static {v2}, Lcom/keniu/security/sync/d/a/b;->a(Lcom/keniu/security/sync/d/e/a;)Lcom/keniu/security/sync/d/e/a;

    .line 96
    return-object v1

    .line 93
    :catchall_0
    move-exception v0

    move-object v1, v5

    move-object v2, v5

    :goto_0
    invoke-static {v1}, Lcom/keniu/security/sync/d/a/b;->a(Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 94
    invoke-static {v2}, Lcom/keniu/security/sync/d/a/b;->a(Lcom/keniu/security/sync/d/e/a;)Lcom/keniu/security/sync/d/e/a;

    throw v0

    .line 93
    :catchall_1
    move-exception v0

    move-object v1, v5

    goto :goto_0

    :catchall_2
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_0
.end method

.method private static b(Lcom/keniu/security/sync/d/d/a/gn;Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/hs;
    .locals 14
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v12, 0x0

    .line 577
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hp;->u()Lcom/keniu/security/sync/d/d/a/hq;

    move-result-object v0

    .line 578
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/hq;->a(Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/hq;

    .line 579
    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/d/d/a/hq;->a(I)Lcom/keniu/security/sync/d/d/a/hq;

    .line 581
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/hq;->i()Lcom/keniu/security/sync/d/d/a/hp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/hp;->d()[B

    move-result-object v0

    .line 582
    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/hoi/a/a;->a([BI)Ljava/lang/String;

    move-result-object v0

    .line 589
    :try_start_0
    const-string v1, "http://fud%d.cloud2.1tpan.com"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/gn;->q()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 590
    new-instance v2, Lcom/keniu/security/sync/d/e/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/read"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/keniu/security/sync/d/e/a;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2

    .line 591
    :try_start_1
    const-string v1, "c"

    invoke-virtual {v2, v1, v0}, Lcom/keniu/security/sync/d/e/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    invoke-virtual {v2}, Lcom/keniu/security/sync/d/e/a;->c()Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v0

    .line 595
    :try_start_2
    const-string v1, "Tpan-Ret"

    invoke-virtual {v2, v1}, Lcom/keniu/security/sync/d/e/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 596
    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/hoi/a/a;->a(Ljava/lang/String;I)[B

    move-result-object v1

    .line 597
    invoke-static {v1}, Lcom/keniu/security/sync/d/d/a/hs;->a([B)Lcom/keniu/security/sync/d/d/a/hs;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v1

    .line 599
    :try_start_3
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 601
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 602
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 604
    :cond_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_5

    .line 607
    const/16 v3, 0x4000

    :try_start_4
    new-array v3, v3, [B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_1

    move v5, v12

    .line 613
    :cond_1
    :goto_0
    :try_start_5
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_1

    move-result v5

    .line 622
    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 625
    const/4 v6, 0x0

    :try_start_6
    invoke-virtual {v4, v3, v6, v5}, Ljava/io/OutputStream;->write([BII)V

    move v5, v12

    .line 626
    goto :goto_0

    .line 614
    :catch_0
    move-exception v6

    .line 615
    add-int/lit8 v5, v5, 0x1

    .line 616
    const-string v7, "TpanServ.FudAction"

    const-string v8, "Retry(%d) read ..."

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    const/4 v7, 0x6

    if-le v5, v7, :cond_1

    .line 618
    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_1

    .line 632
    :catch_1
    move-exception v3

    move-object v13, v3

    move-object v3, v0

    move-object v0, v13

    .line 633
    :goto_1
    :try_start_7
    const-string v5, "TpanServ.FudAction"

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 635
    invoke-static {v4}, Lcom/keniu/security/sync/d/a/b;->a(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    .line 636
    invoke-static {v3}, Lcom/keniu/security/sync/d/a/b;->a(Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 637
    invoke-static {v2}, Lcom/keniu/security/sync/d/a/b;->a(Lcom/keniu/security/sync/d/e/a;)Lcom/keniu/security/sync/d/e/a;

    move-object v0, v1

    .line 640
    :goto_2
    return-object v0

    .line 635
    :cond_2
    invoke-static {v4}, Lcom/keniu/security/sync/d/a/b;->a(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    .line 636
    invoke-static {v0}, Lcom/keniu/security/sync/d/a/b;->a(Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 637
    invoke-static {v2}, Lcom/keniu/security/sync/d/a/b;->a(Lcom/keniu/security/sync/d/e/a;)Lcom/keniu/security/sync/d/e/a;

    move-object v0, v1

    .line 638
    goto :goto_2

    .line 635
    :catchall_0
    move-exception v0

    move-object v1, v5

    move-object v2, v5

    move-object v3, v5

    :goto_3
    invoke-static {v3}, Lcom/keniu/security/sync/d/a/b;->a(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    .line 636
    invoke-static {v2}, Lcom/keniu/security/sync/d/a/b;->a(Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 637
    invoke-static {v1}, Lcom/keniu/security/sync/d/a/b;->a(Lcom/keniu/security/sync/d/e/a;)Lcom/keniu/security/sync/d/e/a;

    throw v0

    .line 635
    :catchall_1
    move-exception v0

    move-object v1, v2

    move-object v3, v5

    move-object v2, v5

    goto :goto_3

    :catchall_2
    move-exception v1

    move-object v3, v5

    move-object v13, v2

    move-object v2, v0

    move-object v0, v1

    move-object v1, v13

    goto :goto_3

    :catchall_3
    move-exception v1

    move-object v3, v4

    move-object v13, v2

    move-object v2, v0

    move-object v0, v1

    move-object v1, v13

    goto :goto_3

    :catchall_4
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    goto :goto_3

    .line 632
    :catch_2
    move-exception v0

    move-object v1, v5

    move-object v2, v5

    move-object v3, v5

    move-object v4, v5

    goto :goto_1

    :catch_3
    move-exception v0

    move-object v1, v5

    move-object v3, v5

    move-object v4, v5

    goto :goto_1

    :catch_4
    move-exception v1

    move-object v3, v0

    move-object v4, v5

    move-object v0, v1

    move-object v1, v5

    goto :goto_1

    :catch_5
    move-exception v3

    move-object v4, v5

    move-object v13, v0

    move-object v0, v3

    move-object v3, v13

    goto :goto_1
.end method

.method private static c(Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/hm;
    .locals 7
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 100
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hj;->m()Lcom/keniu/security/sync/d/d/a/hk;

    move-result-object v0

    .line 101
    invoke-virtual {v0, p0}, Lcom/keniu/security/sync/d/d/a/hk;->a(Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/hk;

    .line 103
    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/hk;->i()Lcom/keniu/security/sync/d/d/a/hj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/sync/d/d/a/hj;->d()[B

    move-result-object v0

    .line 104
    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/hoi/a/a;->a([BI)Ljava/lang/String;

    move-result-object v0

    .line 110
    :try_start_0
    const-string v1, "http://fud%d.cloud2.1tpan.com"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/keniu/security/sync/d/d/a/gn;->q()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 112
    new-instance v2, Lcom/keniu/security/sync/d/e/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/query"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/keniu/security/sync/d/e/a;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :try_start_1
    const-string v1, "c"

    invoke-virtual {v2, v1, v0}, Lcom/keniu/security/sync/d/e/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {v2}, Lcom/keniu/security/sync/d/e/a;->a()V

    .line 115
    invoke-virtual {v2}, Lcom/keniu/security/sync/d/e/a;->c()Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 117
    :try_start_2
    invoke-static {v0}, Lcom/keniu/security/sync/d/d/a/hm;->a(Ljava/io/InputStream;)Lcom/keniu/security/sync/d/d/a/hm;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v1

    .line 119
    invoke-static {v0}, Lcom/keniu/security/sync/d/a/b;->a(Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 120
    invoke-static {v2}, Lcom/keniu/security/sync/d/a/b;->a(Lcom/keniu/security/sync/d/e/a;)Lcom/keniu/security/sync/d/e/a;

    .line 122
    return-object v1

    .line 119
    :catchall_0
    move-exception v0

    move-object v1, v5

    move-object v2, v5

    :goto_0
    invoke-static {v1}, Lcom/keniu/security/sync/d/a/b;->a(Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 120
    invoke-static {v2}, Lcom/keniu/security/sync/d/a/b;->a(Lcom/keniu/security/sync/d/e/a;)Lcom/keniu/security/sync/d/e/a;

    throw v0

    .line 119
    :catchall_1
    move-exception v0

    move-object v1, v5

    goto :goto_0

    :catchall_2
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/keniu/security/sync/d/d/a/gn;Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/hs;
    .locals 17
    .parameter
    .parameter

    .prologue
    .line 230
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/hp;->u()Lcom/keniu/security/sync/d/d/a/hq;

    move-result-object v2

    .line 231
    move-object v0, v2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/d/d/a/hq;->a(Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/hq;

    .line 232
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/keniu/security/sync/d/d/a/hq;->a(I)Lcom/keniu/security/sync/d/d/a/hq;

    .line 234
    invoke-virtual {v2}, Lcom/keniu/security/sync/d/d/a/hq;->i()Lcom/keniu/security/sync/d/d/a/hp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keniu/security/sync/d/d/a/hp;->d()[B

    move-result-object v2

    .line 235
    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/hoi/a/a;->a([BI)Ljava/lang/String;

    move-result-object v2

    .line 237
    const/4 v3, 0x0

    .line 238
    const/4 v4, 0x0

    .line 239
    const/4 v5, 0x0

    .line 240
    const/4 v6, 0x0

    .line 242
    :try_start_0
    const-string v7, "http://fud%d.cloud2.1tpan.com"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/keniu/security/sync/d/d/a/gn;->q()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 243
    new-instance v8, Lcom/keniu/security/sync/d/e/a;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "/read"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v8, v7}, Lcom/keniu/security/sync/d/e/a;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_4

    .line 244
    :try_start_1
    const-string v5, "c"

    invoke-virtual {v8, v5, v2}, Lcom/keniu/security/sync/d/e/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/sync/d/a/b;->i:Ljava/util/Map;

    move-object v2, v0

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v2, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    invoke-virtual {v8}, Lcom/keniu/security/sync/d/e/a;->c()Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v2

    .line 249
    :try_start_2
    const-string v4, "Tpan-Ret"

    invoke-virtual {v8, v4}, Lcom/keniu/security/sync/d/e/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 250
    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/hoi/a/a;->a(Ljava/lang/String;I)[B

    move-result-object v4

    .line 251
    invoke-static {v4}, Lcom/keniu/security/sync/d/d/a/hs;->a([B)Lcom/keniu/security/sync/d/d/a/hs;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_6

    move-result-object v4

    .line 253
    :try_start_3
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".tmp"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 255
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 256
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 259
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/keniu/security/sync/d/d/a/gn;->o()J

    move-result-wide v6

    .line 262
    invoke-static {v5}, Lcom/keniu/security/sync/d/e/f;->a(Ljava/io/File;)J

    move-result-wide v9

    .line 263
    cmp-long v6, v9, v6

    if-gez v6, :cond_1

    .line 264
    new-instance v5, Lcom/keniu/security/sync/d/b/a;

    invoke-direct {v5}, Lcom/keniu/security/sync/d/b/a;-><init>()V

    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_0

    .line 312
    :catch_0
    move-exception v5

    move-object v6, v3

    move-object v3, v4

    move-object v4, v8

    move-object v15, v2

    move-object v2, v5

    move-object v5, v15

    .line 313
    :goto_0
    :try_start_4
    const-string v7, "TpanServ.FudAction"

    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 315
    invoke-static {v6}, Lcom/keniu/security/sync/d/a/b;->a(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    .line 316
    invoke-static {v5}, Lcom/keniu/security/sync/d/a/b;->a(Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 317
    invoke-static {v4}, Lcom/keniu/security/sync/d/a/b;->a(Lcom/keniu/security/sync/d/e/a;)Lcom/keniu/security/sync/d/e/a;

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/sync/d/a/b;->i:Ljava/util/Map;

    move-object v2, v0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v3

    .line 321
    :goto_1
    return-object v2

    .line 267
    :cond_1
    const/4 v6, 0x0

    .line 268
    :try_start_5
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_0

    .line 275
    const/16 v3, 0x4000

    :try_start_6
    new-array v3, v3, [B
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_2

    .line 278
    :goto_2
    :try_start_7
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_2

    move-result v6

    .line 292
    const/4 v9, -0x1

    if-ne v6, v9, :cond_3

    .line 293
    :try_start_8
    new-instance v3, Ljava/io/File;

    move-object v0, v3

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_8} :catch_2

    .line 308
    invoke-static {v7}, Lcom/keniu/security/sync/d/a/b;->a(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    .line 316
    invoke-static {v2}, Lcom/keniu/security/sync/d/a/b;->a(Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 317
    invoke-static {v8}, Lcom/keniu/security/sync/d/a/b;->a(Lcom/keniu/security/sync/d/e/a;)Lcom/keniu/security/sync/d/e/a;

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/sync/d/a/b;->i:Ljava/util/Map;

    move-object v2, v0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v4

    .line 319
    goto :goto_1

    .line 279
    :catch_1
    move-exception v9

    .line 280
    add-int/lit8 v6, v6, 0x1

    .line 281
    :try_start_9
    const-string v10, "TpanServ.FudAction"

    const-string v11, "Retry(%d) read ..."

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const/4 v10, 0x6

    if-le v6, v10, :cond_2

    .line 283
    throw v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_9} :catch_2

    .line 312
    :catch_2
    move-exception v3

    move-object v5, v2

    move-object v6, v7

    move-object v2, v3

    move-object v3, v4

    move-object v4, v8

    goto :goto_0

    .line 286
    :cond_2
    const-wide/16 v9, 0x1f4

    :try_start_a
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_2

    .line 290
    :catch_3
    move-exception v9

    goto :goto_2

    .line 297
    :cond_3
    const/4 v9, 0x0

    .line 298
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/sync/d/a/b;->i:Ljava/util/Map;

    move-object v10, v0

    if-eqz v10, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/sync/d/a/b;->i:Ljava/util/Map;

    move-object v10, v0

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/sync/d/a/b;->i:Ljava/util/Map;

    move-object v10, v0

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 300
    new-instance v3, Lcom/keniu/security/sync/d/e/e;

    const-string v5, "Cancel by user"

    invoke-direct {v3, v5}, Lcom/keniu/security/sync/d/e/e;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_b .. :try_end_b} :catch_2

    .line 315
    :catchall_0
    move-exception v3

    move-object v4, v2

    move-object v5, v7

    move-object v2, v3

    move-object v3, v8

    :goto_3
    invoke-static {v5}, Lcom/keniu/security/sync/d/a/b;->a(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    .line 316
    invoke-static {v4}, Lcom/keniu/security/sync/d/a/b;->a(Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 317
    invoke-static {v3}, Lcom/keniu/security/sync/d/a/b;->a(Lcom/keniu/security/sync/d/e/a;)Lcom/keniu/security/sync/d/e/a;

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/sync/d/a/b;->i:Ljava/util/Map;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw v2

    .line 302
    :cond_4
    const/4 v10, 0x0

    :try_start_c
    invoke-virtual {v7, v3, v10, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c .. :try_end_c} :catch_2

    move v6, v9

    .line 303
    goto/16 :goto_2

    .line 315
    :catchall_1
    move-exception v2

    move-object v15, v5

    move-object v5, v3

    move-object v3, v15

    goto :goto_3

    :catchall_2
    move-exception v2

    move-object v5, v3

    move-object v3, v8

    goto :goto_3

    :catchall_3
    move-exception v4

    move-object v5, v3

    move-object v3, v8

    move-object v15, v2

    move-object v2, v4

    move-object v4, v15

    goto :goto_3

    :catchall_4
    move-exception v2

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    goto :goto_3

    .line 312
    :catch_4
    move-exception v2

    move-object v15, v6

    move-object v6, v3

    move-object v3, v15

    move-object/from16 v16, v4

    move-object v4, v5

    move-object/from16 v5, v16

    goto/16 :goto_0

    :catch_5
    move-exception v2

    move-object v5, v4

    move-object v4, v8

    move-object v15, v6

    move-object v6, v3

    move-object v3, v15

    goto/16 :goto_0

    :catch_6
    move-exception v4

    move-object v5, v2

    move-object v2, v4

    move-object v4, v8

    move-object v15, v6

    move-object v6, v3

    move-object v3, v15

    goto/16 :goto_0
.end method

.method public final a(Ljava/util/List;Ljava/lang/String;)Lcom/keniu/security/sync/d/d/a/hs;
    .locals 17
    .parameter
    .parameter

    .prologue
    .line 336
    const/4 v2, 0x0

    .line 339
    const/4 v3, 0x0

    .line 340
    const/4 v4, 0x0

    .line 342
    const/4 v5, 0x0

    .line 344
    const/16 v6, 0x4000

    :try_start_0
    new-array v6, v6, [B

    .line 347
    const/high16 v7, 0x40

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v8

    mul-int/2addr v7, v8

    int-to-long v7, v7

    .line 348
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v10

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".tmp"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 349
    invoke-virtual {v9}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    .line 350
    invoke-virtual {v9}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    .line 354
    :cond_0
    invoke-static {v9}, Lcom/keniu/security/sync/d/e/f;->a(Ljava/io/File;)J

    move-result-wide v10

    .line 355
    cmp-long v7, v10, v7

    if-gez v7, :cond_1

    .line 356
    new-instance v5, Lcom/keniu/security/sync/d/b/a;

    invoke-direct {v5}, Lcom/keniu/security/sync/d/b/a;-><init>()V

    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 402
    :catch_0
    move-exception v5

    move-object v15, v5

    move-object v5, v2

    move-object v2, v15

    move-object/from16 v16, v3

    move-object v3, v4

    move-object/from16 v4, v16

    .line 403
    :goto_0
    :try_start_1
    const-string v6, "TpanServ.FudAction"

    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 405
    invoke-static {v5}, Lcom/keniu/security/sync/d/a/b;->a(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    .line 406
    invoke-static {v4}, Lcom/keniu/security/sync/d/a/b;->a(Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 407
    invoke-static {v3}, Lcom/keniu/security/sync/d/a/b;->a(Lcom/keniu/security/sync/d/e/a;)Lcom/keniu/security/sync/d/e/a;

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/sync/d/a/b;->i:Ljava/util/Map;

    move-object v2, v0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    :goto_1
    const/4 v2, 0x0

    return-object v2

    .line 359
    :cond_1
    :try_start_2
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    .line 363
    :try_start_3
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v2

    move v15, v5

    move-object v5, v3

    move v3, v15

    :goto_2
    :try_start_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 364
    new-instance v8, Lcom/keniu/security/sync/d/e/a;

    move-object v0, v8

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/keniu/security/sync/d/e/a;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_5

    .line 365
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/sync/d/a/b;->i:Ljava/util/Map;

    move-object v4, v0

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-interface {v4, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    invoke-virtual {v8}, Lcom/keniu/security/sync/d/e/a;->c()Ljava/io/InputStream;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_6

    move-result-object v4

    .line 370
    :goto_3
    :try_start_6
    invoke-virtual {v4, v6}, Ljava/io/InputStream;->read([B)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_1

    move-result v5

    .line 384
    const/4 v10, -0x1

    if-eq v5, v10, :cond_4

    .line 386
    const/4 v3, 0x0

    .line 387
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/sync/d/a/b;->i:Ljava/util/Map;

    move-object v10, v0

    if-eqz v10, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/sync/d/a/b;->i:Ljava/util/Map;

    move-object v10, v0

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/sync/d/a/b;->i:Ljava/util/Map;

    move-object v10, v0

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 389
    new-instance v2, Lcom/keniu/security/sync/d/e/e;

    const-string v3, "Cancel by user"

    invoke-direct {v2, v3}, Lcom/keniu/security/sync/d/e/e;-><init>(Ljava/lang/String;)V

    throw v2

    .line 402
    :catch_1
    move-exception v2

    move-object v3, v8

    move-object v5, v7

    goto/16 :goto_0

    .line 371
    :catch_2
    move-exception v5

    .line 372
    add-int/lit8 v3, v3, 0x1

    .line 373
    const-string v10, "TpanServ.FudAction"

    const-string v11, "Retry(%d) read ..."

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const/4 v10, 0x6

    if-le v3, v10, :cond_2

    .line 375
    throw v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_1

    .line 405
    :catchall_0
    move-exception v2

    move-object v3, v8

    move-object v5, v7

    :goto_4
    invoke-static {v5}, Lcom/keniu/security/sync/d/a/b;->a(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    .line 406
    invoke-static {v4}, Lcom/keniu/security/sync/d/a/b;->a(Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 407
    invoke-static {v3}, Lcom/keniu/security/sync/d/a/b;->a(Lcom/keniu/security/sync/d/e/a;)Lcom/keniu/security/sync/d/e/a;

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/sync/d/a/b;->i:Ljava/util/Map;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw v2

    .line 378
    :cond_2
    const-wide/16 v10, 0x1f4

    :try_start_8
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_3

    .line 382
    :catch_3
    move-exception v5

    goto :goto_3

    .line 391
    :cond_3
    const/4 v10, 0x0

    :try_start_9
    invoke-virtual {v7, v6, v10, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_3

    :cond_4
    move-object v5, v4

    move-object v4, v8

    .line 396
    goto/16 :goto_2

    .line 401
    :cond_5
    :try_start_a
    new-instance v2, Ljava/io/File;

    move-object v0, v2

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a .. :try_end_a} :catch_5

    .line 405
    invoke-static {v7}, Lcom/keniu/security/sync/d/a/b;->a(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    .line 406
    invoke-static {v5}, Lcom/keniu/security/sync/d/a/b;->a(Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 407
    invoke-static {v4}, Lcom/keniu/security/sync/d/a/b;->a(Lcom/keniu/security/sync/d/e/a;)Lcom/keniu/security/sync/d/e/a;

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/sync/d/a/b;->i:Ljava/util/Map;

    move-object v2, v0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 405
    :catchall_1
    move-exception v5

    move-object v15, v5

    move-object v5, v2

    move-object v2, v15

    move-object/from16 v16, v3

    move-object v3, v4

    move-object/from16 v4, v16

    goto :goto_4

    :catchall_2
    move-exception v2

    move-object v5, v7

    move-object v15, v3

    move-object v3, v4

    move-object v4, v15

    goto :goto_4

    :catchall_3
    move-exception v2

    move-object v3, v4

    move-object v4, v5

    move-object v5, v7

    goto :goto_4

    :catchall_4
    move-exception v2

    move-object v3, v8

    move-object v4, v5

    move-object v5, v7

    goto :goto_4

    :catchall_5
    move-exception v2

    goto :goto_4

    .line 402
    :catch_4
    move-exception v2

    move-object v5, v7

    move-object v15, v3

    move-object v3, v4

    move-object v4, v15

    goto/16 :goto_0

    :catch_5
    move-exception v2

    move-object v3, v4

    move-object v4, v5

    move-object v5, v7

    goto/16 :goto_0

    :catch_6
    move-exception v2

    move-object v3, v8

    move-object v4, v5

    move-object v5, v7

    goto/16 :goto_0
.end method

.method public final a(ILcom/keniu/security/sync/d/d/a/gn;Ljava/io/File;Ljava/lang/String;Lcom/keniu/security/sync/d/a/c;)Lcom/keniu/security/sync/d/d/a/ie;
    .locals 19
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 465
    invoke-static {}, Lcom/keniu/security/sync/d/d/a/ib;->q()Lcom/keniu/security/sync/d/d/a/ic;

    move-result-object v2

    .line 468
    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/keniu/security/sync/d/d/a/ic;->a(J)Lcom/keniu/security/sync/d/d/a/ic;

    .line 469
    move-object v0, v2

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/d/d/a/ic;->a(Lcom/keniu/security/sync/d/d/a/gn;)Lcom/keniu/security/sync/d/d/a/ic;

    .line 470
    invoke-virtual {v2}, Lcom/keniu/security/sync/d/d/a/ic;->i()Lcom/keniu/security/sync/d/d/a/ib;

    move-result-object v2

    invoke-virtual {v2}, Lcom/keniu/security/sync/d/d/a/ib;->d()[B

    move-result-object v2

    .line 471
    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/hoi/a/a;->a([BI)Ljava/lang/String;

    move-result-object v2

    .line 473
    const/4 v3, 0x0

    .line 475
    const/4 v4, 0x0

    .line 477
    :try_start_0
    const-string v5, "http://fud%d.cloud2.1tpan.com"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 478
    new-instance v6, Lcom/keniu/security/sync/d/e/a;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "/write"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Lcom/keniu/security/sync/d/e/a;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 479
    :try_start_1
    const-string v4, "c"

    invoke-virtual {v6, v4, v2}, Lcom/keniu/security/sync/d/e/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/sync/d/a/b;->j:Ljava/util/Map;

    move-object v2, v0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 483
    const-string v4, "--"

    const-string v5, "\r\n"

    .line 484
    const-string v7, "multipart/form-data"

    .line 485
    const-string v8, "UTF-8"

    .line 487
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 488
    invoke-virtual {v9, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 489
    invoke-virtual {v9, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 490
    invoke-virtual {v9, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 491
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Content-Disposition: form-data; name=\"myfile\"; filename=\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object v0, v10

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 492
    invoke-virtual {v9, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 493
    const-string v10, "Content-Type: application/octet-stream"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 495
    invoke-virtual {v9, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 496
    invoke-virtual {v9, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 498
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    .line 499
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 501
    array-length v5, v9

    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->length()J

    move-result-wide v10

    long-to-int v10, v10

    add-int/2addr v5, v10

    array-length v10, v4

    add-int/2addr v5, v10

    .line 502
    const-string v10, "Charset"

    invoke-virtual {v6, v10, v8}, Lcom/keniu/security/sync/d/e/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    const-string v8, "Content-Type"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ";boundary="

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v8, v2}, Lcom/keniu/security/sync/d/e/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    const-string v2, "Content-Length"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Lcom/keniu/security/sync/d/e/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    invoke-virtual {v6, v5}, Lcom/keniu/security/sync/d/e/a;->a(I)V

    .line 507
    invoke-virtual {v6}, Lcom/keniu/security/sync/d/e/a;->b()Ljava/io/OutputStream;

    move-result-object v2

    .line 509
    invoke-virtual {v2, v9}, Ljava/io/OutputStream;->write([B)V

    .line 511
    const/4 v5, 0x0

    .line 513
    new-instance v7, Ljava/io/FileInputStream;

    move-object v0, v7

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 514
    const/16 v3, 0x4000

    :try_start_2
    new-array v3, v3, [B

    .line 516
    invoke-virtual/range {p3 .. p3}, Ljava/io/File;->length()J

    move-result-wide v8

    .line 519
    const-wide/32 v10, 0x7d000

    div-long v10, v8, v10

    long-to-int v10, v10

    const/16 v11, 0x64

    if-le v10, v11, :cond_1

    int-to-long v10, v10

    div-long/2addr v8, v10

    .line 520
    :goto_0
    const-wide/16 v10, 0x0

    .line 522
    :cond_0
    :goto_1
    invoke-virtual {v7, v3}, Ljava/io/InputStream;->read([B)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_3

    .line 523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/sync/d/a/b;->j:Ljava/util/Map;

    move-object v13, v0

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/sync/d/a/b;->j:Ljava/util/Map;

    move-object v13, v0

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/sync/d/a/b;->j:Ljava/util/Map;

    move-object v13, v0

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 525
    new-instance v2, Lcom/keniu/security/sync/d/e/e;

    const-string v3, "Cancel by user"

    invoke-direct {v2, v3}, Lcom/keniu/security/sync/d/e/e;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 560
    :catchall_0
    move-exception v2

    move-object v3, v6

    move-object v4, v7

    :goto_2
    invoke-static {v4}, Lcom/keniu/security/sync/d/a/b;->a(Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 562
    invoke-static {v3}, Lcom/keniu/security/sync/d/a/b;->a(Lcom/keniu/security/sync/d/e/a;)Lcom/keniu/security/sync/d/e/a;

    .line 563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/sync/d/a/b;->j:Ljava/util/Map;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    throw v2

    .line 519
    :cond_1
    const-wide/16 v10, 0x64

    :try_start_3
    div-long/2addr v8, v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 528
    :cond_2
    const/4 v13, 0x0

    :try_start_4
    invoke-virtual {v2, v3, v13, v12}, Ljava/io/OutputStream;->write([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 537
    const/4 v5, 0x0

    .line 538
    int-to-long v12, v12

    add-long/2addr v10, v12

    .line 542
    if-eqz p5, :cond_0

    cmp-long v12, v10, v8

    if-ltz v12, :cond_0

    .line 543
    const-wide/16 v10, 0x0

    goto :goto_1

    .line 529
    :catch_0
    move-exception v12

    .line 530
    add-int/lit8 v5, v5, 0x1

    .line 531
    :try_start_5
    const-string v13, "TpanServ.FudAction"

    const-string v14, "Retry(%d) write ..."

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    const/4 v13, 0x6

    if-le v5, v13, :cond_0

    .line 533
    throw v12

    .line 548
    :cond_3
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 549
    const/4 v3, 0x0

    .line 552
    :try_start_6
    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write([B)V

    .line 554
    invoke-virtual {v6}, Lcom/keniu/security/sync/d/e/a;->c()Ljava/io/InputStream;

    .line 555
    const-string v2, "Tpan-Ret"

    invoke-virtual {v6, v2}, Lcom/keniu/security/sync/d/e/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 556
    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/hoi/a/a;->a(Ljava/lang/String;I)[B

    move-result-object v2

    .line 557
    invoke-static {v2}, Lcom/keniu/security/sync/d/d/a/ie;->a([B)Lcom/keniu/security/sync/d/d/a/ie;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result-object v2

    .line 560
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/keniu/security/sync/d/a/b;->a(Ljava/io/InputStream;)Ljava/io/InputStream;

    .line 562
    invoke-static {v6}, Lcom/keniu/security/sync/d/a/b;->a(Lcom/keniu/security/sync/d/e/a;)Lcom/keniu/security/sync/d/e/a;

    .line 563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/sync/d/a/b;->j:Ljava/util/Map;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 565
    return-object v2

    .line 560
    :catchall_1
    move-exception v2

    move-object/from16 v18, v4

    move-object v4, v3

    move-object/from16 v3, v18

    goto :goto_2

    :catchall_2
    move-exception v2

    move-object v4, v3

    move-object v3, v6

    goto :goto_2
.end method
