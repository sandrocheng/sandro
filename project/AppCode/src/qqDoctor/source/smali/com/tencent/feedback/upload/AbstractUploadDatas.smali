.class public abstract Lcom/tencent/feedback/upload/AbstractUploadDatas;
.super Ljava/lang/Object;
.source "AbstractUploadDatas.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;
    }
.end annotation


# instance fields
.field protected mUploadDataType:Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;


# direct methods
.method public constructor <init>(Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/tencent/feedback/upload/AbstractUploadDatas;->mUploadDataType:Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;

    .line 29
    return-void
.end method


# virtual methods
.method public abstract done(Z)V
.end method

.method public getUploadDatas(Z)[B
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 49
    const-string v1, "AbstractUploadDatas.getUploadDatas start"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 53
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/tencent/feedback/upload/AbstractUploadDatas;->getUploadRequestPackage(Z)Lcommon/RequestPackage;

    move-result-object v1

    .line 54
    if-eqz v1, :cond_0

    .line 55
    invoke-virtual {v1}, Lcommon/RequestPackage;->toByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 67
    const-string v1, "AbstractUploadDatas.getUploadDatas end"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    :goto_0
    return-object v0

    .line 57
    :cond_0
    const-string v1, "AbstractUploadDatas.getUploadDatas end"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :catch_0
    move-exception v1

    .line 61
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 62
    const-string v1, "encode to bytes failed"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    const-string v1, "AbstractUploadDatas.getUploadDatas end"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "AbstractUploadDatas.getUploadDatas end"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getUploadRequestPackage(Z)Lcommon/RequestPackage;
.end method

.method public declared-synchronized getmUploadDataType()Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;
    .locals 1

    .prologue
    .line 33
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/feedback/upload/AbstractUploadDatas;->mUploadDataType:Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setmUploadDataType(Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;)V
    .locals 1
    .parameter

    .prologue
    .line 38
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/tencent/feedback/upload/AbstractUploadDatas;->mUploadDataType:Lcom/tencent/feedback/upload/AbstractUploadDatas$UploadDataType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    monitor-exit p0

    return-void

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
