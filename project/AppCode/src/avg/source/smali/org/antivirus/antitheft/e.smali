.class public Lorg/antivirus/antitheft/e;
.super Lorg/antivirus/core/a/v;


# instance fields
.field protected a:Ljava/lang/String;

.field b:Landroid/os/Messenger;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/antivirus/core/a/v;-><init>()V

    return-void
.end method

.method private a(Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/antivirus/antitheft/e;->b:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lorg/antivirus/antitheft/e;->b:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/antivirus/antitheft/e;->b:Landroid/os/Messenger;

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final a(Landroid/content/Context;)Z
    .locals 4

    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/antivirus/antitheft/e;->a:Ljava/lang/String;

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/antivirus/antitheft/e;->f:[Ljava/lang/Object;

    return v3
.end method

.method public final a(Landroid/content/Context;Landroid/os/Message;)Z
    .locals 2

    iget-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "adminEmail"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/antitheft/e;->a:Ljava/lang/String;

    iget-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "__SAH"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    iput-object v0, p0, Lorg/antivirus/antitheft/e;->b:Landroid/os/Messenger;

    const/4 v0, 0x1

    return v0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ok"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lorg/antivirus/antitheft/e;->a(Z)V

    iget-object v2, p0, Lorg/antivirus/antitheft/e;->a:Ljava/lang/String;

    invoke-static {v2}, Lorg/antivirus/AVSettings;->setFindRUser(Ljava/lang/String;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/antivirus/antitheft/e;->a:Ljava/lang/String;

    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    invoke-static {v2}, Lorg/antivirus/AVSettings;->setFindRUser(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lorg/antivirus/antitheft/e;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    move v0, v1

    goto :goto_0
.end method

.method public final b()Lorg/antivirus/core/a/q;
    .locals 1

    sget-object v0, Lorg/antivirus/core/a/q;->c:Lorg/antivirus/core/a/q;

    return-object v0
.end method

.method public final b(Landroid/content/Context;)Z
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/antivirus/antitheft/e;->a:Ljava/lang/String;

    invoke-direct {p0, v1}, Lorg/antivirus/antitheft/e;->a(Z)V

    return v1
.end method

.method public final c()I
    .locals 1

    const/16 v0, 0x406

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    const-string v0, "Device.updateATMail"

    return-object v0
.end method
