.class public final Lzy;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic a:Z

.field private synthetic b:Ljava/util/List;

.field private synthetic c:Z

.field private synthetic d:Ldv;

.field private synthetic e:Lzs;


# direct methods
.method public constructor <init>(Lzs;ZLjava/util/List;ZLdv;)V
    .locals 1

    iput-object p1, p0, Lzy;->e:Lzs;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzy;->a:Z

    iput-object p3, p0, Lzy;->b:Ljava/util/List;

    iput-boolean p4, p0, Lzy;->c:Z

    iput-object p5, p0, Lzy;->d:Ldv;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lzy;->e:Lzs;

    iget-object v1, v0, Lzs;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lzy;->e:Lzs;

    iget-object v0, v0, Lzs;->d:Lho;

    invoke-virtual {v0}, Lho;->dc()I

    move-result v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v0, p0, Lzy;->a:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lzy;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmk;

    if-eqz v0, :cond_0

    iget-object v5, p0, Lzy;->e:Lzs;

    iget-boolean v6, p0, Lzy;->c:Z

    const/4 v7, 0x1

    invoke-virtual {v5, v0, v6, v7}, Lzs;->a(Lmk;ZZ)Lmm;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v5, v0, Lmm;->a:I

    if-lez v5, :cond_1

    iget-object v5, p0, Lzy;->e:Lzs;

    iget-object v5, v5, Lzs;->b:Ljr;

    invoke-virtual {v5, v0}, Ljr;->b(Lmm;)V

    :goto_1
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_1
    iget-object v5, p0, Lzy;->e:Lzs;

    iget-object v5, v5, Lzs;->b:Ljr;

    invoke-virtual {v5, v0}, Ljr;->a(Lmm;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lzy;->e:Lzs;

    iget-object v0, v0, Lzs;->b:Ljr;

    iget-object v4, p0, Lzy;->e:Lzs;

    iget-object v4, v4, Lzs;->d:Lho;

    invoke-virtual {v4}, Lho;->db()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v2}, Ljr;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v0, p0, Lzy;->e:Lzs;

    invoke-static {v2}, Lzs;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v3

    const-class v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-virtual {v0, v3}, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->reportSms(Ljava/util/List;)I

    move-result v0

    if-nez v0, :cond_3

    iget-object v3, p0, Lzy;->e:Lzs;

    iget-object v3, v3, Lzs;->b:Ljr;

    invoke-virtual {v3, v2}, Ljr;->a(Ljava/util/List;)V

    :cond_3
    iget-object v2, p0, Lzy;->d:Ldv;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lzy;->d:Ldv;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ldv;->a(Ljava/lang/Object;)V

    :cond_4
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
