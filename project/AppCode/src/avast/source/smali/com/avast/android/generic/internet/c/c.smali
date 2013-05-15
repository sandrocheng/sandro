.class public Lcom/avast/android/generic/internet/c/c;
.super Ljava/lang/Object;
.source "AvastAccountConnector.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x8
.end annotation


# instance fields
.field private A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private final a:[B

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:[B

.field private final h:[B

.field private final i:I

.field private final j:I

.field private final k:I

.field private final l:I

.field private final m:I

.field private final n:I

.field private final o:I

.field private final p:I

.field private q:Landroid/b/a/a;

.field private r:Lorg/apache/http/protocol/HttpContext;

.field private s:Lcom/avast/android/generic/util/aw;

.field private t:Ljava/lang/String;

.field private u:Lorg/apache/http/client/CookieStore;

.field private v:Lorg/apache/http/params/HttpParams;

.field private w:Ljava/lang/String;

.field private x:Lcom/avast/android/generic/ae;

.field private y:Z

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x2

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/c;->a:[B

    .line 133
    const-string v0, "https://pair.ff.avast.com"

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/c;->b:Ljava/lang/String;

    .line 148
    const-string v0, "/F/"

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/c;->c:Ljava/lang/String;

    .line 153
    const-string v0, "/unpair"

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/c;->d:Ljava/lang/String;

    .line 158
    const-string v0, "http://ai.ff.avast.com"

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/c;->e:Ljava/lang/String;

    .line 163
    const-string v0, "/F/"

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/c;->f:Ljava/lang/String;

    .line 168
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/c;->g:[B

    .line 173
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/c;->h:[B

    .line 178
    iput v3, p0, Lcom/avast/android/generic/internet/c/c;->i:I

    .line 184
    iput v1, p0, Lcom/avast/android/generic/internet/c/c;->j:I

    .line 190
    iput v3, p0, Lcom/avast/android/generic/internet/c/c;->k:I

    .line 195
    iput v1, p0, Lcom/avast/android/generic/internet/c/c;->l:I

    .line 200
    const/4 v0, 0x3

    iput v0, p0, Lcom/avast/android/generic/internet/c/c;->m:I

    .line 206
    const/4 v0, 0x4

    iput v0, p0, Lcom/avast/android/generic/internet/c/c;->n:I

    .line 211
    const/4 v0, 0x5

    iput v0, p0, Lcom/avast/android/generic/internet/c/c;->o:I

    .line 216
    const/4 v0, 0x6

    iput v0, p0, Lcom/avast/android/generic/internet/c/c;->p:I

    .line 316
    invoke-direct {p0, p1}, Lcom/avast/android/generic/internet/c/c;->a(Landroid/content/Context;)V

    .line 317
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/c;->q:Landroid/b/a/a;

    if-nez v0, :cond_0

    .line 318
    new-instance v0, Ljava/lang/InstantiationException;

    const-string v1, "Secure SSL client couldn\'t be created"

    invoke-direct {v0, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 321
    :cond_0
    new-instance v0, Lorg/apache/http/impl/client/BasicCookieStore;

    invoke-direct {v0}, Lorg/apache/http/impl/client/BasicCookieStore;-><init>()V

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/c;->u:Lorg/apache/http/client/CookieStore;

    .line 322
    new-instance v0, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/c;->r:Lorg/apache/http/protocol/HttpContext;

    .line 323
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/c;->r:Lorg/apache/http/protocol/HttpContext;

    const-string v1, "http.cookie-store"

    iget-object v2, p0, Lcom/avast/android/generic/internet/c/c;->u:Lorg/apache/http/client/CookieStore;

    invoke-interface {v0, v1, v2}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 326
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/c;->q:Landroid/b/a/a;

    invoke-virtual {v0}, Landroid/b/a/a;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/c;->v:Lorg/apache/http/params/HttpParams;

    .line 327
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/c;->v:Lorg/apache/http/params/HttpParams;

    const-string v1, "http.protocol.handle-redirects"

    invoke-interface {v0, v1, v3}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    .line 329
    const-class v0, Lcom/avast/android/generic/ae;

    invoke-static {p1, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ae;

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/c;->x:Lcom/avast/android/generic/ae;

    .line 330
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/c;->x:Lcom/avast/android/generic/ae;

    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->r()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/c;->w:Ljava/lang/String;

    .line 331
    invoke-static {p1}, Lcom/avast/android/generic/util/l;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 332
    const-string v0, "00000000-0000-0000-0000-000000000000"

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/c;->w:Ljava/lang/String;

    .line 334
    :cond_1
    invoke-static {p1}, Lcom/avast/android/generic/util/al;->a(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/android/generic/internet/c/c;->y:Z

    .line 336
    sget v0, Lcom/avast/android/generic/y;->c:I

    invoke-static {p1, v0}, Lcom/avast/android/generic/util/aw;->a(Landroid/content/Context;I)Lcom/avast/android/generic/util/aw;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/c;->s:Lcom/avast/android/generic/util/aw;

    .line 337
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/c;->s:Lcom/avast/android/generic/util/aw;

    if-nez v0, :cond_2

    .line 338
    new-instance v0, Ljava/lang/InstantiationException;

    const-string v1, "Can not read comm framework version"

    invoke-direct {v0, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 340
    :cond_2
    invoke-static {p1}, Lcom/avast/android/generic/f/b/a;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/c;->t:Ljava/lang/String;

    .line 341
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/c;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 342
    new-instance v0, Ljava/lang/InstantiationException;

    const-string v1, "Can not read device ID"

    invoke-direct {v0, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 344
    :cond_3
    invoke-direct {p0, p2}, Lcom/avast/android/generic/internet/c/c;->a(Landroid/os/Bundle;)V

    .line 345
    return-void

    .line 126
    nop

    :array_0
    .array-data 0x1
        0xbbt
        0xd4t
        0x3dt
        0x9bt
        0xa3t
        0x4ft
        0x8ct
        0x1dt
        0x98t
        0xc8t
        0x55t
        0x40t
        0x62t
        0x9ct
        0xfct
        0xfbt
    .end array-data

    .line 168
    :array_1
    .array-data 0x1
        0x0t
        0x4t
    .end array-data

    .line 173
    nop

    :array_2
    .array-data 0x1
        0x0t
        0xfft
    .end array-data
.end method

.method private a([BLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 728
    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 731
    invoke-static {p1, v0}, Lcom/avast/android/generic/util/e;->a([BLjava/lang/String;)[B

    move-result-object v0

    .line 733
    new-instance v1, Ljava/lang/String;

    invoke-static {v0}, Lcom/avast/android/generic/c/b;->a([B)[C

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    .line 735
    const/16 v0, 0x2b

    const/16 v2, 0x2d

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 736
    const/16 v1, 0x2f

    const/16 v2, 0x5f

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 737
    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    .line 747
    :try_start_0
    const-string v0, "avast! Mobile Security"

    invoke-static {v0}, Landroid/b/a/a;->a(Ljava/lang/String;)Landroid/b/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/c;->q:Landroid/b/a/a;

    .line 749
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/c;->q:Landroid/b/a/a;

    invoke-virtual {v0}, Landroid/b/a/a;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v0

    .line 751
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 752
    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v2, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v3

    const/16 v4, 0x1bb

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 764
    :goto_0
    return-void

    .line 754
    :cond_0
    invoke-static {p1, v0}, Lcom/avast/android/generic/internet/c/f;->a(Landroid/content/Context;Lorg/apache/http/conn/scheme/SchemeRegistry;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 756
    :catch_0
    move-exception v0

    .line 762
    invoke-virtual {p0}, Lcom/avast/android/generic/internet/c/c;->a()V

    goto :goto_0
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 353
    const-string v0, "https://pair.ff.avast.com/F/"

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/c;->z:Ljava/lang/String;

    .line 354
    const-string v0, "https://pair.ff.avast.com/unpair"

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/c;->A:Ljava/lang/String;

    .line 356
    const-string v0, "http://ai.ff.avast.com/F/"

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/c;->B:Ljava/lang/String;

    .line 358
    if-eqz p1, :cond_2

    .line 359
    const-string v0, "my_avast_pairing_server_address"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    const-string v0, "my_avast_pairing_server_address"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/c;->z:Ljava/lang/String;

    .line 362
    :cond_0
    const-string v0, "my_avast_unpairing_server_address"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 363
    const-string v0, "my_avast_unpairing_server_address"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/c;->A:Ljava/lang/String;

    .line 365
    :cond_1
    const-string v0, "my_avast_status_server_address"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 366
    const-string v0, "my_avast_status_server_address"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/c;->B:Ljava/lang/String;

    .line 369
    :cond_2
    return-void
.end method

.method private a(Ljava/lang/String;[BLcom/avast/android/generic/internet/c/a/ad;)Z
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 622
    const-string v0, "AvastAccountConnector"

    const-string v2, "Sending AUIDInfo message."

    invoke-static {v0, v2}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    const-string v0, "application/x-enc-gd"

    .line 625
    if-eqz p2, :cond_0

    array-length v2, p2

    const/16 v3, 0x10

    if-ge v2, v3, :cond_1

    .line 626
    :cond_0
    const-string v0, "AvastAccountConnector"

    const-string v2, "Using global encryption key."

    invoke-static {v0, v2}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    const-string v0, "application/x-enc2"

    .line 628
    iget-object p2, p0, Lcom/avast/android/generic/internet/c/c;->a:[B

    .line 631
    :cond_1
    const/4 v2, 0x0

    .line 633
    :try_start_0
    iget-object v3, p0, Lcom/avast/android/generic/internet/c/c;->h:[B

    iget-object v4, p0, Lcom/avast/android/generic/internet/c/c;->w:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/avast/android/generic/internet/c/c;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 635
    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/avast/android/generic/internet/c/c;->B:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 637
    const-string v3, "AvastAccountConnector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sending status with GUID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/avast/android/generic/internet/c/c;->w:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and AUID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    const-string v3, "AvastAccountConnector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sending request to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpPost;->getURI()Ljava/net/URI;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    invoke-virtual {p3}, Lcom/avast/android/generic/internet/c/a/ad;->bo()[B

    move-result-object v3

    .line 641
    invoke-direct {p0, p2, v3}, Lcom/avast/android/generic/internet/c/c;->a([B[B)[B

    move-result-object v3

    .line 643
    new-instance v5, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v5, v3}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v4, v5}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 644
    const-string v3, "Content-Type"

    invoke-virtual {v4, v3, v0}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/c;->q:Landroid/b/a/a;

    iget-object v3, p0, Lcom/avast/android/generic/internet/c/c;->r:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {v0, v4, v3}, Landroid/b/a/a;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 647
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result v3

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_5

    .line 662
    :cond_2
    if-eqz v2, :cond_3

    .line 664
    :try_start_1
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    :cond_3
    :goto_0
    move v0, v1

    .line 669
    :cond_4
    :goto_1
    return v0

    .line 651
    :cond_5
    :try_start_2
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v2

    .line 652
    :try_start_3
    const-string v0, "OK"

    invoke-static {v2}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result v0

    if-eqz v0, :cond_6

    .line 653
    const/4 v0, 0x1

    .line 662
    if-eqz v2, :cond_4

    .line 664
    :try_start_4
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 665
    :catch_0
    move-exception v1

    goto :goto_1

    .line 662
    :cond_6
    if-eqz v2, :cond_7

    .line 664
    :try_start_5
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    :cond_7
    :goto_2
    move v0, v1

    .line 669
    goto :goto_1

    .line 655
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 656
    :goto_3
    :try_start_6
    new-instance v2, Lcom/avast/android/generic/internet/c/g;

    invoke-direct {v2, v0}, Lcom/avast/android/generic/internet/c/g;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 662
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_4
    if-eqz v2, :cond_8

    .line 664
    :try_start_7
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 666
    :cond_8
    :goto_5
    throw v0

    .line 657
    :catch_2
    move-exception v0

    .line 658
    :try_start_8
    new-instance v1, Lcom/avast/android/generic/internet/c/g;

    invoke-direct {v1, v0}, Lcom/avast/android/generic/internet/c/g;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 662
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 659
    :catch_3
    move-exception v0

    .line 660
    new-instance v1, Lcom/avast/android/generic/internet/c/g;

    invoke-direct {v1, v0}, Lcom/avast/android/generic/internet/c/g;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 665
    :catch_4
    move-exception v0

    goto :goto_0

    :catch_5
    move-exception v0

    goto :goto_2

    :catch_6
    move-exception v1

    goto :goto_5

    .line 655
    :catch_7
    move-exception v0

    move-object v1, v2

    goto :goto_3
.end method

.method private a([B[B)[B
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/16 v4, 0x10

    .line 705
    new-array v0, v4, [B

    .line 706
    invoke-static {p1, v1, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 708
    const-string v1, "AES/CBC/PKCS5Padding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 710
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES/CBC/PKCS5Padding"

    invoke-direct {v2, v0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 711
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    new-array v3, v4, [B

    fill-array-data v3, :array_0

    invoke-direct {v0, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 714
    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 716
    invoke-virtual {v1, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    return-object v0

    .line 711
    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;)Lcom/avast/android/generic/internet/c/e;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 391
    const/4 v1, 0x0

    .line 393
    :try_start_0
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/c;->g:[B

    iget-object v2, p0, Lcom/avast/android/generic/internet/c/c;->w:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/avast/android/generic/internet/c/c;->a([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 395
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/avast/android/generic/internet/c/c;->z:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 397
    const-string v0, "AvastAccountConnector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Connecting device with GUID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/avast/android/generic/internet/c/c;->w:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    const-string v0, "AvastAccountConnector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending request to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/http/client/methods/HttpPost;->getURI()Ljava/net/URI;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/c;->x()Lcom/avast/android/generic/internet/c/a/d;

    move-result-object v3

    .line 401
    invoke-virtual {v3, p1}, Lcom/avast/android/generic/internet/c/a/d;->a(Ljava/lang/String;)Lcom/avast/android/generic/internet/c/a/d;

    .line 402
    invoke-virtual {v3, p2}, Lcom/avast/android/generic/internet/c/a/d;->b(Ljava/lang/String;)Lcom/avast/android/generic/internet/c/a/d;

    .line 403
    if-eqz p7, :cond_3

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/avast/android/generic/internet/c/a/d;->a(I)Lcom/avast/android/generic/internet/c/a/d;

    .line 405
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/avast/android/generic/internet/c/a/d;->d(Ljava/lang/String;)Lcom/avast/android/generic/internet/c/a/d;

    .line 406
    const-string v0, "android"

    invoke-virtual {v3, v0}, Lcom/avast/android/generic/internet/c/a/d;->f(Ljava/lang/String;)Lcom/avast/android/generic/internet/c/a/d;

    .line 407
    iget-boolean v0, p0, Lcom/avast/android/generic/internet/c/c;->y:Z

    if-eqz v0, :cond_4

    const-string v0, "tablet"

    :goto_1
    invoke-virtual {v3, v0}, Lcom/avast/android/generic/internet/c/a/d;->e(Ljava/lang/String;)Lcom/avast/android/generic/internet/c/a/d;

    .line 410
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/q;->p()Lcom/avast/android/generic/internet/c/a/r;

    move-result-object v0

    .line 412
    iget-object v4, p0, Lcom/avast/android/generic/internet/c/c;->s:Lcom/avast/android/generic/util/aw;

    invoke-virtual {v4}, Lcom/avast/android/generic/util/aw;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/avast/android/generic/internet/c/a/r;->c(Ljava/lang/String;)Lcom/avast/android/generic/internet/c/a/r;

    .line 413
    iget-object v4, p0, Lcom/avast/android/generic/internet/c/c;->t:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/avast/android/generic/internet/c/a/r;->b(Ljava/lang/String;)Lcom/avast/android/generic/internet/c/a/r;

    .line 414
    if-eqz p3, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 415
    invoke-virtual {v0, p3}, Lcom/avast/android/generic/internet/c/a/r;->a(Ljava/lang/String;)Lcom/avast/android/generic/internet/c/a/r;

    .line 416
    :cond_0
    invoke-virtual {v0, p4}, Lcom/avast/android/generic/internet/c/a/r;->a(Z)Lcom/avast/android/generic/internet/c/a/r;

    .line 417
    invoke-virtual {v0, p6}, Lcom/avast/android/generic/internet/c/a/r;->c(Z)Lcom/avast/android/generic/internet/c/a/r;

    .line 418
    invoke-virtual {v0, p5}, Lcom/avast/android/generic/internet/c/a/r;->b(Z)Lcom/avast/android/generic/internet/c/a/r;

    .line 419
    invoke-virtual {v0, p8}, Lcom/avast/android/generic/internet/c/a/r;->d(Ljava/lang/String;)Lcom/avast/android/generic/internet/c/a/r;

    .line 421
    invoke-virtual {v3, v0}, Lcom/avast/android/generic/internet/c/a/d;->a(Lcom/avast/android/generic/internet/c/a/r;)Lcom/avast/android/generic/internet/c/a/d;

    .line 423
    invoke-virtual {v3}, Lcom/avast/android/generic/internet/c/a/d;->c()Lcom/avast/android/generic/internet/c/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/generic/internet/c/a/c;->bo()[B

    move-result-object v0

    .line 424
    new-instance v3, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v3, v0}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v2, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 425
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/c;->q:Landroid/b/a/a;

    iget-object v3, p0, Lcom/avast/android/generic/internet/c/c;->r:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {v0, v2, v3}, Landroid/b/a/a;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 426
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Lcom/avast/android/generic/internet/c/g; {:try_start_0 .. :try_end_0} :catch_b
    .catch Lcom/avast/android/generic/internet/c/i; {:try_start_0 .. :try_end_0} :catch_a
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    move-result v2

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_5

    .line 428
    :cond_1
    const/4 v0, 0x0

    .line 488
    if-eqz v1, :cond_2

    .line 490
    :try_start_1
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 492
    :cond_2
    :goto_2
    return-object v0

    .line 403
    :cond_3
    const/4 v0, 0x2

    goto :goto_0

    .line 407
    :cond_4
    :try_start_2
    const-string v0, "phone"

    goto :goto_1

    .line 430
    :cond_5
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Lcom/avast/android/generic/internet/c/g; {:try_start_2 .. :try_end_2} :catch_b
    .catch Lcom/avast/android/generic/internet/c/i; {:try_start_2 .. :try_end_2} :catch_a
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    move-result-object v6

    .line 431
    if-nez v6, :cond_6

    .line 432
    const/4 v0, 0x0

    .line 488
    if-eqz v6, :cond_2

    .line 490
    :try_start_3
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 491
    :catch_0
    move-exception v1

    goto :goto_2

    .line 435
    :cond_6
    :try_start_4
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/internet/c/a/f;->a(Ljava/io/InputStream;)Lcom/avast/android/generic/internet/c/a/f;

    move-result-object v4

    .line 438
    invoke-virtual {v4}, Lcom/avast/android/generic/internet/c/a/f;->h()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v4}, Lcom/avast/android/generic/internet/c/a/f;->i()Ljava/lang/String;

    move-result-object v0

    .line 440
    :goto_3
    invoke-virtual {v4}, Lcom/avast/android/generic/internet/c/a/f;->f()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 441
    invoke-virtual {v4}, Lcom/avast/android/generic/internet/c/a/f;->g()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 466
    new-instance v1, Lcom/avast/android/generic/internet/c/g;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown error code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Lcom/avast/android/generic/internet/c/a/f;->g()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/avast/android/generic/internet/c/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Lcom/avast/android/generic/internet/c/g; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/avast/android/generic/internet/c/i; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 479
    :catch_1
    move-exception v0

    move-object v1, v6

    .line 480
    :goto_4
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 488
    :catchall_0
    move-exception v0

    move-object v6, v1

    :goto_5
    if-eqz v6, :cond_7

    .line 490
    :try_start_6
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    .line 492
    :cond_7
    :goto_6
    throw v0

    .line 438
    :cond_8
    :try_start_7
    const-string v0, ""

    goto :goto_3

    .line 443
    :pswitch_0
    new-instance v1, Lcom/avast/android/generic/internet/c/b;

    invoke-direct {v1, p1, v0}, Lcom/avast/android/generic/internet/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Lcom/avast/android/generic/internet/c/g; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lcom/avast/android/generic/internet/c/i; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 481
    :catch_2
    move-exception v0

    .line 482
    :goto_7
    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 488
    :catchall_1
    move-exception v0

    goto :goto_5

    .line 445
    :pswitch_1
    :try_start_9
    new-instance v1, Lcom/avast/android/generic/internet/c/k;

    invoke-direct {v1, p1, v0}, Lcom/avast/android/generic/internet/c/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Lcom/avast/android/generic/internet/c/g; {:try_start_9 .. :try_end_9} :catch_1
    .catch Lcom/avast/android/generic/internet/c/i; {:try_start_9 .. :try_end_9} :catch_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 483
    :catch_3
    move-exception v0

    .line 484
    :goto_8
    :try_start_a
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 447
    :pswitch_2
    :try_start_b
    new-instance v1, Lcom/avast/android/generic/internet/c/l;

    invoke-direct {v1, p1, v0}, Lcom/avast/android/generic/internet/c/l;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Lcom/avast/android/generic/internet/c/g; {:try_start_b .. :try_end_b} :catch_1
    .catch Lcom/avast/android/generic/internet/c/i; {:try_start_b .. :try_end_b} :catch_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    .line 485
    :catch_4
    move-exception v0

    .line 486
    :goto_9
    :try_start_c
    new-instance v1, Lcom/avast/android/generic/internet/c/g;

    invoke-direct {v1, v0}, Lcom/avast/android/generic/internet/c/g;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 449
    :pswitch_3
    :try_start_d
    new-instance v1, Lcom/avast/android/generic/internet/c/g;

    const-string v2, "Cannot connect to id.avast.com."

    invoke-direct {v1, v2, v0}, Lcom/avast/android/generic/internet/c/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 451
    :pswitch_4
    new-instance v1, Lcom/avast/android/generic/internet/c/g;

    const-string v2, "Other error."

    invoke-direct {v1, v2, v0}, Lcom/avast/android/generic/internet/c/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 453
    :pswitch_5
    invoke-virtual {v4}, Lcom/avast/android/generic/internet/c/a/f;->l()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 454
    invoke-virtual {v4}, Lcom/avast/android/generic/internet/c/a/f;->m()Lcom/avast/android/generic/internet/c/a/t;

    move-result-object v1

    .line 455
    invoke-virtual {v1}, Lcom/avast/android/generic/internet/c/a/t;->f()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 456
    invoke-virtual {v1}, Lcom/avast/android/generic/internet/c/a/t;->g()Lcom/avast/android/generic/internet/c/a/v;

    move-result-object v1

    .line 457
    sget-object v0, Lcom/avast/android/generic/internet/c/a/x;->a:Lcom/avast/android/generic/internet/c/a/x;

    .line 458
    invoke-virtual {v1}, Lcom/avast/android/generic/internet/c/a/v;->d()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 459
    invoke-virtual {v1}, Lcom/avast/android/generic/internet/c/a/v;->e()Lcom/avast/android/generic/internet/c/a/x;

    move-result-object v0

    .line 461
    :cond_9
    new-instance v1, Lcom/avast/android/generic/internet/c/i;

    const-string v2, "Backend exception"

    invoke-direct {v1, v2, v0}, Lcom/avast/android/generic/internet/c/i;-><init>(Ljava/lang/String;Lcom/avast/android/generic/internet/c/a/x;)V

    throw v1

    .line 464
    :cond_a
    new-instance v1, Lcom/avast/android/generic/internet/c/g;

    const-string v2, "Anti-Theft backend error."

    invoke-direct {v1, v2, v0}, Lcom/avast/android/generic/internet/c/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 470
    :cond_b
    new-instance v0, Lcom/avast/android/generic/internet/c/e;

    invoke-virtual {v4}, Lcom/avast/android/generic/internet/c/a/f;->c()Lcom/google/a/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Lcom/avast/android/generic/internet/c/a/f;->e()Lcom/google/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Lcom/avast/android/generic/internet/c/a/f;->m()Lcom/avast/android/generic/internet/c/a/t;

    move-result-object v3

    invoke-virtual {v3}, Lcom/avast/android/generic/internet/c/a/t;->c()Lcom/google/a/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/a/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/avast/android/generic/internet/c/a/f;->m()Lcom/avast/android/generic/internet/c/a/t;

    move-result-object v5

    invoke-virtual {v5}, Lcom/avast/android/generic/internet/c/a/t;->d()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {v4}, Lcom/avast/android/generic/internet/c/a/f;->m()Lcom/avast/android/generic/internet/c/a/t;

    move-result-object v4

    invoke-virtual {v4}, Lcom/avast/android/generic/internet/c/a/t;->e()Ljava/lang/String;

    move-result-object v4

    :goto_a
    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/avast/android/generic/internet/c/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/avast/android/generic/internet/c/d;)V

    .line 474
    const-string v1, "AvastAccountConnector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connected, AUID:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/avast/android/generic/internet/c/e;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enc key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/avast/android/generic/internet/c/e;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", comm password: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/avast/android/generic/internet/c/e;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", SMS gateway: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/avast/android/generic/internet/c/e;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1
    .catch Lcom/avast/android/generic/internet/c/g; {:try_start_d .. :try_end_d} :catch_1
    .catch Lcom/avast/android/generic/internet/c/i; {:try_start_d .. :try_end_d} :catch_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_d .. :try_end_d} :catch_3
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    .line 488
    if-eqz v6, :cond_2

    .line 490
    :try_start_e
    invoke-interface {v6}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5

    goto/16 :goto_2

    .line 491
    :catch_5
    move-exception v1

    goto/16 :goto_2

    .line 470
    :cond_c
    const/4 v4, 0x0

    goto :goto_a

    .line 491
    :catch_6
    move-exception v1

    goto/16 :goto_2

    :catch_7
    move-exception v1

    goto/16 :goto_6

    .line 488
    :catchall_2
    move-exception v0

    move-object v6, v1

    goto/16 :goto_5

    .line 485
    :catch_8
    move-exception v0

    move-object v6, v1

    goto/16 :goto_9

    .line 483
    :catch_9
    move-exception v0

    move-object v6, v1

    goto/16 :goto_8

    .line 481
    :catch_a
    move-exception v0

    move-object v6, v1

    goto/16 :goto_7

    .line 479
    :catch_b
    move-exception v0

    goto/16 :goto_4

    .line 441
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public a()V
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/c;->q:Landroid/b/a/a;

    if-eqz v0, :cond_0

    .line 678
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/c;->q:Landroid/b/a/a;

    invoke-virtual {v0}, Landroid/b/a/a;->a()V

    .line 680
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/avast/android/generic/internet/c/c;->q:Landroid/b/a/a;

    .line 681
    return-void
.end method

.method public a(Lcom/avast/android/generic/internet/c/a/ad;)Z
    .locals 3
    .parameter

    .prologue
    .line 598
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/c;->x:Lcom/avast/android/generic/ae;

    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->x()Ljava/lang/String;

    move-result-object v0

    .line 599
    iget-object v1, p0, Lcom/avast/android/generic/internet/c/c;->x:Lcom/avast/android/generic/ae;

    invoke-virtual {v1}, Lcom/avast/android/generic/ae;->y()[B

    move-result-object v1

    .line 601
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 602
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The AUID has to be set in the settings."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 605
    :cond_0
    invoke-direct {p0, v0, v1, p1}, Lcom/avast/android/generic/internet/c/c;->a(Ljava/lang/String;[BLcom/avast/android/generic/internet/c/a/ad;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;[B)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 515
    const-string v0, "application/x-enc-gd"

    .line 516
    if-eqz p2, :cond_0

    array-length v2, p2

    const/16 v3, 0x10

    if-ge v2, v3, :cond_1

    .line 517
    :cond_0
    const-string v0, "AvastAccountConnector"

    const-string v2, "Using global encryption key."

    invoke-static {v0, v2}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    const-string v0, "application/x-enc2"

    .line 519
    iget-object p2, p0, Lcom/avast/android/generic/internet/c/c;->a:[B

    .line 522
    :cond_1
    const/4 v2, 0x0

    .line 524
    :try_start_0
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    iget-object v4, p0, Lcom/avast/android/generic/internet/c/c;->A:Ljava/lang/String;

    invoke-direct {v3, v4}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 526
    const-string v4, "AvastAccountConnector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Disconnecting device with GUID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/avast/android/generic/internet/c/c;->w:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    const-string v4, "AvastAccountConnector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sending request to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lorg/apache/http/client/methods/HttpPost;->getURI()Ljava/net/URI;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    invoke-static {}, Lcom/avast/android/generic/internet/c/a/i;->d()Lcom/avast/android/generic/internet/c/a/j;

    move-result-object v4

    .line 530
    invoke-virtual {v4, p1}, Lcom/avast/android/generic/internet/c/a/j;->a(Ljava/lang/String;)Lcom/avast/android/generic/internet/c/a/j;

    .line 532
    invoke-virtual {v4}, Lcom/avast/android/generic/internet/c/a/j;->c()Lcom/avast/android/generic/internet/c/a/i;

    move-result-object v4

    invoke-virtual {v4}, Lcom/avast/android/generic/internet/c/a/i;->bo()[B

    move-result-object v4

    .line 533
    invoke-direct {p0, p2, v4}, Lcom/avast/android/generic/internet/c/c;->a([B[B)[B

    move-result-object v4

    .line 534
    new-instance v5, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v5, v4}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v3, v5}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 535
    const-string v4, "Content-Type"

    invoke-virtual {v3, v4, v0}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    const-string v0, "GUID"

    iget-object v4, p0, Lcom/avast/android/generic/internet/c/c;->w:Ljava/lang/String;

    const-string v5, "-"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    iget-object v0, p0, Lcom/avast/android/generic/internet/c/c;->q:Landroid/b/a/a;

    iget-object v4, p0, Lcom/avast/android/generic/internet/c/c;->r:Lorg/apache/http/protocol/HttpContext;

    invoke-virtual {v0, v3, v4}, Landroid/b/a/a;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 539
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_5

    .line 575
    :cond_2
    if-eqz v2, :cond_3

    .line 577
    :try_start_1
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :cond_3
    :goto_0
    move v0, v1

    .line 579
    :cond_4
    :goto_1
    return v0

    .line 543
    :cond_5
    :try_start_2
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    .line 544
    if-nez v2, :cond_7

    .line 575
    if-eqz v2, :cond_6

    .line 577
    :try_start_3
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    :cond_6
    :goto_2
    move v0, v1

    .line 579
    goto :goto_1

    .line 548
    :cond_7
    :try_start_4
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/internet/c/a/l;->a(Ljava/io/InputStream;)Lcom/avast/android/generic/internet/c/a/l;

    move-result-object v0

    .line 551
    invoke-virtual {v0}, Lcom/avast/android/generic/internet/c/a/l;->b()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 552
    sget-object v1, Lcom/avast/android/generic/internet/c/d;->a:[I

    invoke-virtual {v0}, Lcom/avast/android/generic/internet/c/a/l;->c()Lcom/avast/android/generic/internet/c/a/n;

    move-result-object v3

    invoke-virtual {v3}, Lcom/avast/android/generic/internet/c/a/n;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    .line 565
    new-instance v1, Lcom/avast/android/generic/internet/c/g;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/avast/android/generic/internet/c/a/l;->c()Lcom/avast/android/generic/internet/c/a/n;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-direct {v1, v0, v3}, Lcom/avast/android/generic/internet/c/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 570
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 571
    :goto_3
    :try_start_5
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 575
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_4
    if-eqz v2, :cond_8

    .line 577
    :try_start_6
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 579
    :cond_8
    :goto_5
    throw v0

    .line 557
    :pswitch_0
    :try_start_7
    new-instance v1, Lcom/avast/android/generic/internet/c/g;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Other error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/avast/android/generic/internet/c/a/l;->c()Lcom/avast/android/generic/internet/c/a/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/generic/internet/c/a/n;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-direct {v1, v0, v3}, Lcom/avast/android/generic/internet/c/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 572
    :catch_1
    move-exception v0

    .line 573
    :try_start_8
    new-instance v1, Lcom/avast/android/generic/internet/c/g;

    invoke-direct {v1, v0}, Lcom/avast/android/generic/internet/c/g;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 575
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 560
    :pswitch_1
    :try_start_9
    new-instance v0, Lcom/avast/android/generic/internet/c/b;

    invoke-direct {v0}, Lcom/avast/android/generic/internet/c/b;-><init>()V

    throw v0

    .line 562
    :pswitch_2
    const-string v0, "AvastAccountConnector"

    const-string v1, "Disconnected."

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 563
    const/4 v0, 0x1

    .line 575
    if-eqz v2, :cond_4

    .line 577
    :try_start_a
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    goto/16 :goto_1

    .line 578
    :catch_2
    move-exception v1

    goto/16 :goto_1

    .line 568
    :cond_9
    :try_start_b
    new-instance v0, Lcom/avast/android/generic/internet/c/g;

    const-string v1, "No result"

    const-string v3, ""

    invoke-direct {v0, v1, v3}, Lcom/avast/android/generic/internet/c/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    .line 578
    :catch_3
    move-exception v0

    goto/16 :goto_0

    :catch_4
    move-exception v0

    goto/16 :goto_2

    :catch_5
    move-exception v1

    goto :goto_5

    .line 570
    :catch_6
    move-exception v0

    move-object v1, v2

    goto :goto_3

    .line 552
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
