.class public final Lc;
.super Ljava/lang/Object;


# static fields
.field private static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x12c

    sput v0, Lc;->a:I

    return-void
.end method

.method public static a()V
    .locals 4

    invoke-static {}, Ls$a;->g()Lz;

    move-result-object v0

    const-string v1, "today_crash_upload_times"

    invoke-virtual {v0, v1}, Lz;->a(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const-string v2, "today_crash_upload_times"

    invoke-virtual {v0, v2, v1}, Lz;->a(Ljava/lang/String;I)V

    const-string v1, "last_crash_upload_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lz;->a(Ljava/lang/String;J)V

    return-void
.end method

.method public static a(Landroid/app/Application;)V
    .locals 9

    const/4 v8, 0x5

    const/4 v7, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {}, Ls$a;->g()Lz;

    move-result-object v3

    const-string v0, "today_crash_upload_times"

    invoke-virtual {v3, v0}, Lz;->a(Ljava/lang/String;)I

    move-result v0

    sget v4, Lc;->a:I

    if-le v0, v4, :cond_0

    const-string v0, "last_crash_upload_time"

    invoke-virtual {v3, v0}, Lz;->b(Ljava/lang/String;)J

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

    if-ne v0, v4, :cond_3

    invoke-virtual {v5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v0, v4, :cond_3

    invoke-virtual {v5, v8}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v6, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v0, v4, :cond_3

    move v0, v1

    :goto_0
    if-nez v0, :cond_2

    const-string v0, "today_crash_upload_times"

    invoke-virtual {v3, v0, v2}, Lz;->a(Ljava/lang/String;I)V

    :cond_0
    const-string v0, "auto_upload_crash"

    invoke-virtual {v3, v0}, Lz;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v2, ""

    invoke-static {v2}, Lcom/tencent/feedback/eup/ExceptionUpload;->setDefaultContract(Ljava/lang/String;)V

    new-instance v2, Ld;

    invoke-direct {v2}, Ld;-><init>()V

    invoke-static {v2}, Lcom/tencent/feedback/eup/ExceptionUpload;->setYourUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    :cond_1
    invoke-static {}, Lcom/tencent/powermanager/PowerManagerApplication;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/feedback/eup/ExceptionUpload;->getDefaultUpload(Landroid/content/Context;)Lcom/tencent/feedback/upload/UploadHandler;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/feedback/eup/ExceptionUpload;->setMyUpload(Lcom/tencent/feedback/upload/UploadHandler;)V

    invoke-static {v0}, Lcom/tencent/feedback/eup/ExceptionUpload;->setDefaultEUP(Z)V

    const/4 v0, 0x0

    const/16 v2, 0x7d0

    invoke-static {v0, v2}, Lcom/tencent/feedback/eup/ExceptionUpload;->setEupParams(Ljava/lang/String;I)V

    new-instance v0, Lcom/tencent/feedback/eup/ExceptionUpload;

    const-string v2, "1000"

    invoke-direct {v0, p0, v2}, Lcom/tencent/feedback/eup/ExceptionUpload;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v2, Ldw;

    invoke-direct {v2, p0}, Ldw;-><init>(Landroid/content/Context;)V

    invoke-static {v2}, Lcom/tencent/feedback/eup/ExceptionUpload;->setEupUserConfirmer(Lcom/tencent/feedback/eup/IEupUserConfirmer;)V

    invoke-virtual {v0, v1}, Lcom/tencent/feedback/eup/ExceptionUpload;->setIsUseEup(Z)V

    :cond_2
    return-void

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
