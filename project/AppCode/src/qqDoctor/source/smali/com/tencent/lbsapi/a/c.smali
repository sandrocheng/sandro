.class public Lcom/tencent/lbsapi/a/c;
.super Ljava/lang/Thread;


# static fields
.field private static final a:Ljava/lang/String; = "http://lbsapi.3g.qq.com/wupbin"


# instance fields
.field private b:[B

.field private c:Lcom/tencent/lbsapi/a/b;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object v1, p0, Lcom/tencent/lbsapi/a/c;->b:[B

    iput-object v1, p0, Lcom/tencent/lbsapi/a/c;->c:Lcom/tencent/lbsapi/a/b;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/lbsapi/a/c;->d:I

    iput-object v1, p0, Lcom/tencent/lbsapi/a/c;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/lbsapi/a/c;->f:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected a(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/lbsapi/a/c;->d:I

    return-void
.end method

.method protected a(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/lbsapi/a/c;->f:Landroid/content/Context;

    return-void
.end method

.method protected a(Lcom/tencent/lbsapi/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/lbsapi/a/c;->c:Lcom/tencent/lbsapi/a/b;

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/lbsapi/a/c;->e:Ljava/lang/String;

    return-void
.end method

.method protected a([B)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/lbsapi/a/c;->b:[B

    return-void
.end method

.method public run()V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, -0x1

    const/4 v1, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/tencent/lbsapi/a/c;->c:Lcom/tencent/lbsapi/a/b;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    move v0, v1

    :cond_1
    const/4 v2, 0x3

    :try_start_0
    new-array v2, v2, [Lorg/apache/http/message/BasicHeader;

    const/4 v4, 0x0

    new-instance v5, Lorg/apache/http/message/BasicHeader;

    const-string v6, "Content-Type"

    const-string v7, "application/x-www-form-urlencoded"

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v2, v4

    const/4 v4, 0x1

    new-instance v5, Lorg/apache/http/message/BasicHeader;

    const-string v6, "UA"

    const-string v7, "ANDROID"

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v2, v4

    const/4 v4, 0x2

    new-instance v5, Lorg/apache/http/message/BasicHeader;

    const-string v6, "LBS-UIN"

    iget-object v7, p0, Lcom/tencent/lbsapi/a/c;->e:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v2, v4

    const-string v4, "http://lbsapi.3g.qq.com/wupbin"

    iget-object v5, p0, Lcom/tencent/lbsapi/a/c;->b:[B

    const-string v6, "POST"

    iget-object v7, p0, Lcom/tencent/lbsapi/a/c;->f:Landroid/content/Context;

    invoke-static {v4, v5, v6, v2, v7}, Lcom/tencent/lbsapi/a/d;->a(Ljava/lang/String;[BLjava/lang/String;[Lorg/apache/http/message/BasicHeader;Landroid/content/Context;)[B

    move-result-object v2

    iget-object v4, p0, Lcom/tencent/lbsapi/a/c;->c:Lcom/tencent/lbsapi/a/b;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/tencent/lbsapi/a/c;->c:Lcom/tencent/lbsapi/a/b;

    iget v5, p0, Lcom/tencent/lbsapi/a/c;->d:I

    array-length v6, v2

    invoke-interface {v4, v5, v2, v6}, Lcom/tencent/lbsapi/a/b;->a(I[BI)V
    :try_end_0
    .catch Lcom/tencent/lbsapi/a/e; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    :cond_2
    move v2, v1

    :goto_1
    if-eq v2, v3, :cond_1

    iput-object v9, p0, Lcom/tencent/lbsapi/a/c;->f:Landroid/content/Context;

    iput-object v9, p0, Lcom/tencent/lbsapi/a/c;->c:Lcom/tencent/lbsapi/a/b;

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->finalize()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v2

    iget-object v2, p0, Lcom/tencent/lbsapi/a/c;->c:Lcom/tencent/lbsapi/a/b;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tencent/lbsapi/a/c;->c:Lcom/tencent/lbsapi/a/b;

    iget v4, p0, Lcom/tencent/lbsapi/a/c;->d:I

    const-string v5, "HTTP\u6570\u636e\u9519\u8bef"

    invoke-interface {v2, v4, v8, v5}, Lcom/tencent/lbsapi/a/b;->a(IILjava/lang/String;)V

    :cond_3
    move v2, v1

    goto :goto_1

    :catch_2
    move-exception v2

    if-ge v0, v3, :cond_4

    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/tencent/lbsapi/a/c;->c:Lcom/tencent/lbsapi/a/b;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/tencent/lbsapi/a/c;->c:Lcom/tencent/lbsapi/a/b;

    iget v4, p0, Lcom/tencent/lbsapi/a/c;->d:I

    const-string v5, "HTTP\u6570\u636e\u9519\u8bef"

    invoke-interface {v2, v4, v8, v5}, Lcom/tencent/lbsapi/a/b;->a(IILjava/lang/String;)V

    :cond_5
    move v2, v1

    goto :goto_1

    :catch_3
    move-exception v2

    if-ge v0, v3, :cond_6

    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lcom/tencent/lbsapi/a/c;->c:Lcom/tencent/lbsapi/a/b;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/tencent/lbsapi/a/c;->c:Lcom/tencent/lbsapi/a/b;

    iget v4, p0, Lcom/tencent/lbsapi/a/c;->d:I

    const-string v5, "HTTP\u6570\u636e\u9519\u8bef"

    invoke-interface {v2, v4, v8, v5}, Lcom/tencent/lbsapi/a/b;->a(IILjava/lang/String;)V

    :cond_7
    move v2, v1

    goto :goto_1

    :catch_4
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_8

    :cond_8
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v2, p0, Lcom/tencent/lbsapi/a/c;->c:Lcom/tencent/lbsapi/a/b;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/tencent/lbsapi/a/c;->c:Lcom/tencent/lbsapi/a/b;

    iget v4, p0, Lcom/tencent/lbsapi/a/c;->d:I

    const-string v5, "HTTP\u6570\u636e\u9519\u8bef"

    invoke-interface {v2, v4, v8, v5}, Lcom/tencent/lbsapi/a/b;->a(IILjava/lang/String;)V

    :cond_9
    move v2, v1

    goto :goto_1
.end method
