.class public final Lorg/antivirus/a/a;
.super Ljava/lang/Object;


# instance fields
.field public a:Lorg/antivirus/a/h;

.field public b:Landroid/os/Handler;

.field public c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/antivirus/a/a;->b:Landroid/os/Handler;

    iput-object p1, p0, Lorg/antivirus/a/a;->c:Landroid/content/Context;

    if-nez p1, :cond_0

    const-string v0, "initialized with null context"

    invoke-static {v0}, Lorg/antivirus/core/Logger;->error(Ljava/lang/String;)V

    :cond_0
    if-nez p2, :cond_1

    const-string v0, "initialized with null handler"

    invoke-static {v0}, Lorg/antivirus/core/Logger;->error(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static a(Landroid/content/Context;Lorg/antivirus/core/Engine;)V
    .locals 3

    if-eqz p1, :cond_0

    const/16 v0, 0x461

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, v0, v1}, Lorg/antivirus/core/Engine;->sendCommMessage(ILandroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/antivirus/AVService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "__SAC"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "__SAD"

    const/16 v2, 0x461

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-static {}, Lorg/antivirus/core/Logger;->errorBadAgrument()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static a(Ljava/io/File;)V
    .locals 4

    new-instance v0, Lorg/antivirus/a/b;

    invoke-direct {v0}, Lorg/antivirus/a/b;-><init>()V

    invoke-virtual {p0, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic b(Ljava/io/File;)V
    .locals 0

    invoke-static {p0}, Lorg/antivirus/a/a;->a(Ljava/io/File;)V

    return-void
.end method
