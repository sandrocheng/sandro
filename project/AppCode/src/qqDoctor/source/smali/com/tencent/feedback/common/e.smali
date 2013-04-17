.class public Lcom/tencent/feedback/common/e;
.super Ljava/lang/Object;
.source "SDKModule.java"

# interfaces
.implements Lcom/tencent/feedback/common/AppLifecycleListener;
.implements Lcom/tencent/feedback/common/strategy/a$b;


# instance fields
.field protected isClosed:Z

.field protected isEnableModule:Z

.field protected isQueryFinish:Z

.field protected isStartAfterQuery:Z

.field protected mContext:Landroid/content/Context;

.field protected uploadHandler:Lcom/tencent/feedback/upload/UploadHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/feedback/upload/UploadHandler;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/feedback/common/e;->isStartAfterQuery:Z

    .line 15
    iput-boolean v1, p0, Lcom/tencent/feedback/common/e;->isQueryFinish:Z

    .line 16
    iput-boolean v1, p0, Lcom/tencent/feedback/common/e;->isEnableModule:Z

    .line 17
    iput-boolean v1, p0, Lcom/tencent/feedback/common/e;->isClosed:Z

    .line 22
    invoke-static {}, Lcom/tencent/feedback/common/Constants;->isAllFunctionPowerOff()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 24
    const-string v0, "SDKModule function close"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 28
    :cond_1
    if-nez p1, :cond_2

    .line 30
    const-string v0, "initModule should not context == null!"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    .line 33
    :cond_2
    iput-object p1, p0, Lcom/tencent/feedback/common/e;->mContext:Landroid/content/Context;

    .line 34
    iput-boolean p3, p0, Lcom/tencent/feedback/common/e;->isStartAfterQuery:Z

    .line 35
    iput-object p4, p0, Lcom/tencent/feedback/common/e;->uploadHandler:Lcom/tencent/feedback/upload/UploadHandler;

    .line 36
    invoke-virtual {p0, p2}, Lcom/tencent/feedback/common/e;->setUserId(Ljava/lang/String;)V

    .line 38
    invoke-static {p4}, Lcom/tencent/feedback/common/strategy/a;->a(Lcom/tencent/feedback/upload/UploadHandler;)V

    .line 39
    iget-object v0, p0, Lcom/tencent/feedback/common/e;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/feedback/common/strategy/a;->a(Landroid/content/Context;)Lcom/tencent/feedback/common/strategy/a;

    move-result-object v0

    .line 40
    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0, p0}, Lcom/tencent/feedback/common/strategy/a;->a(Lcom/tencent/feedback/common/strategy/a$b;)V

    goto :goto_0
.end method


# virtual methods
.method public closeSDKModule()V
    .locals 1

    .prologue
    .line 137
    const-string v0, "closeSDKModule"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 138
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/feedback/common/strategy/a;->a(Landroid/content/Context;)Lcom/tencent/feedback/common/strategy/a;

    move-result-object v0

    .line 139
    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0, p0}, Lcom/tencent/feedback/common/strategy/a;->b(Lcom/tencent/feedback/common/strategy/a$b;)V

    .line 142
    :cond_0
    monitor-enter p0

    .line 144
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/tencent/feedback/common/e;->isClosed:Z

    .line 145
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/feedback/common/e;->setEnableModule(Z)V

    .line 147
    const-string v0, "closeSDKModule end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 148
    return-void

    .line 145
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUploadHandler()Lcom/tencent/feedback/upload/UploadHandler;
    .locals 1

    .prologue
    .line 98
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/feedback/common/e;->uploadHandler:Lcom/tencent/feedback/upload/UploadHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    invoke-static {}, Lcom/tencent/feedback/common/CommonInfo;->getCommonInfo()Lcom/tencent/feedback/common/CommonInfo;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0}, Lcom/tencent/feedback/common/CommonInfo;->getUserid()Ljava/lang/String;

    move-result-object v0

    .line 73
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "unknown"

    goto :goto_0
.end method

.method public declared-synchronized getmContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 78
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/feedback/common/e;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isClosedSDKModule()Z
    .locals 1

    .prologue
    .line 152
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/feedback/common/e;->isClosed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isEnableModule()Z
    .locals 1

    .prologue
    .line 109
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/feedback/common/e;->isEnableModule:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isQueryFinish()Z
    .locals 1

    .prologue
    .line 125
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/feedback/common/e;->isQueryFinish:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isStartAfterQuery()Z
    .locals 1

    .prologue
    .line 88
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/feedback/common/e;->isStartAfterQuery:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onAppExited(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 216
    invoke-static {}, Lcom/tencent/feedback/common/Constants;->isAllFunctionPowerOff()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    const-string v0, "SDKModule function close"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 223
    :goto_0
    return-void

    .line 222
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/feedback/common/e;->closeSDKModule()V

    goto :goto_0
.end method

.method public onAppLauched(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 204
    const-string v0, "onAppLauched start"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 205
    invoke-static {}, Lcom/tencent/feedback/common/Constants;->isAllFunctionPowerOff()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    const-string v0, "SDKModule function close"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 211
    :goto_0
    return-void

    .line 210
    :cond_0
    const-string v0, "onAppLauched end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onInitByQuery()V
    .locals 1

    .prologue
    .line 179
    const-string v0, "onInitByQuery fininshed start"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 180
    invoke-static {}, Lcom/tencent/feedback/common/Constants;->isAllFunctionPowerOff()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    const-string v0, "SDKModule function close"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 187
    :goto_0
    return-void

    .line 185
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/feedback/common/e;->setQueryFinish(Z)V

    .line 186
    const-string v0, "onInitByQuery fininshed end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onLocalVersionChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 192
    const-string v0, "onLocalVersionChanged start"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 193
    invoke-static {}, Lcom/tencent/feedback/common/Constants;->isAllFunctionPowerOff()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    const-string v0, "SDKModule function close"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 199
    :goto_0
    return-void

    .line 198
    :cond_0
    const-string v0, "onLocalVersionChanged end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSecurityStrategyChange(Lcom/tencent/feedback/common/strategy/SecurityStrategyBean;)V
    .locals 1
    .parameter

    .prologue
    .line 168
    invoke-static {}, Lcom/tencent/feedback/common/Constants;->isAllFunctionPowerOff()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    const-string v0, "SDKModule function close"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 173
    :cond_0
    return-void
.end method

.method public onUploadStrategyChange(Lcom/tencent/feedback/common/strategy/UploadStrategyBean;)V
    .locals 1
    .parameter

    .prologue
    .line 158
    invoke-static {}, Lcom/tencent/feedback/common/Constants;->isAllFunctionPowerOff()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    const-string v0, "SDKModule function close"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 163
    :cond_0
    return-void
.end method

.method public declared-synchronized setEnableModule(Z)V
    .locals 2
    .parameter

    .prologue
    .line 114
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEnableModule: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 115
    iput-boolean p1, p0, Lcom/tencent/feedback/common/e;->isEnableModule:Z

    .line 116
    iget-boolean v0, p0, Lcom/tencent/feedback/common/e;->isClosed:Z

    if-eqz v0, :cond_0

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/feedback/common/e;->isEnableModule:Z

    .line 119
    const-string v0, "isClosed so close isEnableModule"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    :cond_0
    monitor-exit p0

    return-void

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setQueryFinish(Z)V
    .locals 1
    .parameter

    .prologue
    .line 130
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/tencent/feedback/common/e;->isQueryFinish:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    monitor-exit p0

    return-void

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setStartAfterQuery(Z)V
    .locals 1
    .parameter

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/tencent/feedback/common/e;->isStartAfterQuery:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    monitor-exit p0

    return-void

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUploadHandler(Lcom/tencent/feedback/upload/UploadHandler;)V
    .locals 1
    .parameter

    .prologue
    .line 103
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/tencent/feedback/common/e;->uploadHandler:Lcom/tencent/feedback/upload/UploadHandler;

    .line 104
    invoke-static {p1}, Lcom/tencent/feedback/common/strategy/a;->a(Lcom/tencent/feedback/upload/UploadHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    monitor-exit p0

    return-void

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 49
    invoke-static {}, Lcom/tencent/feedback/common/Constants;->isAllFunctionPowerOff()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    const-string v0, "Analytics function close"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    if-eqz p1, :cond_0

    .line 58
    invoke-static {}, Lcom/tencent/feedback/common/CommonInfo;->getCommonInfo()Lcom/tencent/feedback/common/CommonInfo;

    move-result-object v0

    .line 60
    if-nez v0, :cond_2

    .line 61
    iget-object v0, p0, Lcom/tencent/feedback/common/e;->mContext:Landroid/content/Context;

    const-string v1, "unknown"

    invoke-static {v0, p1, v1}, Lcom/tencent/feedback/common/CommonInfo;->createCommonInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :cond_2
    invoke-virtual {v0, p1}, Lcom/tencent/feedback/common/CommonInfo;->setUserid(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public declared-synchronized setmContext(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 83
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/tencent/feedback/common/e;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    monitor-exit p0

    return-void

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
