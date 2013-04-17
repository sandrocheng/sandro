.class public Lcom/tencent/feedback/Analytics;
.super Ljava/lang/Object;
.source "Analytics.java"


# static fields
.field private static mContext:Landroid/content/Context;

.field private static mSdkModules:[Lcom/tencent/feedback/common/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 18
    sput-object v0, Lcom/tencent/feedback/Analytics;->mContext:Landroid/content/Context;

    .line 19
    sput-object v0, Lcom/tencent/feedback/Analytics;->mSdkModules:[Lcom/tencent/feedback/common/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized enableAnalytics(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/feedback/upload/UploadHandler;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    const-class v0, Lcom/tencent/feedback/Analytics;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, p2, p3, v1}, Lcom/tencent/feedback/Analytics;->enableAnalytics(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/feedback/upload/UploadHandler;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    monitor-exit v0

    return-void

    .line 35
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized enableAnalytics(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/feedback/upload/UploadHandler;Z)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    const-class v1, Lcom/tencent/feedback/Analytics;

    monitor-enter v1

    :try_start_0
    const-string v0, "Analytics.enableAnalytics() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 55
    invoke-static {}, Lcom/tencent/feedback/common/Constants;->isAllFunctionPowerOff()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    const-string v0, "Analytics function close"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :goto_0
    monitor-exit v1

    return-void

    .line 61
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 63
    :cond_1
    :try_start_1
    const-string v0, "enableAnalytics fail!"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 53
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 69
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/tencent/feedback/Analytics;->mContext:Landroid/content/Context;

    .line 72
    invoke-static {}, Lcom/tencent/feedback/common/CommonInfo;->getCommonInfo()Lcom/tencent/feedback/common/CommonInfo;

    move-result-object v0

    if-nez v0, :cond_3

    .line 73
    sget-object v0, Lcom/tencent/feedback/Analytics;->mContext:Landroid/content/Context;

    const-string v2, "unknown"

    invoke-static {v0, p1, v2}, Lcom/tencent/feedback/common/CommonInfo;->createCommonInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :cond_3
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/tencent/feedback/common/e;

    .line 76
    sput-object v0, Lcom/tencent/feedback/Analytics;->mSdkModules:[Lcom/tencent/feedback/common/e;

    const/4 v2, 0x0

    sget-object v3, Lcom/tencent/feedback/Analytics;->mContext:Landroid/content/Context;

    invoke-static {v3, p1, p2, p3}, Lcom/tencent/feedback/UserActionRecord;->getInstance(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/feedback/upload/UploadHandler;)Lcom/tencent/feedback/UserActionRecord;

    move-result-object v3

    aput-object v3, v0, v2

    .line 77
    sget-object v0, Lcom/tencent/feedback/Analytics;->mSdkModules:[Lcom/tencent/feedback/common/e;

    const/4 v2, 0x1

    sget-object v3, Lcom/tencent/feedback/Analytics;->mContext:Landroid/content/Context;

    invoke-static {v3, p1, p2, p3, p4}, Lcom/tencent/feedback/eup/ExceptionUpload;->getInstance(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/feedback/upload/UploadHandler;Z)Lcom/tencent/feedback/eup/ExceptionUpload;

    move-result-object v3

    aput-object v3, v0, v2

    .line 79
    const-string v0, "Analytics.enableAnalytics() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized enableCrashRecord(Z)V
    .locals 4
    .parameter

    .prologue
    .line 85
    const-class v1, Lcom/tencent/feedback/Analytics;

    monitor-enter v1

    :try_start_0
    const-string v0, "Analytics.enableCrashRecord() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 87
    invoke-static {}, Lcom/tencent/feedback/common/Constants;->isAllFunctionPowerOff()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    const-string v0, "Analytics function close"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :goto_0
    monitor-exit v1

    return-void

    .line 93
    :cond_0
    :try_start_1
    const-string v0, "enableCrashRecord start"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user eup action :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 97
    sget-object v0, Lcom/tencent/feedback/Analytics;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 99
    const-string v0, "mContext == null!,return"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 103
    :cond_1
    :try_start_2
    sget-object v0, Lcom/tencent/feedback/Analytics;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/feedback/common/strategy/a;->a(Landroid/content/Context;)Lcom/tencent/feedback/common/strategy/a;

    move-result-object v0

    .line 104
    sget-object v2, Lcom/tencent/feedback/Analytics;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/tencent/feedback/common/strategy/a;->c(Landroid/content/Context;)Lcom/tencent/feedback/common/strategy/UploadStrategyBean;

    move-result-object v2

    .line 105
    invoke-virtual {v2, p0}, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->setExceptionUploadUserOpen(Z)V

    .line 106
    sget-object v3, Lcom/tencent/feedback/Analytics;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3, v2}, Lcom/tencent/feedback/common/strategy/a;->a(Landroid/content/Context;Lcom/tencent/feedback/common/strategy/UploadStrategyBean;)V

    .line 108
    const-string v0, "enableCrashRecord end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized enableSpeedRecord(Z)V
    .locals 4
    .parameter

    .prologue
    .line 176
    const-class v1, Lcom/tencent/feedback/Analytics;

    monitor-enter v1

    :try_start_0
    const-string v0, "Analytics.enableSpeedRecord() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 177
    invoke-static {}, Lcom/tencent/feedback/common/Constants;->isAllFunctionPowerOff()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    const-string v0, "Analytics function close"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 183
    :cond_1
    :try_start_1
    sget-object v0, Lcom/tencent/feedback/Analytics;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 187
    sget-object v0, Lcom/tencent/feedback/Analytics;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/feedback/common/strategy/a;->a(Landroid/content/Context;)Lcom/tencent/feedback/common/strategy/a;

    move-result-object v0

    .line 188
    sget-object v2, Lcom/tencent/feedback/Analytics;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/tencent/feedback/common/strategy/a;->c(Landroid/content/Context;)Lcom/tencent/feedback/common/strategy/UploadStrategyBean;

    move-result-object v2

    .line 189
    invoke-virtual {v2, p0}, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->setSpeedMonitorUserOpen(Z)V

    .line 190
    sget-object v3, Lcom/tencent/feedback/Analytics;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3, v2}, Lcom/tencent/feedback/common/strategy/a;->a(Landroid/content/Context;Lcom/tencent/feedback/common/strategy/UploadStrategyBean;)V

    .line 191
    const-string v0, "Analytics.enableSpeedRecord() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized enableUserActionRecord(Z)V
    .locals 4
    .parameter

    .prologue
    .line 151
    const-class v1, Lcom/tencent/feedback/Analytics;

    monitor-enter v1

    :try_start_0
    const-string v0, "enableUserActionRecord start!"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 152
    invoke-static {}, Lcom/tencent/feedback/common/Constants;->isAllFunctionPowerOff()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    const-string v0, "Analytics function close"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    :goto_0
    monitor-exit v1

    return-void

    .line 158
    :cond_0
    :try_start_1
    sget-object v0, Lcom/tencent/feedback/Analytics;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 160
    const-string v0, "mContext == null ,return"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 164
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "user action :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 166
    sget-object v0, Lcom/tencent/feedback/Analytics;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/feedback/common/strategy/a;->a(Landroid/content/Context;)Lcom/tencent/feedback/common/strategy/a;

    move-result-object v0

    .line 167
    sget-object v2, Lcom/tencent/feedback/Analytics;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/tencent/feedback/common/strategy/a;->c(Landroid/content/Context;)Lcom/tencent/feedback/common/strategy/UploadStrategyBean;

    move-result-object v2

    .line 168
    invoke-virtual {v2, p0}, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->setUserEventUserOpen(Z)V

    .line 169
    sget-object v3, Lcom/tencent/feedback/Analytics;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3, v2}, Lcom/tencent/feedback/common/strategy/a;->a(Landroid/content/Context;Lcom/tencent/feedback/common/strategy/UploadStrategyBean;)V

    .line 170
    const-string v0, "enableUserActionRecord end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized getDefaultUpload(Landroid/content/Context;)Lcom/tencent/feedback/upload/UploadHandler;
    .locals 2
    .parameter

    .prologue
    .line 139
    const-class v1, Lcom/tencent/feedback/Analytics;

    monitor-enter v1

    :try_start_0
    const-string v0, "Analytics.getDefaultUpload() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 140
    invoke-static {}, Lcom/tencent/feedback/common/Constants;->isAllFunctionPowerOff()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    const-string v0, "Analytics function close"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    const/4 v0, 0x0

    .line 145
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/tencent/feedback/upload/e;->a(Landroid/content/Context;)Lcom/tencent/feedback/upload/e;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized onAppExited(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 219
    const-class v1, Lcom/tencent/feedback/Analytics;

    monitor-enter v1

    :try_start_0
    const-string v0, "Analytics.onAppExited start"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 220
    invoke-static {}, Lcom/tencent/feedback/common/Constants;->isAllFunctionPowerOff()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    const-string v0, "Analytics function close"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    :goto_0
    monitor-exit v1

    return-void

    .line 225
    :cond_0
    :try_start_1
    sget-object v0, Lcom/tencent/feedback/Analytics;->mSdkModules:[Lcom/tencent/feedback/common/e;

    if-eqz v0, :cond_2

    .line 227
    const/4 v0, 0x0

    :goto_1
    sget-object v2, Lcom/tencent/feedback/Analytics;->mSdkModules:[Lcom/tencent/feedback/common/e;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 229
    sget-object v2, Lcom/tencent/feedback/Analytics;->mSdkModules:[Lcom/tencent/feedback/common/e;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    .line 230
    sget-object v2, Lcom/tencent/feedback/Analytics;->mSdkModules:[Lcom/tencent/feedback/common/e;

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Lcom/tencent/feedback/common/e;->onAppExited(Landroid/content/Context;)V

    .line 227
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 233
    :cond_2
    const-string v0, "Analytics.onAppExited end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 219
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized onAppLaunched(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 196
    const-class v1, Lcom/tencent/feedback/Analytics;

    monitor-enter v1

    :try_start_0
    const-string v0, "Analytics.onAppLaunched start"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 197
    invoke-static {}, Lcom/tencent/feedback/common/Constants;->isAllFunctionPowerOff()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    const-string v0, "Analytics function close"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    :goto_0
    monitor-exit v1

    return-void

    .line 202
    :cond_0
    :try_start_1
    sget-object v0, Lcom/tencent/feedback/Analytics;->mSdkModules:[Lcom/tencent/feedback/common/e;

    if-eqz v0, :cond_2

    .line 204
    const/4 v0, 0x0

    :goto_1
    sget-object v2, Lcom/tencent/feedback/Analytics;->mSdkModules:[Lcom/tencent/feedback/common/e;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 206
    sget-object v2, Lcom/tencent/feedback/Analytics;->mSdkModules:[Lcom/tencent/feedback/common/e;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    .line 207
    sget-object v2, Lcom/tencent/feedback/Analytics;->mSdkModules:[Lcom/tencent/feedback/common/e;

    aget-object v2, v2, v0

    invoke-virtual {v2, p0}, Lcom/tencent/feedback/common/e;->onAppLauched(Landroid/content/Context;)V

    .line 204
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 210
    :cond_2
    const-string v0, "Analytics.onAppLaunched end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setUserID(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 115
    const-class v1, Lcom/tencent/feedback/Analytics;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/tencent/feedback/common/Constants;->isAllFunctionPowerOff()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    const-string v0, "Analytics function close"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 121
    :cond_1
    if-eqz p0, :cond_0

    .line 124
    :try_start_1
    invoke-static {}, Lcom/tencent/feedback/common/CommonInfo;->getCommonInfo()Lcom/tencent/feedback/common/CommonInfo;

    move-result-object v0

    .line 126
    if-nez v0, :cond_2

    .line 128
    sget-object v0, Lcom/tencent/feedback/Analytics;->mContext:Landroid/content/Context;

    const-string v2, "unknow"

    invoke-static {v0, p0, v2}, Lcom/tencent/feedback/common/CommonInfo;->createCommonInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 132
    :cond_2
    :try_start_2
    invoke-virtual {v0, p0}, Lcom/tencent/feedback/common/CommonInfo;->setUserid(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
