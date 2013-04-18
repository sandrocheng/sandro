.class public final Lcom/c/a/a/ag;
.super Lcom/c/a/a/x;
.source "SourceFile"


# static fields
.field private static l:Ljava/lang/StringBuffer;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/c/a/a/af;

.field private c:Landroid/net/ConnectivityManager;

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:I

.field private h:I

.field private i:I

.field private j:Z

.field private k:Z

.field private m:Ljava/lang/String;

.field private n:Lcom/c/a/a/k;

.field private o:Lcom/c/a/a/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput-object v0, Lcom/c/a/a/ag;->l:Ljava/lang/StringBuffer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-direct {p0}, Lcom/c/a/a/x;-><init>()V

    .line 44
    iput v1, p0, Lcom/c/a/a/ag;->d:I

    .line 45
    iput v1, p0, Lcom/c/a/a/ag;->e:I

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/c/a/a/ag;->f:Ljava/lang/String;

    .line 48
    iput v1, p0, Lcom/c/a/a/ag;->h:I

    .line 51
    iput-boolean v1, p0, Lcom/c/a/a/ag;->j:Z

    .line 52
    iput-boolean v1, p0, Lcom/c/a/a/ag;->k:Z

    .line 55
    const-string v0, "10.0.0.172"

    iput-object v0, p0, Lcom/c/a/a/ag;->m:Ljava/lang/String;

    .line 92
    iput-object p1, p0, Lcom/c/a/a/ag;->a:Landroid/content/Context;

    .line 93
    const/4 v0, 0x3

    iput v0, p0, Lcom/c/a/a/ag;->d:I

    .line 94
    iput v1, p0, Lcom/c/a/a/ag;->e:I

    .line 95
    invoke-static {p1}, Lcom/c/a/a/af;->a(Landroid/content/Context;)Lcom/c/a/a/af;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/a/ag;->b:Lcom/c/a/a/af;

    .line 96
    iget-object v0, p0, Lcom/c/a/a/ag;->b:Lcom/c/a/a/af;

    iget-object v0, v0, Lcom/c/a/a/af;->a:Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/c/a/a/ag;->c:Landroid/net/ConnectivityManager;

    .line 97
    return-void
.end method

.method private b(Ljava/lang/String;)[B
    .locals 9
    .parameter

    .prologue
    const/16 v6, 0x4e20

    const/4 v8, 0x0

    .line 297
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 298
    iget v1, p0, Lcom/c/a/a/ag;->e:I

    if-nez v1, :cond_3

    .line 301
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 307
    :goto_0
    iget-boolean v2, p0, Lcom/c/a/a/ag;->j:Z

    if-eqz v2, :cond_0

    .line 309
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    .line 310
    new-instance v3, Lorg/apache/http/HttpHost;

    iget-object v4, p0, Lcom/c/a/a/ag;->m:Ljava/lang/String;

    const/16 v5, 0x50

    invoke-direct {v3, v4, v5}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    invoke-static {v2, v3}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    .line 311
    invoke-virtual {v1, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 314
    :cond_0
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 315
    invoke-static {v2, v6}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 316
    invoke-static {v2, v6}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 317
    invoke-virtual {v1, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 319
    iget-object v2, p0, Lcom/c/a/a/ag;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/c/a/a/s;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 320
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 322
    const-string v3, "maptag"

    invoke-virtual {v1, v3, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    :cond_1
    const-string v2, "IMEI"

    sget-object v3, Lcom/c/a/a/s;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const-string v2, "User-Agent"

    invoke-direct {p0}, Lcom/c/a/a/ag;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const-string v2, "s_n"

    invoke-direct {p0}, Lcom/c/a/a/ag;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iget v2, p0, Lcom/c/a/a/ag;->e:I

    .line 331
    :try_start_0
    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 339
    const-string v3, "Server"

    invoke-interface {v2, v3}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v3

    .line 341
    if-eqz v3, :cond_b

    .line 343
    array-length v4, v3

    move v5, v8

    :goto_1
    if-ge v5, v4, :cond_b

    aget-object v6, v3, v5

    .line 345
    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 346
    if-eqz v6, :cond_4

    const-string v7, "mapbarserver"

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 348
    const/4 v3, 0x1

    .line 353
    :goto_2
    if-eqz v3, :cond_5

    .line 355
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    iput v3, p0, Lcom/c/a/a/ag;->i:I

    .line 356
    iget-object v3, p0, Lcom/c/a/a/ag;->o:Lcom/c/a/a/l;

    if-eqz v3, :cond_2

    .line 357
    iget-object v3, p0, Lcom/c/a/a/ag;->o:Lcom/c/a/a/l;

    iget v4, p0, Lcom/c/a/a/ag;->i:I

    invoke-virtual {v3, p0, v4}, Lcom/c/a/a/l;->a(Lcom/c/a/a/ag;I)V

    .line 358
    :cond_2
    iget v3, p0, Lcom/c/a/a/ag;->i:I

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_6

    .line 360
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v1

    .line 395
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    move-object v0, v1

    .line 397
    :goto_3
    return-object v0

    .line 305
    :cond_3
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 343
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 365
    :cond_5
    :try_start_1
    iget-object v2, p0, Lcom/c/a/a/ag;->o:Lcom/c/a/a/l;

    if-eqz v2, :cond_6

    .line 366
    iget-object v2, p0, Lcom/c/a/a/ag;->o:Lcom/c/a/a/l;

    const/16 v3, 0x191

    invoke-virtual {v2, p0, v3}, Lcom/c/a/a/l;->a(Lcom/c/a/a/ag;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 395
    :cond_6
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 397
    :goto_4
    const/4 v0, 0x0

    goto :goto_3

    .line 369
    :catch_0
    move-exception v2

    .line 371
    :try_start_2
    iget-object v2, p0, Lcom/c/a/a/ag;->o:Lcom/c/a/a/l;

    if-eqz v2, :cond_7

    .line 372
    iget-object v2, p0, Lcom/c/a/a/ag;->o:Lcom/c/a/a/l;

    const/16 v3, 0x19d

    invoke-virtual {v2, p0, v3}, Lcom/c/a/a/l;->a(Lcom/c/a/a/ag;I)V

    .line 373
    :cond_7
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 395
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_4

    .line 375
    :catch_1
    move-exception v2

    .line 377
    :try_start_3
    iget-object v2, p0, Lcom/c/a/a/ag;->o:Lcom/c/a/a/l;

    if-eqz v2, :cond_8

    .line 378
    iget-object v2, p0, Lcom/c/a/a/ag;->o:Lcom/c/a/a/l;

    const/16 v3, 0x190

    invoke-virtual {v2, p0, v3}, Lcom/c/a/a/l;->a(Lcom/c/a/a/ag;I)V

    .line 379
    :cond_8
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 395
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_4

    .line 381
    :catch_2
    move-exception v2

    .line 383
    :try_start_4
    iget-object v2, p0, Lcom/c/a/a/ag;->o:Lcom/c/a/a/l;

    if-eqz v2, :cond_9

    .line 384
    iget-object v2, p0, Lcom/c/a/a/ag;->o:Lcom/c/a/a/l;

    const/16 v3, 0x1f4

    invoke-virtual {v2, p0, v3}, Lcom/c/a/a/l;->a(Lcom/c/a/a/ag;I)V

    .line 385
    :cond_9
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 395
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_4

    .line 387
    :catch_3
    move-exception v2

    .line 389
    :try_start_5
    iget-object v2, p0, Lcom/c/a/a/ag;->o:Lcom/c/a/a/l;

    if-eqz v2, :cond_a

    .line 390
    iget-object v2, p0, Lcom/c/a/a/ag;->o:Lcom/c/a/a/l;

    const/16 v3, 0x1f7

    invoke-virtual {v2, p0, v3}, Lcom/c/a/a/l;->a(Lcom/c/a/a/ag;I)V

    .line 391
    :cond_a
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 395
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_4

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    throw v1

    :cond_b
    move v3, v8

    goto/16 :goto_2
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter

    .prologue
    const/16 v6, 0x4e20

    const/4 v8, 0x0

    .line 402
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 403
    iget v1, p0, Lcom/c/a/a/ag;->e:I

    if-nez v1, :cond_3

    .line 406
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 412
    :goto_0
    iget-boolean v2, p0, Lcom/c/a/a/ag;->j:Z

    if-eqz v2, :cond_0

    .line 414
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    .line 415
    new-instance v3, Lorg/apache/http/HttpHost;

    iget-object v4, p0, Lcom/c/a/a/ag;->m:Ljava/lang/String;

    const/16 v5, 0x50

    invoke-direct {v3, v4, v5}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    invoke-static {v2, v3}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    .line 416
    invoke-virtual {v1, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 418
    :cond_0
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 419
    invoke-static {v2, v6}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 420
    invoke-static {v2, v6}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 421
    invoke-virtual {v1, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 423
    iget-object v2, p0, Lcom/c/a/a/ag;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/c/a/a/s;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 424
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 426
    const-string v3, "maptag"

    invoke-virtual {v1, v3, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    :cond_1
    const-string v2, "IMEI"

    sget-object v3, Lcom/c/a/a/s;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    const-string v2, "User-Agent"

    invoke-direct {p0}, Lcom/c/a/a/ag;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    const-string v2, "s_n"

    invoke-direct {p0}, Lcom/c/a/a/ag;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    iget v2, p0, Lcom/c/a/a/ag;->e:I

    .line 434
    :try_start_0
    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 442
    const-string v3, "Server"

    invoke-interface {v2, v3}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v3

    .line 444
    if-eqz v3, :cond_b

    .line 446
    array-length v4, v3

    move v5, v8

    :goto_1
    if-ge v5, v4, :cond_b

    aget-object v6, v3, v5

    .line 448
    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 449
    if-eqz v6, :cond_4

    const-string v7, "mapbarserver"

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 451
    const/4 v3, 0x1

    .line 456
    :goto_2
    if-eqz v3, :cond_5

    .line 458
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    iput v3, p0, Lcom/c/a/a/ag;->i:I

    .line 459
    iget-object v3, p0, Lcom/c/a/a/ag;->o:Lcom/c/a/a/l;

    if-eqz v3, :cond_2

    .line 460
    iget-object v3, p0, Lcom/c/a/a/ag;->o:Lcom/c/a/a/l;

    iget v4, p0, Lcom/c/a/a/ag;->i:I

    invoke-virtual {v3, p0, v4}, Lcom/c/a/a/l;->a(Lcom/c/a/a/ag;I)V

    .line 461
    :cond_2
    iget v3, p0, Lcom/c/a/a/ag;->i:I

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_6

    .line 463
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    const-string v3, "utf-8"

    invoke-static {v2, v3}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v1

    .line 499
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    move-object v0, v1

    .line 501
    :goto_3
    return-object v0

    .line 410
    :cond_3
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 446
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 469
    :cond_5
    :try_start_1
    iget-object v2, p0, Lcom/c/a/a/ag;->o:Lcom/c/a/a/l;

    if-eqz v2, :cond_6

    .line 470
    iget-object v2, p0, Lcom/c/a/a/ag;->o:Lcom/c/a/a/l;

    const/16 v3, 0x191

    invoke-virtual {v2, p0, v3}, Lcom/c/a/a/l;->a(Lcom/c/a/a/ag;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 499
    :cond_6
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 501
    :goto_4
    const/4 v0, 0x0

    goto :goto_3

    .line 473
    :catch_0
    move-exception v2

    .line 475
    :try_start_2
    iget-object v2, p0, Lcom/c/a/a/ag;->o:Lcom/c/a/a/l;

    if-eqz v2, :cond_7

    .line 476
    iget-object v2, p0, Lcom/c/a/a/ag;->o:Lcom/c/a/a/l;

    const/16 v3, 0x19d

    invoke-virtual {v2, p0, v3}, Lcom/c/a/a/l;->a(Lcom/c/a/a/ag;I)V

    .line 477
    :cond_7
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 499
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_4

    .line 479
    :catch_1
    move-exception v2

    .line 481
    :try_start_3
    iget-object v2, p0, Lcom/c/a/a/ag;->o:Lcom/c/a/a/l;

    if-eqz v2, :cond_8

    .line 482
    iget-object v2, p0, Lcom/c/a/a/ag;->o:Lcom/c/a/a/l;

    const/16 v3, 0x190

    invoke-virtual {v2, p0, v3}, Lcom/c/a/a/l;->a(Lcom/c/a/a/ag;I)V

    .line 483
    :cond_8
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 499
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_4

    .line 485
    :catch_2
    move-exception v2

    .line 487
    :try_start_4
    iget-object v2, p0, Lcom/c/a/a/ag;->o:Lcom/c/a/a/l;

    if-eqz v2, :cond_9

    .line 488
    iget-object v2, p0, Lcom/c/a/a/ag;->o:Lcom/c/a/a/l;

    const/16 v3, 0x1f4

    invoke-virtual {v2, p0, v3}, Lcom/c/a/a/l;->a(Lcom/c/a/a/ag;I)V

    .line 489
    :cond_9
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 499
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_4

    .line 491
    :catch_3
    move-exception v2

    .line 493
    :try_start_5
    iget-object v2, p0, Lcom/c/a/a/ag;->o:Lcom/c/a/a/l;

    if-eqz v2, :cond_a

    .line 494
    iget-object v2, p0, Lcom/c/a/a/ag;->o:Lcom/c/a/a/l;

    const/16 v3, 0x1f7

    invoke-virtual {v2, p0, v3}, Lcom/c/a/a/l;->a(Lcom/c/a/a/ag;I)V

    .line 495
    :cond_a
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 499
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_4

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    throw v1

    :cond_b
    move v3, v8

    goto/16 :goto_2
.end method

.method private d(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 9
    .parameter

    .prologue
    const/16 v6, 0x4e20

    const/4 v8, 0x0

    .line 506
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 508
    iget v1, p0, Lcom/c/a/a/ag;->e:I

    if-nez v1, :cond_3

    .line 511
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 517
    :goto_0
    iget-boolean v2, p0, Lcom/c/a/a/ag;->j:Z

    if-eqz v2, :cond_0

    .line 519
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    .line 520
    new-instance v3, Lorg/apache/http/HttpHost;

    iget-object v4, p0, Lcom/c/a/a/ag;->m:Ljava/lang/String;

    const/16 v5, 0x50

    invoke-direct {v3, v4, v5}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    invoke-static {v2, v3}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    .line 521
    invoke-virtual {v1, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 524
    :cond_0
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 525
    invoke-static {v2, v6}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 526
    invoke-static {v2, v6}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 527
    invoke-virtual {v1, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 529
    iget-object v2, p0, Lcom/c/a/a/ag;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/c/a/a/s;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 530
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 532
    const-string v3, "maptag"

    invoke-virtual {v1, v3, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    :cond_1
    const-string v2, "IMEI"

    sget-object v3, Lcom/c/a/a/s;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    const-string v2, "User-Agent"

    invoke-direct {p0}, Lcom/c/a/a/ag;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    const-string v2, "s_n"

    invoke-direct {p0}, Lcom/c/a/a/ag;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    iget v2, p0, Lcom/c/a/a/ag;->e:I

    .line 540
    :try_start_0
    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 549
    const-string v3, "Server"

    invoke-interface {v2, v3}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v3

    .line 551
    if-eqz v3, :cond_b

    .line 553
    array-length v4, v3

    move v5, v8

    :goto_1
    if-ge v5, v4, :cond_b

    aget-object v6, v3, v5

    .line 555
    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 556
    if-eqz v6, :cond_4

    const-string v7, "mapbarserver"

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 558
    const/4 v3, 0x1

    .line 563
    :goto_2
    if-eqz v3, :cond_5

    .line 565
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    iput v3, p0, Lcom/c/a/a/ag;->i:I

    .line 566
    iget-object v3, p0, Lcom/c/a/a/ag;->o:Lcom/c/a/a/l;

    if-eqz v3, :cond_2

    .line 567
    iget-object v3, p0, Lcom/c/a/a/ag;->o:Lcom/c/a/a/l;

    iget v4, p0, Lcom/c/a/a/ag;->i:I

    invoke-virtual {v3, p0, v4}, Lcom/c/a/a/l;->a(Lcom/c/a/a/ag;I)V

    .line 568
    :cond_2
    iget v3, p0, Lcom/c/a/a/ag;->i:I

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_6

    .line 570
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v1

    .line 605
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    move-object v0, v1

    .line 607
    :goto_3
    return-object v0

    .line 515
    :cond_3
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 553
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 575
    :cond_5
    :try_start_1
    iget-object v2, p0, Lcom/c/a/a/ag;->o:Lcom/c/a/a/l;

    if-eqz v2, :cond_6

    .line 576
    iget-object v2, p0, Lcom/c/a/a/ag;->o:Lcom/c/a/a/l;

    const/16 v3, 0x191

    invoke-virtual {v2, p0, v3}, Lcom/c/a/a/l;->a(Lcom/c/a/a/ag;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 605
    :cond_6
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 607
    :goto_4
    const/4 v0, 0x0

    goto :goto_3

    .line 579
    :catch_0
    move-exception v2

    .line 581
    :try_start_2
    iget-object v2, p0, Lcom/c/a/a/ag;->o:Lcom/c/a/a/l;

    if-eqz v2, :cond_7

    .line 582
    iget-object v2, p0, Lcom/c/a/a/ag;->o:Lcom/c/a/a/l;

    const/16 v3, 0x19d

    invoke-virtual {v2, p0, v3}, Lcom/c/a/a/l;->a(Lcom/c/a/a/ag;I)V

    .line 583
    :cond_7
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 605
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_4

    .line 585
    :catch_1
    move-exception v2

    .line 587
    :try_start_3
    iget-object v2, p0, Lcom/c/a/a/ag;->o:Lcom/c/a/a/l;

    if-eqz v2, :cond_8

    .line 588
    iget-object v2, p0, Lcom/c/a/a/ag;->o:Lcom/c/a/a/l;

    const/16 v3, 0x190

    invoke-virtual {v2, p0, v3}, Lcom/c/a/a/l;->a(Lcom/c/a/a/ag;I)V

    .line 589
    :cond_8
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 605
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_4

    .line 591
    :catch_2
    move-exception v2

    .line 593
    :try_start_4
    iget-object v2, p0, Lcom/c/a/a/ag;->o:Lcom/c/a/a/l;

    if-eqz v2, :cond_9

    .line 594
    iget-object v2, p0, Lcom/c/a/a/ag;->o:Lcom/c/a/a/l;

    const/16 v3, 0x1f4

    invoke-virtual {v2, p0, v3}, Lcom/c/a/a/l;->a(Lcom/c/a/a/ag;I)V

    .line 595
    :cond_9
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 605
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_4

    .line 597
    :catch_3
    move-exception v2

    .line 599
    :try_start_5
    iget-object v2, p0, Lcom/c/a/a/ag;->o:Lcom/c/a/a/l;

    if-eqz v2, :cond_a

    .line 600
    iget-object v2, p0, Lcom/c/a/a/ag;->o:Lcom/c/a/a/l;

    const/16 v3, 0x1f7

    invoke-virtual {v2, p0, v3}, Lcom/c/a/a/l;->a(Lcom/c/a/a/ag;I)V

    .line 601
    :cond_a
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 605
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_4

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    throw v1

    :cond_b
    move v3, v8

    goto/16 :goto_2
.end method

.method private g()Ljava/lang/String;
    .locals 4

    .prologue
    .line 634
    :try_start_0
    sget-object v0, Lcom/c/a/a/ag;->l:Ljava/lang/StringBuffer;

    if-nez v0, :cond_0

    .line 635
    const-string v0, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 637
    :try_start_1
    iget-object v1, p0, Lcom/c/a/a/ag;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/c/a/a/ag;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 638
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Lcom/c/a/a/ag;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 640
    const-string v3, "utf-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 641
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 644
    :goto_0
    :try_start_2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 645
    sput-object v1, Lcom/c/a/a/ag;->l:Ljava/lang/StringBuffer;

    const-string v2, "Android_CellLocation_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Lcom/c/a/a/n;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/c/a/a/ag;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/c/a/a/w;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v1, Lcom/c/a/a/s;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v1, Lcom/c/a/a/s;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 654
    :cond_0
    sget-object v0, Lcom/c/a/a/ag;->l:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    .line 657
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_1

    .line 642
    :catch_1
    move-exception v1

    goto/16 :goto_0
.end method


# virtual methods
.method public final varargs a()Ljava/lang/Object;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v3, -0x1

    const/4 v6, 0x1

    .line 241
    iget-object v1, p0, Lcom/c/a/a/ag;->c:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-eq v2, v6, :cond_0

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cmwap"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v3, :cond_3

    iput-boolean v6, p0, Lcom/c/a/a/ag;->j:Z

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/c/a/a/ag;->f:Ljava/lang/String;

    invoke-static {}, Lcom/c/a/a/p;->a()V

    iget v1, p0, Lcom/c/a/a/ag;->d:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    move-object v1, v7

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mStatusCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/c/a/a/ag;->i:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/c/a/a/ag;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/c/a/a/p;->a()V

    iget-object v2, p0, Lcom/c/a/a/ag;->n:Lcom/c/a/a/k;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/c/a/a/ag;->n:Lcom/c/a/a/k;

    iget v3, p0, Lcom/c/a/a/ag;->g:I

    iget-object v4, v2, Lcom/c/a/a/k;->b:Lcom/c/a/a/d;

    invoke-static {v4}, Lcom/c/a/a/d;->i(Lcom/c/a/a/d;)I

    move-result v4

    if-lt v3, v4, :cond_2

    iget-object v4, v2, Lcom/c/a/a/k;->b:Lcom/c/a/a/d;

    invoke-static {v4, v3}, Lcom/c/a/a/d;->b(Lcom/c/a/a/d;I)I

    iget-object v3, v2, Lcom/c/a/a/k;->b:Lcom/c/a/a/d;

    iget-object v4, v2, Lcom/c/a/a/k;->b:Lcom/c/a/a/d;

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object p0, v0

    invoke-static {p0}, Lcom/c/a/a/d;->c(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/c/a/a/d;->a(Lcom/c/a/a/d;Landroid/location/Location;)Landroid/location/Location;

    iget-object v1, v2, Lcom/c/a/a/k;->b:Lcom/c/a/a/d;

    invoke-static {v1}, Lcom/c/a/a/d;->a(Lcom/c/a/a/d;)Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, v2, Lcom/c/a/a/k;->b:Lcom/c/a/a/d;

    invoke-static {v1}, Lcom/c/a/a/d;->l(Lcom/c/a/a/d;)Landroid/os/Handler;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v1, v2, Lcom/c/a/a/k;->b:Lcom/c/a/a/d;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-static {v1, v3, v4}, Lcom/c/a/a/d;->a(Lcom/c/a/a/d;J)J

    iget-object v1, v2, Lcom/c/a/a/k;->b:Lcom/c/a/a/d;

    invoke-static {v1}, Lcom/c/a/a/d;->l(Lcom/c/a/a/d;)Landroid/os/Handler;

    move-result-object v1

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    :try_start_0
    iget-object v1, v2, Lcom/c/a/a/k;->b:Lcom/c/a/a/d;

    invoke-static {v1}, Lcom/c/a/a/d;->m(Lcom/c/a/a/d;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v3, v2, Lcom/c/a/a/k;->a:Ljava/lang/String;

    iget-object v4, v2, Lcom/c/a/a/k;->b:Lcom/c/a/a/d;

    invoke-static {v4}, Lcom/c/a/a/d;->m(Lcom/c/a/a/d;)Ljava/util/Vector;

    move-result-object v4

    sub-int v5, v1, v6

    invoke-virtual {v4, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/c/a/a/h;

    iget-object v4, p0, Lcom/c/a/a/h;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v2, v2, Lcom/c/a/a/k;->b:Lcom/c/a/a/d;

    invoke-static {v2}, Lcom/c/a/a/d;->m(Lcom/c/a/a/d;)Ljava/util/Vector;

    move-result-object v2

    sub-int/2addr v1, v6

    invoke-virtual {v2, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    :cond_2
    :goto_2
    return-object v7

    .line 241
    :cond_3
    const-string v2, "ctwap"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v3, :cond_4

    iput-boolean v6, p0, Lcom/c/a/a/ag;->j:Z

    const-string v1, "10.0.0.200"

    iput-object v1, p0, Lcom/c/a/a/ag;->m:Ljava/lang/String;

    goto/16 :goto_0

    :cond_4
    const-string v2, "3gwap"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_0

    iput-boolean v6, p0, Lcom/c/a/a/ag;->j:Z

    goto/16 :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/c/a/a/ag;->f:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/c/a/a/ag;->b(Ljava/lang/String;)[B

    move-result-object v1

    goto/16 :goto_1

    :pswitch_2
    iget-object v1, p0, Lcom/c/a/a/ag;->f:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/c/a/a/ag;->d(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    goto/16 :goto_1

    :pswitch_3
    iget-object v1, p0, Lcom/c/a/a/ag;->f:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/c/a/a/ag;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :catch_0
    move-exception v1

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput p1, p0, Lcom/c/a/a/ag;->g:I

    .line 132
    return-void
.end method

.method public final a(Lcom/c/a/a/k;)V
    .locals 0
    .parameter

    .prologue
    .line 141
    iput-object p1, p0, Lcom/c/a/a/ag;->n:Lcom/c/a/a/k;

    .line 142
    return-void
.end method

.method public final a(Lcom/c/a/a/l;)V
    .locals 0
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/c/a/a/ag;->o:Lcom/c/a/a/l;

    .line 147
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/c/a/a/ag;->f:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/c/a/a/ag;->g:I

    return v0
.end method
