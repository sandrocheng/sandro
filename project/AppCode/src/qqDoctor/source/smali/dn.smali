.class public final Ldn;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Ldl;


# direct methods
.method public constructor <init>(Ldl;)V
    .locals 0

    iput-object p1, p0, Ldn;->a:Ldl;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    const/4 v5, 0x0

    const/4 v1, -0x1

    iget-object v2, p0, Ldn;->a:Ldl;

    iget-object v0, v2, Ldl;->f:Landroid/content/Context;

    if-eqz v0, :cond_5

    iget-object v0, v2, Ldl;->f:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-eq v3, v4, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v3, v4, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    if-ne v0, v1, :cond_6

    iget-object v0, p0, Ldn;->a:Ldl;

    iget-object v0, v0, Ldl;->g:Landroid/os/Handler;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v5, v5, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Ldn;->a:Ldl;

    iget-object v1, v1, Ldl;->g:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_1
    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, v2, Ldl;->f:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x3

    goto :goto_0

    :cond_4
    const/4 v0, 0x4

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0

    :cond_6
    iget-object v1, p0, Ldn;->a:Ldl;

    iget-object v1, v1, Ldl;->d:[B

    if-nez v1, :cond_7

    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    iget-object v2, p0, Ldn;->a:Ldl;

    iget-object v2, v2, Ldl;->c:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ldn;->a:Ldl;

    invoke-virtual {v2, v1, v0}, Ldl;->a(Lorg/apache/http/client/methods/HttpUriRequest;I)V

    goto :goto_1

    :cond_7
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    iget-object v2, p0, Ldn;->a:Ldl;

    iget-object v2, v2, Ldl;->c:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    const-string v2, "Content-Type"

    const-string v3, "application/x-www-form-urlencoded"

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/apache/http/entity/ByteArrayEntity;

    iget-object v3, p0, Ldn;->a:Ldl;

    iget-object v3, v3, Ldl;->d:[B

    invoke-direct {v2, v3}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v2, v5}, Lorg/apache/http/entity/ByteArrayEntity;->setChunked(Z)V

    invoke-virtual {v1, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    iget-object v2, p0, Ldn;->a:Ldl;

    invoke-virtual {v2, v1, v0}, Ldl;->a(Lorg/apache/http/client/methods/HttpUriRequest;I)V

    goto :goto_1
.end method
