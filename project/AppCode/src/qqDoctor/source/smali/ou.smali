.class final Lou;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/module/aresengine/ISpecialSmsChecker;


# instance fields
.field private synthetic a:Lop;


# direct methods
.method constructor <init>(Lop;)V
    .locals 0

    iput-object p1, p0, Lou;->a:Lop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isBlocked(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final isMatch(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)Z
    .locals 3

    iget-object v0, p0, Lou;->a:Lop;

    invoke-static {v0}, Lop;->m(Lop;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lou;->a:Lop;

    invoke-static {v0}, Lop;->m(Lop;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llt;

    invoke-interface {v0, p1}, Llt;->a(Lcom/tencent/tmsecure/module/aresengine/SmsEntity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
