.class public final Ldz;
.super Ljava/lang/Object;


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    sput v0, Ldz;->a:I

    return-void
.end method

.method public static a()V
    .locals 9

    const/4 v8, 0x5

    const/4 v7, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lho;->a()Lho;

    move-result-object v3

    const-string v0, "today_crash_upload_times"

    invoke-virtual {v3, v0}, Lho;->v(Ljava/lang/String;)I

    move-result v0

    sget v4, Ldz;->a:I

    if-le v0, v4, :cond_0

    const-string v0, "last_crash_upload_time"

    invoke-virtual {v3, v0}, Lho;->w(Ljava/lang/String;)J

    move-result-wide v4

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    new-instance v4, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v5, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {v6, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {v5, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v6, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v0, v4, :cond_2

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v0, v4, :cond_2

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v6, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v0, v4, :cond_2

    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "today_crash_upload_times"

    invoke-virtual {v3, v0, v2}, Lho;->a(Ljava/lang/String;I)V

    :cond_0
    const-string v0, "auto_upload_crash"

    invoke-virtual {v3, v0}, Lho;->x(Ljava/lang/String;)Z

    sput-boolean v2, Lcom/tencent/feedback/common/Constants;->IS_DEBUG:Z

    sput-boolean v2, Lcom/tencent/feedback/common/Constants;->IS_CORE_DEBUG:Z

    sput-boolean v2, Lcom/tencent/feedback/common/Constants;->IS_USETESTSERVER:Z

    sput-boolean v2, Lcom/tencent/feedback/common/Constants;->Is_AutoCheckOpen:Z

    const-string v0, "10000"

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/feedback/Analytics;->getDefaultUpload(Landroid/content/Context;)Lcom/tencent/feedback/upload/UploadHandler;

    move-result-object v3

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0, v1, v3}, Lcom/tencent/feedback/Analytics;->enableAnalytics(Landroid/content/Context;Ljava/lang/String;ZLcom/tencent/feedback/upload/UploadHandler;)V

    invoke-static {v1}, Lcom/tencent/feedback/eup/ExceptionUpload;->setDefaultEUP(Z)V

    new-instance v0, Lea;

    invoke-direct {v0}, Lea;-><init>()V

    invoke-static {v0}, Lcom/tencent/feedback/eup/ExceptionUpload;->setYourUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v1}, Lcom/tencent/feedback/Analytics;->enableCrashRecord(Z)V

    invoke-static {v1}, Lcom/tencent/feedback/Analytics;->enableUserActionRecord(Z)V

    invoke-static {v2}, Lcom/tencent/feedback/Analytics;->enableSpeedRecord(Z)V

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/feedback/Analytics;->onAppLaunched(Landroid/content/Context;)V

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public static b()V
    .locals 4

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    const-string v1, "today_crash_upload_times"

    invoke-virtual {v0, v1}, Lho;->v(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const-string v2, "today_crash_upload_times"

    invoke-virtual {v0, v2, v1}, Lho;->a(Ljava/lang/String;I)V

    const-string v1, "last_crash_upload_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lho;->a(Ljava/lang/String;J)V

    return-void
.end method