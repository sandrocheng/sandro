.class public final Lcom/tencent/qqpimsecure/service/TMSLiteService$d;
.super Lbzy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qqpimsecure/service/TMSLiteService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "d"
.end annotation


# instance fields
.field private a:Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

.field private b:Lbzu;

.field private c:[B

.field private d:Lcom/tencent/tmsecure/module/qscanner/QScanListener;

.field private synthetic e:Lcom/tencent/qqpimsecure/service/TMSLiteService;


# direct methods
.method constructor <init>(Lcom/tencent/qqpimsecure/service/TMSLiteService;)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService$d;->e:Lcom/tencent/qqpimsecure/service/TMSLiteService;

    invoke-direct {p0}, Lbzy;-><init>()V

    const-class v0, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService$d;->a:Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService$d;->c:[B

    new-instance v0, Labo;

    invoke-direct {v0, p0}, Labo;-><init>(Lcom/tencent/qqpimsecure/service/TMSLiteService$d;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService$d;->d:Lcom/tencent/tmsecure/module/qscanner/QScanListener;

    return-void
.end method

.method public static synthetic a(Lcom/tencent/qqpimsecure/service/TMSLiteService$d;)Lbzu;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService$d;->b:Lbzu;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService$d;->e:Lcom/tencent/qqpimsecure/service/TMSLiteService;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/service/TMSLiteService;->a(Lcom/tencent/qqpimsecure/service/TMSLiteService;)Lcom/tencent/qqpimsecure/service/TMSLiteService$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/service/TMSLiteService$b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService$d;->a:Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->pauseScan()V

    goto :goto_0
.end method

.method public final a(Lbzu;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService$d;->e:Lcom/tencent/qqpimsecure/service/TMSLiteService;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/service/TMSLiteService;->a(Lcom/tencent/qqpimsecure/service/TMSLiteService;)Lcom/tencent/qqpimsecure/service/TMSLiteService$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/service/TMSLiteService$b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService$d;->c:[B

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService$d;->b:Lbzu;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService$d;->a:Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService$d;->d:Lcom/tencent/tmsecure/module/qscanner/QScanListener;

    invoke-virtual {v0, v2, p2}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->scanInstalledPackages(Lcom/tencent/tmsecure/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Ljava/util/List;Lbzu;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lbzu;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService$d;->e:Lcom/tencent/qqpimsecure/service/TMSLiteService;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/service/TMSLiteService;->a(Lcom/tencent/qqpimsecure/service/TMSLiteService;)Lcom/tencent/qqpimsecure/service/TMSLiteService$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/service/TMSLiteService$b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService$d;->c:[B

    monitor-enter v1

    :try_start_0
    iput-object p2, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService$d;->b:Lbzu;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService$d;->a:Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService$d;->d:Lcom/tencent/tmsecure/module/qscanner/QScanListener;

    invoke-virtual {v0, p1, v2, p3}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->scanPackages(Ljava/util/List;Lcom/tencent/tmsecure/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(I)Z
    .locals 1

    invoke-super {p0, p1}, Lbzy;->a(I)Z

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService$d;->e:Lcom/tencent/qqpimsecure/service/TMSLiteService;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/service/TMSLiteService;->a(Lcom/tencent/qqpimsecure/service/TMSLiteService;)Lcom/tencent/qqpimsecure/service/TMSLiteService$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/service/TMSLiteService$b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService$d;->a:Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->continueScan()V

    goto :goto_0
.end method

.method public final b(Lbzu;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService$d;->e:Lcom/tencent/qqpimsecure/service/TMSLiteService;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/service/TMSLiteService;->a(Lcom/tencent/qqpimsecure/service/TMSLiteService;)Lcom/tencent/qqpimsecure/service/TMSLiteService$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/service/TMSLiteService$b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService$d;->c:[B

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService$d;->b:Lbzu;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService$d;->a:Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService$d;->d:Lcom/tencent/tmsecure/module/qscanner/QScanListener;

    invoke-virtual {v0, v2, p2}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->scanSdcardApks(Lcom/tencent/tmsecure/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b(Ljava/util/List;Lbzu;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lbzu;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService$d;->e:Lcom/tencent/qqpimsecure/service/TMSLiteService;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/service/TMSLiteService;->a(Lcom/tencent/qqpimsecure/service/TMSLiteService;)Lcom/tencent/qqpimsecure/service/TMSLiteService$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/service/TMSLiteService$b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService$d;->c:[B

    monitor-enter v1

    :try_start_0
    iput-object p2, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService$d;->b:Lbzu;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService$d;->a:Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService$d;->d:Lcom/tencent/tmsecure/module/qscanner/QScanListener;

    invoke-virtual {v0, p1, v2, p3}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->scanApks(Ljava/util/List;Lcom/tencent/tmsecure/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final c()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService$d;->e:Lcom/tencent/qqpimsecure/service/TMSLiteService;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/service/TMSLiteService;->a(Lcom/tencent/qqpimsecure/service/TMSLiteService;)Lcom/tencent/qqpimsecure/service/TMSLiteService$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/service/TMSLiteService$b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService$d;->a:Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->cancelScan()V

    goto :goto_0
.end method

.method public final c(Lbzu;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService$d;->e:Lcom/tencent/qqpimsecure/service/TMSLiteService;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/service/TMSLiteService;->a(Lcom/tencent/qqpimsecure/service/TMSLiteService;)Lcom/tencent/qqpimsecure/service/TMSLiteService$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/service/TMSLiteService$b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService$d;->c:[B

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService$d;->b:Lbzu;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService$d;->a:Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService$d;->d:Lcom/tencent/tmsecure/module/qscanner/QScanListener;

    invoke-virtual {v0, v2, p2}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->scanGlobal(Lcom/tencent/tmsecure/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final d()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService$d;->e:Lcom/tencent/qqpimsecure/service/TMSLiteService;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/service/TMSLiteService;->a(Lcom/tencent/qqpimsecure/service/TMSLiteService;)Lcom/tencent/qqpimsecure/service/TMSLiteService$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/service/TMSLiteService$b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/TMSLiteService$d;->a:Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->freeScanner()V

    goto :goto_0
.end method
