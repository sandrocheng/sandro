.class public final Lev;
.super Ljava/lang/Object;


# static fields
.field private static volatile n:Z

.field private static volatile o:Ljava/lang/String;

.field private static volatile p:Z

.field private static volatile q:Z

.field private static volatile r:J


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/net/HttpURLConnection;

.field private d:[B

.field private e:I

.field private f:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Z

.field private i:B

.field private j:B

.field private k:B

.field private l:I

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-boolean v1, Lev;->n:Z

    const/4 v0, 0x0

    sput-object v0, Lev;->o:Ljava/lang/String;

    sput-boolean v1, Lev;->p:Z

    sput-boolean v1, Lev;->q:Z

    const-wide/16 v0, 0x0

    sput-wide v0, Lev;->r:J

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 3

    const/16 v2, 0x7530

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "GET"

    iput-object v0, p0, Lev;->b:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lev;->e:I

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lev;->f:Ljava/util/Hashtable;

    iput-boolean v1, p0, Lev;->g:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lev;->h:Z

    iput-byte v1, p0, Lev;->i:B

    iput-byte v1, p0, Lev;->j:B

    iput-byte v1, p0, Lev;->k:B

    iput v2, p0, Lev;->l:I

    iput v2, p0, Lev;->m:I

    iput-object p1, p0, Lev;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Lev;)Lev;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Leq;
        }
    .end annotation

    invoke-static {}, Lbk;->a()LQQPIM/ConnectType;

    move-result-object v0

    new-instance v2, Lev;

    invoke-virtual {p0}, Lev;->g()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lev;-><init>(Ljava/lang/String;)V

    sget-object v1, LQQPIM/ConnectType;->CT_NONE:LQQPIM/ConnectType;

    if-ne v1, v0, :cond_0

    new-instance v0, Leq;

    const/16 v1, -0x41c

    const-string v2, "no connection!"

    invoke-direct {v0, v1, v2}, Leq;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, v2, Lev;->a:Ljava/lang/String;

    invoke-direct {v2, v1, v0}, Lev;->a(Ljava/lang/String;LQQPIM/ConnectType;)V

    iget-object v0, p0, Lev;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lev;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lev;->d:[B

    iput-object v0, v2, Lev;->d:[B

    iget-object v0, p0, Lev;->f:Ljava/util/Hashtable;

    iget-object v1, v2, Lev;->c:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    return-object v2

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lev;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Lev;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Leq;
        }
    .end annotation

    const/4 v0, 0x1

    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0xb

    if-ge v1, v2, :cond_1

    :cond_0
    :goto_0
    if-nez v0, :cond_3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    new-instance v0, Ler;

    invoke-direct {v0}, Ler;-><init>()V

    throw v0

    :cond_1
    sget v1, Lbk;->b:I

    if-gtz v1, :cond_2

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    sput v1, Lbk;->b:I

    :cond_2
    sget v1, Lbk;->b:I

    const/16 v2, 0xa

    if-lt v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    new-instance v0, Leq;

    const/16 v1, -0x3e8

    const-string v2, "url is null!"

    invoke-direct {v0, v1, v2}, Leq;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Lev;

    invoke-direct {v0, p0}, Lev;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lbk;->a()LQQPIM/ConnectType;

    move-result-object v1

    sget-object v2, LQQPIM/ConnectType;->CT_NONE:LQQPIM/ConnectType;

    if-ne v2, v1, :cond_6

    new-instance v0, Leq;

    const/16 v1, -0x41c

    const-string v2, "no connecition!"

    invoke-direct {v0, v1, v2}, Leq;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_6
    iget-object v2, v0, Lev;->a:Ljava/lang/String;

    invoke-direct {v0, v2, v1}, Lev;->a(Ljava/lang/String;LQQPIM/ConnectType;)V

    return-object v0
.end method

.method private a(Ljava/lang/String;LQQPIM/ConnectType;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Leq;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lev;->h()Ljava/lang/String;

    sget-object v0, LQQPIM/ConnectType;->CT_NONE:LQQPIM/ConnectType;

    if-eq v0, p2, :cond_2

    sget-object v0, LQQPIM/ConnectType;->CT_GPRS_WAP:LQQPIM/ConnectType;

    if-ne v0, p2, :cond_3

    new-instance v2, Ljava/net/Proxy;

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_8

    :cond_0
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_0
    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result v0

    if-gtz v0, :cond_1

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v0

    :cond_1
    invoke-static {v1, v0}, Ljava/net/InetSocketAddress;->createUnresolved(Ljava/lang/String;I)Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lev;->c:Ljava/net/HttpURLConnection;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lev;->g:Z

    :cond_2
    :goto_1
    return-void

    :cond_3
    sget-object v0, LQQPIM/ConnectType;->CT_WIFI:LQQPIM/ConnectType;

    if-ne v0, p2, :cond_6

    const-string v0, "com.tencent.qqpimsecure"

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lbk;->b()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lev;->o:Ljava/lang/String;

    if-eqz v1, :cond_4

    sget-object v1, Lev;->o:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lev;->r:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1388

    cmp-long v1, v1, v3

    if-lez v1, :cond_7

    sget-boolean v1, Lev;->p:Z

    if-nez v1, :cond_7

    :cond_4
    const/4 v1, 0x0

    sput-boolean v1, Lev;->n:Z

    const/4 v1, 0x1

    sput-boolean v1, Lev;->p:Z

    sput-object v0, Lev;->o:Ljava/lang/String;

    new-instance v0, Lgp;

    invoke-direct {v0, p0}, Lgp;-><init>(Lev;)V

    new-instance v1, Lgm;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lgm;-><init>(Landroid/os/Looper;Lgp;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lgm;->sendEmptyMessage(I)Z

    :cond_5
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lev;->r:J

    :cond_6
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lev;->c:Ljava/net/HttpURLConnection;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lev;->g:Z

    iget-object v0, p0, Lev;->c:Ljava/net/HttpURLConnection;

    iget v1, p0, Lev;->m:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    iget-object v0, p0, Lev;->c:Ljava/net/HttpURLConnection;

    iget v1, p0, Lev;->l:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Leq;

    const/16 v2, -0x421

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "IllegalArgumentException : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Leq;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_7
    :try_start_1
    sget-boolean v0, Lev;->n:Z

    if-eqz v0, :cond_5

    sget-boolean v0, Lev;->p:Z

    if-nez v0, :cond_5

    const/4 v0, 0x1

    sput-boolean v0, Lev;->p:Z

    new-instance v0, Lgp;

    invoke-direct {v0, p0}, Lgp;-><init>(Lev;)V

    new-instance v1, Lgm;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lgm;-><init>(Landroid/os/Looper;Lgp;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lgm;->sendEmptyMessage(I)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_2

    :catch_1
    move-exception v0

    new-instance v1, Leq;

    const/16 v2, -0x422

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SecurityException: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Leq;-><init>(ILjava/lang/String;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Leq;

    const/16 v2, -0x423

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "UnsupportedOperationException: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Leq;-><init>(ILjava/lang/String;)V

    throw v1

    :catch_3
    move-exception v0

    new-instance v1, Leq;

    const/16 v2, -0x420

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "IOException : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Leq;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_8
    move-object v1, v0

    goto/16 :goto_0
.end method

.method private a(Ljava/util/Hashtable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lev;->c:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    iget-object v3, p0, Lev;->c:Ljava/net/HttpURLConnection;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static synthetic a(Z)V
    .locals 0

    sput-boolean p0, Lev;->n:Z

    return-void
.end method

.method private static a(Ljava/io/InputStream;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Leq;
        }
    .end annotation

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v0, 0x800

    new-array v0, v0, [B

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_0
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    :goto_2
    return-object v0

    :cond_0
    const/4 v4, 0x0

    :try_start_3
    invoke-virtual {v2, v0, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    new-instance v3, Leq;

    const/16 v4, -0x38

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "get Bytes from inputStream when read buffer: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Leq;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :goto_3
    :try_start_6
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :goto_4
    throw v0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public static synthetic b(Z)V
    .locals 0

    sput-boolean p0, Lev;->q:Z

    return-void
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Leq;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lev;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Leq;

    const/16 v2, -0x38

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get header field: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Leq;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method private static d(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    const/4 v4, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "://"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v2, v1, :cond_0

    add-int/lit8 v1, v1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v2, v1, :cond_1

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    :goto_0
    return-object v0

    :cond_1
    aput-object p0, v0, v3

    const-string v1, ""

    aput-object v1, v0, v4

    goto :goto_0
.end method

.method public static synthetic i()Ljava/lang/String;
    .locals 1

    sget-object v0, Lev;->o:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic j()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lev;->p:Z

    return-void
.end method

.method private k()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Leq;
        }
    .end annotation

    iget-object v0, p0, Lev;->c:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lev;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v0, 0x0

    iput-object v0, p0, Lev;->c:Ljava/net/HttpURLConnection;

    :cond_0
    iget-object v0, p0, Lev;->a:Ljava/lang/String;

    invoke-static {}, Lbk;->a()LQQPIM/ConnectType;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lev;->a(Ljava/lang/String;LQQPIM/ConnectType;)V

    iget-object v0, p0, Lev;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lev;->b(Ljava/lang/String;)V

    const-string v0, "POST"

    iget-object v1, p0, Lev;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lev;->d:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lev;->d:[B

    iput-object v0, p0, Lev;->d:[B

    :cond_1
    iget-object v0, p0, Lev;->f:Ljava/util/Hashtable;

    invoke-direct {p0, v0}, Lev;->a(Ljava/util/Hashtable;)V

    invoke-virtual {p0}, Lev;->a()I

    move-result v0

    return v0
.end method

.method private l()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Leq;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lev;->c:Ljava/net/HttpURLConnection;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Leq;

    const/16 v2, -0x38

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get content type: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Leq;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method private m()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Leq;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lev;->c:Ljava/net/HttpURLConnection;

    const-string v1, "Location"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Leq;

    const/16 v2, -0x38

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get redirect url: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Leq;-><init>(ILjava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final a()I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Leq;
        }
    .end annotation

    const/16 v10, 0xc8

    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v2, 0x0

    const/4 v7, 0x2

    :goto_0
    const-string v0, "com.tencent.qqpimsecure"

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, LQQPIM/ConnectType;->CT_WIFI:LQQPIM/ConnectType;

    invoke-static {}, Lbk;->a()LQQPIM/ConnectType;

    move-result-object v1

    if-ne v0, v1, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :cond_0
    :goto_1
    sget-boolean v3, Lev;->p:Z

    if-nez v3, :cond_2

    :cond_1
    sget-boolean v0, Lev;->n:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lev;->p:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lev;->q:Z

    if-nez v0, :cond_3

    new-instance v0, Leq;

    const/16 v1, -0x427

    const-string v2, "wifi need approve!"

    invoke-direct {v0, v1, v2}, Leq;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    const-wide/16 v5, 0x1388

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v0, v3, v0

    const-wide/16 v3, 0x2710

    cmp-long v0, v0, v3

    if-ltz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_1

    :cond_3
    sget-boolean v0, Lev;->p:Z

    if-eqz v0, :cond_4

    sput-boolean v8, Lev;->n:Z

    :cond_4
    :try_start_0
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_5

    const-string v0, "http.keepAlive"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_5
    iget-object v0, p0, Lev;->c:Ljava/net/HttpURLConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    iget-object v0, p0, Lev;->c:Ljava/net/HttpURLConnection;

    const-string v1, "Pragma"

    const-string v3, "no-cache"

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lev;->c:Ljava/net/HttpURLConnection;

    const-string v1, "Cache-Control"

    const-string v3, "no-cache"

    invoke-virtual {v0, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lev;->c:Ljava/net/HttpURLConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    const-string v0, "GET"

    iget-object v1, p0, Lev;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_11
    .catch Ljava/lang/IllegalAccessError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Leq; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    move-result v0

    if-eqz v0, :cond_7

    const/16 v1, -0xbb8

    :try_start_1
    iget-object v0, p0, Lev;->c:Ljava/net/HttpURLConnection;

    const-string v3, "GET"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    :cond_6
    :goto_2
    iget-object v0, p0, Lev;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, p0, Lev;->e:I

    iget v0, p0, Lev;->e:I

    const/16 v3, 0x12d

    if-lt v0, v3, :cond_a

    iget v0, p0, Lev;->e:I

    const/16 v3, 0x131

    if-gt v0, v3, :cond_a

    iget-byte v0, p0, Lev;->i:B

    add-int/lit8 v3, v0, 0x1

    int-to-byte v3, v3

    iput-byte v3, p0, Lev;->i:B

    const/4 v3, 0x3

    if-ge v0, v3, :cond_1d

    invoke-direct {p0}, Lev;->m()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lev;->a:Ljava/lang/String;

    invoke-direct {p0}, Lev;->k()I

    move-result v0

    :goto_3
    return v0

    :cond_7
    const/16 v1, -0x7d0

    iget-object v0, p0, Lev;->c:Ljava/net/HttpURLConnection;

    const-string v3, "POST"

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object v0, p0, Lev;->f:Ljava/util/Hashtable;

    const-string v3, "Accept"

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lev;->c:Ljava/net/HttpURLConnection;

    const-string v3, "Accept"

    const-string v4, "*/*"

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lev;->c:Ljava/net/HttpURLConnection;

    const-string v3, "Accept-Charset"

    const-string v4, "utf-8"

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    iget-object v0, p0, Lev;->c:Ljava/net/HttpURLConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    iget-object v0, p0, Lev;->c:Ljava/net/HttpURLConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    iget-object v0, p0, Lev;->d:[B

    if-eqz v0, :cond_6

    iget-object v0, p0, Lev;->f:Ljava/util/Hashtable;

    const-string v3, "Content-Type"

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lev;->c:Ljava/net/HttpURLConnection;

    const-string v3, "Content-Type"

    const-string v4, "application/octet-stream"

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    iget-object v0, p0, Lev;->c:Ljava/net/HttpURLConnection;

    const-string v3, "Content-length"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lev;->d:[B

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lev;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iget-object v3, p0, Lev;->d:[B

    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessError; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Leq; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9

    goto/16 :goto_2

    :catch_0
    move-exception v0

    :goto_4
    iget-byte v3, p0, Lev;->k:B

    add-int/lit8 v4, v3, 0x1

    int-to-byte v4, v4

    iput-byte v4, p0, Lev;->k:B

    if-ge v3, v7, :cond_b

    invoke-virtual {p0}, Lev;->h()Ljava/lang/String;

    invoke-direct {p0}, Lev;->k()I

    move-result v0

    goto/16 :goto_3

    :cond_a
    :try_start_2
    iget v0, p0, Lev;->e:I

    if-ne v0, v10, :cond_1d

    invoke-direct {p0}, Lev;->l()Ljava/lang/String;

    move-result-object v0

    iget-boolean v3, p0, Lev;->g:Z

    if-eqz v3, :cond_1d

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v3, "vnd.wap.wml"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v9, :cond_1d

    iget-byte v0, p0, Lev;->j:B

    add-int/lit8 v3, v0, 0x1

    int-to-byte v3, v3

    iput-byte v3, p0, Lev;->j:B

    if-gtz v0, :cond_1d

    invoke-direct {p0}, Lev;->k()I
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessError; {:try_start_2 .. :try_end_2} :catch_10
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Leq; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9

    move-result v0

    goto/16 :goto_3

    :cond_b
    iget-boolean v3, p0, Lev;->h:Z

    if-eqz v3, :cond_14

    iput-boolean v2, p0, Lev;->h:Z

    iget-object v3, p0, Lev;->c:Ljava/net/HttpURLConnection;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lev;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v3, 0x0

    iput-object v3, p0, Lev;->c:Ljava/net/HttpURLConnection;

    :cond_c
    iget-boolean v3, p0, Lev;->g:Z

    if-eqz v3, :cond_f

    iget-object v3, p0, Lev;->a:Ljava/lang/String;

    sget-object v4, LQQPIM/ConnectType;->CT_GPRS_NET:LQQPIM/ConnectType;

    invoke-direct {p0, v3, v4}, Lev;->a(Ljava/lang/String;LQQPIM/ConnectType;)V

    :cond_d
    :goto_5
    iget-object v3, p0, Lev;->c:Ljava/net/HttpURLConnection;

    if-eqz v3, :cond_14

    iget-object v0, p0, Lev;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lev;->b(Ljava/lang/String;)V

    const-string v0, "POST"

    iget-object v1, p0, Lev;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lev;->d:[B

    if-eqz v0, :cond_e

    iget-object v0, p0, Lev;->d:[B

    iput-object v0, p0, Lev;->d:[B

    :cond_e
    iget-object v0, p0, Lev;->f:Ljava/util/Hashtable;

    invoke-direct {p0, v0}, Lev;->a(Ljava/util/Hashtable;)V

    goto/16 :goto_0

    :cond_f
    sget-object v3, LQQPIM/ConnectType;->CT_WIFI:LQQPIM/ConnectType;

    invoke-static {}, Lbk;->a()LQQPIM/ConnectType;

    move-result-object v4

    if-ne v3, v4, :cond_d

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_10

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_11

    :cond_10
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v3

    :cond_11
    if-eqz v3, :cond_13

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_13

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    move-result v3

    if-gtz v3, :cond_12

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v3

    :cond_12
    if-lez v3, :cond_13

    iget-object v3, p0, Lev;->a:Ljava/lang/String;

    sget-object v4, LQQPIM/ConnectType;->CT_GPRS_WAP:LQQPIM/ConnectType;

    invoke-direct {p0, v3, v4}, Lev;->a(Ljava/lang/String;LQQPIM/ConnectType;)V

    goto :goto_5

    :cond_13
    add-int/lit8 v1, v1, -0x3e

    new-instance v2, Leq;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sendRequest UnknownHostException: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " networktype:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lbk;->a()LQQPIM/ConnectType;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Leq;-><init>(ILjava/lang/String;)V

    throw v2

    :cond_14
    add-int/lit8 v1, v1, -0x3e

    new-instance v2, Leq;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sendRequest UnknownHostException: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " networktype:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lbk;->a()LQQPIM/ConnectType;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Leq;-><init>(ILjava/lang/String;)V

    throw v2

    :catch_1
    move-exception v0

    move v1, v2

    :goto_6
    iget-byte v2, p0, Lev;->k:B

    add-int/lit8 v3, v2, 0x1

    int-to-byte v3, v3

    iput-byte v3, p0, Lev;->k:B

    if-ge v2, v7, :cond_15

    invoke-direct {p0}, Lev;->k()I

    move-result v0

    goto/16 :goto_3

    :cond_15
    add-int/lit8 v1, v1, -0x3c

    new-instance v2, Leq;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sendRequest IllegalAccessError: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalAccessError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Leq;-><init>(ILjava/lang/String;)V

    throw v2

    :catch_2
    move-exception v0

    move v1, v2

    :goto_7
    iget-byte v2, p0, Lev;->k:B

    add-int/lit8 v3, v2, 0x1

    int-to-byte v3, v3

    iput-byte v3, p0, Lev;->k:B

    if-ge v2, v7, :cond_16

    invoke-direct {p0}, Lev;->k()I

    move-result v0

    goto/16 :goto_3

    :cond_16
    add-int/lit8 v1, v1, -0x3d

    new-instance v2, Leq;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sendRequest IllegalStateException: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Leq;-><init>(ILjava/lang/String;)V

    throw v2

    :catch_3
    move-exception v0

    move v1, v2

    :goto_8
    iget-byte v2, p0, Lev;->k:B

    add-int/lit8 v3, v2, 0x1

    int-to-byte v3, v3

    iput-byte v3, p0, Lev;->k:B

    if-ge v2, v7, :cond_17

    invoke-direct {p0}, Lev;->k()I

    move-result v0

    goto/16 :goto_3

    :cond_17
    add-int/lit8 v1, v1, -0x33

    new-instance v2, Leq;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sendRequest ProtocolException: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Leq;-><init>(ILjava/lang/String;)V

    throw v2

    :catch_4
    move-exception v0

    move v1, v2

    :goto_9
    iget-byte v2, p0, Lev;->k:B

    add-int/lit8 v3, v2, 0x1

    int-to-byte v3, v3

    iput-byte v3, p0, Lev;->k:B

    if-ge v2, v7, :cond_18

    invoke-direct {p0}, Lev;->k()I

    move-result v0

    goto/16 :goto_3

    :cond_18
    add-int/lit8 v1, v1, -0x33

    new-instance v2, Leq;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sendRequest ClientProtocolException: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Leq;-><init>(ILjava/lang/String;)V

    throw v2

    :catch_5
    move-exception v0

    move v1, v2

    :goto_a
    iget-byte v2, p0, Lev;->k:B

    add-int/lit8 v3, v2, 0x1

    int-to-byte v3, v3

    iput-byte v3, p0, Lev;->k:B

    if-ge v2, v7, :cond_19

    invoke-direct {p0}, Lev;->k()I

    move-result v0

    goto/16 :goto_3

    :cond_19
    add-int/lit8 v1, v1, -0x36

    new-instance v2, Leq;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sendRequest SocketException: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Leq;-><init>(ILjava/lang/String;)V

    throw v2

    :catch_6
    move-exception v0

    move v1, v2

    :goto_b
    iget-byte v2, p0, Lev;->k:B

    add-int/lit8 v3, v2, 0x1

    int-to-byte v3, v3

    iput-byte v3, p0, Lev;->k:B

    if-ge v2, v7, :cond_1a

    const v0, 0xea60

    iput v0, p0, Lev;->l:I

    const v0, 0xea60

    iput v0, p0, Lev;->m:I

    invoke-direct {p0}, Lev;->k()I

    move-result v0

    goto/16 :goto_3

    :cond_1a
    add-int/lit8 v1, v1, -0x37

    new-instance v2, Leq;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sendRequest"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Leq;-><init>(ILjava/lang/String;)V

    throw v2

    :catch_7
    move-exception v0

    move v1, v2

    :goto_c
    iget-byte v2, p0, Lev;->k:B

    add-int/lit8 v3, v2, 0x1

    int-to-byte v3, v3

    iput-byte v3, p0, Lev;->k:B

    if-ge v2, v7, :cond_1b

    invoke-direct {p0}, Lev;->k()I

    move-result v0

    goto/16 :goto_3

    :cond_1b
    add-int/lit8 v1, v1, -0x38

    new-instance v2, Leq;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sendRequest NetWorkException: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Leq;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Leq;-><init>(ILjava/lang/String;)V

    throw v2

    :catch_8
    move-exception v0

    move v1, v2

    :goto_d
    iget-byte v2, p0, Lev;->k:B

    add-int/lit8 v3, v2, 0x1

    int-to-byte v3, v3

    iput-byte v3, p0, Lev;->k:B

    if-ge v2, v7, :cond_1c

    invoke-direct {p0}, Lev;->k()I

    move-result v0

    goto/16 :goto_3

    :cond_1c
    new-instance v2, Leq;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sendRequest "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Leq;-><init>(ILjava/lang/String;)V

    throw v2

    :cond_1d
    iget v0, p0, Lev;->e:I

    const/16 v2, 0xce

    if-eq v0, v2, :cond_20

    iget v0, p0, Lev;->e:I

    if-eq v0, v10, :cond_20

    iget-byte v0, p0, Lev;->k:B

    add-int/lit8 v2, v0, 0x1

    int-to-byte v2, v2

    iput-byte v2, p0, Lev;->k:B

    if-ge v0, v7, :cond_1f

    if-ne v1, v9, :cond_1e

    const-string v0, "true"

    const-string v1, "http.keepAlive"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string v0, "http.keepAlive"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_1e
    invoke-direct {p0}, Lev;->k()I

    move-result v0

    goto/16 :goto_3

    :cond_1f
    iget v0, p0, Lev;->e:I

    add-int/2addr v0, v1

    new-instance v1, Leq;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "response code is unnormal: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lev;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " SDK Version:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Leq;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_20
    iget v0, p0, Lev;->e:I

    goto/16 :goto_3

    :catch_9
    move-exception v0

    goto/16 :goto_d

    :catch_a
    move-exception v0

    goto/16 :goto_c

    :catch_b
    move-exception v0

    goto/16 :goto_b

    :catch_c
    move-exception v0

    goto/16 :goto_a

    :catch_d
    move-exception v0

    goto/16 :goto_9

    :catch_e
    move-exception v0

    goto/16 :goto_8

    :catch_f
    move-exception v0

    goto/16 :goto_7

    :catch_10
    move-exception v0

    goto/16 :goto_6

    :catch_11
    move-exception v0

    move v1, v2

    goto/16 :goto_4
.end method

.method public final a(Ljava/util/concurrent/atomic/AtomicReference;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<[B>;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Leq;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lev;->c:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_0

    iget v1, p0, Lev;->e:I

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_1

    iget v1, p0, Lev;->e:I

    const/16 v2, 0xce

    if-eq v1, v2, :cond_1

    move v1, v0

    :goto_0
    if-nez v1, :cond_2

    :cond_0
    const/16 v0, -0xfa0

    :goto_1
    return v0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v1, p0, Lev;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Lev;->a(Ljava/io/InputStream;)[B
    :try_end_0
    .catch Leq; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Leq;->a()I

    move-result v1

    add-int/lit16 v1, v1, -0xfa0

    new-instance v2, Leq;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get response exception : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Leq;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Leq;-><init>(ILjava/lang/String;)V

    throw v2

    :catch_1
    move-exception v0

    new-instance v1, Leq;

    const/16 v2, -0xfa2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get response exception : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Leq;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lev;->c:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lev;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lev;->f:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a([B)V
    .locals 0

    iput-object p1, p0, Lev;->d:[B

    return-void
.end method

.method public final b()Ljava/io/InputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Leq;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lev;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Leq;

    const/16 v2, -0x38

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get inputStream: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Leq;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lev;->b:Ljava/lang/String;

    const-string v0, "GET"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "GET"

    iput-object v0, p0, Lev;->b:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "POST"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "POST"

    iput-object v0, p0, Lev;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lev;->e:I

    return v0
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lev;->c:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lev;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    const/4 v0, 0x0

    iput-object v0, p0, Lev;->c:Ljava/net/HttpURLConnection;

    :cond_0
    return-void
.end method

.method public final e()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Leq;
        }
    .end annotation

    const-wide/16 v0, -0x1

    const-string v2, "Content-Range"

    invoke-direct {p0, v2}, Lev;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const/16 v0, 0x2f

    :try_start_0
    invoke-virtual {v2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :cond_0
    return-wide v0

    :catch_0
    move-exception v0

    new-instance v1, Leq;

    const/16 v2, -0x38

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get breakpoint total size: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Leq;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public final f()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Leq;
        }
    .end annotation

    const-wide/16 v0, -0x1

    const-string v2, "content-length"

    invoke-direct {p0, v2}, Lev;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :cond_0
    return-wide v0

    :catch_0
    move-exception v0

    new-instance v1, Leq;

    const/16 v2, -0x38

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get content length: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Leq;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public final g()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lev;->c:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lev;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    iput-object v0, p0, Lev;->a:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lev;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lev;->c:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lev;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lev;->c:Ljava/net/HttpURLConnection;

    if-nez v1, :cond_1

    iget-object v0, p0, Lev;->a:Ljava/lang/String;

    invoke-static {v0}, Lev;->d(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v2

    :cond_1
    :try_start_0
    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    return-object v0

    :cond_2
    iget-object v0, p0, Lev;->a:Ljava/lang/String;

    invoke-static {v0}, Lev;->d(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->printStackTrace()V

    :cond_3
    const-string v0, ""

    goto :goto_1
.end method
