.class public final Liq;
.super Ljava/lang/Object;


# static fields
.field private static g:Liq;


# instance fields
.field a:Landroid/content/SharedPreferences;

.field public b:Lki;

.field public c:Lhq;

.field public d:Lhq;

.field public e:Ljava/lang/String;

.field f:I

.field private h:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Liq;->e:Ljava/lang/String;

    iput v2, p0, Liq;->f:I

    iput-object p1, p0, Liq;->h:Landroid/content/Context;

    iget-object v0, p0, Liq;->h:Landroid/content/Context;

    const-string v1, "communicate_log_cache"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Liq;->a:Landroid/content/SharedPreferences;

    const-class v0, Lcom/tencent/tmsecure/module/tools/SingletonManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/tools/SingletonManager;

    const-class v1, Lki;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/tools/SingletonManager;->getSingleton(Ljava/lang/Class;)Lcom/tencent/tmsecure/module/tools/ISingleton;

    move-result-object v0

    check-cast v0, Lki;

    iput-object v0, p0, Liq;->b:Lki;

    new-instance v0, Lhq;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lhq;-><init>(I)V

    iput-object v0, p0, Liq;->c:Lhq;

    new-instance v0, Lhq;

    invoke-direct {v0, v2}, Lhq;-><init>(I)V

    iput-object v0, p0, Liq;->d:Lhq;

    new-instance v0, Lir;

    invoke-direct {v0, p0}, Lir;-><init>(Liq;)V

    invoke-virtual {v0}, Lir;->start()V

    return-void
.end method

.method public static declared-synchronized a()Liq;
    .locals 3

    const-class v1, Liq;

    monitor-enter v1

    :try_start_0
    sget-object v0, Liq;->g:Liq;

    if-nez v0, :cond_0

    new-instance v0, Liq;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Liq;-><init>(Landroid/content/Context;)V

    sput-object v0, Liq;->g:Liq;

    :cond_0
    sget-object v0, Liq;->g:Liq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, ""

    iget-object v1, p0, Liq;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p1, p0, Liq;->e:Ljava/lang/String;

    :goto_0
    iget v0, p0, Liq;->f:I

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x32

    if-gt v0, v1, :cond_2

    iget v0, p0, Liq;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Liq;->f:I

    :cond_0
    :goto_1
    iget-object v0, p0, Liq;->e:Ljava/lang/String;

    iput-object v0, p0, Liq;->e:Ljava/lang/String;

    iget-object v1, p0, Liq;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "outgoing_sms_log"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Liq;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Liq;->e:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    iget-object v0, p0, Liq;->e:Ljava/lang/String;

    const/16 v1, 0x7c

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Liq;->e:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Liq;->e:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method
