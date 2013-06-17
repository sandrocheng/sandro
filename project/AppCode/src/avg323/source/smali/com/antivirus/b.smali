.class public Lcom/antivirus/b;
.super Landroid/os/Handler;


# instance fields
.field a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/antivirus/AVService;Landroid/os/Looper;)V
    .locals 1

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/antivirus/b;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/antivirus/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/antivirus/AVService;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x0

    if-eqz p1, :cond_3

    :try_start_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    :try_start_1
    const-string v2, "__SAC"

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    :goto_1
    move v3, v2

    move-object v2, v1

    :goto_2
    sparse-switch v3, :sswitch_data_0

    invoke-virtual {v0}, Lcom/antivirus/AVService;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2, v3}, Lcom/antivirus/AVService;->a(Landroid/os/Bundle;I)V

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_3
    invoke-static {v1}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_2

    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bad message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p1, :cond_2

    const-string v0, "null"

    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :sswitch_1
    invoke-virtual {v0, v2}, Lcom/antivirus/AVService;->b(Landroid/os/Bundle;)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {v0, v3}, Lcom/antivirus/AVService;->a(I)Lcom/avg/toolkit/e;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/avg/toolkit/e;->b(Landroid/os/Bundle;)V

    goto :goto_0

    :sswitch_3
    invoke-virtual {v0, v3}, Lcom/antivirus/AVService;->a(I)Lcom/avg/toolkit/e;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/avg/toolkit/e;->b(Landroid/os/Bundle;)V

    goto :goto_0

    :sswitch_4
    invoke-virtual {v0, v2, v3}, Lcom/antivirus/AVService;->a(Landroid/os/Bundle;I)V

    goto :goto_0

    :sswitch_5
    invoke-virtual {v0, v2, v3}, Lcom/antivirus/AVService;->a(Landroid/os/Bundle;I)V

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    goto :goto_3

    :cond_3
    move-object v1, v2

    move v2, v3

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x3e8 -> :sswitch_1
        0x1b58 -> :sswitch_5
        0x4268 -> :sswitch_3
        0x4a38 -> :sswitch_4
        0x61a8 -> :sswitch_2
    .end sparse-switch
.end method
