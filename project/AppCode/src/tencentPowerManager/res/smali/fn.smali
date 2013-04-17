.class public final Lfn;
.super Lcom/tencent/tmsecure/common/BaseManager;


# instance fields
.field private a:Lfo;

.field private b:Lfm;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Lfk;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lfn;->a:Lfo;

    invoke-virtual {v0}, Lfo;->a()Lfk;

    move-result-object v0

    invoke-static {}, Lfn;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lfn;->b:Lfm;

    if-nez v1, :cond_0

    new-instance v1, Lfm;

    invoke-direct {v1, v0}, Lfm;-><init>(Lfk;)V

    iput-object v1, p0, Lfn;->b:Lfm;

    :cond_0
    iget-object v0, p0, Lfn;->b:Lfm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lfn;->a:Lfo;

    invoke-virtual {v0}, Lfo;->a()Lfk;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onCreate(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lfo;

    invoke-direct {v0}, Lfo;-><init>()V

    iput-object v0, p0, Lfn;->a:Lfo;

    iget-object v0, p0, Lfn;->a:Lfo;

    invoke-virtual {v0, p1}, Lfo;->onCreate(Landroid/content/Context;)V

    iget-object v0, p0, Lfn;->a:Lfo;

    invoke-virtual {p0, v0}, Lfn;->setImpl(Lcom/tencent/tmsecure/common/BaseManager;)V

    return-void
.end method
