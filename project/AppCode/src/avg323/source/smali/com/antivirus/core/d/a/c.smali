.class public Lcom/antivirus/core/d/a/c;
.super Lcom/avg/toolkit/b/g;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Lcom/antivirus/core/scanners/g;

.field e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/avg/toolkit/b/g;-><init>()V

    const v0, 0x1869f

    iput v0, p0, Lcom/antivirus/core/d/a/c;->e:I

    return-void
.end method


# virtual methods
.method public a()Lcom/avg/toolkit/b/e;
    .locals 1

    sget-object v0, Lcom/avg/toolkit/b/e;->c:Lcom/avg/toolkit/b/e;

    return-object v0
.end method

.method public a(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/content/Context;Landroid/os/Message;)Z
    .locals 2

    iget-object v0, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    if-eqz v0, :cond_1

    const-string v1, "pkgName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/antivirus/core/d/a/c;->a:Ljava/lang/String;

    const-string v1, "man"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/antivirus/core/d/a/c;->b:Ljava/lang/String;

    const-string v1, "dex"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/antivirus/core/d/a/c;->c:Ljava/lang/String;

    const-string v1, "cutoff"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x1869f

    :goto_0
    iput v1, p0, Lcom/antivirus/core/d/a/c;->e:I

    const-string v1, "loc"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/antivirus/core/scanners/g;

    iput-object v0, p0, Lcom/antivirus/core/d/a/c;->d:Lcom/antivirus/core/scanners/g;

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    const-string v1, "cutoff"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Landroid/content/Context;Ljava/lang/Object;)Z
    .locals 5

    const/4 v2, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/antivirus/core/d/a/c;->f:[Ljava/lang/Object;

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

    iget-object v0, p0, Lcom/antivirus/core/d/a/c;->a:Ljava/lang/String;

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
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget v3, p0, Lcom/antivirus/core/d/a/c;->e:I

    if-ge v2, v3, :cond_7

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "pkgname"

    iget-object v4, p0, Lcom/antivirus/core/d/a/c;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "cat"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "catname"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x7d0

    const/16 v1, 0xb

    invoke-static {p1, v0, v1, v2}, Lcom/antivirus/core/a;->a(Landroid/content/Context;IILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public b(Landroid/content/Context;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/antivirus/core/d/a/c;->a:Ljava/lang/String;

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/antivirus/core/d/a/c;->b:Ljava/lang/String;

    aput-object v1, v0, v3

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/antivirus/core/d/a/c;->c:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/antivirus/core/d/a/c;->d:Lcom/antivirus/core/scanners/g;

    invoke-virtual {v2}, Lcom/antivirus/core/scanners/g;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/antivirus/core/d/a/c;->f:[Ljava/lang/Object;

    return v3
.end method

.method public b_()I
    .locals 1

    const/16 v0, 0x7d5

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const-string v0, "Application.checkapk3"

    return-object v0
.end method
