.class public Liv;
.super Ljava/lang/Object;


# static fields
.field private static b:Liv;


# instance fields
.field private a:Ljava/lang/String;

.field private c:Lcom/tencent/lbsapi/QLBSService;

.field private d:Landroid/content/Context;

.field private e:Ljava/lang/Boolean;

.field private f:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "NetworkLocateManager"

    iput-object v0, p0, Liv;->a:Ljava/lang/String;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Liv;->d:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Liv;->e:Ljava/lang/Boolean;

    new-instance v0, Liw;

    iget-object v1, p0, Liv;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Liw;-><init>(Liv;Landroid/os/Looper;)V

    iput-object v0, p0, Liv;->f:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Liv;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Liv;->d:Landroid/content/Context;

    return-object v0
.end method

.method public static a()Liv;
    .locals 2

    const-class v1, Liv;

    monitor-enter v1

    :try_start_0
    sget-object v0, Liv;->b:Liv;

    if-nez v0, :cond_0

    new-instance v0, Liv;

    invoke-direct {v0}, Liv;-><init>()V

    sput-object v0, Liv;->b:Liv;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Liv;->b:Liv;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Liv;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Liv;->e:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic a(Liv;Lcom/tencent/lbsapi/model/QLBSPosition;)V
    .locals 5

    invoke-virtual {p1}, Lcom/tencent/lbsapi/model/QLBSPosition;->getProvince()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/lbsapi/model/QLBSPosition;->getCity()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Liv;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "^^ QLBS "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Liy;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Liy;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/tencent/lbsapi/model/QLBSPosition;->getProvince()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/lbsapi/model/QLBSPosition;->getCity()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v0, Liy;->b:Landroid/content/SharedPreferences$Editor;

    const-string v3, "netword_locate_str"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method static synthetic b(Liv;)V
    .locals 6

    iget-object v0, p0, Liv;->c:Lcom/tencent/lbsapi/QLBSService;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/lbsapi/QLBSService;

    iget-object v1, p0, Liv;->d:Landroid/content/Context;

    new-instance v2, Lix;

    invoke-direct {v2, p0}, Lix;-><init>(Liv;)V

    const-string v3, "B1_msecure_android"

    const-string v4, "C7tLv_Yaf"

    const-string v5, "msecure_sdk_1.1"

    invoke-direct/range {v0 .. v5}, Lcom/tencent/lbsapi/QLBSService;-><init>(Landroid/content/Context;Lcom/tencent/lbsapi/QLBSNotification;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Liv;->c:Lcom/tencent/lbsapi/QLBSService;

    :cond_0
    return-void
.end method

.method static synthetic c(Liv;)Lcom/tencent/lbsapi/QLBSService;
    .locals 1

    iget-object v0, p0, Liv;->c:Lcom/tencent/lbsapi/QLBSService;

    return-object v0
.end method

.method static synthetic d(Liv;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Liv;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Liv;)V
    .locals 2

    iget-object v0, p0, Liv;->c:Lcom/tencent/lbsapi/QLBSService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Liv;->c:Lcom/tencent/lbsapi/QLBSService;

    invoke-virtual {v0}, Lcom/tencent/lbsapi/QLBSService;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Liv;->c:Lcom/tencent/lbsapi/QLBSService;

    :cond_0
    iget-object v1, p0, Liv;->e:Ljava/lang/Boolean;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Liv;->e:Ljava/lang/Boolean;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final b()Z
    .locals 2

    iget-object v1, p0, Liv;->e:Ljava/lang/Boolean;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Liv;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Liv;->f:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
