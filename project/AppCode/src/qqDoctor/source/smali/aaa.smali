.class public final Laaa;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Z

.field private synthetic b:Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;

.field private synthetic c:Ldv;

.field private synthetic d:Lzs;


# direct methods
.method public constructor <init>(Lzs;ZLcom/tencent/tmsecure/module/aresengine/CallLogEntity;Ldv;)V
    .locals 1

    iput-object p1, p0, Laaa;->d:Lzs;

    const/4 v0, 0x1

    iput-boolean v0, p0, Laaa;->a:Z

    iput-object p3, p0, Laaa;->b:Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;

    iput-object p4, p0, Laaa;->c:Ldv;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Laaa;->d:Lzs;

    iget-object v1, v0, Lzs;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v2, p0, Laaa;->a:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Laaa;->d:Lzs;

    iget-object v3, p0, Laaa;->b:Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;

    invoke-virtual {v2, v3}, Lzs;->a(Lcom/tencent/tmsecure/module/aresengine/CallLogEntity;)LQQPIM/TelReport;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Laaa;->d:Lzs;

    iget-object v2, v2, Lzs;->c:Lhk;

    iget-object v3, v2, Lhk;->a:Lhs;

    new-instance v4, Lhl;

    invoke-direct {v4, v2, v0}, Lhl;-><init>(Lhk;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Lhs;->a(Ldv;)Z

    :cond_0
    iget-object v0, p0, Laaa;->d:Lzs;

    iget-object v0, v0, Lzs;->c:Lhk;

    invoke-virtual {v0}, Lhk;->a()Ljava/util/ArrayList;

    move-result-object v2

    const-class v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-virtual {v0, v2}, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->reportTel(Ljava/util/List;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v2, p0, Laaa;->d:Lzs;

    iget-object v2, v2, Lzs;->c:Lhk;

    iget-object v3, v2, Lhk;->a:Lhs;

    const-string v4, "callreport"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lhs;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v2, v2, Lhk;->a:Lhs;

    invoke-virtual {v2}, Lhs;->b()V

    :cond_1
    iget-object v2, p0, Laaa;->c:Ldv;

    if-eqz v2, :cond_2

    iget-object v2, p0, Laaa;->c:Ldv;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ldv;->a(Ljava/lang/Object;)V

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
