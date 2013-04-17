.class public final Lzv;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Z

.field private synthetic b:Lmk;

.field private synthetic c:Ldv;

.field private synthetic d:Lzs;


# direct methods
.method public constructor <init>(Lzs;ZLmk;Ldv;)V
    .locals 1

    iput-object p1, p0, Lzv;->d:Lzs;

    iput-boolean p2, p0, Lzv;->a:Z

    iput-object p3, p0, Lzv;->b:Lmk;

    const/4 v0, 0x0

    iput-object v0, p0, Lzv;->c:Ldv;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lzv;->d:Lzs;

    iget-object v1, v0, Lzs;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lzv;->d:Lzs;

    iget-object v0, v0, Lzs;->d:Lho;

    invoke-virtual {v0}, Lho;->dc()I

    move-result v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v3, p0, Lzv;->a:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lzv;->b:Lmk;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lzv;->d:Lzs;

    iget-object v4, p0, Lzv;->b:Lmk;

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Lzs;->a(Lmk;ZZ)Lmm;

    move-result-object v3

    if-eqz v3, :cond_0

    iget v4, v3, Lmm;->a:I

    if-lez v4, :cond_3

    iget-object v4, p0, Lzv;->d:Lzs;

    iget-object v4, v4, Lzs;->b:Ljr;

    invoke-virtual {v4, v3}, Ljr;->b(Lmm;)V

    :goto_0
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v3, p0, Lzv;->d:Lzs;

    iget-object v3, v3, Lzs;->b:Ljr;

    iget-object v4, p0, Lzv;->d:Lzs;

    iget-object v4, v4, Lzs;->d:Lho;

    invoke-virtual {v4}, Lho;->db()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v2, v4, v0}, Ljr;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v0, p0, Lzv;->d:Lzs;

    invoke-static {v2}, Lzs;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v3

    const-class v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-virtual {v0, v3}, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->reportSms(Ljava/util/List;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v3, p0, Lzv;->d:Lzs;

    iget-object v3, v3, Lzs;->b:Ljr;

    invoke-virtual {v3, v2}, Ljr;->a(Ljava/util/List;)V

    :cond_1
    iget-object v2, p0, Lzv;->c:Ldv;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lzv;->c:Ldv;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ldv;->a(Ljava/lang/Object;)V

    :cond_2
    monitor-exit v1

    return-void

    :cond_3
    iget-object v4, p0, Lzv;->d:Lzs;

    iget-object v4, v4, Lzs;->b:Ljr;

    invoke-virtual {v4, v3}, Ljr;->a(Lmm;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
