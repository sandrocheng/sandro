.class public Lcom/avg/toolkit/j;
.super Landroid/os/Handler;


# instance fields
.field a:Z

.field b:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/avg/toolkit/f;Landroid/os/Looper;)V
    .locals 1

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/avg/toolkit/j;->a:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/avg/toolkit/j;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    const/16 v6, 0x3e9

    const/16 v5, 0x3e8

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/avg/toolkit/j;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avg/toolkit/f;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x0

    if-eqz p1, :cond_6

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
    iget-boolean v4, p0, Lcom/avg/toolkit/j;->a:Z

    if-nez v4, :cond_4

    if-ne v2, v5, :cond_2

    const-string v4, "__SAC2"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v6, :cond_2

    invoke-virtual {v0}, Lcom/avg/toolkit/f;->a_()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avg/toolkit/j;->a:Z

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v7, v1

    move-object v1, v2

    move-object v2, v7

    :goto_2
    invoke-static {v2}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    move v2, v3

    goto :goto_1

    :cond_2
    if-ne v2, v5, :cond_3

    const-string v4, "__SAC2"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v6, :cond_4

    :cond_3
    const-string v3, "wrong order"

    invoke-static {v3}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/avg/toolkit/f;->a_()V

    :cond_4
    sparse-switch v2, :sswitch_data_0

    invoke-virtual {v0, v1, v2}, Lcom/avg/toolkit/f;->a(Landroid/os/Bundle;I)V

    goto :goto_0

    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bad message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p1, :cond_5

    const-string v0, "null"

    :goto_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :sswitch_1
    invoke-virtual {v0, v1}, Lcom/avg/toolkit/f;->b(Landroid/os/Bundle;)V

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_2

    :cond_6
    move-object v1, v2

    move v2, v3

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x3e8 -> :sswitch_1
    .end sparse-switch
.end method
