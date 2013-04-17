.class public Labv;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Labv$b;,
        Labv$a;
    }
.end annotation


# static fields
.field private static a:Labv;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/os/Handler;

.field private d:Ldw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldw",
            "<",
            "Labv$a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ldw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldw",
            "<",
            "Labv$b;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private g:Ljava/lang/Runnable;

.field private final h:Landroid/app/ActivityManager;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/lang/Thread;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Labv;->c:Landroid/os/Handler;

    new-instance v0, Ldw;

    invoke-direct {v0}, Ldw;-><init>()V

    iput-object v0, p0, Labv;->d:Ldw;

    new-instance v0, Ldw;

    invoke-direct {v0}, Ldw;-><init>()V

    iput-object v0, p0, Labv;->e:Ldw;

    const/4 v0, 0x0

    iput-boolean v0, p0, Labv;->f:Z

    new-instance v0, Labx;

    invoke-direct {v0, p0}, Labx;-><init>(Labv;)V

    iput-object v0, p0, Labv;->g:Ljava/lang/Runnable;

    iput-object p1, p0, Labv;->b:Landroid/content/Context;

    new-instance v0, Labw;

    iget-object v1, p0, Labv;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Labw;-><init>(Labv;Landroid/os/Looper;)V

    iput-object v0, p0, Labv;->c:Landroid/os/Handler;

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Labv;->h:Landroid/app/ActivityManager;

    return-void
.end method

.method public static a()Labv;
    .locals 3

    const-class v1, Labv;

    monitor-enter v1

    :try_start_0
    sget-object v0, Labv;->a:Labv;

    if-nez v0, :cond_0

    new-instance v0, Labv;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Labv;-><init>(Landroid/content/Context;)V

    sput-object v0, Labv;->a:Labv;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Labv;->a:Labv;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Labv;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 4

    iget-object v0, p0, Labv;->e:Ldw;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Labv;->e:Ldw;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Labv;->e:Ldw;

    invoke-virtual {v0}, Ldw;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labv$b;

    invoke-interface {v0, p1}, Labv$b;->currentApp(Landroid/app/ActivityManager$RunningTaskInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method static synthetic a(Labv;Ljava/util/List;)V
    .locals 13

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Labv;->d:Ldw;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Labv;->d:Ldw;

    monitor-enter v6

    :try_start_0
    iget-object v0, p0, Labv;->d:Ldw;

    invoke-virtual {v0}, Ldw;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labv$a;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    iget-object v8, v0, Labv$a;->a:Lok;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, v8, Lok;->c:Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->initScanner()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    move v3, v2

    :goto_2
    if-ge v3, v4, :cond_7

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_a

    iget-object v5, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v5, :cond_a

    iget-object v5, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_a

    iget-object v5, v8, Lok;->f:Lkf;

    iget-object v9, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "pkg_name= \'"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v5, Lkf;->a:Lhs;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "SELECT * FROM startup_app_scan WHERE "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Lhs;->a(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-nez v9, :cond_4

    iget-object v5, v5, Lkf;->a:Lhs;

    invoke-virtual {v5}, Lhs;->b()V

    move v5, v2

    :goto_3
    if-nez v5, :cond_b

    iget-object v9, v8, Lok;->c:Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->getApkClass(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_6

    move v0, v1

    :goto_4
    if-eqz v0, :cond_3

    if-ne v5, v1, :cond_a

    :cond_3
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v3, -0x1

    add-int/lit8 v3, v4, -0x1

    :goto_5
    add-int/lit8 v0, v0, 0x1

    move v4, v3

    move v3, v0

    goto :goto_2

    :cond_4
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v10

    if-lez v10, :cond_5

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    iget-object v5, v5, Lkf;->a:Lhs;

    invoke-virtual {v5}, Lhs;->b()V

    move v5, v1

    goto :goto_3

    :cond_5
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    iget-object v5, v5, Lkf;->a:Lhs;

    invoke-virtual {v5}, Lhs;->b()V

    move v5, v2

    goto :goto_3

    :cond_6
    move v0, v2

    goto :goto_4

    :cond_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    move v3, v2

    :goto_6
    if-ge v3, v5, :cond_8

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_6

    :cond_8
    iget-object v0, v8, Lok;->c:Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    new-instance v3, Lol;

    invoke-direct {v3, v8}, Lol;-><init>(Lok;)V

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v3, v5}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->scanPackages(Ljava/util/List;Lcom/tencent/tmsecure/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0

    :cond_9
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :cond_a
    move v0, v3

    move v3, v4

    goto :goto_5

    :cond_b
    move v0, v2

    goto :goto_4
.end method

.method static synthetic a(Labv;)Z
    .locals 1

    iget-boolean v0, p0, Labv;->f:Z

    return v0
.end method

.method private static a(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 2

    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Labv;Ljava/util/List;)Ljava/util/List;
    .locals 8

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Labv;->i:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Labv;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    iput-object p1, p0, Labv;->i:Ljava/util/List;

    :goto_0
    return-object v2

    :cond_1
    iget-object v0, p0, Labv;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    move v4, v3

    :goto_1
    if-ge v4, v6, :cond_7

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    if-ge v4, v5, :cond_3

    iget-object v1, p0, Labv;->i:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {v0, v1}, Labv;->a(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Labv;->i:Ljava/util/List;

    if-eqz v1, :cond_2

    if-nez v0, :cond_4

    :cond_2
    move v1, v3

    :goto_2
    if-nez v1, :cond_3

    if-nez v2, :cond_8

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_3
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v2, v1

    :cond_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    :cond_4
    iget-object v1, p0, Labv;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {v1, v0}, Labv;->a(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_6
    move v1, v3

    goto :goto_2

    :cond_7
    iput-object p1, p0, Labv;->i:Ljava/util/List;

    goto :goto_0

    :cond_8
    move-object v1, v2

    goto :goto_3
.end method

.method public static b()V
    .locals 1

    sget-object v0, Labv;->a:Labv;

    if-eqz v0, :cond_0

    sget-object v0, Labv;->a:Labv;

    invoke-direct {v0}, Labv;->f()V

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Labv;->a:Labv;

    return-void
.end method

.method static synthetic b(Labv;)Z
    .locals 1

    iget-object v0, p0, Labv;->d:Ldw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Labv;->d:Ldw;

    invoke-virtual {v0}, Ldw;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Labv;)Ljava/util/List;
    .locals 1

    invoke-direct {p0}, Labv;->g()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static c()V
    .locals 1

    invoke-static {}, Labv;->a()Labv;

    move-result-object v0

    invoke-direct {v0}, Labv;->e()V

    return-void
.end method

.method static synthetic d(Labv;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Labv;->c:Landroid/os/Handler;

    return-object v0
.end method

.method public static d()V
    .locals 1

    invoke-static {}, Labv;->a()Labv;

    move-result-object v0

    invoke-direct {v0}, Labv;->f()V

    return-void
.end method

.method private declared-synchronized e()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Labv;->e:Ldw;

    if-eqz v2, :cond_1

    iget-object v2, p0, Labv;->e:Ldw;

    invoke-virtual {v2}, Ldw;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    :goto_0
    if-nez v2, :cond_3

    iget-object v2, p0, Labv;->d:Ldw;

    if-eqz v2, :cond_2

    iget-object v2, p0, Labv;->d:Ldw;

    invoke-virtual {v2}, Ldw;->a()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_2

    move v2, v0

    :goto_1
    if-nez v2, :cond_3

    move v2, v0

    :goto_2
    if-eqz v2, :cond_4

    :cond_0
    :goto_3
    monitor-exit p0

    return-void

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    move v2, v1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :try_start_1
    iput-boolean v2, p0, Labv;->f:Z

    iget-object v2, p0, Labv;->j:Ljava/lang/Thread;

    if-eqz v2, :cond_5

    iget-object v2, p0, Labv;->j:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_5

    :goto_4
    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Labv;->g:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Labv;->j:Ljava/lang/Thread;

    iget-object v0, p0, Labv;->j:Ljava/lang/Thread;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    iget-object v0, p0, Labv;->j:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5
    move v0, v1

    goto :goto_4
.end method

.method static synthetic e(Labv;)Z
    .locals 1

    iget-object v0, p0, Labv;->e:Ldw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Labv;->e:Ldw;

    invoke-virtual {v0}, Ldw;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic f(Labv;)Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 1

    invoke-direct {p0}, Labv;->h()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized f()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Labv;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private g()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Labv;->h:Landroid/app/ActivityManager;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private h()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Labv;->h:Landroid/app/ActivityManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    move-object v1, v0

    goto :goto_0
.end method


# virtual methods
.method public final a(Labv$a;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Labv;->d:Ldw;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Labv;->d:Ldw;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Labv;->d:Ldw;

    invoke-virtual {v0, p1}, Ldw;->a(Ljava/lang/Object;)Z

    iget-object v0, p0, Labv;->d:Ldw;

    invoke-virtual {v0}, Ldw;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Labv;->j:Ljava/lang/Thread;

    if-eqz v0, :cond_3

    iget-object v0, p0, Labv;->j:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    invoke-direct {p0}, Labv;->e()V

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a(Labv$b;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Labv;->e:Ldw;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Labv;->e:Ldw;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Labv;->e:Ldw;

    invoke-virtual {v0, p1}, Ldw;->a(Ljava/lang/Object;)Z

    iget-object v0, p0, Labv;->e:Ldw;

    invoke-virtual {v0}, Ldw;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Labv;->j:Ljava/lang/Thread;

    if-eqz v0, :cond_3

    iget-object v0, p0, Labv;->j:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    invoke-direct {p0}, Labv;->e()V

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final b(Labv$a;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Labv;->d:Ldw;

    if-eqz v2, :cond_0

    iget-object v2, p0, Labv;->d:Ldw;

    invoke-virtual {v2}, Ldw;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v3, p0, Labv;->d:Ldw;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Labv;->d:Ldw;

    invoke-virtual {v2, p1}, Ldw;->b(Ljava/lang/Object;)Z

    iget-object v2, p0, Labv;->e:Ldw;

    if-eqz v2, :cond_3

    iget-object v2, p0, Labv;->e:Ldw;

    invoke-virtual {v2}, Ldw;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v0

    :goto_1
    if-nez v2, :cond_5

    iget-object v2, p0, Labv;->d:Ldw;

    if-eqz v2, :cond_4

    iget-object v2, p0, Labv;->d:Ldw;

    invoke-virtual {v2}, Ldw;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v0

    :goto_2
    if-nez v2, :cond_5

    :goto_3
    if-eqz v0, :cond_2

    invoke-direct {p0}, Labv;->f()V

    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_3
    move v2, v1

    goto :goto_1

    :cond_4
    move v2, v1

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_3
.end method

.method public final b(Labv$b;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Labv;->e:Ldw;

    if-eqz v2, :cond_0

    iget-object v2, p0, Labv;->e:Ldw;

    invoke-virtual {v2}, Ldw;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v3, p0, Labv;->e:Ldw;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Labv;->e:Ldw;

    invoke-virtual {v2, p1}, Ldw;->b(Ljava/lang/Object;)Z

    iget-object v2, p0, Labv;->e:Ldw;

    if-eqz v2, :cond_3

    iget-object v2, p0, Labv;->e:Ldw;

    invoke-virtual {v2}, Ldw;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v0

    :goto_1
    if-nez v2, :cond_5

    iget-object v2, p0, Labv;->d:Ldw;

    if-eqz v2, :cond_4

    iget-object v2, p0, Labv;->d:Ldw;

    invoke-virtual {v2}, Ldw;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v0

    :goto_2
    if-nez v2, :cond_5

    :goto_3
    if-eqz v0, :cond_2

    invoke-direct {p0}, Labv;->f()V

    :cond_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_3
    move v2, v1

    goto :goto_1

    :cond_4
    move v2, v1

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_3
.end method
