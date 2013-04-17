.class public final Lcom/tencent/tmsecure/common/ManagerCreator;
.super Ljava/lang/Object;


# static fields
.field private static volatile a:Lcom/tencent/tmsecure/common/ManagerCreator;


# instance fields
.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/tencent/tmsecure/common/BaseManager;",
            ">;",
            "Lcom/tencent/tmsecure/common/BaseManager;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/tencent/tmsecure/common/BaseManager;",
            ">;",
            "Ljava/lang/ref/WeakReference",
            "<+",
            "Lcom/tencent/tmsecure/common/BaseManager;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/tmsecure/common/ManagerCreator;->a:Lcom/tencent/tmsecure/common/ManagerCreator;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/common/ManagerCreator;->b:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/common/ManagerCreator;->c:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmsecure/common/ManagerCreator;->d:Landroid/content/Context;

    return-void
.end method

.method private a(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/tencent/tmsecure/common/BaseManager;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    invoke-static {}, Lbsv;->a()Lbsv;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbsv;->a(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Your license did not have the permission that geting the Manager named "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "the param of getManager can\'t be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/tencent/tmsecure/common/ManagerCreator;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/common/BaseManager;

    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/tencent/tmsecure/common/ManagerCreator;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/common/BaseManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    if-nez v0, :cond_3

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/common/BaseManager;

    iget-object v1, p0, Lcom/tencent/tmsecure/common/ManagerCreator;->d:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/common/BaseManager;->onCreate(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/tencent/tmsecure/common/BaseManager;->getSingletonType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/tencent/tmsecure/common/ManagerCreator;->b:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :goto_0
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v0

    :cond_4
    :try_start_3
    invoke-virtual {v0}, Lcom/tencent/tmsecure/common/BaseManager;->getSingletonType()I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/tencent/tmsecure/common/ManagerCreator;->c:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0
.end method

.method private static getInstance()Lcom/tencent/tmsecure/common/ManagerCreator;
    .locals 3

    sget-object v0, Lcom/tencent/tmsecure/common/ManagerCreator;->a:Lcom/tencent/tmsecure/common/ManagerCreator;

    if-nez v0, :cond_1

    const-class v1, Lcom/tencent/tmsecure/common/ManagerCreator;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/tmsecure/common/ManagerCreator;->a:Lcom/tencent/tmsecure/common/ManagerCreator;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Lcom/tencent/tmsecure/common/ManagerCreator;

    invoke-direct {v2, v0}, Lcom/tencent/tmsecure/common/ManagerCreator;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/tencent/tmsecure/common/ManagerCreator;->a:Lcom/tencent/tmsecure/common/ManagerCreator;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/tencent/tmsecure/common/ManagerCreator;->a:Lcom/tencent/tmsecure/common/ManagerCreator;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/tencent/tmsecure/common/BaseManager;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/tmsecure/common/ManagerCreator;->getInstance()Lcom/tencent/tmsecure/common/ManagerCreator;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/tencent/tmsecure/common/ManagerCreator;->a(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    return-object v0
.end method
