.class public final Lorg/antivirus/AvApplication;
.super Landroid/app/Application;


# static fields
.field private static a:Lorg/antivirus/AvApplication;

.field public static mAvgFeatures:Lorg/antivirus/core/b/a;


# instance fields
.field private b:Lorg/antivirus/core/a/s;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lorg/antivirus/AvApplication;->mAvgFeatures:Lorg/antivirus/core/b/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    sput-object p0, Lorg/antivirus/AvApplication;->a:Lorg/antivirus/AvApplication;

    return-void
.end method

.method public static getInstance()Lorg/antivirus/AvApplication;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lorg/antivirus/AvApplication;->a:Lorg/antivirus/AvApplication;

    return-object v0
.end method


# virtual methods
.method public final onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    sput-object p0, Lorg/antivirus/AvApplication;->a:Lorg/antivirus/AvApplication;

    invoke-static {p0}, Lorg/antivirus/core/Logger;->setContext(Landroid/content/Context;)V

    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lorg/antivirus/AvApplication;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lorg/antivirus/AVService;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/antivirus/core/AVCoreService;->SERVICE_IDENTIFIER:Landroid/content/ComponentName;

    new-instance v0, Lorg/antivirus/AVSettings;

    invoke-direct {v0, p0}, Lorg/antivirus/AVSettings;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lorg/antivirus/AvApplication;->setLoggingOptions()V

    iget-object v0, p0, Lorg/antivirus/AvApplication;->b:Lorg/antivirus/core/a/s;

    if-nez v0, :cond_0

    new-instance v0, Lorg/antivirus/core/a/s;

    invoke-direct {v0, p0}, Lorg/antivirus/core/a/s;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/antivirus/AvApplication;->b:Lorg/antivirus/core/a/s;

    iget-object v0, p0, Lorg/antivirus/AvApplication;->b:Lorg/antivirus/core/a/s;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lorg/antivirus/AVService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "__SAC"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lorg/antivirus/AvApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public final onLowMemory()V
    .locals 0

    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    return-void
.end method

.method public final onTerminate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    return-void
.end method

.method public final setLoggingOptions()V
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lorg/antivirus/AVSettings;->getLogToFile()Z

    move-result v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->setSaveToFile(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    sget-boolean v0, Lorg/antivirus/core/Logger;->mLogExceptions:Z

    invoke-static {}, Lorg/antivirus/AVSettings;->getLogExceptions()Z

    move-result v1

    or-int/2addr v0, v1

    sput-boolean v0, Lorg/antivirus/core/Logger;->mLogExceptions:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-static {v2}, Lorg/antivirus/core/Logger;->setSaveToFile(Z)V

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception v0

    sput-boolean v2, Lorg/antivirus/core/Logger;->mLogExceptions:Z

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_1
.end method
