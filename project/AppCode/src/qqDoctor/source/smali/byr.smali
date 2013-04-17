.class public final Lbyr;
.super Lcom/tencent/tmsecure/common/BaseManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbyr$a;,
        Lbyr$b;,
        Lbyr$c;,
        Lbyr$d;
    }
.end annotation


# instance fields
.field private a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lbyr$b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Lcom/tencent/tmsecure/common/BaseService;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lbyr;->a:Ljava/util/LinkedList;

    return-void
.end method

.method static synthetic a(Lbyr;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lbyr;->a:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic b(Lbyr;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbyr;->b:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;)Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;
    .locals 4

    const/4 v0, 0x0

    iget-object v2, p0, Lbyr;->a:Ljava/util/LinkedList;

    monitor-enter v2

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v1, Lbyr$b;

    invoke-direct {v1, p1}, Lbyr$b;-><init>(Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;)V

    :goto_0
    if-eqz v1, :cond_1

    iget-object v3, p0, Lbyr;->a:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v0, p0, Lbyr;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    return-object p1

    :cond_0
    move-object v1, v0

    goto :goto_0

    :cond_1
    monitor-exit v2

    move-object p1, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final a(Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;I)Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;
    .locals 4

    const/4 v0, 0x0

    iget-object v2, p0, Lbyr;->a:Ljava/util/LinkedList;

    monitor-enter v2

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v1, Lbyr$b;

    invoke-direct {v1, p1}, Lbyr$b;-><init>(Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;)V

    :goto_0
    if-eqz v1, :cond_1

    iget-object v3, p0, Lbyr;->a:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v0, p0, Lbyr;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p2, v1}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    return-object p1

    :cond_0
    move-object v1, v0

    goto :goto_0

    :cond_1
    monitor-exit v2

    move-object p1, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public final b(Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;)Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;
    .locals 3

    new-instance v0, Lbyr$b;

    invoke-direct {v0, p1}, Lbyr$b;-><init>(Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;)V

    iget-object v1, p0, Lbyr;->a:Ljava/util/LinkedList;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lbyr;->a:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lbyr;->a:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object p1

    :cond_0
    monitor-exit v1

    const/4 p1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final getSingletonType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final onCreate(Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lbyr;->b:Landroid/content/Context;

    new-instance v0, Lbyr$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lbyr$c;-><init>(Lbyr;B)V

    iput-object v0, p0, Lbyr;->c:Lcom/tencent/tmsecure/common/BaseService;

    iget-object v0, p0, Lbyr;->c:Lcom/tencent/tmsecure/common/BaseService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/tmsecure/common/TMSService;->startService(Lcom/tencent/tmsecure/common/BaseService;Landroid/content/Intent;)Lcom/tencent/tmsecure/common/BaseService;

    return-void
.end method
