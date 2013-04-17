.class public Lvh;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvh$b;,
        Lvh$a;
    }
.end annotation


# static fields
.field private static b:Lvh;


# instance fields
.field a:Landroid/os/Handler;

.field private c:Lvh$b;

.field private d:Lcom/tencent/tmsecure/module/optimize/IMemoryHelper;

.field private e:J

.field private f:J

.field private g:Z

.field private h:J

.field private i:Landroid/os/Handler;

.field private j:Ldw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldw",
            "<",
            "Lvh$a;",
            ">;"
        }
    .end annotation
.end field

.field private k:I


# direct methods
.method private constructor <init>()V
    .locals 3

    const-wide/16 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v1, p0, Lvh;->e:J

    iput-wide v1, p0, Lvh;->f:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lvh;->g:Z

    iput-wide v1, p0, Lvh;->h:J

    const/4 v0, 0x0

    iput-object v0, p0, Lvh;->i:Landroid/os/Handler;

    new-instance v0, Ldw;

    invoke-direct {v0}, Ldw;-><init>()V

    iput-object v0, p0, Lvh;->j:Ldw;

    new-instance v0, Lvj;

    invoke-direct {v0, p0}, Lvj;-><init>(Lvh;)V

    iput-object v0, p0, Lvh;->a:Landroid/os/Handler;

    const-class v0, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/optimize/OptimizeManager;->getMemoryHelper()Lcom/tencent/tmsecure/module/optimize/IMemoryHelper;

    move-result-object v0

    iput-object v0, p0, Lvh;->d:Lcom/tencent/tmsecure/module/optimize/IMemoryHelper;

    new-instance v0, Lvi;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lvi;-><init>(Lvh;Landroid/os/Looper;)V

    iput-object v0, p0, Lvh;->i:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lvh;J)J
    .locals 0

    iput-wide p1, p0, Lvh;->f:J

    return-wide p1
.end method

.method public static a()Lvh;
    .locals 2

    const-class v1, Lvh;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lvh;->b:Lvh;

    if-nez v0, :cond_0

    new-instance v0, Lvh;

    invoke-direct {v0}, Lvh;-><init>()V

    sput-object v0, Lvh;->b:Lvh;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lvh;->b:Lvh;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(I)Z
    .locals 1

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->cz()I

    move-result v0

    if-le p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lvh;)Z
    .locals 1

    iget-object v0, p0, Lvh;->j:Ldw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvh;->j:Ldw;

    invoke-virtual {v0}, Ldw;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lvh;J)J
    .locals 0

    iput-wide p1, p0, Lvh;->e:J

    return-wide p1
.end method

.method static synthetic b(Lvh;)Ldw;
    .locals 1

    iget-object v0, p0, Lvh;->j:Ldw;

    return-object v0
.end method

.method static synthetic c(Lvh;)Lcom/tencent/tmsecure/module/optimize/IMemoryHelper;
    .locals 1

    iget-object v0, p0, Lvh;->d:Lcom/tencent/tmsecure/module/optimize/IMemoryHelper;

    return-object v0
.end method

.method static synthetic d(Lvh;)J
    .locals 2

    iget-wide v0, p0, Lvh;->f:J

    return-wide v0
.end method

.method static synthetic e(Lvh;)I
    .locals 1

    iget v0, p0, Lvh;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lvh;->k:I

    return v0
.end method

.method public static e()J
    .locals 5

    invoke-static {}, Lvh;->a()Lvh;

    move-result-object v0

    iget-wide v1, v0, Lvh;->h:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    iget-object v1, v0, Lvh;->d:Lcom/tencent/tmsecure/module/optimize/IMemoryHelper;

    invoke-interface {v1}, Lcom/tencent/tmsecure/module/optimize/IMemoryHelper;->getTotalMemery()J

    move-result-wide v1

    iput-wide v1, v0, Lvh;->h:J

    :cond_0
    iget-wide v0, v0, Lvh;->h:J

    return-wide v0
.end method

.method static synthetic f(Lvh;)I
    .locals 1

    iget v0, p0, Lvh;->k:I

    return v0
.end method

.method public static f()J
    .locals 5

    invoke-static {}, Lvh;->a()Lvh;

    move-result-object v0

    iget-wide v1, v0, Lvh;->e:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    invoke-direct {v0}, Lvh;->j()V

    :cond_0
    iget-wide v0, v0, Lvh;->e:J

    return-wide v0
.end method

.method public static g()I
    .locals 7

    const-wide/16 v5, 0x0

    invoke-static {}, Lvh;->a()Lvh;

    move-result-object v0

    iget-wide v1, v0, Lvh;->e:J

    cmp-long v1, v1, v5

    if-gtz v1, :cond_0

    invoke-direct {v0}, Lvh;->j()V

    :cond_0
    iget-wide v0, v0, Lvh;->e:J

    invoke-static {}, Lvh;->a()Lvh;

    move-result-object v2

    iget-wide v3, v2, Lvh;->h:J

    cmp-long v3, v3, v5

    if-gtz v3, :cond_1

    iget-object v3, v2, Lvh;->d:Lcom/tencent/tmsecure/module/optimize/IMemoryHelper;

    invoke-interface {v3}, Lcom/tencent/tmsecure/module/optimize/IMemoryHelper;->getTotalMemery()J

    move-result-wide v3

    iput-wide v3, v2, Lvh;->h:J

    :cond_1
    iget-wide v2, v2, Lvh;->h:J

    const-wide/16 v4, 0x64

    mul-long/2addr v0, v4

    div-long/2addr v0, v2

    long-to-int v0, v0

    rsub-int/lit8 v0, v0, 0x64

    return v0
.end method

.method static synthetic g(Lvh;)Lvh$b;
    .locals 1

    iget-object v0, p0, Lvh;->c:Lvh$b;

    return-object v0
.end method

.method private j()V
    .locals 4

    iget-boolean v0, p0, Lvh;->g:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lvh;->d:Lcom/tencent/tmsecure/module/optimize/IMemoryHelper;

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/optimize/IMemoryHelper;->getFreeMemery()J

    move-result-wide v0

    iget-wide v2, p0, Lvh;->e:J

    iput-wide v0, p0, Lvh;->e:J

    cmp-long v0, v2, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvh;->i:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lvh;->i:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method


# virtual methods
.method public final a(J)V
    .locals 3

    const/4 v2, 0x1

    iget-wide v0, p0, Lvh;->e:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lvh;->e:J

    iget-object v0, p0, Lvh;->i:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lvh;->i:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iput-boolean v2, p0, Lvh;->g:Z

    const/4 v0, 0x0

    iput v0, p0, Lvh;->k:I

    return-void
.end method

.method public final a(Lvh$a;)V
    .locals 1

    iget-object v0, p0, Lvh;->j:Ldw;

    invoke-virtual {v0, p1}, Ldw;->a(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lvh$b;)V
    .locals 0

    iput-object p1, p0, Lvh;->c:Lvh$b;

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lvh;->a:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final b(Lvh$a;)V
    .locals 1

    iget-object v0, p0, Lvh;->j:Ldw;

    invoke-virtual {v0, p1}, Ldw;->b(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lvh;->g:Z

    return-void
.end method

.method public final d()V
    .locals 0

    invoke-direct {p0}, Lvh;->j()V

    return-void
.end method

.method public final h()V
    .locals 12

    const-wide/16 v8, 0x0

    invoke-static {}, Lho;->a()Lho;

    move-result-object v1

    invoke-virtual {v1}, Lho;->cA()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lvh;->d:Lcom/tencent/tmsecure/module/optimize/IMemoryHelper;

    invoke-interface {v0}, Lcom/tencent/tmsecure/module/optimize/IMemoryHelper;->getFreeMemery()J

    move-result-wide v2

    invoke-static {}, Lvh;->a()Lvh;

    move-result-object v0

    iget-wide v4, v0, Lvh;->h:J

    cmp-long v4, v4, v8

    if-gtz v4, :cond_2

    iget-object v4, v0, Lvh;->d:Lcom/tencent/tmsecure/module/optimize/IMemoryHelper;

    invoke-interface {v4}, Lcom/tencent/tmsecure/module/optimize/IMemoryHelper;->getTotalMemery()J

    move-result-wide v4

    iput-wide v4, v0, Lvh;->h:J

    :cond_2
    iget-wide v4, v0, Lvh;->h:J

    sub-long v6, v4, v2

    cmp-long v0, v2, v8

    if-lez v0, :cond_0

    cmp-long v0, v4, v8

    if-lez v0, :cond_0

    cmp-long v0, v6, v8

    if-lez v0, :cond_0

    const-wide/16 v8, 0x64

    const/4 v0, 0x1

    shl-long/2addr v2, v0

    const-wide/16 v10, 0x3

    div-long/2addr v2, v10

    add-long/2addr v2, v6

    mul-long/2addr v2, v8

    div-long/2addr v2, v4

    long-to-int v0, v2

    sget v2, Lho;->a:I

    if-ge v0, v2, :cond_3

    sget v0, Lho;->a:I

    :cond_3
    if-lez v0, :cond_0

    const/16 v2, 0x64

    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Lho;->C(I)V

    goto :goto_0
.end method

.method public final i()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lvh;->c:Lvh$b;

    return-void
.end method
