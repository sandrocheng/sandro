.class final Lfo;
.super Lcom/tencent/tmsecure/common/BaseManager;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lfk;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Lfk;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lfo;->b:Lfk;

    if-nez v0, :cond_0

    new-instance v0, Lfl;

    iget-object v1, p0, Lfo;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lfl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lfo;->b:Lfk;

    :cond_0
    iget-object v0, p0, Lfo;->b:Lfk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getSingletonType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final onCreate(Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lfo;->a:Landroid/content/Context;

    iget-object v0, p0, Lfo;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lfo;->a:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method
