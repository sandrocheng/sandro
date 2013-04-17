.class public final Lcom/tencent/feedback/upload/a;
.super Lcom/tencent/feedback/upload/AbstractUploadDatas;
.source "EmptyUploadDatas.java"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;->RQD_Query:Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;

    invoke-direct {p0, v0}, Lcom/tencent/feedback/upload/AbstractUploadDatas;-><init>(Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;)V

    .line 26
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/feedback/upload/a;->a:I

    .line 24
    return-void
.end method


# virtual methods
.method public final done(Z)V
    .locals 0
    .parameter

    .prologue
    .line 32
    return-void
.end method

.method public final getUploadRequestPackage(Z)Lcommon/RequestPackage;
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 38
    const-string v0, "EmptyUploadDatas.getUploadRequestPackage() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 40
    invoke-static {}, Lcom/tencent/feedback/common/CommonInfo;->getCommonInfo()Lcom/tencent/feedback/common/CommonInfo;

    move-result-object v0

    .line 41
    const-string v2, ""

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 42
    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    :try_start_0
    invoke-static {v3, v0, v2, v4, v5}, Lcom/tencent/feedback/common/g;->a(ILcom/tencent/feedback/common/CommonInfo;[BII)Lcommon/RequestPackage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 48
    if-eqz v0, :cond_0

    .line 61
    const-string v1, "EmptyUploadDatas.getUploadRequestPackage() end"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    :goto_0
    return-object v0

    .line 51
    :cond_0
    const-string v0, "EmptyUploadDatas.getUploadRequestPackage() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 55
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 56
    const-string v0, "encode2RequestPackage failed"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    const-string v0, "EmptyUploadDatas.getUploadRequestPackage() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "EmptyUploadDatas.getUploadRequestPackage() end"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    throw v0
.end method
