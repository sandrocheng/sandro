.class public Lcom/antivirus/core/d/a/i;
.super Lcom/avg/toolkit/b/g;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private c:Lcom/avg/toolkit/UID/a;

.field private d:Ljava/util/LinkedList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/avg/toolkit/b/g;-><init>()V

    const-string v0, "droid.cloud.avg.com"

    iput-object v0, p0, Lcom/antivirus/core/d/a/i;->a:Ljava/lang/String;

    const/4 v0, 0x3

    iput v0, p0, Lcom/antivirus/core/d/a/i;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/antivirus/core/d/a/i;->c:Lcom/avg/toolkit/UID/a;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/antivirus/core/d/a/i;->d:Ljava/util/LinkedList;

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/antivirus/core/d/a/k;)I
    .locals 11

    const/4 v4, 0x0

    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    :try_start_0
    const-string v5, "http://droid.cloud.avg.com/apps.aspx?"

    iget-object v0, p0, Lcom/antivirus/core/d/a/i;->c:Lcom/avg/toolkit/UID/a;

    invoke-virtual {v0}, Lcom/avg/toolkit/UID/a;->a()Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x0

    check-cast v0, Ljava/util/Locale;

    const-string v7, "devid=%s&pkgname=%s&action=%s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    const/4 v6, 0x1

    iget-object v9, p2, Lcom/antivirus/core/d/a/k;->a:Ljava/lang/String;

    aput-object v9, v8, v6

    const/4 v6, 0x2

    iget-object v9, p2, Lcom/antivirus/core/d/a/k;->b:Ljava/lang/String;

    aput-object v9, v8, v6

    invoke-static {v0, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "d5544fG==*%877hT--==HHSYlWeeY89904444=="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-static {v6}, La/a/a/a/b/a;->b([B)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "&z="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v4, "Cache-Control"

    const-string v5, "no-cache"

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "Pragma"

    const-string v5, "no-cache"

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "GET"

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v4, "Host"

    const-string v5, "droid.cloud.avg.com"

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/16 v3, 0xc8

    if-eq v4, v3, :cond_3

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move-object v1, v4

    :goto_1
    :try_start_2
    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    move v0, v3

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    throw v0

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    move v0, v2

    goto :goto_0

    :catchall_1
    move-exception v1

    move-object v4, v0

    move-object v0, v1

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v4, v1

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "pkg"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "action"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xfa0

    const/16 v2, 0x7d7

    invoke-static {p0, v1, v2, v0}, Lcom/antivirus/core/a;->a(Landroid/content/Context;IILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/avg/toolkit/b/e;
    .locals 1

    sget-object v0, Lcom/avg/toolkit/b/e;->b:Lcom/avg/toolkit/b/e;

    return-object v0
.end method

.method public a(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/content/Context;Landroid/os/Message;)Z
    .locals 3

    iget-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    new-instance v1, Lcom/antivirus/core/d/a/k;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/antivirus/core/d/a/k;-><init>(Lcom/antivirus/core/d/a/j;)V

    const-string v2, "pkg"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/antivirus/core/d/a/k;->a:Ljava/lang/String;

    const-string v2, "action"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/antivirus/core/d/a/k;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, v1, Lcom/antivirus/core/d/a/k;->c:I

    iget-object v0, p0, Lcom/antivirus/core/d/a/i;->d:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b(Landroid/content/Context;)Z
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/antivirus/core/d/a/i;->c:Lcom/avg/toolkit/UID/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/avg/toolkit/UID/a;

    invoke-direct {v0, p1}, Lcom/avg/toolkit/UID/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/antivirus/core/d/a/i;->c:Lcom/avg/toolkit/UID/a;

    :cond_0
    iget-object v0, p0, Lcom/antivirus/core/d/a/i;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/antivirus/core/d/a/i;->c:Lcom/avg/toolkit/UID/a;

    invoke-virtual {v0}, Lcom/avg/toolkit/UID/a;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    :goto_1
    return v3

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/antivirus/core/d/a/k;

    invoke-direct {p0, p1, v0}, Lcom/antivirus/core/d/a/i;->a(Landroid/content/Context;Lcom/antivirus/core/d/a/k;)I

    move-result v5

    if-eq v5, v2, :cond_1

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    iget v5, v0, Lcom/antivirus/core/d/a/k;->c:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v0, Lcom/antivirus/core/d/a/k;->c:I

    iget v0, v0, Lcom/antivirus/core/d/a/k;->c:I

    const/4 v5, 0x3

    if-lt v0, v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    move v0, v1

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_2

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    move v0, v1

    goto :goto_2

    :cond_5
    move v3, v1

    goto :goto_1
.end method

.method public b_()I
    .locals 1

    const/16 v0, 0x7d7

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
