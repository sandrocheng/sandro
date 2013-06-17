.class public Lcom/antivirus/antitheft/d;
.super Lcom/avg/toolkit/b/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/avg/toolkit/b/g;-><init>()V

    return-void
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
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public a(Landroid/content/Context;Ljava/lang/Object;)Z
    .locals 3

    :try_start_0
    check-cast p2, Ljava/util/HashMap;

    const-string v0, "lost"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "body"

    const-string v2, "FindMyPhone"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x2328

    const/16 v2, 0x2329

    invoke-static {p1, v1, v2, v0}, Lcom/antivirus/AVService;->a(Landroid/content/Context;IILandroid/os/Bundle;)V

    :cond_0
    const-string v0, "wipe"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/antivirus/wipe/ak;

    invoke-direct {v0, p1}, Lcom/antivirus/wipe/ak;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/antivirus/wipe/ak;->a()Z

    invoke-virtual {v0}, Lcom/antivirus/wipe/ak;->g()V

    invoke-virtual {v0}, Lcom/antivirus/wipe/ak;->h()Z

    invoke-virtual {v0}, Lcom/antivirus/wipe/ak;->i()V

    invoke-static {}, Lcom/antivirus/wipe/ak;->j()V

    :cond_1
    const-string v0, "lock"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x2328

    const/16 v1, 0x232a

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/antivirus/AVService;->a(Landroid/content/Context;IILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b_()I
    .locals 1

    const/16 v0, 0x232b

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "Device.getStatus"

    return-object v0
.end method
