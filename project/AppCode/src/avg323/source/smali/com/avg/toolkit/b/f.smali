.class public Lcom/avg/toolkit/b/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/avg/toolkit/e;


# instance fields
.field a:Landroid/os/HandlerThread;

.field public b:Lcom/avg/toolkit/b/a;

.field c:Landroid/os/HandlerThread;

.field d:Lcom/avg/toolkit/b/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/avg/toolkit/e/a;Lcom/avg/toolkit/UID/a;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CM"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/avg/toolkit/b/f;->a:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/avg/toolkit/b/f;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/avg/toolkit/b/a;

    iget-object v1, p0, Lcom/avg/toolkit/b/f;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1, p3}, Lcom/avg/toolkit/b/a;-><init>(Landroid/content/Context;Lcom/avg/toolkit/e/a;Landroid/os/Looper;Lcom/avg/toolkit/UID/a;)V

    iput-object v0, p0, Lcom/avg/toolkit/b/f;->b:Lcom/avg/toolkit/b/a;

    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/avg/toolkit/b/f;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "UI"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/avg/toolkit/b/f;->c:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/avg/toolkit/b/f;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/avg/toolkit/b/i;

    iget-object v1, p0, Lcom/avg/toolkit/b/f;->c:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1, p3}, Lcom/avg/toolkit/b/i;-><init>(Landroid/content/Context;Lcom/avg/toolkit/e/a;Landroid/os/Looper;Lcom/avg/toolkit/UID/a;)V

    iput-object v0, p0, Lcom/avg/toolkit/b/f;->d:Lcom/avg/toolkit/b/i;

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v3, "9774D56D682E549C"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "google_sdk"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/avg/toolkit/e/a;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0

    return-void
.end method

.method public a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/avg/toolkit/b/f;->b:Lcom/avg/toolkit/b/a;

    invoke-virtual {v0}, Lcom/avg/toolkit/b/a;->b()V

    return-void
.end method

.method public b()I
    .locals 1

    const/16 v0, 0xfa0

    return v0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 4

    const/4 v0, 0x0

	const-string v3, "4000"
	invoke-static {v3, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    if-eqz p1, :cond_1

    const-string v0, "__SAC2"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput-object p1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    const-string v3, "isUI"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    iput v1, v2, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avg/toolkit/b/f;->d:Lcom/avg/toolkit/b/i;

    invoke-virtual {v2, v0}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/avg/toolkit/b/f;->d:Lcom/avg/toolkit/b/i;

    invoke-virtual {v0, v2}, Lcom/avg/toolkit/b/i;->sendMessage(Landroid/os/Message;)Z

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/avg/toolkit/b/f;->b:Lcom/avg/toolkit/b/a;

    invoke-virtual {v2, v0}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/avg/toolkit/b/f;->b:Lcom/avg/toolkit/b/a;

    invoke-virtual {v0, v2}, Lcom/avg/toolkit/b/a;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_1

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method public b(Lcom/avg/toolkit/e/a;)V
    .locals 1

    iget-object v0, p0, Lcom/avg/toolkit/b/f;->b:Lcom/avg/toolkit/b/a;

    invoke-virtual {v0, p1}, Lcom/avg/toolkit/b/a;->a(Lcom/avg/toolkit/e/a;)V

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/avg/toolkit/b/f;->b:Lcom/avg/toolkit/b/a;

    invoke-virtual {v0, p1}, Lcom/avg/toolkit/b/a;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/avg/toolkit/b/f;->d:Lcom/avg/toolkit/b/i;

    invoke-virtual {v0, p1}, Lcom/avg/toolkit/b/i;->a(Ljava/util/List;)V

    return-void
.end method

.method public c(Lcom/avg/toolkit/e/a;)V
    .locals 1

    iget-object v0, p0, Lcom/avg/toolkit/b/f;->b:Lcom/avg/toolkit/b/a;

    invoke-virtual {v0, p1}, Lcom/avg/toolkit/b/a;->a(Lcom/avg/toolkit/e/a;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/avg/toolkit/b/f;->a:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avg/toolkit/b/f;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :cond_0
    iget-object v0, p0, Lcom/avg/toolkit/b/f;->c:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/avg/toolkit/b/f;->c:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iput-object v1, p0, Lcom/avg/toolkit/b/f;->a:Landroid/os/HandlerThread;

    iput-object v1, p0, Lcom/avg/toolkit/b/f;->c:Landroid/os/HandlerThread;

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
