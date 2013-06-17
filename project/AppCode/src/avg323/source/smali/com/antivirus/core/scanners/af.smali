.class public Lcom/antivirus/core/scanners/af;
.super Lcom/antivirus/core/scanners/k;


# instance fields
.field private f:I


# direct methods
.method protected constructor <init>(Lcom/antivirus/core/b;Landroid/os/Handler;)V
    .locals 1

    const/4 v0, 0x7

    invoke-direct {p0, p1, p2, v0}, Lcom/antivirus/core/scanners/af;-><init>(Lcom/antivirus/core/b;Landroid/os/Handler;I)V

    return-void
.end method

.method public constructor <init>(Lcom/antivirus/core/b;Landroid/os/Handler;I)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/antivirus/core/scanners/k;-><init>(Lcom/antivirus/core/b;Landroid/os/Handler;Lcom/antivirus/core/scanners/m;Landroid/os/Messenger;)V

    new-instance v0, Lcom/antivirus/core/scanners/ag;

    invoke-direct {v0}, Lcom/antivirus/core/scanners/ag;-><init>()V

    iput-object v0, p0, Lcom/antivirus/core/scanners/af;->a:Lcom/antivirus/core/scanners/e;

    iput p3, p0, Lcom/antivirus/core/scanners/af;->f:I

    invoke-virtual {p1}, Lcom/antivirus/core/b;->j()I

    move-result v0

    iget v1, p0, Lcom/antivirus/core/scanners/af;->f:I

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/antivirus/core/scanners/af;->f:I

    return-void
.end method

.method private c()Z
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v2, "/system/bin/su"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_1

    :try_start_1
    new-instance v0, Ljava/io/File;

    const-string v2, "/system/xbin/su"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    :goto_0
    if-nez v0, :cond_0

    :try_start_2
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/sbin/su"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    :cond_0
    :goto_1
    return v0

    :catch_0
    move-exception v0

    move-object v3, v0

    move v0, v1

    move-object v1, v3

    :goto_2
    invoke-static {v1}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v3, v0

    move v0, v1

    move-object v1, v3

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_2

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private c(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "install_non_market_apps"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private d(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adb_enabled"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/antivirus/core/scanners/h;Lcom/antivirus/core/scanners/ag;)V
    .locals 2

    iget-boolean v0, p3, Lcom/antivirus/core/scanners/ag;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/antivirus/core/scanners/af;->b(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p2, Lcom/antivirus/core/scanners/h;->d:Lcom/antivirus/core/scanners/ag;

    iput-boolean v0, v1, Lcom/antivirus/core/scanners/ag;->d:Z

    :cond_0
    iget-boolean v0, p3, Lcom/antivirus/core/scanners/ag;->c:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/antivirus/core/scanners/af;->a(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p2, Lcom/antivirus/core/scanners/h;->d:Lcom/antivirus/core/scanners/ag;

    iput-boolean v0, v1, Lcom/antivirus/core/scanners/ag;->c:Z

    :cond_1
    iget-boolean v0, p3, Lcom/antivirus/core/scanners/ag;->b:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/antivirus/core/scanners/af;->c()Z

    move-result v0

    iget-object v1, p2, Lcom/antivirus/core/scanners/h;->d:Lcom/antivirus/core/scanners/ag;

    iput-boolean v0, v1, Lcom/antivirus/core/scanners/ag;->b:Z

    :cond_2
    return-void
.end method

.method public a(Landroid/content/Context;Z)V
    .locals 2

    iget-object v0, p0, Lcom/antivirus/core/scanners/af;->a:Lcom/antivirus/core/scanners/e;

    check-cast v0, Lcom/antivirus/core/scanners/ag;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/antivirus/core/scanners/ag;->a:Z

    iget v1, p0, Lcom/antivirus/core/scanners/af;->f:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/antivirus/core/scanners/af;->b(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/antivirus/core/scanners/ag;->d:Z

    if-eqz v1, :cond_0

    :cond_0
    iget v1, p0, Lcom/antivirus/core/scanners/af;->f:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/antivirus/core/scanners/af;->a(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/antivirus/core/scanners/ag;->c:Z

    if-eqz v1, :cond_1

    :cond_1
    iget v1, p0, Lcom/antivirus/core/scanners/af;->f:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/antivirus/core/scanners/af;->c()Z

    move-result v1

    iput-boolean v1, v0, Lcom/antivirus/core/scanners/ag;->b:Z

    if-eqz v1, :cond_2

    :cond_2
    invoke-virtual {v0}, Lcom/antivirus/core/scanners/ag;->e()V

    return-void
.end method

.method public a(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/antivirus/core/scanners/af;->c(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public b(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/antivirus/core/scanners/af;->d(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
