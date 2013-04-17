.class public final Lhp;
.super Ljava/lang/Object;


# static fields
.field private static e:Lhp;


# instance fields
.field public a:Lhr;

.field public b:Lhr;

.field public c:Lhr;

.field d:Lhr;

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lhp;->f:Z

    return-void
.end method

.method public static declared-synchronized a()Lhp;
    .locals 2

    const-class v1, Lhp;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lhp;->e:Lhp;

    if-nez v0, :cond_0

    new-instance v0, Lhp;

    invoke-direct {v0}, Lhp;-><init>()V

    sput-object v0, Lhp;->e:Lhp;

    :cond_0
    sget-object v0, Lhp;->e:Lhp;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(Lhq;)Lhr;
    .locals 9

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v6, Lhr;

    invoke-direct {v6}, Lhr;-><init>()V

    invoke-virtual {p0}, Lhq;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llf;

    iget-object v8, v0, Llf;->phonenum:Ljava/lang/String;

    iget-object v4, v0, Llf;->name:Ljava/lang/String;

    iget-boolean v1, v0, Llf;->enableForCalling:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    iget-boolean v5, v0, Llf;->enableForSMS:Z

    if-eqz v5, :cond_3

    move v5, v2

    :goto_2
    if-nez v4, :cond_0

    const-string v4, ""

    :cond_0
    iget v0, v0, Llf;->b:I

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_1
    invoke-virtual {v6, v8, v4}, Lhr;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    move v5, v3

    goto :goto_2

    :cond_4
    return-object v6
.end method


# virtual methods
.method public final declared-synchronized b()V
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-object v0, Lhp;->e:Lhp;

    iget-boolean v0, v0, Lhp;->f:Z

    if-nez v0, :cond_1

    sget-object v0, Lhp;->e:Lhp;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lhp;->f:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lhp;->a:Lhr;

    invoke-static {}, Ljava/lang/System;->gc()V

    new-instance v0, Lhr;

    invoke-direct {v0}, Lhr;-><init>()V

    iput-object v0, p0, Lhp;->a:Lhr;

    const-class v0, Lcom/tencent/tmsecure/module/tools/SingletonManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/tools/SingletonManager;

    const-class v1, Lki;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/tools/SingletonManager;->getSingleton(Ljava/lang/Class;)Lcom/tencent/tmsecure/module/tools/ISingleton;

    move-result-object v0

    check-cast v0, Lki;

    invoke-virtual {v0}, Lki;->getAllContact()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;

    iget-object v2, p0, Lhp;->a:Lhr;

    iget-object v3, v0, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;->phonenum:Ljava/lang/String;

    iget-object v0, v0, Lcom/tencent/tmsecure/module/aresengine/ContactEntity;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lhr;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    new-instance v0, Lhq;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lhq;-><init>(I)V

    invoke-static {v0}, Lhp;->a(Lhq;)Lhr;

    move-result-object v0

    iput-object v0, p0, Lhp;->b:Lhr;

    new-instance v0, Lhq;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lhq;-><init>(I)V

    invoke-static {v0}, Lhp;->a(Lhq;)Lhr;

    move-result-object v0

    iput-object v0, p0, Lhp;->c:Lhr;

    new-instance v0, Lhq;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lhq;-><init>(I)V

    invoke-static {v0}, Lhp;->a(Lhq;)Lhr;

    move-result-object v0

    iput-object v0, p0, Lhp;->d:Lhr;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void
.end method
