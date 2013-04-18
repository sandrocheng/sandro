.class public Lcom/keniu/security/service/RubbishSMSScanServiceCtrl;
.super Landroid/app/Service;
.source "RubbishSMSScanServiceCtrl.java"


# instance fields
.field a:Landroid/os/Binder;

.field private b:Lcom/keniu/security/service/f;

.field private c:Lcom/keniu/security/service/h;

.field private d:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 32
    iput-object v1, p0, Lcom/keniu/security/service/RubbishSMSScanServiceCtrl;->b:Lcom/keniu/security/service/f;

    .line 34
    new-instance v0, Lcom/keniu/security/service/g;

    invoke-direct {v0, p0}, Lcom/keniu/security/service/g;-><init>(Lcom/keniu/security/service/RubbishSMSScanServiceCtrl;)V

    iput-object v0, p0, Lcom/keniu/security/service/RubbishSMSScanServiceCtrl;->a:Landroid/os/Binder;

    .line 57
    iput-object v1, p0, Lcom/keniu/security/service/RubbishSMSScanServiceCtrl;->c:Lcom/keniu/security/service/h;

    .line 87
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/service/RubbishSMSScanServiceCtrl;->d:Landroid/os/Handler;

    .line 124
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/keniu/security/service/RubbishSMSScanServiceCtrl;->c:Lcom/keniu/security/service/h;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/keniu/security/service/h;

    invoke-direct {v0, p0}, Lcom/keniu/security/service/h;-><init>(Lcom/keniu/security/service/RubbishSMSScanServiceCtrl;)V

    iput-object v0, p0, Lcom/keniu/security/service/RubbishSMSScanServiceCtrl;->c:Lcom/keniu/security/service/h;

    .line 62
    iget-object v0, p0, Lcom/keniu/security/service/RubbishSMSScanServiceCtrl;->c:Lcom/keniu/security/service/h;

    invoke-virtual {v0}, Lcom/keniu/security/service/h;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :cond_0
    monitor-exit p0

    return-void

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 83
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/keniu/security/service/RubbishSMSScanServiceCtrl;->b:Lcom/keniu/security/service/f;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/keniu/security/service/RubbishSMSScanServiceCtrl;->b:Lcom/keniu/security/service/f;

    invoke-interface {v0, p1, p2}, Lcom/keniu/security/service/f;->a(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :cond_0
    monitor-exit p0

    return-void

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/keniu/security/service/f;)V
    .locals 1
    .parameter

    .prologue
    .line 48
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/keniu/security/service/RubbishSMSScanServiceCtrl;->b:Lcom/keniu/security/service/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    monitor-exit p0

    return-void

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(ZI)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 89
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/keniu/security/service/RubbishSMSScanServiceCtrl;->b:Lcom/keniu/security/service/f;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/keniu/security/service/RubbishSMSScanServiceCtrl;->b:Lcom/keniu/security/service/f;

    invoke-interface {v0, p2}, Lcom/keniu/security/service/f;->a(I)V

    .line 114
    :goto_0
    if-eqz p1, :cond_1

    .line 115
    const-string v0, "5"

    invoke-static {p0, v0}, Lcom/jxphone/mosecurity/a/a;->g(Landroid/content/Context;Ljava/lang/String;)V

    .line 119
    :goto_1
    invoke-static {p0, p2}, Lcom/jxphone/mosecurity/a/a;->b(Landroid/content/Context;I)V

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/service/RubbishSMSScanServiceCtrl;->c:Lcom/keniu/security/service/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    monitor-exit p0

    return-void

    .line 93
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/keniu/security/service/RubbishSMSScanServiceCtrl;->d:Landroid/os/Handler;

    new-instance v1, Lcom/keniu/security/service/e;

    invoke-direct {v1, p0, p2}, Lcom/keniu/security/service/e;-><init>(Lcom/keniu/security/service/RubbishSMSScanServiceCtrl;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 117
    :cond_1
    :try_start_2
    const-string v0, "4"

    invoke-static {p0, v0}, Lcom/jxphone/mosecurity/a/a;->g(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public final declared-synchronized b()V
    .locals 1

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/keniu/security/service/RubbishSMSScanServiceCtrl;->c:Lcom/keniu/security/service/h;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/keniu/security/service/RubbishSMSScanServiceCtrl;->c:Lcom/keniu/security/service/h;

    invoke-virtual {v0}, Lcom/keniu/security/service/h;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :cond_0
    monitor-exit p0

    return-void

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Lcom/keniu/security/service/f;)V
    .locals 1
    .parameter

    .prologue
    .line 52
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/keniu/security/service/RubbishSMSScanServiceCtrl;->b:Lcom/keniu/security/service/f;

    if-ne p1, v0, :cond_0

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/keniu/security/service/RubbishSMSScanServiceCtrl;->b:Lcom/keniu/security/service/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :cond_0
    monitor-exit p0

    return-void

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()Z
    .locals 1

    .prologue
    .line 73
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/keniu/security/service/RubbishSMSScanServiceCtrl;->c:Lcom/keniu/security/service/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()V
    .locals 1

    .prologue
    .line 77
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/keniu/security/service/RubbishSMSScanServiceCtrl;->b:Lcom/keniu/security/service/f;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/keniu/security/service/RubbishSMSScanServiceCtrl;->b:Lcom/keniu/security/service/f;

    invoke-interface {v0}, Lcom/keniu/security/service/f;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :cond_0
    monitor-exit p0

    return-void

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/keniu/security/service/RubbishSMSScanServiceCtrl;->a:Landroid/os/Binder;

    return-object v0
.end method
