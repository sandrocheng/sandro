.class public final Lcom/antivirus/AvApplication;
.super Landroid/app/Application;


# static fields
.field private static a:Lcom/antivirus/AvApplication;


# instance fields
.field private b:Lcom/antivirus/core/a/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    sput-object p0, Lcom/antivirus/AvApplication;->a:Lcom/antivirus/AvApplication;

    return-void
.end method

.method public static b()Lcom/antivirus/AvApplication;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/antivirus/AvApplication;->a:Lcom/antivirus/AvApplication;

    return-object v0
.end method

.method private c()V
    .locals 0

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lcom/antivirus/c;->b()Z

    move-result v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    sget-boolean v0, Lcom/avg/toolkit/f/a;->a:Z

    invoke-static {}, Lcom/antivirus/c;->a()Z

    move-result v1

    or-int/2addr v0, v1

    sput-boolean v0, Lcom/avg/toolkit/f/a;->a:Z

    sget-boolean v0, Lcom/avg/toolkit/f/a;->a:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v0, :cond_0

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-static {v2}, Lcom/avg/toolkit/f/a;->a(Z)V

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception v0

    sput-boolean v2, Lcom/avg/toolkit/f/a;->a:Z

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/antivirus/AvApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/antivirus/m;->b(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    sput-object p0, Lcom/antivirus/AvApplication;->a:Lcom/antivirus/AvApplication;

    invoke-static {p0}, Lcom/antivirus/m;->b(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/antivirus/AvApplication;->c()V

    invoke-static {p0}, Lcom/avg/toolkit/f/a;->a(Landroid/content/Context;)V

    :try_start_0
    new-instance v0, Lcom/antivirus/c;

    invoke-direct {v0, p0}, Lcom/antivirus/c;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/avg/tuneup/j;

    invoke-direct {v0, p0}, Lcom/avg/tuneup/j;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/antivirus/AvApplication;->a()V

    iget-object v0, p0, Lcom/antivirus/AvApplication;->b:Lcom/antivirus/core/a/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/antivirus/core/a/b;

    invoke-direct {v0, p0}, Lcom/antivirus/core/a/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/antivirus/AvApplication;->b:Lcom/antivirus/core/a/b;

    iget-object v0, p0, Lcom/antivirus/AvApplication;->b:Lcom/antivirus/core/a/b;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/antivirus/AVService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/antivirus/AvApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 0

    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    return-void
.end method

.method public onTerminate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    return-void
.end method
