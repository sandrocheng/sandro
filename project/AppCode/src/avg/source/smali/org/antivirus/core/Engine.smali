.class public Lorg/antivirus/core/Engine;
.super Ljava/lang/Object;


# static fields
.field public static final DAILY_INTERVAL:J = 0x5265c00L

.field public static final WEEKLY_INTERVAL:J = 0x240c8400L


# instance fields
.field a:Landroid/os/HandlerThread;

.field b:Lorg/antivirus/core/a/n;

.field private c:Lorg/antivirus/core/b/a;

.field public mEngineSettings:Lorg/antivirus/core/EngineSettings;

.field public mScanManager:Lorg/antivirus/core/scanners/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/antivirus/core/b/a;Ljava/util/List;Ljava/util/ArrayList;Z)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/antivirus/core/Engine;->c:Lorg/antivirus/core/b/a;

    sput-object p4, Lorg/antivirus/core/c/b;->b:Ljava/util/ArrayList;

    iput-object p2, p0, Lorg/antivirus/core/Engine;->c:Lorg/antivirus/core/b/a;

    new-instance v0, Lorg/antivirus/core/EngineSettings;

    invoke-direct {v0, p1}, Lorg/antivirus/core/EngineSettings;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/antivirus/core/Engine;->mEngineSettings:Lorg/antivirus/core/EngineSettings;

    iget-object v0, p0, Lorg/antivirus/core/Engine;->mEngineSettings:Lorg/antivirus/core/EngineSettings;

    invoke-virtual {v0, p1}, Lorg/antivirus/core/EngineSettings;->setDefaultValuesIfNeeded(Landroid/content/Context;)V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CM"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/antivirus/core/Engine;->a:Landroid/os/HandlerThread;

    iget-object v0, p0, Lorg/antivirus/core/Engine;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lorg/antivirus/core/a/n;

    iget-object v2, p0, Lorg/antivirus/core/Engine;->mEngineSettings:Lorg/antivirus/core/EngineSettings;

    iget-object v3, p0, Lorg/antivirus/core/Engine;->c:Lorg/antivirus/core/b/a;

    iget-object v1, p0, Lorg/antivirus/core/Engine;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    move-object v1, p1

    move-object v5, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/antivirus/core/a/n;-><init>(Landroid/content/Context;Lorg/antivirus/core/EngineSettings;Lorg/antivirus/core/b/a;Landroid/os/Looper;Ljava/util/List;Z)V

    iput-object v0, p0, Lorg/antivirus/core/Engine;->b:Lorg/antivirus/core/a/n;

    new-instance v0, Lorg/antivirus/core/scanners/a;

    iget-object v1, p0, Lorg/antivirus/core/Engine;->b:Lorg/antivirus/core/a/n;

    iget-object v2, p0, Lorg/antivirus/core/Engine;->mEngineSettings:Lorg/antivirus/core/EngineSettings;

    invoke-direct {v0, p1, v1, v2}, Lorg/antivirus/core/scanners/a;-><init>(Landroid/content/Context;Landroid/os/Handler;Lorg/antivirus/core/EngineSettings;)V

    iput-object v0, p0, Lorg/antivirus/core/Engine;->mScanManager:Lorg/antivirus/core/scanners/a;

    return-void
.end method


# virtual methods
.method public enable()V
    .locals 1

    iget-object v0, p0, Lorg/antivirus/core/Engine;->b:Lorg/antivirus/core/a/n;

    invoke-virtual {v0}, Lorg/antivirus/core/a/n;->b()V

    return-void
.end method

.method public getScanResults(Lorg/antivirus/core/scanners/c;)Lorg/antivirus/core/scanners/g;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/core/Engine;->mScanManager:Lorg/antivirus/core/scanners/a;

    invoke-virtual {v0, p1}, Lorg/antivirus/core/scanners/a;->b(Lorg/antivirus/core/scanners/c;)Lorg/antivirus/core/scanners/g;

    move-result-object v0

    return-object v0
.end method

.method public sendCommMessage(ILandroid/os/Bundle;)V
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    if-eqz p2, :cond_0

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lorg/antivirus/core/Engine;->b:Lorg/antivirus/core/a/n;

    invoke-virtual {v0, v1}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    iget-object v1, p0, Lorg/antivirus/core/Engine;->b:Lorg/antivirus/core/a/n;

    invoke-virtual {v1, v0}, Lorg/antivirus/core/a/n;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setAvgFeatures(Lorg/antivirus/core/b/a;)V
    .locals 2

    iput-object p1, p0, Lorg/antivirus/core/Engine;->c:Lorg/antivirus/core/b/a;

    iget-object v0, p0, Lorg/antivirus/core/Engine;->b:Lorg/antivirus/core/a/n;

    iget-object v1, p0, Lorg/antivirus/core/Engine;->c:Lorg/antivirus/core/b/a;

    invoke-virtual {v0, v1}, Lorg/antivirus/core/a/n;->a(Lorg/antivirus/core/b/a;)V

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lorg/antivirus/core/Engine;->a:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/core/Engine;->a:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/antivirus/core/Engine;->a:Landroid/os/HandlerThread;

    :cond_0
    iget-object v0, p0, Lorg/antivirus/core/Engine;->mScanManager:Lorg/antivirus/core/scanners/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/antivirus/core/Engine;->mScanManager:Lorg/antivirus/core/scanners/a;

    invoke-virtual {v0}, Lorg/antivirus/core/scanners/a;->b()V

    :cond_1
    return-void
.end method
