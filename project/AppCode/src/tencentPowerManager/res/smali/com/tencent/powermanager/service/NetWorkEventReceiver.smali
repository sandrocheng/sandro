.class public Lcom/tencent/powermanager/service/NetWorkEventReceiver;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/powermanager/service/NetWorkEventReceiver$a;
    }
.end annotation


# static fields
.field private static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/powermanager/service/NetWorkEventReceiver$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/powermanager/service/NetWorkEventReceiver;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static a()V
    .locals 3

    const-class v1, Lcom/tencent/powermanager/service/NetWorkEventReceiver;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/powermanager/service/NetWorkEventReceiver;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/powermanager/service/NetWorkEventReceiver$a;

    invoke-interface {v0}, Lcom/tencent/powermanager/service/NetWorkEventReceiver$a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public static a(Lcom/tencent/powermanager/service/NetWorkEventReceiver$a;)V
    .locals 2

    const-class v1, Lcom/tencent/powermanager/service/NetWorkEventReceiver;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/powermanager/service/NetWorkEventReceiver;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/powermanager/service/NetWorkEventReceiver;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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

.method public static b(Lcom/tencent/powermanager/service/NetWorkEventReceiver$a;)V
    .locals 2

    const-class v1, Lcom/tencent/powermanager/service/NetWorkEventReceiver;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/powermanager/service/NetWorkEventReceiver;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/powermanager/service/NetWorkEventReceiver;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

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


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "action\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Laf;->b()V

    invoke-static {}, Lbo;->a()Lbo;

    move-result-object v0

    invoke-static {}, Laf;->a()Laf;

    move-result-object v1

    invoke-virtual {v1}, Laf;->c()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lbo;->a(D)V

    invoke-static {}, Lcom/tencent/powermanager/service/NetWorkEventReceiver;->a()V

    goto :goto_0
.end method
