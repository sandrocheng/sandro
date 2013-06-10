.class public Lorg/antivirus/core/scanners/ac;
.super Lorg/antivirus/core/scanners/j;


# instance fields
.field private g:I


# direct methods
.method protected constructor <init>(Lorg/antivirus/core/EngineSettings;Landroid/os/Handler;)V
    .locals 1

    const/4 v0, 0x7

    invoke-direct {p0, p1, p2, v0}, Lorg/antivirus/core/scanners/ac;-><init>(Lorg/antivirus/core/EngineSettings;Landroid/os/Handler;I)V

    return-void
.end method

.method public constructor <init>(Lorg/antivirus/core/EngineSettings;Landroid/os/Handler;I)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/antivirus/core/scanners/j;-><init>(Lorg/antivirus/core/EngineSettings;Landroid/os/Handler;Lorg/antivirus/core/scanners/l;)V

    new-instance v0, Lorg/antivirus/core/scanners/ad;

    invoke-direct {v0}, Lorg/antivirus/core/scanners/ad;-><init>()V

    iput-object v0, p0, Lorg/antivirus/core/scanners/ac;->a:Lorg/antivirus/core/scanners/d;

    iput p3, p0, Lorg/antivirus/core/scanners/ac;->g:I

    invoke-virtual {p1}, Lorg/antivirus/core/EngineSettings;->getIgnoreSettings()I

    move-result v0

    iget v1, p0, Lorg/antivirus/core/scanners/ac;->g:I

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lorg/antivirus/core/scanners/ac;->g:I

    return-void
.end method

.method public static a(Landroid/content/Context;Lorg/antivirus/core/scanners/g;Lorg/antivirus/core/scanners/ad;)V
    .locals 2

    iget-boolean v0, p2, Lorg/antivirus/core/scanners/ad;->d:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/antivirus/core/scanners/ac;->c(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p1, Lorg/antivirus/core/scanners/g;->d:Lorg/antivirus/core/scanners/ad;

    iput-boolean v0, v1, Lorg/antivirus/core/scanners/ad;->d:Z

    :cond_0
    iget-boolean v0, p2, Lorg/antivirus/core/scanners/ad;->c:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Lorg/antivirus/core/scanners/ac;->b(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p1, Lorg/antivirus/core/scanners/g;->d:Lorg/antivirus/core/scanners/ad;

    iput-boolean v0, v1, Lorg/antivirus/core/scanners/ad;->c:Z

    :cond_1
    iget-boolean v0, p2, Lorg/antivirus/core/scanners/ad;->b:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lorg/antivirus/core/scanners/ac;->b()Z

    move-result v0

    iget-object v1, p1, Lorg/antivirus/core/scanners/g;->d:Lorg/antivirus/core/scanners/ad;

    iput-boolean v0, v1, Lorg/antivirus/core/scanners/ad;->b:Z

    :cond_2
    return-void
.end method

.method private static b()Z
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
    invoke-static {v1}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

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

.method public static b(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "install_non_market_apps"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "adb_enabled"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lorg/antivirus/core/scanners/ac;->a:Lorg/antivirus/core/scanners/d;

    check-cast v0, Lorg/antivirus/core/scanners/ad;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/antivirus/core/scanners/ad;->a:Z

    iget v1, p0, Lorg/antivirus/core/scanners/ac;->g:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    invoke-static {p1}, Lorg/antivirus/core/scanners/ac;->c(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, v0, Lorg/antivirus/core/scanners/ad;->d:Z

    :cond_0
    iget v1, p0, Lorg/antivirus/core/scanners/ac;->g:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    invoke-static {p1}, Lorg/antivirus/core/scanners/ac;->b(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, v0, Lorg/antivirus/core/scanners/ad;->c:Z

    :cond_1
    iget v1, p0, Lorg/antivirus/core/scanners/ac;->g:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    invoke-static {}, Lorg/antivirus/core/scanners/ac;->b()Z

    move-result v1

    iput-boolean v1, v0, Lorg/antivirus/core/scanners/ad;->b:Z

    :cond_2
    invoke-virtual {v0}, Lorg/antivirus/core/scanners/ad;->e()V

    return-void
.end method
