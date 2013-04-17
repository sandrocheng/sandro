.class public final Lcom/tencent/feedback/upload/b;
.super Ljava/lang/Object;
.source "OnCommonReceviedImp.java"

# interfaces
.implements Lcom/tencent/feedback/upload/e$b;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/tencent/feedback/upload/b;->a:Landroid/content/Context;

    .line 24
    return-void
.end method


# virtual methods
.method public final a(I[B)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 29
    sparse-switch p1, :sswitch_data_0

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 33
    :sswitch_0
    const-string v0, "process CMD_RESPONSE_SECURITY_STRATEGY"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 34
    const-string v0, "RQDUploadImp.onSecurityStrategy() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/tencent/feedback/upload/b;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    new-instance v0, Lstrategy/SecurityStrategyPackage;

    invoke-direct {v0}, Lstrategy/SecurityStrategyPackage;-><init>()V

    new-instance v1, Lcom/qq/taf/jce/JceInputStream;

    invoke-direct {v1, p2}, Lcom/qq/taf/jce/JceInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Lstrategy/SecurityStrategyPackage;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V

    invoke-virtual {v0}, Lstrategy/SecurityStrategyPackage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/feedback/upload/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/feedback/common/strategy/a;->a(Landroid/content/Context;)Lcom/tencent/feedback/common/strategy/a;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/feedback/upload/b;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/tencent/feedback/common/strategy/a;->b(Landroid/content/Context;)Lcom/tencent/feedback/common/strategy/SecurityStrategyBean;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    invoke-virtual {v0}, Lstrategy/SecurityStrategyPackage;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/tencent/feedback/common/strategy/SecurityStrategyBean;->setEncryAlgorithm(I)V

    invoke-virtual {v0}, Lstrategy/SecurityStrategyPackage;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/feedback/common/strategy/SecurityStrategyBean;->setEncryKey(Ljava/lang/String;)V

    invoke-virtual {v0}, Lstrategy/SecurityStrategyPackage;->c()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/tencent/feedback/common/strategy/SecurityStrategyBean;->setZipAlgorithm(I)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/tencent/feedback/upload/b;->a:Landroid/content/Context;

    invoke-virtual {v1, v0, v2}, Lcom/tencent/feedback/common/strategy/a;->a(Landroid/content/Context;Lcom/tencent/feedback/common/strategy/SecurityStrategyBean;)V

    const-string v0, "update succeed!"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    const-string v0, "RQDUploadImp.onSecurityStrategy() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 39
    :sswitch_1
    const-string v0, "process CMD_RESPONSE_UPLOAD_STRATEGY"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 40
    const-string v0, "RQDUploadImp.onUploadStrategy() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/tencent/feedback/upload/b;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    new-instance v3, Lstrategy/UploadStrategyPackage;

    invoke-direct {v3}, Lstrategy/UploadStrategyPackage;-><init>()V

    new-instance v0, Lcom/qq/taf/jce/JceInputStream;

    invoke-direct {v0, p2}, Lcom/qq/taf/jce/JceInputStream;-><init>([B)V

    invoke-virtual {v3, v0}, Lstrategy/UploadStrategyPackage;->readFrom(Lcom/qq/taf/jce/JceInputStream;)V

    invoke-virtual {v3}, Lstrategy/UploadStrategyPackage;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/feedback/upload/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/feedback/common/strategy/a;->a(Landroid/content/Context;)Lcom/tencent/feedback/common/strategy/a;

    move-result-object v4

    iget-object v0, p0, Lcom/tencent/feedback/upload/b;->a:Landroid/content/Context;

    invoke-virtual {v4, v0}, Lcom/tencent/feedback/common/strategy/a;->c(Landroid/content/Context;)Lcom/tencent/feedback/common/strategy/UploadStrategyBean;

    move-result-object v5

    monitor-enter v5

    :try_start_1
    invoke-virtual {v3}, Lstrategy/UploadStrategyPackage;->b()I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->setMaxPackageSize(I)V

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->setExceptionUploadServerOpen(Z)V

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->setSpeedMonitorServerOpen(Z)V

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->setUserEventServerOpen(Z)V

    invoke-virtual {v3}, Lstrategy/UploadStrategyPackage;->e()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    const/4 v6, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v5, v0}, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->setUserEventServerOpen(Z)V

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v5, v0}, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->setSpeedMonitorServerOpen(Z)V

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v5, v0}, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->setExceptionUploadServerOpen(Z)V

    :cond_3
    invoke-virtual {v3}, Lstrategy/UploadStrategyPackage;->a()I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->setTestCount(I)V

    invoke-virtual {v3}, Lstrategy/UploadStrategyPackage;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->setUploadServer(Ljava/lang/String;)V

    invoke-virtual {v3}, Lstrategy/UploadStrategyPackage;->c()I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->setUploadStrategy(I)V

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, p0, Lcom/tencent/feedback/upload/b;->a:Landroid/content/Context;

    invoke-virtual {v4, v0, v5}, Lcom/tencent/feedback/common/strategy/a;->a(Landroid/content/Context;Lcom/tencent/feedback/common/strategy/UploadStrategyBean;)V

    const-string v0, "update succeed!"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    const-string v0, "RQDUploadImp.onUploadStrategy() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v5

    throw v0

    .line 45
    :sswitch_2
    const-string v0, "no data response!"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 29
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x7 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method
