.class public Lcom/tencent/feedback/common/ELog;
.super Ljava/lang/Object;
.source "ELog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static check(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 52
    sget-boolean v1, Lcom/tencent/feedback/common/Constants;->IS_DEBUG:Z

    if-nez v1, :cond_1

    .line 62
    :cond_0
    :goto_0
    return v0

    .line 57
    :cond_1
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 62
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static debug(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 43
    invoke-static {p0}, Lcom/tencent/feedback/common/ELog;->check(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/tencent/feedback/common/Constants;->IS_CORE_DEBUG:Z

    if-nez v0, :cond_1

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    const-string v0, "eup"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static error(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 30
    invoke-static {p0}, Lcom/tencent/feedback/common/ELog;->check(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 39
    :cond_0
    return-void

    .line 35
    :cond_1
    const-string v0, "eup"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    sget-boolean v0, Lcom/tencent/feedback/common/Constants;->Is_AutoCheckOpen:Z

    if-eqz v0, :cond_0

    .line 37
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RQD ERROR CHECK:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n this error will throw only Constants.Is_AutoCheckOpen == true!\n this throw is for found error early!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static info(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 10
    invoke-static {p0}, Lcom/tencent/feedback/common/ELog;->check(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 16
    :goto_0
    return-void

    .line 15
    :cond_0
    const-string v0, "eup"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static testinfo(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 67
    invoke-static {p0}, Lcom/tencent/feedback/common/ELog;->check(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/tencent/feedback/common/Constants;->IS_CORE_DEBUG:Z

    if-nez v0, :cond_1

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    const-string v0, "test"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static warn(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 20
    invoke-static {p0}, Lcom/tencent/feedback/common/ELog;->check(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    :goto_0
    return-void

    .line 25
    :cond_0
    const-string v0, "eup"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
