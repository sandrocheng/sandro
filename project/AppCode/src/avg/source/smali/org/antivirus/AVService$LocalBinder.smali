.class public Lorg/antivirus/AVService$LocalBinder;
.super Landroid/os/Binder;


# instance fields
.field final synthetic a:Lorg/antivirus/AVService;


# direct methods
.method public constructor <init>(Lorg/antivirus/AVService;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/AVService$LocalBinder;->a:Lorg/antivirus/AVService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getFeatures()Lorg/antivirus/core/b/a;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/AVService$LocalBinder;->a:Lorg/antivirus/AVService;

    invoke-static {v0}, Lorg/antivirus/AVService;->a(Lorg/antivirus/AVService;)Lorg/antivirus/core/b/e;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/antivirus/AVService$LocalBinder;->a:Lorg/antivirus/AVService;

    invoke-static {v0}, Lorg/antivirus/AVService;->b(Lorg/antivirus/AVService;)Lorg/antivirus/core/b/e;

    move-result-object v0

    iget-object v0, v0, Lorg/antivirus/core/b/e;->a:Lorg/antivirus/core/b/a;

    goto :goto_0
.end method

.method public getScanResults(Lorg/antivirus/core/scanners/c;)Lorg/antivirus/core/scanners/g;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/AVService$LocalBinder;->a:Lorg/antivirus/AVService;

    invoke-static {v0}, Lorg/antivirus/AVService;->c(Lorg/antivirus/AVService;)Lorg/antivirus/core/Engine;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/antivirus/AVService$LocalBinder;->a:Lorg/antivirus/AVService;

    invoke-static {v0}, Lorg/antivirus/AVService;->d(Lorg/antivirus/AVService;)Lorg/antivirus/core/Engine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/antivirus/core/Engine;->getScanResults(Lorg/antivirus/core/scanners/c;)Lorg/antivirus/core/scanners/g;

    move-result-object v0

    goto :goto_0
.end method

.method public setHandler(Landroid/os/Messenger;Lorg/antivirus/core/scanners/m;Lorg/antivirus/core/scanners/c;)I
    .locals 1

    iget-object v0, p0, Lorg/antivirus/AVService$LocalBinder;->a:Lorg/antivirus/AVService;

    invoke-static {v0}, Lorg/antivirus/AVService;->e(Lorg/antivirus/AVService;)Lorg/antivirus/core/Engine;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/antivirus/AVService$LocalBinder;->a:Lorg/antivirus/AVService;

    invoke-static {v0}, Lorg/antivirus/AVService;->f(Lorg/antivirus/AVService;)Lorg/antivirus/core/Engine;

    move-result-object v0

    iget-object v0, v0, Lorg/antivirus/core/Engine;->mScanManager:Lorg/antivirus/core/scanners/a;

    invoke-virtual {v0, p1, p2, p3}, Lorg/antivirus/core/scanners/a;->a(Landroid/os/Messenger;Lorg/antivirus/core/scanners/m;Lorg/antivirus/core/scanners/c;)I

    move-result v0

    goto :goto_0
.end method

.method public setVersionUpdateUIHandler(Lorg/antivirus/a/i;)Z
    .locals 2

    iget-object v0, p0, Lorg/antivirus/AVService$LocalBinder;->a:Lorg/antivirus/AVService;

    invoke-static {v0}, Lorg/antivirus/AVService;->g(Lorg/antivirus/AVService;)Lorg/antivirus/a/a;

    move-result-object v0

    iget-object v1, v0, Lorg/antivirus/a/a;->a:Lorg/antivirus/a/h;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lorg/antivirus/a/a;->a:Lorg/antivirus/a/h;

    invoke-virtual {v0, p1}, Lorg/antivirus/a/h;->a(Lorg/antivirus/a/i;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
