.class public final Lorg/antivirus/core/a/b;
.super Lorg/antivirus/core/a/v;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Lorg/antivirus/core/scanners/f;

.field final synthetic e:Lorg/antivirus/core/a/a;


# direct methods
.method public constructor <init>(Lorg/antivirus/core/a/a;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/core/a/b;->e:Lorg/antivirus/core/a/a;

    invoke-direct {p0}, Lorg/antivirus/core/a/v;-><init>()V

    return-void
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

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/antivirus/core/a/b;->a:Ljava/lang/String;

    aput-object v2, v0, v1

    iget-object v1, p0, Lorg/antivirus/core/a/b;->b:Ljava/lang/String;

    aput-object v1, v0, v3

    const/4 v1, 0x2

    iget-object v2, p0, Lorg/antivirus/core/a/b;->c:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lorg/antivirus/core/a/b;->d:Lorg/antivirus/core/scanners/f;

    invoke-virtual {v2}, Lorg/antivirus/core/scanners/f;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/antivirus/core/a/b;->f:[Ljava/lang/Object;

    return v3
.end method

.method public final a(Landroid/content/Context;Landroid/os/Message;)Z
    .locals 2

    iget-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "pkgName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/antivirus/core/a/b;->a:Ljava/lang/String;

    const-string v1, "man"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/antivirus/core/a/b;->b:Ljava/lang/String;

    const-string v1, "dex"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/antivirus/core/a/b;->c:Ljava/lang/String;

    const-string v1, "loc"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lorg/antivirus/core/scanners/f;

    iput-object v0, p0, Lorg/antivirus/core/a/b;->d:Lorg/antivirus/core/scanners/f;

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/Object;)Z
    .locals 5

    const/4 v2, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/antivirus/core/a/b;->f:[Ljava/lang/Object;

    instance-of v0, p2, Ljava/util/Map;

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    check-cast p2, Ljava/util/Map;

    const-string v0, "STATUS"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_7

    const-string v1, "remove"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/antivirus/core/a/b;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "CATID"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_4

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    check-cast v0, Ljava/lang/String;

    const-string v1, "CATNAME"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    instance-of v3, v1, Ljava/lang/String;

    if-nez v3, :cond_6

    :cond_5
    move v0, v2

    goto :goto_0

    :cond_6
    check-cast v1, Ljava/lang/String;

    :try_start_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "pkgname"

    iget-object v4, p0, Lorg/antivirus/core/a/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "cat"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "catname"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lorg/antivirus/core/AVCoreService;->SERVICE_IDENTIFIER:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "__SAC"

    const/16 v3, 0x13

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "__SAD"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public final b()Lorg/antivirus/core/a/q;
    .locals 1

    sget-object v0, Lorg/antivirus/core/a/q;->c:Lorg/antivirus/core/a/q;

    return-object v0
.end method

.method public final c()I
    .locals 1

    const/16 v0, 0x3f6

    return v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    const-string v0, "Application.checkapk3"

    return-object v0
.end method
