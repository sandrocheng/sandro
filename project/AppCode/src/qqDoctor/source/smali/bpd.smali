.class final Lbpd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lbot;


# direct methods
.method constructor <init>(Lbot;)V
    .locals 0

    iput-object p1, p0, Lbpd;->a:Lbot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    iget-object v13, p0, Lbpd;->a:Lbot;

    sget-object v1, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->CONTACT:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    invoke-static {}, Lcw;->d()Lcw;

    move-result-object v2

    invoke-virtual {v2}, Lcw;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcw;->d()Lcw;

    move-result-object v2

    invoke-virtual {v2}, Lcw;->f()Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    :goto_0
    if-eqz v4, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    :goto_1
    invoke-static {v13, v3}, Lbot;->a(Lbot;Lco;)Lco;

    iget-object v0, p0, Lbpd;->a:Lbot;

    invoke-static {v0}, Lbot;->x(Lbot;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_1
    invoke-static {}, Lbl;->f()Lca;

    move-result-object v2

    sget-object v4, Lca$a;->b:Lca$a;

    invoke-interface {v2, v4}, Lca;->a(Lca$a;)Ljava/lang/String;

    move-result-object v2

    move-object v4, v2

    goto :goto_0

    :cond_2
    new-instance v12, Lco;

    invoke-direct {v12}, Lco;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v6, "mounted"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v0

    :goto_2
    if-eqz v2, :cond_4

    :goto_3
    invoke-static {v1, v0, v4}, Lde;->a(Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    new-instance v6, Lcom/tencent/tccsync/TccRemoteSyncMapPreCount;

    invoke-direct {v6}, Lcom/tencent/tccsync/TccRemoteSyncMapPreCount;-><init>()V

    new-instance v9, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v9}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v10, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v10}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v11, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v11}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sget-object v0, Lde;->b:Landroid/content/Context;

    sget-object v2, Lcom/tencent/tccsync/RemoteSync$SyncType;->SYNC_NONE:Lcom/tencent/tccsync/RemoteSync$SyncType;

    move-object v4, v3

    invoke-static/range {v0 .. v5}, Lcu;->a(Landroid/content/Context;Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;Lcom/tencent/tccsync/RemoteSync$SyncType;Lcb;[Ljava/lang/String;Z)Lcom/tencent/tccsync/ITccSyncDbAdapter;

    move-result-object v7

    invoke-virtual/range {v6 .. v11}, Lcom/tencent/tccsync/TccRemoteSyncMapPreCount;->getLocalChangeCount(Lcom/tencent/tccsync/ITccSyncDbAdapter;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)I

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "StatisticsUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "syncCollectLocalDataChange(), map fail: Fail to collect local changed num. adapterType="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move v2, v5

    goto :goto_2

    :cond_4
    move v0, v5

    goto :goto_3

    :cond_5
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iput v0, v12, Lco;->b:I

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iput v0, v12, Lco;->c:I

    invoke-virtual {v10}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iput v0, v12, Lco;->d:I

    iput v5, v12, Lco;->f:I

    iput v5, v12, Lco;->e:I

    iput-object v1, v12, Lco;->a:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    invoke-static {}, Lco;->b()V

    move-object v3, v12

    goto/16 :goto_1
.end method
