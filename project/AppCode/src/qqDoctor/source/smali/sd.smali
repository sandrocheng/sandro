.class public final Lsd;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lrx;


# direct methods
.method public constructor <init>(Lrx;)V
    .locals 0

    iput-object p1, p0, Lsd;->a:Lrx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lsd;->a:Lrx;

    iget-object v0, v0, Lrx;->a:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Lcw;->d()Lcw;

    move-result-object v3

    invoke-virtual {v3}, Lcw;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lbd;->a(Landroid/content/Context;JLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lsd;->a:Lrx;

    iget-object v8, v0, Lrx;->a:Landroid/content/Context;

    sput v7, Ldi;->b:I

    invoke-static {}, Lcw;->d()Lcw;

    move-result-object v0

    invoke-virtual {v0}, Lcw;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcw;->d()Lcw;

    move-result-object v0

    invoke-virtual {v0}, Lcw;->f()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    :goto_1
    sget v0, Ldi;->b:I

    if-nez v7, :cond_8

    invoke-static {}, Lov;->a()Lov;

    move-result-object v0

    iget-object v1, p0, Lsd;->a:Lrx;

    iget-object v1, v1, Lrx;->a:Landroid/content/Context;

    iget-object v2, p0, Lsd;->a:Lrx;

    iget-object v2, v2, Lrx;->a:Landroid/content/Context;

    const v3, 0x7f0b05e0

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lov;->a(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->CONTACT:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    invoke-virtual {v0}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->toInt()I

    move-result v0

    sget-object v1, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->CONTACT:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    invoke-virtual {v1}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->toInt()I

    move-result v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lbd;->a(IIJ)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    invoke-static {}, Lbl;->f()Lca;

    move-result-object v0

    sget-object v1, Lca$a;->b:Lca$a;

    invoke-interface {v0, v1}, Lca;->a(Lca$a;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mounted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v6

    :goto_3
    if-eqz v0, :cond_5

    move v0, v6

    :goto_4
    invoke-static {}, Lcw;->d()Lcw;

    move-result-object v2

    invoke-virtual {v2}, Lcw;->b()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {v0}, Lde;->c(Z)Ljava/lang/String;

    move-result-object v2

    :goto_5
    if-eqz v2, :cond_0

    new-instance v0, Lcom/tencent/tccsync/TccRemoteSyncMapPreCount;

    invoke-direct {v0}, Lcom/tencent/tccsync/TccRemoteSyncMapPreCount;-><init>()V

    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v5, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sget-object v1, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->CONTACT:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    sget-object v9, Lcom/tencent/tccsync/RemoteSync$SyncType;->SYNC_NONE:Lcom/tencent/tccsync/RemoteSync$SyncType;

    const/4 v10, 0x0

    invoke-static {v8, v1, v9, v10}, Lcu;->a(Landroid/content/Context;Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;Lcom/tencent/tccsync/RemoteSync$SyncType;Lcb;)Lcom/tencent/tccsync/ITccSyncDbAdapter;

    move-result-object v1

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/tccsync/TccRemoteSyncMapPreCount;->getLocalChangeCount(Lcom/tencent/tccsync/ITccSyncDbAdapter;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;)I

    move-result v0

    if-eqz v0, :cond_7

    const-string v1, "StatisticsUtil"

    const-string v2, "syncCollectLocalContactChange(), map fail: Fail to collect local changed contact num"

    invoke-static {v1, v2}, Ldk;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    if-nez v0, :cond_0

    move v7, v6

    goto/16 :goto_1

    :cond_4
    move v0, v7

    goto :goto_3

    :cond_5
    move v0, v7

    goto :goto_4

    :cond_6
    invoke-static {v1, v0}, Lde;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_7
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    add-int/2addr v1, v2

    sput v1, Ldi;->b:I

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    goto :goto_6

    :cond_8
    if-lez v0, :cond_1

    invoke-static {}, Lov;->a()Lov;

    move-result-object v0

    iget-object v1, p0, Lsd;->a:Lrx;

    iget-object v1, v1, Lrx;->a:Landroid/content/Context;

    iget-object v2, p0, Lsd;->a:Lrx;

    iget-object v2, v2, Lrx;->a:Landroid/content/Context;

    const v3, 0x7f0b05e1

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lov;->a(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->CONTACT:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    invoke-virtual {v0}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->toInt()I

    move-result v0

    sget-object v1, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->CONTACT:Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;

    invoke-virtual {v1}, Lcom/tencent/tccsync/ITccSyncDbAdapter$DbAdapterType;->toInt()I

    move-result v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lbd;->a(IIJ)V

    goto/16 :goto_2
.end method
