.class public final Lcom/c/a/a/ah;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static k:Ljava/lang/StringBuffer;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/c/a/a/af;

.field private c:Landroid/net/ConnectivityManager;

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:I

.field private h:I

.field private i:Z

.field private j:Z

.field private l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    sput-object v0, Lcom/c/a/a/ah;->k:Ljava/lang/StringBuffer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput v1, p0, Lcom/c/a/a/ah;->d:I

    .line 43
    iput v1, p0, Lcom/c/a/a/ah;->e:I

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/c/a/a/ah;->f:Ljava/lang/String;

    .line 45
    iput v1, p0, Lcom/c/a/a/ah;->g:I

    .line 48
    iput-boolean v1, p0, Lcom/c/a/a/ah;->i:Z

    .line 49
    iput-boolean v1, p0, Lcom/c/a/a/ah;->j:Z

    .line 53
    const-string v0, "10.0.0.172"

    iput-object v0, p0, Lcom/c/a/a/ah;->l:Ljava/lang/String;

    .line 80
    iput-object p1, p0, Lcom/c/a/a/ah;->a:Landroid/content/Context;

    .line 81
    const/4 v0, 0x3

    iput v0, p0, Lcom/c/a/a/ah;->d:I

    .line 82
    iput v1, p0, Lcom/c/a/a/ah;->e:I

    .line 83
    invoke-static {p1}, Lcom/c/a/a/af;->a(Landroid/content/Context;)Lcom/c/a/a/af;

    move-result-object v0

    iput-object v0, p0, Lcom/c/a/a/ah;->b:Lcom/c/a/a/af;

    .line 84
    iget-object v0, p0, Lcom/c/a/a/ah;->b:Lcom/c/a/a/af;

    iget-object v0, v0, Lcom/c/a/a/af;->a:Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/c/a/a/ah;->c:Landroid/net/ConnectivityManager;

    .line 85
    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 4

    .prologue
    .line 500
    :try_start_0
    sget-object v0, Lcom/c/a/a/ah;->k:Ljava/lang/StringBuffer;

    if-nez v0, :cond_0

    .line 502
    const-string v0, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    :try_start_1
    iget-object v1, p0, Lcom/c/a/a/ah;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/c/a/a/ah;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 505
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Lcom/c/a/a/ah;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 507
    const-string v3, "utf-8"

    invoke-static {v2, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 508
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

    .line 512
    :goto_0
    :try_start_2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 513
    sput-object v1, Lcom/c/a/a/ah;->k:Ljava/lang/StringBuffer;

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

    iget-object v3, p0, Lcom/c/a/a/ah;->a:Landroid/content/Context;

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

    .line 522
    :cond_0
    sget-object v0, Lcom/c/a/a/ah;->k:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    .line 525
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_1

    .line 509
    :catch_1
    move-exception v1

    goto/16 :goto_0
.end method

.method private b(Ljava/lang/String;)[B
    .locals 7
    .parameter

    .prologue
    const/16 v6, 0x4e20

    .line 259
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 260
    iget v1, p0, Lcom/c/a/a/ah;->e:I

    if-nez v1, :cond_2

    .line 263
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 269
    :goto_0
    iget-boolean v2, p0, Lcom/c/a/a/ah;->i:Z

    if-eqz v2, :cond_0

    .line 271
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    .line 272
    new-instance v3, Lorg/apache/http/HttpHost;

    iget-object v4, p0, Lcom/c/a/a/ah;->l:Ljava/lang/String;

    const/16 v5, 0x50

    invoke-direct {v3, v4, v5}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    invoke-static {v2, v3}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    .line 273
    invoke-virtual {v1, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 276
    :cond_0
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 277
    invoke-static {v2, v6}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 278
    invoke-static {v2, v6}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 279
    invoke-virtual {v1, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 281
    iget-object v2, p0, Lcom/c/a/a/ah;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/c/a/a/s;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 282
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 284
    const-string v3, "maptag"

    invoke-virtual {v1, v3, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :cond_1
    const-string v2, "IMEI"

    sget-object v3, Lcom/c/a/a/s;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string v2, "User-Agent"

    invoke-direct {p0}, Lcom/c/a/a/ah;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string v2, "s_n"

    invoke-direct {p0}, Lcom/c/a/a/ah;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget v2, p0, Lcom/c/a/a/ah;->e:I

    .line 292
    :try_start_0
    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 300
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    iput v3, p0, Lcom/c/a/a/ah;->h:I

    .line 301
    iget v3, p0, Lcom/c/a/a/ah;->h:I

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_3

    .line 303
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

    .line 328
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    move-object v0, v1

    .line 330
    :goto_1
    return-object v0

    .line 267
    :cond_2
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 328
    :cond_3
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 330
    :goto_2
    const/4 v0, 0x0

    goto :goto_1

    .line 308
    :catch_0
    move-exception v2

    const/16 v2, 0x19d

    :try_start_1
    iput v2, p0, Lcom/c/a/a/ah;->h:I

    .line 309
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 328
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_2

    .line 313
    :catch_1
    move-exception v2

    const/16 v2, 0x190

    :try_start_2
    iput v2, p0, Lcom/c/a/a/ah;->h:I

    .line 314
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 328
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_2

    .line 318
    :catch_2
    move-exception v2

    const/16 v2, 0x1f6

    :try_start_3
    iput v2, p0, Lcom/c/a/a/ah;->h:I

    .line 319
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 328
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_2

    .line 323
    :catch_3
    move-exception v2

    const/16 v2, 0x1f7

    :try_start_4
    iput v2, p0, Lcom/c/a/a/ah;->h:I

    .line 324
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 328
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_2

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    throw v1
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter

    .prologue
    const/16 v6, 0x4e20

    .line 335
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 337
    iget v1, p0, Lcom/c/a/a/ah;->e:I

    if-nez v1, :cond_2

    .line 340
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 346
    :goto_0
    iget-boolean v2, p0, Lcom/c/a/a/ah;->i:Z

    if-eqz v2, :cond_0

    .line 348
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    .line 349
    new-instance v3, Lorg/apache/http/HttpHost;

    iget-object v4, p0, Lcom/c/a/a/ah;->l:Ljava/lang/String;

    const/16 v5, 0x50

    invoke-direct {v3, v4, v5}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    invoke-static {v2, v3}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    .line 351
    invoke-virtual {v1, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 353
    :cond_0
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 354
    invoke-static {v2, v6}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 355
    invoke-static {v2, v6}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 356
    invoke-virtual {v1, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 358
    iget-object v2, p0, Lcom/c/a/a/ah;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/c/a/a/s;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 359
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 361
    const-string v3, "maptag"

    invoke-virtual {v1, v3, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    :cond_1
    const-string v2, "IMEI"

    sget-object v3, Lcom/c/a/a/s;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const-string v2, "User-Agent"

    invoke-direct {p0}, Lcom/c/a/a/ah;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const-string v2, "s_n"

    invoke-direct {p0}, Lcom/c/a/a/ah;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    iget v2, p0, Lcom/c/a/a/ah;->e:I

    .line 368
    :try_start_0
    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 375
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    iput v3, p0, Lcom/c/a/a/ah;->h:I

    .line 376
    iget v3, p0, Lcom/c/a/a/ah;->h:I

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_3

    .line 378
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

    .line 404
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    move-object v0, v1

    .line 406
    :goto_1
    return-object v0

    .line 344
    :cond_2
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 404
    :cond_3
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 406
    :goto_2
    const/4 v0, 0x0

    goto :goto_1

    .line 384
    :catch_0
    move-exception v2

    const/16 v2, 0x19d

    :try_start_1
    iput v2, p0, Lcom/c/a/a/ah;->h:I

    .line 385
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 404
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_2

    .line 389
    :catch_1
    move-exception v2

    const/16 v2, 0x190

    :try_start_2
    iput v2, p0, Lcom/c/a/a/ah;->h:I

    .line 390
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 404
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_2

    .line 394
    :catch_2
    move-exception v2

    const/16 v2, 0x1f6

    :try_start_3
    iput v2, p0, Lcom/c/a/a/ah;->h:I

    .line 395
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 404
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_2

    .line 399
    :catch_3
    move-exception v2

    const/16 v2, 0x1f7

    :try_start_4
    iput v2, p0, Lcom/c/a/a/ah;->h:I

    .line 400
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 404
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_2

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    throw v1
.end method

.method private d(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 7
    .parameter

    .prologue
    const/16 v6, 0x4e20

    .line 411
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 412
    iget v1, p0, Lcom/c/a/a/ah;->e:I

    if-nez v1, :cond_2

    .line 415
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 421
    :goto_0
    iget-boolean v2, p0, Lcom/c/a/a/ah;->i:Z

    if-eqz v2, :cond_0

    .line 423
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v2

    .line 424
    new-instance v3, Lorg/apache/http/HttpHost;

    iget-object v4, p0, Lcom/c/a/a/ah;->l:Ljava/lang/String;

    const/16 v5, 0x50

    invoke-direct {v3, v4, v5}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    invoke-static {v2, v3}, Lorg/apache/http/conn/params/ConnRouteParams;->setDefaultProxy(Lorg/apache/http/params/HttpParams;Lorg/apache/http/HttpHost;)V

    .line 425
    invoke-virtual {v1, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 428
    :cond_0
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 429
    invoke-static {v2, v6}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 430
    invoke-static {v2, v6}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 431
    invoke-virtual {v1, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->setParams(Lorg/apache/http/params/HttpParams;)V

    .line 433
    iget-object v2, p0, Lcom/c/a/a/ah;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/c/a/a/s;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 434
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 436
    const-string v3, "maptag"

    invoke-virtual {v1, v3, v2}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    :cond_1
    const-string v2, "IMEI"

    sget-object v3, Lcom/c/a/a/s;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const-string v2, "User-Agent"

    invoke-direct {p0}, Lcom/c/a/a/ah;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    const-string v2, "s_n"

    invoke-direct {p0}, Lcom/c/a/a/ah;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    iget v2, p0, Lcom/c/a/a/ah;->e:I

    .line 443
    :try_start_0
    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 450
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    iput v3, p0, Lcom/c/a/a/ah;->h:I

    .line 451
    iget v3, p0, Lcom/c/a/a/ah;->h:I

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_3

    .line 453
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

    .line 478
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    move-object v0, v1

    .line 480
    :goto_1
    return-object v0

    .line 419
    :cond_2
    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 478
    :cond_3
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 480
    :goto_2
    const/4 v0, 0x0

    goto :goto_1

    .line 458
    :catch_0
    move-exception v2

    const/16 v2, 0x19d

    :try_start_1
    iput v2, p0, Lcom/c/a/a/ah;->h:I

    .line 459
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 478
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_2

    .line 463
    :catch_1
    move-exception v2

    const/16 v2, 0x190

    :try_start_2
    iput v2, p0, Lcom/c/a/a/ah;->h:I

    .line 464
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 478
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_2

    .line 468
    :catch_2
    move-exception v2

    const/16 v2, 0x1f6

    :try_start_3
    iput v2, p0, Lcom/c/a/a/ah;->h:I

    .line 469
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 478
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_2

    .line 473
    :catch_3
    move-exception v2

    const/16 v2, 0x1f7

    :try_start_4
    iput v2, p0, Lcom/c/a/a/ah;->h:I

    .line 474
    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 478
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    goto :goto_2

    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    throw v1
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 211
    const/4 v0, 0x0

    .line 212
    iget-object v1, p0, Lcom/c/a/a/ah;->c:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-eq v2, v3, :cond_0

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cmwap"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_1

    iput-boolean v3, p0, Lcom/c/a/a/ah;->i:Z

    .line 213
    :cond_0
    :goto_0
    iget v1, p0, Lcom/c/a/a/ah;->d:I

    packed-switch v1, :pswitch_data_0

    .line 248
    :goto_1
    :pswitch_0
    return-object v0

    .line 212
    :cond_1
    const-string v2, "ctwap"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v4, :cond_2

    iput-boolean v3, p0, Lcom/c/a/a/ah;->i:Z

    const-string v1, "10.0.0.200"

    iput-object v1, p0, Lcom/c/a/a/ah;->l:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v2, "3gwap"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v4, :cond_0

    iput-boolean v3, p0, Lcom/c/a/a/ah;->i:Z

    goto :goto_0

    .line 233
    :pswitch_1
    iget-object v0, p0, Lcom/c/a/a/ah;->f:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/c/a/a/ah;->b(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_1

    .line 238
    :pswitch_2
    iget-object v0, p0, Lcom/c/a/a/ah;->f:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/c/a/a/ah;->d(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_1

    .line 243
    :pswitch_3
    iget-object v0, p0, Lcom/c/a/a/ah;->f:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/c/a/a/ah;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 213
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/c/a/a/ah;->f:Ljava/lang/String;

    .line 100
    return-void
.end method
