.class public Lpc;
.super Ljava/lang/Object;


# static fields
.field private static d:Lpc;


# instance fields
.field protected a:Lyk;

.field private b:Ljava/lang/String;

.field private c:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lpc;->d:Lpc;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "BaseActivityWrapper"

    iput-object v0, p0, Lpc;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lpc;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lpc;->c:Landroid/os/Handler;

    return-object v0
.end method

.method public static b()Lpc;
    .locals 2

    sget-object v0, Lpc;->d:Lpc;

    if-nez v0, :cond_1

    const-class v1, Lpc;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lpc;->d:Lpc;

    if-nez v0, :cond_0

    new-instance v0, Lpc;

    invoke-direct {v0}, Lpc;-><init>()V

    sput-object v0, Lpc;->d:Lpc;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lpc;->d:Lpc;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lpc;->b:Ljava/lang/String;

    iput-object v1, p0, Lpc;->c:Landroid/os/Handler;

    sput-object v1, Lpc;->d:Lpc;

    iput-object v1, p0, Lpc;->a:Lyk;

    return-void
.end method

.method public final a(Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseActivityGroup;)V
    .locals 1

    iget-object v0, p0, Lpc;->a:Lyk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpc;->a:Lyk;

    iget-object v0, v0, Lyk;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final b(Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseActivityGroup;)V
    .locals 2

    iget-object v0, p0, Lpc;->a:Lyk;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpc;->a:Lyk;

    iget-object v1, v0, Lyk;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, v0, Lyk;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lyk;->a()V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lpc;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpc;->c:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lpc;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpc;->c:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public final e()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lyk;

    invoke-direct {v0}, Lyk;-><init>()V

    iput-object v0, p0, Lpc;->a:Lyk;

    new-instance v0, Lpd;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lpd;-><init>(Lpc;Landroid/os/Looper;)V

    iput-object v0, p0, Lpc;->c:Landroid/os/Handler;

    iget-object v0, p0, Lpc;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpc;->a:Lyk;

    iget-object v1, v0, Lyk;->a:Ljava/lang/String;

    iput v2, v0, Lyk;->b:I

    iput-boolean v2, v0, Lyk;->c:Z

    iget-object v0, p0, Lpc;->c:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lpc;->c:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lpc;->c:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method
