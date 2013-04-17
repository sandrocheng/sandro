.class public final Lgc;
.super Lcom/tencent/tmsecure/common/BaseManager;


# instance fields
.field private a:Lgd;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lgc;->a:Lgd;

    iget-object v0, v0, Lgd;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lga;)V
    .locals 4

    iget-object v0, p0, Lgc;->a:Lgd;

    iget-object v1, v0, Lgd;->b:Ljava/util/HashMap;

    monitor-enter v1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, v0, Lgd;->b:Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final onCreate(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lgd;

    invoke-direct {v0}, Lgd;-><init>()V

    iput-object v0, p0, Lgc;->a:Lgd;

    iget-object v0, p0, Lgc;->a:Lgd;

    invoke-virtual {v0, p1}, Lgd;->onCreate(Landroid/content/Context;)V

    iget-object v0, p0, Lgc;->a:Lgd;

    invoke-virtual {p0, v0}, Lgc;->setImpl(Lcom/tencent/tmsecure/common/BaseManager;)V

    return-void
.end method
