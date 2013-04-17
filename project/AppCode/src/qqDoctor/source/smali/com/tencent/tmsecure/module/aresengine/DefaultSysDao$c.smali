.class public final Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public a:[B

.field public b:[Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$d;

.field public c:Landroid/database/ContentObserver;

.field public d:Z

.field public e:I

.field public f:Ljava/lang/Runnable;

.field public final synthetic g:Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;


# direct methods
.method public constructor <init>(Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;)V
    .locals 4

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$c;->g:Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$c;->a:[B

    new-array v0, v1, [Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$d;

    iput-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$c;->b:[Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$d;

    iput-boolean v1, p0, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$c;->d:Z

    iput v1, p0, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$c;->e:I

    new-instance v0, Lbud;

    invoke-direct {v0, p0}, Lbud;-><init>(Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$c;)V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$c;->f:Ljava/lang/Runnable;

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lbue;

    invoke-direct {v1, p0, v0}, Lbue;-><init>(Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$c;Ljava/util/Timer;)V

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method


# virtual methods
.method final a(I)I
    .locals 6

    iget-object v4, p0, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$c;->a:[B

    monitor-enter v4

    :try_start_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$c;->b:[Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$d;

    array-length v0, v0

    add-int/lit8 v2, v0, -0x1

    const/4 v0, 0x0

    const/4 v1, -0x1

    move v3, v2

    move v2, v0

    :goto_0
    if-ge v3, v2, :cond_1

    move v0, v1

    :cond_0
    monitor-exit v4

    return v0

    :cond_1
    add-int v0, v3, v2

    div-int/lit8 v0, v0, 0x2

    iget-object v5, p0, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$c;->b:[Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$d;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$d;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p1, v5, :cond_0

    if-le p1, v5, :cond_2

    add-int/lit8 v0, v0, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    move v3, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method public final a()Z
    .locals 2

    iget-object v1, p0, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$c;->a:[B

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$c;->d:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected final finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$c;->c:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$c;->g:Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;

    invoke-static {v0}, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;->a(Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/tmsecure/module/aresengine/DefaultSysDao$c;->c:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method
