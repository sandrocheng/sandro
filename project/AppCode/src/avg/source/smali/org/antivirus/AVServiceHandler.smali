.class public Lorg/antivirus/AVServiceHandler;
.super Landroid/os/Handler;


# instance fields
.field a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lorg/antivirus/AVService;Landroid/os/Looper;)V
    .locals 1

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lorg/antivirus/AVServiceHandler;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/antivirus/AVServiceHandler;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antivirus/AVService;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    :sswitch_0
    return-void

    :cond_1
    if-eqz p1, :cond_5

    :try_start_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_2

    :try_start_1
    const-string v4, "__SAC"

    const/4 v5, -0x1

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    :cond_2
    :goto_1
    move-object v4, v1

    :goto_2
    sparse-switch v3, :sswitch_data_0

    invoke-virtual {v0}, Lorg/antivirus/AVService;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    sparse-switch v3, :sswitch_data_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unhandled message: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v4, v2

    :goto_3
    invoke-static {v1}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_2

    :sswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "bad message: "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_3

    const-string v0, "null"

    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->error(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/os/Message;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :sswitch_2
    invoke-virtual {v0}, Lorg/antivirus/AVService;->m()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0, v4}, Lorg/antivirus/AVService;->m(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Lorg/antivirus/AVService;->h()V

    goto :goto_0

    :sswitch_3
    invoke-virtual {v0, v4}, Lorg/antivirus/AVService;->l(Landroid/os/Bundle;)V

    goto :goto_0

    :sswitch_4
    invoke-virtual {v0}, Lorg/antivirus/AVService;->c()V

    goto :goto_0

    :sswitch_5
    invoke-virtual {v0}, Lorg/antivirus/AVService;->n()V

    goto :goto_0

    :sswitch_6
    invoke-virtual {v0}, Lorg/antivirus/AVService;->p()V

    goto :goto_0

    :sswitch_7
    invoke-virtual {v0}, Lorg/antivirus/AVService;->a()V

    goto :goto_0

    :sswitch_8
    invoke-virtual {v0, v4}, Lorg/antivirus/AVService;->a(Landroid/os/Bundle;)V

    goto :goto_0

    :sswitch_9
    invoke-virtual {v0, v4}, Lorg/antivirus/AVService;->b(Landroid/os/Bundle;)V

    goto :goto_0

    :sswitch_a
    invoke-virtual {v0}, Lorg/antivirus/AVService;->e()V

    goto :goto_0

    :sswitch_b
    invoke-virtual {v0, v4}, Lorg/antivirus/AVService;->c(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :sswitch_c
    invoke-virtual {v0, v4}, Lorg/antivirus/AVService;->d(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :sswitch_d
    invoke-virtual {v0}, Lorg/antivirus/AVService;->d()V

    goto/16 :goto_0

    :sswitch_e
    invoke-virtual {v0}, Lorg/antivirus/AVService;->k()V

    goto/16 :goto_0

    :sswitch_f
    invoke-virtual {v0}, Lorg/antivirus/AVService;->l()V

    goto/16 :goto_0

    :sswitch_10
    invoke-virtual {v0, v4}, Lorg/antivirus/AVService;->e(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :sswitch_11
    invoke-virtual {v0, v4}, Lorg/antivirus/AVService;->f(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :sswitch_12
    invoke-virtual {v0, v4}, Lorg/antivirus/AVService;->g(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :sswitch_13
    invoke-virtual {v0, v4}, Lorg/antivirus/AVService;->h(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :sswitch_14
    invoke-virtual {v0, v4}, Lorg/antivirus/AVService;->i(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :sswitch_15
    const-string v1, "__SAD"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "__SAH"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Lorg/antivirus/AVService;->a(Landroid/os/Messenger;)V

    goto/16 :goto_0

    :sswitch_16
    const-string v1, "__SAD"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/antivirus/AVService;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_17
    invoke-virtual {v0}, Lorg/antivirus/AVService;->f()V

    goto/16 :goto_0

    :sswitch_18
    const-string v1, "__SAD"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/antivirus/core/scanners/c;

    const-string v2, "ScannerConfig"

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lorg/antivirus/core/scanners/ScannerFilesConfig;

    const-string v3, "__SAH"

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Messenger;

    invoke-virtual {v0, v1, v7, v2, v3}, Lorg/antivirus/AVService;->a(Lorg/antivirus/core/scanners/c;ZLorg/antivirus/core/scanners/ScannerFilesConfig;Landroid/os/Messenger;)V

    goto/16 :goto_0

    :sswitch_19
    sget-object v1, Lorg/antivirus/core/scanners/c;->a:Lorg/antivirus/core/scanners/c;

    invoke-virtual {v0, v1, v6, v2, v2}, Lorg/antivirus/AVService;->a(Lorg/antivirus/core/scanners/c;ZLorg/antivirus/core/scanners/ScannerFilesConfig;Landroid/os/Messenger;)V

    goto/16 :goto_0

    :sswitch_1a
    invoke-virtual {v0, v4}, Lorg/antivirus/AVService;->o(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :sswitch_1b
    invoke-virtual {v0}, Lorg/antivirus/AVService;->b()V

    goto/16 :goto_0

    :sswitch_1c
    const-string v1, "__SAD"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v1, "ScannerClient"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/antivirus/core/scanners/c;

    const-string v3, "ScannerResult"

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Lorg/antivirus/AVService;->a(ILorg/antivirus/core/scanners/c;Ljava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_1d
    const-string v1, "__SAD"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v1, "ScannerClient"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/antivirus/core/scanners/c;

    const-string v3, "ScannerResult"

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    invoke-virtual {v0, v2, v1, v3}, Lorg/antivirus/AVService;->b(ILorg/antivirus/core/scanners/c;Ljava/lang/Object;)V

    goto/16 :goto_0

    :sswitch_1e
    invoke-virtual {v0, v4}, Lorg/antivirus/AVService;->j(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :sswitch_1f
    const-string v1, "__SAD"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/antivirus/AVService;->p(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :sswitch_20
    invoke-virtual {v0, v4}, Lorg/antivirus/AVService;->n(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :sswitch_21
    invoke-virtual {v0}, Lorg/antivirus/AVService;->j()V

    goto/16 :goto_0

    :sswitch_22
    invoke-virtual {v0, v4}, Lorg/antivirus/AVService;->k(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :sswitch_23
    invoke-virtual {v0}, Lorg/antivirus/AVService;->g()V

    goto/16 :goto_0

    :sswitch_24
    invoke-virtual {v0}, Lorg/antivirus/AVService;->i()V

    goto/16 :goto_0

    :sswitch_25
    const-string v1, "__SAD"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Lorg/antivirus/AVService;->a(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :sswitch_26
    const-string v1, "__SAD"

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v7}, Lorg/antivirus/AVService;->a(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :sswitch_27
    invoke-virtual {v0}, Lorg/antivirus/AVService;->o()V

    goto/16 :goto_0

    :sswitch_28
    invoke-virtual {v0, v4}, Lorg/antivirus/AVService;->q(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :sswitch_29
    invoke-virtual {v0, v4}, Lorg/antivirus/AVService;->r(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :sswitch_2a
    invoke-virtual {v0}, Lorg/antivirus/AVService;->q()V

    goto/16 :goto_0

    :catch_1
    move-exception v4

    move-object v8, v4

    move-object v4, v1

    move-object v1, v8

    goto/16 :goto_3

    :cond_5
    move-object v1, v2

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_1
        0x17 -> :sswitch_2
        0x66 -> :sswitch_3
        0x72 -> :sswitch_4
        0x1f4 -> :sswitch_5
        0x1f6 -> :sswitch_6
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_8
        0x4 -> :sswitch_7
        0x5 -> :sswitch_15
        0x6 -> :sswitch_16
        0x7 -> :sswitch_1a
        0xa -> :sswitch_b
        0xb -> :sswitch_c
        0x13 -> :sswitch_1f
        0x14 -> :sswitch_20
        0x16 -> :sswitch_18
        0x18 -> :sswitch_1b
        0x19 -> :sswitch_1c
        0x1a -> :sswitch_1d
        0x1b -> :sswitch_1e
        0x64 -> :sswitch_9
        0x67 -> :sswitch_d
        0x6a -> :sswitch_e
        0x6b -> :sswitch_f
        0x6d -> :sswitch_12
        0x6e -> :sswitch_13
        0x6f -> :sswitch_14
        0x70 -> :sswitch_a
        0x71 -> :sswitch_17
        0x75 -> :sswitch_22
        0x76 -> :sswitch_23
        0x77 -> :sswitch_24
        0x78 -> :sswitch_25
        0x7a -> :sswitch_26
        0x13a -> :sswitch_10
        0x13b -> :sswitch_11
        0x13d -> :sswitch_21
        0x141 -> :sswitch_19
        0x1f5 -> :sswitch_27
        0x1f7 -> :sswitch_28
        0x1f8 -> :sswitch_29
        0x1fa -> :sswitch_2a
    .end sparse-switch
.end method
