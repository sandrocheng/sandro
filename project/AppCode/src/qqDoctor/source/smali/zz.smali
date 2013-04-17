.class public final Lzz;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Z

.field private synthetic b:Ljava/util/List;

.field private synthetic c:Ldv;

.field private synthetic d:Lzs;


# direct methods
.method public constructor <init>(Lzs;ZLjava/util/List;Ldv;)V
    .locals 1

    iput-object p1, p0, Lzz;->d:Lzs;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzz;->a:Z

    iput-object p3, p0, Lzz;->b:Ljava/util/List;

    iput-object p4, p0, Lzz;->c:Ldv;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lzz;->d:Lzs;

    iget-object v2, v0, Lzs;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v0, p0, Lzz;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lzz;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lzz;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    iget-object v5, p0, Lzz;->d:Lzs;

    iget-object v0, p0, Lzz;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;

    invoke-virtual {v5, v0}, Lzs;->a(Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;)LQQPIM/TelReport;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lzz;->d:Lzs;

    iget-object v0, v0, Lzs;->c:Lhk;

    iget-object v1, v0, Lhk;->a:Lhs;

    new-instance v4, Lhl;

    invoke-direct {v4, v0, v3}, Lhl;-><init>(Lhk;Ljava/util/List;)V

    invoke-virtual {v1, v4}, Lhs;->a(Ldv;)Z

    :cond_1
    iget-object v0, p0, Lzz;->d:Lzs;

    iget-object v0, v0, Lzs;->c:Lhk;

    invoke-virtual {v0}, Lhk;->a()Ljava/util/ArrayList;

    move-result-object v1

    const-class v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->reportTel(Ljava/util/List;)I

    move-result v0

    if-nez v0, :cond_2

    iget-object v1, p0, Lzz;->d:Lzs;

    iget-object v1, v1, Lzs;->c:Lhk;

    iget-object v3, v1, Lhk;->a:Lhs;

    const-string v4, "callreport"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lhs;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v1, v1, Lhk;->a:Lhs;

    invoke-virtual {v1}, Lhs;->b()V

    :cond_2
    iget-object v1, p0, Lzz;->c:Ldv;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lzz;->c:Ldv;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ldv;->a(Ljava/lang/Object;)V

    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method
