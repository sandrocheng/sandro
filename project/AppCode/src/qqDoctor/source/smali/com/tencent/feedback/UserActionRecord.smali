.class public Lcom/tencent/feedback/UserActionRecord;
.super Lcom/tencent/feedback/common/e;
.source "UserActionRecord.java"


# static fields
.field public static final AppExited:Ljava/lang/String; = "rqd_appexited"

.field public static final AppLaunchedEvent:Ljava/lang/String; = "rqd_applaunched"

.field public static final Count_NotWifiConsumed:Ljava/lang/String; = "rqd_upload_nowifi_consumed"

.field public static final Count_WifiConsumed:Ljava/lang/String; = "rqd_upload_wifi_consumed"

.field private static final DAYSAGOSHOULDDELETE:I = 0x7

.field public static final DisplayEvent:Ljava/lang/String; = "rqd_display"

.field public static final Today_ConsumedTooMuch:Ljava/lang/String; = "rqd_upload_maxdayflow_reached"

.field private static commonRecorder:Lcom/tencent/feedback/c/a;

.field private static commonUploadDatas:Lcom/tencent/feedback/c/d;

.field protected static instance:Lcom/tencent/feedback/UserActionRecord;

.field private static isOpenUpload:Z

.field private static mMaxDailyConsume:J

.field protected static realTimeRecorder:Lcom/tencent/feedback/c/f;

.field private static realTimeUplaodDatas:Lcom/tencent/feedback/c/h;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 59
    sput-object v0, Lcom/tencent/feedback/UserActionRecord;->commonRecorder:Lcom/tencent/feedback/c/a;

    .line 60
    sput-object v0, Lcom/tencent/feedback/UserActionRecord;->realTimeRecorder:Lcom/tencent/feedback/c/f;

    .line 61
    sput-object v0, Lcom/tencent/feedback/UserActionRecord;->commonUploadDatas:Lcom/tencent/feedback/c/d;

    .line 62
    sput-object v0, Lcom/tencent/feedback/UserActionRecord;->realTimeUplaodDatas:Lcom/tencent/feedback/c/h;

    .line 63
    sput-object v0, Lcom/tencent/feedback/UserActionRecord;->instance:Lcom/tencent/feedback/UserActionRecord;

    .line 64
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/feedback/UserActionRecord;->isOpenUpload:Z

    .line 65
    const-wide v0, 0x7fffffffffffffffL

    sput-wide v0, Lcom/tencent/feedback/UserActionRecord;->mMaxDailyConsume:J

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/feedback/upload/UploadHandler;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 498
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/feedback/common/e;-><init>(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/feedback/upload/UploadHandler;)V

    .line 501
    invoke-static {p1}, Lcom/tencent/feedback/upload/e;->a(Landroid/content/Context;)Lcom/tencent/feedback/upload/e;

    move-result-object v0

    .line 502
    if-eqz v0, :cond_0

    const-class v1, Lcom/tencent/feedback/upload/e;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 504
    const-class v1, Lcom/tencent/feedback/upload/e;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/feedback/upload/e;

    .line 505
    new-instance v1, Lcom/tencent/feedback/a/b;

    invoke-direct {v1, p1}, Lcom/tencent/feedback/a/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/tencent/feedback/upload/e;->a(Lcom/tencent/feedback/upload/e$a;)V

    .line 506
    new-instance v1, Lcom/tencent/feedback/b/a;

    invoke-direct {v1, p1}, Lcom/tencent/feedback/b/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/tencent/feedback/upload/e;->a(Lcom/tencent/feedback/upload/e$b;)V

    .line 509
    :cond_0
    const-class v1, Lcom/tencent/feedback/UserActionRecord;

    monitor-enter v1

    .line 512
    :try_start_0
    new-instance v0, Lcom/tencent/feedback/c/a;

    invoke-direct {v0, p1}, Lcom/tencent/feedback/c/a;-><init>(Landroid/content/Context;)V

    .line 513
    sput-object v0, Lcom/tencent/feedback/UserActionRecord;->commonRecorder:Lcom/tencent/feedback/c/a;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/tencent/feedback/c/a;->a(Z)V

    .line 515
    new-instance v0, Lcom/tencent/feedback/c/d;

    invoke-direct {v0, p1}, Lcom/tencent/feedback/c/d;-><init>(Landroid/content/Context;)V

    .line 516
    sput-object v0, Lcom/tencent/feedback/UserActionRecord;->commonUploadDatas:Lcom/tencent/feedback/c/d;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/tencent/feedback/c/d;->a(Z)V

    .line 518
    new-instance v0, Lcom/tencent/feedback/c/f;

    invoke-direct {v0, p1}, Lcom/tencent/feedback/c/f;-><init>(Landroid/content/Context;)V

    .line 519
    sput-object v0, Lcom/tencent/feedback/UserActionRecord;->realTimeRecorder:Lcom/tencent/feedback/c/f;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/tencent/feedback/c/f;->a(Z)V

    .line 521
    new-instance v0, Lcom/tencent/feedback/c/h;

    sget-object v2, Lcom/tencent/feedback/UserActionRecord;->realTimeRecorder:Lcom/tencent/feedback/c/f;

    invoke-direct {v0, p1, v2}, Lcom/tencent/feedback/c/h;-><init>(Landroid/content/Context;Lcom/tencent/feedback/c/f;)V

    .line 522
    sput-object v0, Lcom/tencent/feedback/UserActionRecord;->realTimeUplaodDatas:Lcom/tencent/feedback/c/h;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/tencent/feedback/c/h;->a(Z)V

    .line 523
    invoke-static {}, Lcom/tencent/feedback/common/f;->b()Lcom/tencent/feedback/common/a;

    move-result-object v0

    iget-wide v2, v0, Lcom/tencent/feedback/common/a;->f:J

    sput-wide v2, Lcom/tencent/feedback/UserActionRecord;->mMaxDailyConsume:J

    .line 524
    sput-object p0, Lcom/tencent/feedback/UserActionRecord;->instance:Lcom/tencent/feedback/UserActionRecord;

    .line 525
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic access$000(Lcom/tencent/feedback/UserActionRecord;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/tencent/feedback/UserActionRecord;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected static createdRecordBean(Ljava/lang/String;ZJJLjava/util/Map;)Lcom/tencent/feedback/c/i;
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 286
    .line 287
    const-class v3, Lcom/tencent/feedback/UserActionRecord;

    monitor-enter v3

    .line 289
    :try_start_0
    sget-object v2, Lcom/tencent/feedback/UserActionRecord;->instance:Lcom/tencent/feedback/UserActionRecord;

    .line 290
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    if-nez v2, :cond_0

    .line 294
    const-string v2, "instance == null , return!"

    invoke-static {v2}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    .line 295
    const/4 v2, 0x0

    .line 330
    :goto_0
    return-object v2

    .line 290
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 298
    :cond_0
    if-nez p0, :cond_1

    .line 299
    const/4 v2, 0x0

    goto :goto_0

    .line 301
    :cond_1
    invoke-static {}, Lcom/tencent/feedback/common/CommonInfo;->getCommonInfo()Lcom/tencent/feedback/common/CommonInfo;

    move-result-object v2

    .line 302
    if-nez v2, :cond_2

    .line 304
    const-string v2, "CommonInfo have not been Created return null!"

    invoke-static {v2}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    .line 305
    const/4 v2, 0x0

    goto :goto_0

    .line 308
    :cond_2
    invoke-virtual {v2}, Lcom/tencent/feedback/common/CommonInfo;->getUserid()Ljava/lang/String;

    move-result-object v3

    .line 309
    invoke-virtual {v2}, Lcom/tencent/feedback/common/CommonInfo;->getServerTimeGap()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/tencent/feedback/common/g;->a(J)J

    move-result-wide v4

    .line 310
    invoke-virtual {v2}, Lcom/tencent/feedback/common/CommonInfo;->getGateIP()Ljava/lang/String;

    move-result-object v6

    .line 311
    sget-object v7, Lcom/tencent/feedback/UserActionRecord;->instance:Lcom/tencent/feedback/UserActionRecord;

    invoke-virtual {v7}, Lcom/tencent/feedback/UserActionRecord;->getmContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/tencent/feedback/common/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 313
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 314
    if-eqz p6, :cond_3

    .line 315
    move-object/from16 v0, p6

    invoke-interface {v8, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 316
    :cond_3
    const-string v9, "rdmuid"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v8, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    const-string v3, "apn"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v8, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    const-string v3, "srcip"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v8, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    const-string v3, "isok"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v8, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    const-string v3, "elapse"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v8, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    const-string v3, "size"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, p4

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v8, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    const-string v3, "param_IMEI"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/tencent/feedback/common/CommonInfo;->getImei()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    new-instance v2, Lcom/tencent/feedback/c/i;

    invoke-direct {v2}, Lcom/tencent/feedback/c/i;-><init>()V

    .line 325
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/feedback/c/i;->b(Ljava/lang/String;)V

    .line 326
    invoke-virtual {v2, v4, v5}, Lcom/tencent/feedback/c/i;->b(J)V

    .line 327
    const-string v3, "UA"

    invoke-virtual {v2, v3}, Lcom/tencent/feedback/c/i;->a(Ljava/lang/String;)V

    .line 328
    invoke-virtual {v2, v8}, Lcom/tencent/feedback/c/i;->a(Ljava/util/Map;)V

    goto/16 :goto_0
.end method

.method public static doUploadRecentCommonData()V
    .locals 2

    .prologue
    .line 399
    const-string v0, "UserActionRecord.doUploadRecentCommonData() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 402
    const-class v1, Lcom/tencent/feedback/UserActionRecord;

    monitor-enter v1

    .line 404
    :try_start_0
    sget-object v0, Lcom/tencent/feedback/UserActionRecord;->instance:Lcom/tencent/feedback/UserActionRecord;

    .line 405
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/feedback/UserActionRecord;->isEnableModule()Z

    move-result v1

    if-nez v1, :cond_2

    .line 409
    :cond_0
    const-string v0, "UserActionRecord SDKModule instance == null || !instance.isEnableModule() , return!"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    .line 430
    :cond_1
    :goto_0
    return-void

    .line 405
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 413
    :cond_2
    iget-object v0, v0, Lcom/tencent/feedback/UserActionRecord;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/feedback/UserActionRecord;->isConsumeOverControl(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 421
    :try_start_1
    invoke-static {}, Lcom/tencent/feedback/common/f;->b()Lcom/tencent/feedback/common/a;

    move-result-object v0

    iget-wide v0, v0, Lcom/tencent/feedback/common/a;->c:J

    invoke-static {v0, v1}, Lcom/tencent/feedback/UserActionRecord;->doUploadRecentCommonDataOnSize(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 429
    :goto_1
    const-string v0, "UserActionRecord.doUploadRecentCommonData() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 423
    :catch_0
    move-exception v0

    .line 425
    const-string v1, "UserActionRecord.doUploadRecentCommonData error"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    .line 426
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected static doUploadRecentCommonDataOnSize(J)V
    .locals 7
    .parameter

    .prologue
    .line 435
    const-string v0, "UserActionRecord.doUploadRecentCommonDataOnSize() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 436
    invoke-static {}, Lcom/tencent/feedback/common/Constants;->isAllFunctionPowerOff()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 438
    const-string v0, "UserActionRecord function close"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 494
    :cond_0
    :goto_0
    return-void

    .line 443
    :cond_1
    const-class v1, Lcom/tencent/feedback/UserActionRecord;

    monitor-enter v1

    .line 445
    :try_start_0
    sget-object v0, Lcom/tencent/feedback/UserActionRecord;->instance:Lcom/tencent/feedback/UserActionRecord;

    .line 446
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 448
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/tencent/feedback/UserActionRecord;->isEnableModule()Z

    move-result v1

    if-nez v1, :cond_3

    .line 450
    :cond_2
    const-string v0, "UserActionRecord SDKModule instance == null || !instance.isEnableModule() , return!"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 446
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 454
    :cond_3
    invoke-virtual {v0}, Lcom/tencent/feedback/UserActionRecord;->isStartAfterQuery()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/tencent/feedback/UserActionRecord;->isQueryFinish()Z

    move-result v1

    if-nez v1, :cond_4

    .line 456
    const-string v0, "waiting for query fininsh,so return"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 460
    :cond_4
    iget-object v1, v0, Lcom/tencent/feedback/UserActionRecord;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/feedback/UserActionRecord;->isConsumeOverControl(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 466
    invoke-virtual {v0}, Lcom/tencent/feedback/UserActionRecord;->getUploadHandler()Lcom/tencent/feedback/upload/UploadHandler;

    move-result-object v1

    .line 468
    if-nez v1, :cond_5

    .line 470
    const-string v0, "uploader == null return"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 473
    :cond_5
    const-string v0, "get IUpload to start doUpload"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 477
    :try_start_1
    invoke-static {}, Lcom/tencent/feedback/UserActionRecord;->getCommonUploadDatas()Lcom/tencent/feedback/upload/AbstractUploadDatas;

    move-result-object v2

    .line 478
    if-eqz v2, :cond_6

    const-class v0, Lcom/tencent/feedback/c/d;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 480
    const-class v0, Lcom/tencent/feedback/c/d;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/feedback/c/d;

    .line 482
    invoke-virtual {v0}, Lcom/tencent/feedback/c/d;->a()J

    move-result-wide v3

    .line 483
    invoke-virtual {v0, p0, p1}, Lcom/tencent/feedback/c/d;->a(J)V

    .line 484
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v1, v2, v5, v6}, Lcom/tencent/feedback/upload/UploadHandler;->doUpload(Lcom/tencent/feedback/upload/AbstractUploadDatas;Lcom/tencent/feedback/upload/OnUploadFinshed;Ljava/lang/Object;)V

    .line 485
    invoke-virtual {v0, v3, v4}, Lcom/tencent/feedback/c/d;->a(J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 493
    :cond_6
    :goto_1
    const-string v0, "UserActionRecord.doUploadRecentCommonDataOnSize() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 488
    :catch_0
    move-exception v0

    .line 490
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 491
    const-string v0, "UserActionRecord.doUploadRecentCommonDataOnSize error"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static declared-synchronized getCommonUploadDatas()Lcom/tencent/feedback/upload/AbstractUploadDatas;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 336
    const-class v1, Lcom/tencent/feedback/UserActionRecord;

    monitor-enter v1

    :try_start_0
    const-string v2, "UserActionRecord.getCommonUploadDatas() start"

    invoke-static {v2}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 337
    invoke-static {}, Lcom/tencent/feedback/common/Constants;->isAllFunctionPowerOff()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 339
    const-string v2, "UserActionRecord function close"

    invoke-static {v2}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    :goto_0
    monitor-exit v1

    return-object v0

    .line 343
    :cond_0
    :try_start_1
    sget-object v2, Lcom/tencent/feedback/UserActionRecord;->instance:Lcom/tencent/feedback/UserActionRecord;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/tencent/feedback/UserActionRecord;->instance:Lcom/tencent/feedback/UserActionRecord;

    invoke-virtual {v2}, Lcom/tencent/feedback/UserActionRecord;->isEnableModule()Z

    move-result v2

    if-nez v2, :cond_2

    .line 345
    :cond_1
    const-string v2, "UserActionRecord SDKModule instance == null || !instance.isEnableModule() , return!"

    invoke-static {v2}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 336
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 349
    :cond_2
    :try_start_2
    sget-object v2, Lcom/tencent/feedback/UserActionRecord;->commonUploadDatas:Lcom/tencent/feedback/c/d;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/tencent/feedback/UserActionRecord;->commonUploadDatas:Lcom/tencent/feedback/c/d;

    invoke-virtual {v2}, Lcom/tencent/feedback/c/d;->b()Z

    move-result v2

    if-nez v2, :cond_4

    .line 351
    :cond_3
    const-string v2, "commonUploadDatas == null || !commonUploadDatas.isEnable()"

    invoke-static {v2}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 355
    :cond_4
    sget-object v2, Lcom/tencent/feedback/UserActionRecord;->instance:Lcom/tencent/feedback/UserActionRecord;

    invoke-virtual {v2}, Lcom/tencent/feedback/UserActionRecord;->isStartAfterQuery()Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/tencent/feedback/UserActionRecord;->instance:Lcom/tencent/feedback/UserActionRecord;

    invoke-virtual {v2}, Lcom/tencent/feedback/UserActionRecord;->isQueryFinish()Z

    move-result v2

    if-nez v2, :cond_5

    .line 357
    const-string v2, "waiting for query fininsh,so return"

    invoke-static {v2}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 361
    :cond_5
    sget-object v0, Lcom/tencent/feedback/UserActionRecord;->commonUploadDatas:Lcom/tencent/feedback/c/d;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static getDefaultUpload(Landroid/content/Context;)Lcom/tencent/feedback/upload/UploadHandler;
    .locals 1
    .parameter

    .prologue
    .line 149
    const-string v0, "UserActionRecord.getDefaultUpload() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 150
    invoke-static {p0}, Lcom/tencent/feedback/upload/e;->a(Landroid/content/Context;)Lcom/tencent/feedback/upload/e;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/feedback/upload/UploadHandler;)Lcom/tencent/feedback/UserActionRecord;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 93
    const-class v1, Lcom/tencent/feedback/UserActionRecord;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/feedback/UserActionRecord;->instance:Lcom/tencent/feedback/UserActionRecord;

    if-nez v0, :cond_0

    .line 95
    const-string v0, "create UserActionRecord instance"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 96
    new-instance v0, Lcom/tencent/feedback/UserActionRecord;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/tencent/feedback/UserActionRecord;-><init>(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/feedback/upload/UploadHandler;)V

    sput-object v0, Lcom/tencent/feedback/UserActionRecord;->instance:Lcom/tencent/feedback/UserActionRecord;

    .line 98
    :cond_0
    sget-object v0, Lcom/tencent/feedback/UserActionRecord;->instance:Lcom/tencent/feedback/UserActionRecord;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getMyUpload()Lcom/tencent/feedback/upload/UploadHandler;
    .locals 2

    .prologue
    .line 135
    const-class v1, Lcom/tencent/feedback/UserActionRecord;

    monitor-enter v1

    :try_start_0
    const-string v0, "UserActionRecord.getMyUpload() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 137
    sget-object v0, Lcom/tencent/feedback/UserActionRecord;->instance:Lcom/tencent/feedback/UserActionRecord;

    if-nez v0, :cond_0

    .line 139
    const-string v0, "instance == null , return!"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    const/4 v0, 0x0

    .line 143
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/tencent/feedback/UserActionRecord;->instance:Lcom/tencent/feedback/UserActionRecord;

    invoke-virtual {v0}, Lcom/tencent/feedback/UserActionRecord;->getUploadHandler()Lcom/tencent/feedback/upload/UploadHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 135
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getRealTimeDatas()Lcom/tencent/feedback/upload/AbstractUploadDatas;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 367
    const-class v1, Lcom/tencent/feedback/UserActionRecord;

    monitor-enter v1

    :try_start_0
    const-string v2, "UserActionRecord.getRealTimeDatas() start"

    invoke-static {v2}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 368
    invoke-static {}, Lcom/tencent/feedback/common/Constants;->isAllFunctionPowerOff()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 370
    const-string v2, "UserActionRecord function close"

    invoke-static {v2}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    :goto_0
    monitor-exit v1

    return-object v0

    .line 374
    :cond_0
    :try_start_1
    sget-object v2, Lcom/tencent/feedback/UserActionRecord;->instance:Lcom/tencent/feedback/UserActionRecord;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/tencent/feedback/UserActionRecord;->instance:Lcom/tencent/feedback/UserActionRecord;

    invoke-virtual {v2}, Lcom/tencent/feedback/UserActionRecord;->isEnableModule()Z

    move-result v2

    if-nez v2, :cond_2

    .line 376
    :cond_1
    const-string v2, "UserActionRecord SDKModule instance == null || !instance.isEnableModule() , return!"

    invoke-static {v2}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 367
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 380
    :cond_2
    :try_start_2
    sget-object v2, Lcom/tencent/feedback/UserActionRecord;->realTimeUplaodDatas:Lcom/tencent/feedback/c/h;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/tencent/feedback/UserActionRecord;->realTimeUplaodDatas:Lcom/tencent/feedback/c/h;

    invoke-virtual {v2}, Lcom/tencent/feedback/c/h;->a()Z

    move-result v2

    if-nez v2, :cond_4

    .line 382
    :cond_3
    const-string v2, "realTimeUplaodDatas == null || !realTimeUplaodDatas.isEnable()"

    invoke-static {v2}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 386
    :cond_4
    sget-object v2, Lcom/tencent/feedback/UserActionRecord;->instance:Lcom/tencent/feedback/UserActionRecord;

    invoke-virtual {v2}, Lcom/tencent/feedback/UserActionRecord;->isStartAfterQuery()Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/tencent/feedback/UserActionRecord;->instance:Lcom/tencent/feedback/UserActionRecord;

    invoke-virtual {v2}, Lcom/tencent/feedback/UserActionRecord;->isQueryFinish()Z

    move-result v2

    if-nez v2, :cond_5

    .line 388
    const-string v2, "waiting for query fininsh,so return"

    invoke-static {v2}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 392
    :cond_5
    sget-object v0, Lcom/tencent/feedback/UserActionRecord;->realTimeUplaodDatas:Lcom/tencent/feedback/c/h;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected static declared-synchronized isConsumeOverControl(Landroid/content/Context;)Z
    .locals 10
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x1

    .line 165
    const-class v8, Lcom/tencent/feedback/UserActionRecord;

    monitor-enter v8

    :try_start_0
    invoke-static {p0}, Lcom/tencent/feedback/common/NetConsumeUtil;->getTodayConsume(Landroid/content/Context;)Lcom/tencent/feedback/common/NetConsumeUtil$NetConsumeBean;

    move-result-object v4

    .line 166
    if-eqz v4, :cond_1

    iget-wide v1, v4, Lcom/tencent/feedback/common/NetConsumeUtil$NetConsumeBean;->notWifiConsume:J

    iget-wide v5, v4, Lcom/tencent/feedback/common/NetConsumeUtil$NetConsumeBean;->wifiConsume:J

    add-long/2addr v1, v5

    sget-wide v5, Lcom/tencent/feedback/UserActionRecord;->mMaxDailyConsume:J

    cmp-long v1, v1, v5

    if-ltz v1, :cond_1

    .line 169
    const-string v0, "too much daily Consume , close upload until tomorrow!"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    .line 170
    invoke-static {}, Lcom/tencent/feedback/UserActionRecord;->isOpenUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/feedback/UserActionRecord;->setOpenUpload(Z)V

    .line 173
    sget-object v0, Lcom/tencent/feedback/UserActionRecord;->realTimeRecorder:Lcom/tencent/feedback/c/f;

    if-eqz v0, :cond_0

    .line 175
    const-string v0, "temp close upload , fire error event first"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    .line 176
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 177
    const-string v0, "downConsumed"

    iget-wide v1, v4, Lcom/tencent/feedback/common/NetConsumeUtil$NetConsumeBean;->downConsume:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string v0, "counts"

    iget-wide v1, v4, Lcom/tencent/feedback/common/NetConsumeUtil$NetConsumeBean;->uploadTimes:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v9, Lcom/tencent/feedback/UserActionRecord;->realTimeRecorder:Lcom/tencent/feedback/c/f;

    const-string v0, "rqd_upload_maxdayflow_reached"

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    iget-wide v4, v4, Lcom/tencent/feedback/common/NetConsumeUtil$NetConsumeBean;->uploadConsume:J

    invoke-static/range {v0 .. v6}, Lcom/tencent/feedback/UserActionRecord;->createdRecordBean(Ljava/lang/String;ZJJLjava/util/Map;)Lcom/tencent/feedback/c/i;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/tencent/feedback/c/f;->a(Lcom/tencent/feedback/c/i;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    move v0, v7

    .line 187
    :goto_0
    monitor-exit v8

    return v0

    .line 186
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    invoke-static {v1}, Lcom/tencent/feedback/UserActionRecord;->setOpenUpload(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method protected static declared-synchronized isOpenUpload()Z
    .locals 2

    .prologue
    .line 155
    const-class v0, Lcom/tencent/feedback/UserActionRecord;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/tencent/feedback/UserActionRecord;->isOpenUpload:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static onCountUserAction(Ljava/lang/String;[J)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 251
    invoke-static {}, Lcom/tencent/feedback/common/Constants;->isAllFunctionPowerOff()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 253
    const-string v1, "UserActionRecord function close"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 278
    :cond_0
    :goto_0
    return v0

    .line 257
    :cond_1
    const-class v1, Lcom/tencent/feedback/UserActionRecord;

    monitor-enter v1

    .line 259
    :try_start_0
    sget-object v2, Lcom/tencent/feedback/UserActionRecord;->instance:Lcom/tencent/feedback/UserActionRecord;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/tencent/feedback/UserActionRecord;->instance:Lcom/tencent/feedback/UserActionRecord;

    invoke-virtual {v2}, Lcom/tencent/feedback/UserActionRecord;->isEnableModule()Z

    move-result v2

    if-nez v2, :cond_3

    .line 261
    :cond_2
    const-string v2, "UserActionRecord SDKModule instance == null || !instance.isEnableModule() , return!"

    invoke-static {v2}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    .line 262
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 265
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_3
    monitor-exit v1

    .line 267
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_5

    .line 269
    :cond_4
    const-string v1, "eventName == null || eventName.trim().length() <= 0"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 273
    :cond_5
    sget-object v1, Lcom/tencent/feedback/UserActionRecord;->instance:Lcom/tencent/feedback/UserActionRecord;

    invoke-virtual {v1}, Lcom/tencent/feedback/UserActionRecord;->getmContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/feedback/a/c;->a(Landroid/content/Context;)Lcom/tencent/feedback/a/c;

    move-result-object v1

    .line 274
    if-eqz v1, :cond_0

    .line 277
    invoke-virtual {v1, p0, p1, v0, v0}, Lcom/tencent/feedback/a/c;->a(Ljava/lang/String;[JZZ)V

    .line 278
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static onUserAction(Ljava/lang/String;ZJJLjava/util/Map;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 195
    const-string v0, "UserActionRecord.onUserAction() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 196
    invoke-static {}, Lcom/tencent/feedback/common/Constants;->isAllFunctionPowerOff()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    const-string v0, "UserActionRecord function close"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    const-class v1, Lcom/tencent/feedback/UserActionRecord;

    monitor-enter v1

    .line 205
    :try_start_0
    sget-object v0, Lcom/tencent/feedback/UserActionRecord;->instance:Lcom/tencent/feedback/UserActionRecord;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/tencent/feedback/UserActionRecord;->instance:Lcom/tencent/feedback/UserActionRecord;

    invoke-virtual {v0}, Lcom/tencent/feedback/UserActionRecord;->isEnableModule()Z

    move-result v0

    if-nez v0, :cond_3

    .line 207
    :cond_2
    const-string v0, "UserActionRecord SDKModule instance == null || !instance.isEnableModule() , return!"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    .line 208
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 211
    :cond_3
    :try_start_1
    sget-object v0, Lcom/tencent/feedback/UserActionRecord;->instance:Lcom/tencent/feedback/UserActionRecord;

    invoke-virtual {v0}, Lcom/tencent/feedback/UserActionRecord;->isStartAfterQuery()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/tencent/feedback/UserActionRecord;->instance:Lcom/tencent/feedback/UserActionRecord;

    invoke-virtual {v0}, Lcom/tencent/feedback/UserActionRecord;->isQueryFinish()Z

    move-result v0

    if-nez v0, :cond_4

    .line 213
    const-string v0, "waiting for query fininsh,so return"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 214
    monitor-exit v1

    goto :goto_0

    .line 217
    :cond_4
    sget-object v0, Lcom/tencent/feedback/UserActionRecord;->instance:Lcom/tencent/feedback/UserActionRecord;

    iget-object v0, v0, Lcom/tencent/feedback/UserActionRecord;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/feedback/UserActionRecord;->isConsumeOverControl(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 219
    const-string v0, "isConsumeOverControl"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    .line 220
    monitor-exit v1

    goto :goto_0

    .line 222
    :cond_5
    if-eqz p7, :cond_6

    sget-object v0, Lcom/tencent/feedback/UserActionRecord;->realTimeRecorder:Lcom/tencent/feedback/c/f;

    .line 223
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 225
    if-eqz v0, :cond_0

    .line 228
    invoke-static/range {p0 .. p6}, Lcom/tencent/feedback/UserActionRecord;->createdRecordBean(Ljava/lang/String;ZJJLjava/util/Map;)Lcom/tencent/feedback/c/i;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/feedback/c/e;->a(Lcom/tencent/feedback/c/i;)V

    .line 230
    const-string v0, "UserActionRecord.onUserAction() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 222
    :cond_6
    :try_start_2
    sget-object v0, Lcom/tencent/feedback/UserActionRecord;->commonRecorder:Lcom/tencent/feedback/c/a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public static declared-synchronized setInstance(Lcom/tencent/feedback/UserActionRecord;)V
    .locals 3
    .parameter

    .prologue
    .line 104
    const-class v1, Lcom/tencent/feedback/UserActionRecord;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UserActionRecord setInstance "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 105
    sget-object v0, Lcom/tencent/feedback/UserActionRecord;->instance:Lcom/tencent/feedback/UserActionRecord;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/feedback/UserActionRecord;->instance:Lcom/tencent/feedback/UserActionRecord;

    if-eq v0, p0, :cond_0

    .line 107
    const-string v0, "close old one,to permit no mutiple instances in memory!"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 108
    sget-object v0, Lcom/tencent/feedback/UserActionRecord;->instance:Lcom/tencent/feedback/UserActionRecord;

    invoke-virtual {v0}, Lcom/tencent/feedback/UserActionRecord;->closeSDKModule()V

    .line 110
    :cond_0
    sput-object p0, Lcom/tencent/feedback/UserActionRecord;->instance:Lcom/tencent/feedback/UserActionRecord;

    .line 111
    const-string v0, "UserActionRecord setInstance end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    monitor-exit v1

    return-void

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized setMyUpload(Lcom/tencent/feedback/upload/UploadHandler;)V
    .locals 2
    .parameter

    .prologue
    .line 121
    const-class v1, Lcom/tencent/feedback/UserActionRecord;

    monitor-enter v1

    :try_start_0
    const-string v0, "UserActionRecord.setMyUpload() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 123
    sget-object v0, Lcom/tencent/feedback/UserActionRecord;->instance:Lcom/tencent/feedback/UserActionRecord;

    if-nez v0, :cond_0

    .line 125
    const-string v0, "instance == null , return!"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    :goto_0
    monitor-exit v1

    return-void

    .line 128
    :cond_0
    :try_start_1
    sget-object v0, Lcom/tencent/feedback/UserActionRecord;->instance:Lcom/tencent/feedback/UserActionRecord;

    invoke-virtual {v0, p0}, Lcom/tencent/feedback/UserActionRecord;->setUploadHandler(Lcom/tencent/feedback/upload/UploadHandler;)V

    .line 129
    const-string v0, "UserActionRecord.setMyUpload() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected static declared-synchronized setOpenUpload(Z)V
    .locals 2
    .parameter

    .prologue
    .line 160
    const-class v0, Lcom/tencent/feedback/UserActionRecord;

    monitor-enter v0

    :try_start_0
    sput-boolean p0, Lcom/tencent/feedback/UserActionRecord;->isOpenUpload:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    monitor-exit v0

    return-void

    .line 160
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public onAppExited(Landroid/content/Context;)V
    .locals 7
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    const/4 v6, 0x0

    .line 742
    const-string v0, "UserActionRecord onAppExited start"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 743
    invoke-virtual {p0}, Lcom/tencent/feedback/UserActionRecord;->isEnableModule()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 745
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/feedback/UserActionRecord;->setEnableModule(Z)V

    .line 746
    const-string v0, "onAppExited , start to do sync event to db"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 747
    const-class v1, Lcom/tencent/feedback/UserActionRecord;

    monitor-enter v1

    .line 749
    :try_start_0
    sget-object v0, Lcom/tencent/feedback/UserActionRecord;->commonRecorder:Lcom/tencent/feedback/c/a;

    if-eqz v0, :cond_0

    .line 751
    sget-object v0, Lcom/tencent/feedback/UserActionRecord;->commonRecorder:Lcom/tencent/feedback/c/a;

    invoke-virtual {v0}, Lcom/tencent/feedback/c/a;->b()V

    .line 754
    :cond_0
    sget-object v0, Lcom/tencent/feedback/UserActionRecord;->realTimeRecorder:Lcom/tencent/feedback/c/f;

    if-eqz v0, :cond_1

    .line 756
    sget-object v0, Lcom/tencent/feedback/UserActionRecord;->realTimeRecorder:Lcom/tencent/feedback/c/f;

    invoke-virtual {v0}, Lcom/tencent/feedback/c/f;->c()V

    .line 758
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 759
    const-string v0, "onAppExited , end to do sync event to db"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 760
    const-string v0, "UserActionRecord insert app exit event"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 761
    const-string v0, "rqd_appexited"

    const/4 v1, 0x1

    move-wide v4, v2

    invoke-static/range {v0 .. v6}, Lcom/tencent/feedback/UserActionRecord;->createdRecordBean(Ljava/lang/String;ZJJLjava/util/Map;)Lcom/tencent/feedback/c/i;

    move-result-object v0

    .line 762
    invoke-static {p1, v0}, Lcom/tencent/feedback/c/a;->a(Landroid/content/Context;Lcom/tencent/feedback/c/i;)Z

    .line 764
    const-string v0, "onAppExited , sync countbean to db"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 765
    invoke-static {v6}, Lcom/tencent/feedback/a/c;->a(Landroid/content/Context;)Lcom/tencent/feedback/a/c;

    move-result-object v0

    .line 766
    if-eqz v0, :cond_2

    .line 768
    invoke-virtual {v0}, Lcom/tencent/feedback/a/c;->b()V

    .line 772
    :cond_2
    const-string v0, "UserActionRecord onAppExited end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 773
    invoke-super {p0, p1}, Lcom/tencent/feedback/common/e;->onAppExited(Landroid/content/Context;)V

    .line 774
    invoke-static {v6}, Lcom/tencent/feedback/UserActionRecord;->setInstance(Lcom/tencent/feedback/UserActionRecord;)V

    .line 775
    return-void

    .line 758
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onAppLauched(Landroid/content/Context;)V
    .locals 7
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    .line 714
    invoke-super {p0, p1}, Lcom/tencent/feedback/common/e;->onAppLauched(Landroid/content/Context;)V

    .line 716
    const-string v0, "UserActionRecord create launched event"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 717
    const-string v0, "rqd_applaunched"

    const/4 v1, 0x1

    const/4 v6, 0x0

    move-wide v4, v2

    invoke-static/range {v0 .. v6}, Lcom/tencent/feedback/UserActionRecord;->createdRecordBean(Ljava/lang/String;ZJJLjava/util/Map;)Lcom/tencent/feedback/c/i;

    move-result-object v0

    .line 718
    if-eqz v0, :cond_0

    .line 720
    new-instance v1, Lcom/tencent/feedback/c;

    invoke-direct {v1, p0, p1, v0}, Lcom/tencent/feedback/c;-><init>(Lcom/tencent/feedback/UserActionRecord;Landroid/content/Context;Lcom/tencent/feedback/c/i;)V

    .line 733
    invoke-static {}, Lcom/tencent/feedback/common/c;->a()Lcom/tencent/feedback/common/c;

    move-result-object v0

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/feedback/common/c;->a(Ljava/lang/Runnable;J)V

    .line 735
    :cond_0
    const-string v0, "UserActionRecord onAppLauched end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 736
    return-void
.end method

.method public onInitByQuery()V
    .locals 6

    .prologue
    .line 592
    invoke-super {p0}, Lcom/tencent/feedback/common/e;->onInitByQuery()V

    .line 595
    const-string v0, "UserActionRecord.onInitByQuery() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 596
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/feedback/UserActionRecord;->setQueryFinish(Z)V

    .line 598
    iget-object v0, p0, Lcom/tencent/feedback/UserActionRecord;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 600
    const-string v0, "mContext == null!, return"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    .line 643
    :goto_0
    return-void

    .line 605
    :cond_0
    invoke-static {}, Lcom/tencent/feedback/common/CommonInfo;->getCommonInfo()Lcom/tencent/feedback/common/CommonInfo;

    move-result-object v0

    .line 606
    if-nez v0, :cond_1

    .line 608
    const-string v0, "info == null!, return"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 611
    :cond_1
    invoke-virtual {v0}, Lcom/tencent/feedback/common/CommonInfo;->getServerTimeGap()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/tencent/feedback/common/g;->a(J)J

    move-result-wide v0

    const-wide/32 v2, 0x240c8400

    sub-long v4, v0, v2

    .line 613
    iget-object v0, p0, Lcom/tencent/feedback/UserActionRecord;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    invoke-static/range {v0 .. v5}, Lcom/tencent/feedback/c/a;->a(Landroid/content/Context;[Ljava/lang/String;JJ)I

    move-result v0

    .line 614
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "del old sum:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 616
    const-string v0, "init common upload start!"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 617
    invoke-static {}, Lcom/tencent/feedback/common/c;->a()Lcom/tencent/feedback/common/c;

    move-result-object v0

    new-instance v1, Lcom/tencent/feedback/a;

    invoke-direct {v1, p0}, Lcom/tencent/feedback/a;-><init>(Lcom/tencent/feedback/UserActionRecord;)V

    invoke-virtual {v0, v1}, Lcom/tencent/feedback/common/c;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public onLocalVersionChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 648
    invoke-super {p0, p1, p2}, Lcom/tencent/feedback/common/e;->onLocalVersionChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserActionRecord.onLocalVersionChanged from "

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

    .line 652
    iget-object v0, p0, Lcom/tencent/feedback/UserActionRecord;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 654
    const-string v0, "mContext == null!, return"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    .line 708
    :cond_0
    :goto_0
    return-void

    .line 658
    :cond_1
    const-string v0, "deleted old UserRecord"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 661
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleted UserRecord :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v0, p0, Lcom/tencent/feedback/UserActionRecord;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/tencent/feedback/c/a;->a(Landroid/content/Context;[Ljava/lang/String;JJ)I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 670
    :goto_1
    const-string v0, "deleted old count bean"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 671
    invoke-static {v7}, Lcom/tencent/feedback/a/c;->a(Lcom/tencent/feedback/a/c;)V

    .line 674
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleted countbean :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/feedback/UserActionRecord;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/feedback/a/b;->b(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 682
    :goto_2
    const-string v0, "recreate countprocess"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 683
    iget-object v0, p0, Lcom/tencent/feedback/UserActionRecord;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/feedback/a/c;->a(Landroid/content/Context;)Lcom/tencent/feedback/a/c;

    .line 684
    const-string v0, "UserActionRecord.onLocalVersionChanged end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 687
    iget-object v0, p0, Lcom/tencent/feedback/UserActionRecord;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/feedback/common/DeviceInfo;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 688
    if-eqz v0, :cond_0

    .line 690
    const-string v1, "UserActionRecord onAppLauched start insert DisplayEvent"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 691
    new-instance v1, Lcom/tencent/feedback/b;

    invoke-direct {v1, p0, v0}, Lcom/tencent/feedback/b;-><init>(Lcom/tencent/feedback/UserActionRecord;Landroid/util/DisplayMetrics;)V

    .line 706
    invoke-static {}, Lcom/tencent/feedback/common/c;->a()Lcom/tencent/feedback/common/c;

    move-result-object v0

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/feedback/common/c;->a(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 663
    :catch_0
    move-exception v0

    .line 665
    const-string v1, "deleted old userRecord Error error"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    .line 666
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 676
    :catch_1
    move-exception v0

    .line 678
    const-string v1, "deleted old userRecord Error error"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    .line 679
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method public onUploadStrategyChange(Lcom/tencent/feedback/common/strategy/UploadStrategyBean;)V
    .locals 3
    .parameter

    .prologue
    .line 574
    invoke-super {p0, p1}, Lcom/tencent/feedback/common/e;->onUploadStrategyChange(Lcom/tencent/feedback/common/strategy/UploadStrategyBean;)V

    .line 575
    const-string v0, "UserActionRecord.onUploadStrategyChange() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 576
    if-nez p1, :cond_0

    .line 586
    :goto_0
    return-void

    .line 580
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->isUserEventServerOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->isUserEventUserOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 582
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fixUserActionRecord :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 584
    invoke-virtual {p0, v0}, Lcom/tencent/feedback/UserActionRecord;->setEnableModule(Z)V

    .line 585
    const-string v0, "UserActionRecord.onUploadStrategyChange() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 580
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setEnableModule(Z)V
    .locals 2
    .parameter

    .prologue
    .line 559
    invoke-super {p0, p1}, Lcom/tencent/feedback/common/e;->setEnableModule(Z)V

    .line 561
    const-class v1, Lcom/tencent/feedback/UserActionRecord;

    monitor-enter v1

    .line 563
    :try_start_0
    sget-object v0, Lcom/tencent/feedback/UserActionRecord;->commonRecorder:Lcom/tencent/feedback/c/a;

    invoke-virtual {v0, p1}, Lcom/tencent/feedback/c/a;->a(Z)V

    .line 564
    sget-object v0, Lcom/tencent/feedback/UserActionRecord;->realTimeRecorder:Lcom/tencent/feedback/c/f;

    invoke-virtual {v0, p1}, Lcom/tencent/feedback/c/f;->a(Z)V

    .line 565
    sget-object v0, Lcom/tencent/feedback/UserActionRecord;->commonUploadDatas:Lcom/tencent/feedback/c/d;

    invoke-virtual {v0, p1}, Lcom/tencent/feedback/c/d;->a(Z)V

    .line 566
    sget-object v0, Lcom/tencent/feedback/UserActionRecord;->realTimeUplaodDatas:Lcom/tencent/feedback/c/h;

    invoke-virtual {v0, p1}, Lcom/tencent/feedback/c/h;->a(Z)V

    .line 567
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setIsUserActionOpen(Z)V
    .locals 3
    .parameter

    .prologue
    .line 532
    const-string v0, "setIsUserActionOpen start!"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 533
    invoke-static {}, Lcom/tencent/feedback/common/Constants;->isAllFunctionPowerOff()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 535
    const-string v0, "Analytics function close"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 553
    :goto_0
    return-void

    .line 539
    :cond_0
    iget-object v0, p0, Lcom/tencent/feedback/UserActionRecord;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 541
    const-string v0, "mContext == null ,return"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 545
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "user action :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 547
    iget-object v0, p0, Lcom/tencent/feedback/UserActionRecord;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/feedback/common/strategy/a;->a(Landroid/content/Context;)Lcom/tencent/feedback/common/strategy/a;

    move-result-object v0

    .line 548
    iget-object v1, p0, Lcom/tencent/feedback/UserActionRecord;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tencent/feedback/common/strategy/a;->c(Landroid/content/Context;)Lcom/tencent/feedback/common/strategy/UploadStrategyBean;

    move-result-object v1

    .line 549
    invoke-virtual {v1, p1}, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->setUserEventUserOpen(Z)V

    .line 550
    iget-object v2, p0, Lcom/tencent/feedback/UserActionRecord;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Lcom/tencent/feedback/common/strategy/a;->a(Landroid/content/Context;Lcom/tencent/feedback/common/strategy/UploadStrategyBean;)V

    .line 551
    const-string v0, "setIsUserActionOpen end!"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    goto :goto_0
.end method
