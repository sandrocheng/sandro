.class public final Lcom/tencent/feedback/upload/a;
.super Lcom/tencent/feedback/upload/AbstractUploadDatas;
.source "ProGuard"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/tencent/feedback/upload/AbstractUploadDatas;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/feedback/upload/a;->a:I

    return-void
.end method


# virtual methods
.method public final done(Z)V
    .locals 0
    .parameter

    .prologue
    .line 48
    return-void
.end method

.method public final getUploadDatas(Z)[B
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 23
    const-string v1, "EmptyUploadDatas.getUploadDatas() start"

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    .line 25
    invoke-static {}, Lcom/tencent/feedback/common/CommonInfo;->getCommonInfo()Lcom/tencent/feedback/common/CommonInfo;

    move-result-object v1

    .line 26
    const-string v2, ""

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 27
    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    :try_start_0
    invoke-static {v3, v1, v2, v4, v5}, Lcom/tencent/feedback/common/f;->a(ILcom/tencent/feedback/common/CommonInfo;[BBB)Lcommon/RequestPackage;

    move-result-object v1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    invoke-virtual {v1}, Lcommon/RequestPackage;->toByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 41
    const-string v1, "EmptyUploadDatas.getUploadDatas() end"

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    :goto_0
    return-object v0

    .line 35
    :cond_0
    const-string v1, "EmptyUploadDatas.getUploadDatas() end"

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 36
    :catch_0
    move-exception v1

    .line 37
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 38
    const-string v1, "encode2RequestPackage failed"

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    const-string v1, "EmptyUploadDatas.getUploadDatas() end"

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "EmptyUploadDatas.getUploadDatas() end"

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->c(Ljava/lang/String;)V

    throw v0
.end method
