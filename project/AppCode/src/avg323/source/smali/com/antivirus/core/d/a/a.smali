.class public Lcom/antivirus/core/d/a/a;
.super Lcom/avg/toolkit/b/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/avg/toolkit/e/a;Lcom/avg/toolkit/UID/a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/avg/toolkit/b/f;-><init>(Landroid/content/Context;Lcom/avg/toolkit/e/a;Lcom/avg/toolkit/UID/a;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/avg/toolkit/e/a;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/antivirus/core/d/a/a;->c(Lcom/avg/toolkit/e/a;)V

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x7d8

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/antivirus/core/d/a/a;->b:Lcom/avg/toolkit/b/a;

    invoke-virtual {v0, v1}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/antivirus/core/d/a/a;->b:Lcom/avg/toolkit/b/a;

    invoke-virtual {v1, v0}, Lcom/avg/toolkit/b/a;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x7d8

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/antivirus/core/d/a/a;->b:Lcom/avg/toolkit/b/a;

    invoke-virtual {v0, v1}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/antivirus/core/d/a/a;->b:Lcom/avg/toolkit/b/a;

    invoke-virtual {v1, v0}, Lcom/avg/toolkit/b/a;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/avg/toolkit/b/f;->a(Z)V

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public b(Ljava/util/List;)V
    .locals 2

    const/4 v0, 0x0

    const-class v1, Lcom/antivirus/core/d/a/e;

    invoke-interface {p1, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-super {p0, p1}, Lcom/avg/toolkit/b/f;->b(Ljava/util/List;)V

    return-void
.end method
