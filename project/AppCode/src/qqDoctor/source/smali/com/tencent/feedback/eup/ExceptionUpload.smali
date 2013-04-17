.class public Lcom/tencent/feedback/eup/ExceptionUpload;
.super Lcom/tencent/feedback/common/e;
.source "ExceptionUpload.java"


# static fields
.field private static eupDatas:Lcom/tencent/feedback/eup/l;

.field private static instance:Lcom/tencent/feedback/eup/ExceptionUpload;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/feedback/eup/ExceptionUpload;->eupDatas:Lcom/tencent/feedback/eup/l;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/feedback/upload/UploadHandler;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 380
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/feedback/common/e;-><init>(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/feedback/upload/UploadHandler;)V

    .line 381
    const-class v1, Lcom/tencent/feedback/eup/ExceptionUpload;

    monitor-enter v1

    .line 384
    :try_start_0
    new-instance v0, Lcom/tencent/feedback/eup/l;

    iget-object v2, p0, Lcom/tencent/feedback/eup/ExceptionUpload;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/tencent/feedback/eup/l;-><init>(Landroid/content/Context;)V

    .line 385
    sput-object v0, Lcom/tencent/feedback/eup/ExceptionUpload;->eupDatas:Lcom/tencent/feedback/eup/l;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/tencent/feedback/eup/l;->a(Z)V

    .line 386
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    invoke-static {p1}, Lcom/tencent/feedback/eup/g;->a(Landroid/content/Context;)Lcom/tencent/feedback/eup/g;

    move-result-object v0

    .line 389
    invoke-virtual {v0, v3}, Lcom/tencent/feedback/eup/g;->c(Z)V

    .line 391
    return-void

    .line 386
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/feedback/upload/UploadHandler;Z)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 413
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/feedback/common/e;-><init>(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/feedback/upload/UploadHandler;)V

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "using eupMerge "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 415
    const-class v1, Lcom/tencent/feedback/eup/ExceptionUpload;

    monitor-enter v1

    .line 417
    :try_start_0
    new-instance v0, Lcom/tencent/feedback/eup/l;

    iget-object v2, p0, Lcom/tencent/feedback/eup/ExceptionUpload;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/tencent/feedback/eup/l;-><init>(Landroid/content/Context;)V

    .line 418
    sput-object v0, Lcom/tencent/feedback/eup/ExceptionUpload;->eupDatas:Lcom/tencent/feedback/eup/l;

    invoke-virtual {v0, p5}, Lcom/tencent/feedback/eup/l;->a(Z)V

    .line 419
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    invoke-static {p1}, Lcom/tencent/feedback/eup/g;->a(Landroid/content/Context;)Lcom/tencent/feedback/eup/g;

    move-result-object v0

    .line 422
    invoke-virtual {v0, p5}, Lcom/tencent/feedback/eup/g;->c(Z)V

    .line 424
    return-void

    .line 419
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static doUploadExceptionDatas(I)V
    .locals 4
    .parameter

    .prologue
    .line 256
    const-string v0, "ExceptionUpload.doUploadExceptionDatas() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 258
    invoke-static {}, Lcom/tencent/feedback/common/Constants;->isAllFunctionPowerOff()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    const-string v0, "ExceptionUpload function close"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    const-class v1, Lcom/tencent/feedback/eup/ExceptionUpload;

    monitor-enter v1

    .line 270
    :try_start_0
    sget-object v0, Lcom/tencent/feedback/eup/ExceptionUpload;->instance:Lcom/tencent/feedback/eup/ExceptionUpload;

    .line 271
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/tencent/feedback/common/e;->isEnableModule()Z

    move-result v1

    if-nez v1, :cond_3

    .line 275
    :cond_2
    const-string v0, "ExceptionUpload SDKModule instance == null || !instance.isEnableModule() , return!"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 271
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 279
    :cond_3
    if-lez p0, :cond_0

    .line 282
    invoke-static {p0}, Lcom/tencent/feedback/eup/ExceptionUpload;->getExceptionUploadDatas(I)Lcom/tencent/feedback/upload/AbstractUploadDatas;

    move-result-object v1

    .line 283
    invoke-static {}, Lcom/tencent/feedback/eup/ExceptionUpload;->getMyUpload()Lcom/tencent/feedback/upload/UploadHandler;

    move-result-object v2

    .line 285
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 288
    invoke-virtual {v0}, Lcom/tencent/feedback/common/e;->isStartAfterQuery()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/tencent/feedback/common/e;->isQueryFinish()Z

    move-result v0

    if-nez v0, :cond_4

    .line 290
    const-string v0, "diable ,should wait for queryfinish!"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 297
    :cond_4
    :try_start_1
    sget-object v0, Lcom/tencent/feedback/eup/ExceptionUpload;->eupDatas:Lcom/tencent/feedback/eup/l;

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-interface {v2, v0, v1, v3}, Lcom/tencent/feedback/upload/UploadHandler;->doUpload(Lcom/tencent/feedback/upload/AbstractUploadDatas;Lcom/tencent/feedback/upload/OnUploadFinshed;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 304
    :goto_1
    const-string v0, "ExceptionUpload.doUploadExceptionDatas() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 299
    :catch_0
    move-exception v0

    .line 301
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 302
    const-string v0, "ExceptionUpload.doUploadExceptionDatas error"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getDefaultContract()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    invoke-static {}, Lcom/tencent/feedback/eup/g;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultUpload(Landroid/content/Context;)Lcom/tencent/feedback/upload/UploadHandler;
    .locals 1
    .parameter

    .prologue
    .line 209
    invoke-static {p0}, Lcom/tencent/feedback/upload/e;->a(Landroid/content/Context;)Lcom/tencent/feedback/upload/e;

    move-result-object v0

    return-object v0
.end method

.method public static getEupUserConfirmer()Lcom/tencent/feedback/eup/IEupUserConfirmer;
    .locals 1

    .prologue
    .line 129
    invoke-static {}, Lcom/tencent/feedback/eup/g;->d()Lcom/tencent/feedback/eup/IEupUserConfirmer;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getExceptionUploadDatas(I)Lcom/tencent/feedback/upload/AbstractUploadDatas;
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 216
    const-class v1, Lcom/tencent/feedback/eup/ExceptionUpload;

    monitor-enter v1

    :try_start_0
    const-string v2, "ExceptionUpload.getExceptionUploadDatas() start"

    invoke-static {v2}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 218
    invoke-static {}, Lcom/tencent/feedback/common/Constants;->isAllFunctionPowerOff()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 220
    const-string v2, "ExceptionUpload function close"

    invoke-static {v2}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    :cond_0
    :goto_0
    monitor-exit v1

    return-object v0

    .line 223
    :cond_1
    :try_start_1
    sget-object v2, Lcom/tencent/feedback/eup/ExceptionUpload;->instance:Lcom/tencent/feedback/eup/ExceptionUpload;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/tencent/feedback/eup/ExceptionUpload;->instance:Lcom/tencent/feedback/eup/ExceptionUpload;

    invoke-virtual {v2}, Lcom/tencent/feedback/eup/ExceptionUpload;->isEnableModule()Z

    move-result v2

    if-nez v2, :cond_3

    .line 225
    :cond_2
    const-string v2, "ExceptionUpload SDKModule instance == null || !instance.isEnableModule() , return!"

    invoke-static {v2}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 216
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 229
    :cond_3
    if-lez p0, :cond_0

    .line 232
    :try_start_2
    sget-object v2, Lcom/tencent/feedback/eup/ExceptionUpload;->instance:Lcom/tencent/feedback/eup/ExceptionUpload;

    invoke-virtual {v2}, Lcom/tencent/feedback/eup/ExceptionUpload;->getmContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/feedback/eup/g;->a(Landroid/content/Context;)Lcom/tencent/feedback/eup/g;

    move-result-object v2

    .line 233
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/tencent/feedback/eup/g;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 236
    sget-object v2, Lcom/tencent/feedback/eup/ExceptionUpload;->eupDatas:Lcom/tencent/feedback/eup/l;

    if-eqz v2, :cond_0

    .line 239
    sget-object v2, Lcom/tencent/feedback/eup/ExceptionUpload;->instance:Lcom/tencent/feedback/eup/ExceptionUpload;

    invoke-virtual {v2}, Lcom/tencent/feedback/eup/ExceptionUpload;->isStartAfterQuery()Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lcom/tencent/feedback/eup/ExceptionUpload;->instance:Lcom/tencent/feedback/eup/ExceptionUpload;

    invoke-virtual {v2}, Lcom/tencent/feedback/eup/ExceptionUpload;->isQueryFinish()Z

    move-result v2

    if-nez v2, :cond_4

    .line 241
    const-string v2, "diable ,should wait for queryfinish!"

    invoke-static {v2}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 245
    :cond_4
    sget-object v0, Lcom/tencent/feedback/eup/ExceptionUpload;->eupDatas:Lcom/tencent/feedback/eup/l;

    invoke-virtual {v0}, Lcom/tencent/feedback/eup/l;->a()I

    move-result v0

    if-eq v0, p0, :cond_5

    .line 246
    sget-object v0, Lcom/tencent/feedback/eup/ExceptionUpload;->eupDatas:Lcom/tencent/feedback/eup/l;

    invoke-virtual {v0, p0}, Lcom/tencent/feedback/eup/l;->a(I)V

    .line 248
    :cond_5
    sget-object v0, Lcom/tencent/feedback/eup/ExceptionUpload;->eupDatas:Lcom/tencent/feedback/eup/l;

    invoke-static {}, Lcom/tencent/feedback/eup/g;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/feedback/eup/l;->a(Ljava/lang/String;)V

    .line 249
    const-string v0, "ExceptionUpload.getExceptionUploadDatas() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 250
    sget-object v0, Lcom/tencent/feedback/eup/ExceptionUpload;->eupDatas:Lcom/tencent/feedback/eup/l;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/feedback/upload/UploadHandler;)Lcom/tencent/feedback/eup/ExceptionUpload;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 56
    const-class v0, Lcom/tencent/feedback/eup/ExceptionUpload;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, p2, p3, v1}, Lcom/tencent/feedback/eup/ExceptionUpload;->getInstance(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/feedback/upload/UploadHandler;Z)Lcom/tencent/feedback/eup/ExceptionUpload;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/feedback/upload/UploadHandler;Z)Lcom/tencent/feedback/eup/ExceptionUpload;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 79
    const-class v6, Lcom/tencent/feedback/eup/ExceptionUpload;

    monitor-enter v6

    :try_start_0
    sget-object v0, Lcom/tencent/feedback/eup/ExceptionUpload;->instance:Lcom/tencent/feedback/eup/ExceptionUpload;

    if-nez v0, :cond_0

    .line 81
    const-string v0, "create ExceptionUpload instance"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 82
    new-instance v0, Lcom/tencent/feedback/eup/ExceptionUpload;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/tencent/feedback/eup/ExceptionUpload;-><init>(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/feedback/upload/UploadHandler;Z)V

    sput-object v0, Lcom/tencent/feedback/eup/ExceptionUpload;->instance:Lcom/tencent/feedback/eup/ExceptionUpload;

    .line 84
    :cond_0
    sget-object v0, Lcom/tencent/feedback/eup/ExceptionUpload;->instance:Lcom/tencent/feedback/eup/ExceptionUpload;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    return-object v0

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public static declared-synchronized getMyUpload()Lcom/tencent/feedback/upload/UploadHandler;
    .locals 2

    .prologue
    .line 196
    const-class v1, Lcom/tencent/feedback/eup/ExceptionUpload;

    monitor-enter v1

    :try_start_0
    const-string v0, "ExceptionUpload.getMyUpload() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 198
    sget-object v0, Lcom/tencent/feedback/eup/ExceptionUpload;->instance:Lcom/tencent/feedback/eup/ExceptionUpload;

    if-nez v0, :cond_0

    .line 200
    const-string v0, "ExceptionUpload SDKModule instance == null , return!"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    const/4 v0, 0x0

    .line 203
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/tencent/feedback/eup/ExceptionUpload;->instance:Lcom/tencent/feedback/eup/ExceptionUpload;

    invoke-virtual {v0}, Lcom/tencent/feedback/eup/ExceptionUpload;->getUploadHandler()Lcom/tencent/feedback/upload/UploadHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getYourUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    .prologue
    .line 144
    invoke-static {}, Lcom/tencent/feedback/eup/g;->a()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    return-object v0
.end method

.method public static handleCatchException(Ljava/lang/Thread;Ljava/lang/Throwable;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 315
    const-string v1, "ExceptionUpload.handleCatchException() start"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 317
    invoke-static {}, Lcom/tencent/feedback/common/Constants;->isAllFunctionPowerOff()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 319
    const-string v1, "ExceptionUpload function close"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 359
    :goto_0
    return v0

    .line 323
    :cond_0
    const-class v1, Lcom/tencent/feedback/eup/ExceptionUpload;

    monitor-enter v1

    .line 325
    :try_start_0
    sget-object v2, Lcom/tencent/feedback/eup/ExceptionUpload;->instance:Lcom/tencent/feedback/eup/ExceptionUpload;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/tencent/feedback/eup/ExceptionUpload;->instance:Lcom/tencent/feedback/eup/ExceptionUpload;

    invoke-virtual {v2}, Lcom/tencent/feedback/eup/ExceptionUpload;->isEnableModule()Z

    move-result v2

    if-nez v2, :cond_2

    .line 327
    :cond_1
    const-string v2, "ExceptionUpload SDKModule instance == null || !instance.isEnableModule() , return!"

    invoke-static {v2}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    .line 328
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 336
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 331
    :cond_2
    :try_start_1
    sget-object v2, Lcom/tencent/feedback/eup/ExceptionUpload;->instance:Lcom/tencent/feedback/eup/ExceptionUpload;

    invoke-virtual {v2}, Lcom/tencent/feedback/eup/ExceptionUpload;->isStartAfterQuery()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/tencent/feedback/eup/ExceptionUpload;->instance:Lcom/tencent/feedback/eup/ExceptionUpload;

    invoke-virtual {v2}, Lcom/tencent/feedback/eup/ExceptionUpload;->isQueryFinish()Z

    move-result v2

    if-nez v2, :cond_3

    .line 333
    const-string v2, "diable ,should wait for queryfinish!"

    invoke-static {v2}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 334
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 336
    :cond_3
    monitor-exit v1

    .line 340
    :try_start_2
    const-string v1, "eup handleCatchException!"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 342
    sget-object v1, Lcom/tencent/feedback/eup/ExceptionUpload;->instance:Lcom/tencent/feedback/eup/ExceptionUpload;

    invoke-virtual {v1}, Lcom/tencent/feedback/eup/ExceptionUpload;->getmContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/feedback/eup/g;->a(Landroid/content/Context;)Lcom/tencent/feedback/eup/g;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v1

    .line 343
    if-nez v1, :cond_4

    .line 344
    const-string v1, "ExceptionUpload.handleCatchException() end"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 346
    :cond_4
    const/4 v2, 0x0

    :try_start_3
    invoke-virtual {v1, p0, p1, v2}, Lcom/tencent/feedback/eup/g;->a(Ljava/lang/Thread;Ljava/lang/Throwable;Z)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    move-result v0

    .line 359
    const-string v1, "ExceptionUpload.handleCatchException() end"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 349
    :catch_0
    move-exception v1

    .line 352
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 353
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    .line 354
    const-string v1, "ExceptionUpload.handleCatchException() error"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 355
    const-string v1, "ExceptionUpload.handleCatchException() end"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    goto :goto_0

    :catchall_1
    move-exception v0

    const-string v1, "ExceptionUpload.handleCatchException() end"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    throw v0
.end method

.method public static isDefaultEUP()Z
    .locals 1

    .prologue
    .line 165
    invoke-static {}, Lcom/tencent/feedback/eup/g;->b()Z

    move-result v0

    return v0
.end method

.method public static setDefaultContract(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 151
    invoke-static {p0}, Lcom/tencent/feedback/eup/g;->b(Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method public static setDefaultEUP(Z)V
    .locals 0
    .parameter

    .prologue
    .line 172
    invoke-static {p0}, Lcom/tencent/feedback/eup/g;->a(Z)V

    .line 173
    return-void
.end method

.method public static setEupParams(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 102
    invoke-static {p1}, Lcom/tencent/feedback/eup/g;->a(I)V

    .line 103
    invoke-static {p0}, Lcom/tencent/feedback/eup/g;->a(Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public static setEupUserConfirmer(Lcom/tencent/feedback/eup/IEupUserConfirmer;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    invoke-static {p0}, Lcom/tencent/feedback/eup/g;->a(Lcom/tencent/feedback/eup/IEupUserConfirmer;)V

    .line 124
    return-void
.end method

.method public static declared-synchronized setInstance(Lcom/tencent/feedback/eup/ExceptionUpload;)V
    .locals 2
    .parameter

    .prologue
    .line 90
    const-class v1, Lcom/tencent/feedback/eup/ExceptionUpload;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/feedback/eup/ExceptionUpload;->instance:Lcom/tencent/feedback/eup/ExceptionUpload;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/feedback/eup/ExceptionUpload;->instance:Lcom/tencent/feedback/eup/ExceptionUpload;

    if-eq v0, p0, :cond_0

    .line 92
    const-string v0, "close old one,to permit no mutiple instances in memory!"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 93
    sget-object v0, Lcom/tencent/feedback/eup/ExceptionUpload;->instance:Lcom/tencent/feedback/eup/ExceptionUpload;

    invoke-virtual {v0}, Lcom/tencent/feedback/eup/ExceptionUpload;->closeSDKModule()V

    .line 95
    :cond_0
    sput-object p0, Lcom/tencent/feedback/eup/ExceptionUpload;->instance:Lcom/tencent/feedback/eup/ExceptionUpload;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    monitor-exit v1

    return-void

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setMyUpload(Lcom/tencent/feedback/upload/UploadHandler;)V
    .locals 2
    .parameter

    .prologue
    .line 181
    const-class v1, Lcom/tencent/feedback/eup/ExceptionUpload;

    monitor-enter v1

    :try_start_0
    const-string v0, "ExceptionUpload.setMyUpload() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 183
    sget-object v0, Lcom/tencent/feedback/eup/ExceptionUpload;->instance:Lcom/tencent/feedback/eup/ExceptionUpload;

    if-nez v0, :cond_0

    .line 185
    const-string v0, "ExceptionUpload SDKModule instance == null || !instance.isEnableModule() , return!"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    :goto_0
    monitor-exit v1

    return-void

    .line 189
    :cond_0
    :try_start_1
    sget-object v0, Lcom/tencent/feedback/eup/ExceptionUpload;->instance:Lcom/tencent/feedback/eup/ExceptionUpload;

    invoke-virtual {v0, p0}, Lcom/tencent/feedback/eup/ExceptionUpload;->setUploadHandler(Lcom/tencent/feedback/upload/UploadHandler;)V

    .line 190
    const-string v0, "ExceptionUpload.setMyUpload() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static setUserID(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 109
    invoke-static {}, Lcom/tencent/feedback/common/CommonInfo;->getCommonInfo()Lcom/tencent/feedback/common/CommonInfo;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0, p0}, Lcom/tencent/feedback/common/CommonInfo;->setUserid(Ljava/lang/String;)V

    .line 115
    :cond_0
    return-void
.end method

.method public static setYourUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 138
    invoke-static {p0}, Lcom/tencent/feedback/eup/g;->a(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 139
    return-void
.end method


# virtual methods
.method public onAppExited(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 522
    invoke-super {p0, p1}, Lcom/tencent/feedback/common/e;->onAppExited(Landroid/content/Context;)V

    .line 523
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/feedback/eup/ExceptionUpload;->setInstance(Lcom/tencent/feedback/eup/ExceptionUpload;)V

    .line 524
    return-void
.end method

.method public onInitByQuery()V
    .locals 2

    .prologue
    .line 483
    invoke-super {p0}, Lcom/tencent/feedback/common/e;->onInitByQuery()V

    .line 484
    const-string v0, "ExceptionUpload.onInitByQuery() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 488
    :try_start_0
    iget-object v0, p0, Lcom/tencent/feedback/eup/ExceptionUpload;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/feedback/eup/g;->a(Landroid/content/Context;)Lcom/tencent/feedback/eup/g;

    move-result-object v0

    .line 489
    if-eqz v0, :cond_0

    .line 490
    invoke-virtual {v0}, Lcom/tencent/feedback/eup/g;->f()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    :cond_0
    :goto_0
    const-string v0, "ExceptionUpload.onInitByQuery() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 499
    return-void

    .line 492
    :catch_0
    move-exception v0

    .line 494
    const-string v1, "ExceptionUpload.onInitByQuery error"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    .line 495
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onLocalVersionChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExceptionUpload.onLocalVersionChanged from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 506
    const-string v0, "deleted old eup reord"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 509
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleted eups :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/feedback/eup/ExceptionUpload;->mContext:Landroid/content/Context;

    const-wide/16 v2, -0x1

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v1, v2, v3, v4, v5}, Lcom/tencent/feedback/common/f$a;->a(Landroid/content/Context;JJ)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    :goto_0
    return-void

    .line 511
    :catch_0
    move-exception v0

    .line 513
    const-string v1, "deleted old eup datas Error error"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    .line 514
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onUploadStrategyChange(Lcom/tencent/feedback/common/strategy/UploadStrategyBean;)V
    .locals 1
    .parameter

    .prologue
    .line 469
    invoke-super {p0, p1}, Lcom/tencent/feedback/common/e;->onUploadStrategyChange(Lcom/tencent/feedback/common/strategy/UploadStrategyBean;)V

    .line 470
    const-string v0, "ExceptionUpload.onUploadStrategyChange() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 472
    if-eqz p1, :cond_0

    .line 474
    invoke-virtual {p1}, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->isExceptionUploadServerOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->isExceptionUploadUserOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/tencent/feedback/eup/ExceptionUpload;->setEnableModule(Z)V

    .line 476
    :cond_0
    const-string v0, "ExceptionUpload.onUploadStrategyChange() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 477
    return-void

    .line 474
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized setEnableModule(Z)V
    .locals 1
    .parameter

    .prologue
    .line 456
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/tencent/feedback/common/e;->setEnableModule(Z)V

    .line 457
    iget-object v0, p0, Lcom/tencent/feedback/eup/ExceptionUpload;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/feedback/eup/g;->a(Landroid/content/Context;)Lcom/tencent/feedback/eup/g;

    move-result-object v0

    .line 458
    if-eqz v0, :cond_0

    .line 460
    invoke-virtual {v0, p1}, Lcom/tencent/feedback/eup/g;->b(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 463
    :cond_0
    monitor-exit p0

    return-void

    .line 456
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setIsUseEup(Z)V
    .locals 3
    .parameter

    .prologue
    .line 429
    const-string v0, "ExceptionUpload.setIsUseEup() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 430
    invoke-static {}, Lcom/tencent/feedback/common/Constants;->isAllFunctionPowerOff()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    const-string v0, "Analytics function close"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 450
    :goto_0
    return-void

    .line 436
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "user eup action :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 438
    iget-object v0, p0, Lcom/tencent/feedback/eup/ExceptionUpload;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 440
    const-string v0, "mContext == null!,return"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 444
    :cond_1
    iget-object v0, p0, Lcom/tencent/feedback/eup/ExceptionUpload;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/feedback/common/strategy/a;->a(Landroid/content/Context;)Lcom/tencent/feedback/common/strategy/a;

    move-result-object v0

    .line 445
    iget-object v1, p0, Lcom/tencent/feedback/eup/ExceptionUpload;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tencent/feedback/common/strategy/a;->c(Landroid/content/Context;)Lcom/tencent/feedback/common/strategy/UploadStrategyBean;

    move-result-object v1

    .line 446
    invoke-virtual {v1, p1}, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->setExceptionUploadUserOpen(Z)V

    .line 447
    iget-object v2, p0, Lcom/tencent/feedback/eup/ExceptionUpload;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Lcom/tencent/feedback/common/strategy/a;->a(Landroid/content/Context;Lcom/tencent/feedback/common/strategy/UploadStrategyBean;)V

    .line 449
    const-string v0, "ExceptionUpload.setIsUseEup() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method
